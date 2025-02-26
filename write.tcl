#!/usr/bin/tclsh
# Author: Conner Ohnesorge (2025)
# -------------------------------------------------------------------------
# Vivado Project Packager
# -------------------------------------------------------------------------
# Description: This script packages an entire Vivado project into a single
# Tcl script that can be used to regenerate the project.
# 
# Usage: 
#   vivado -mode tcl -source package_project.tcl -tclargs [OPTIONS]
#
# Options:
#   -project_path <path>   : Path to the Vivado project (.xpr) file (Required)
#   -output_dir <path>     : Output directory for the generated script (Optional, default: ./packaged_project)
#   -script_name <name>    : Name of the generated script (Optional, default: recreate_project.tcl)
#   -include_runs <0|1>    : Include run results (Optional, default: 0)
#   -include_ips <0|1>     : Include generated IP files (Optional, default: 1)
#   -archive <0|1>         : Create a zip archive of the source files (Optional, default: 0)
#
#
#
#   Then, to generate the project:
#
#   vivado -mode tcl -source generate_project.tcl -tclargs [OPTIONS]
#
# -------------------------------------------------------------------------

# Process command line arguments
set project_path ""
set output_dir "."
set script_name "generate_project.tcl"
set include_runs 0
set include_ips 1
set create_archive 0

set argIdx 0
while {$argIdx < $argc} {
    set arg [lindex $::argv $argIdx]
    incr argIdx
    
    switch -exact -- $arg {
        "-project_path" {
            set project_path [lindex $::argv $argIdx]
            incr argIdx
        }
        "-output_dir" {
            set output_dir [lindex $::argv $argIdx]
            incr argIdx
        }
        "-script_name" {
            set script_name [lindex $::argv $argIdx]
            incr argIdx
        }
        "-include_runs" {
            set include_runs [lindex $::argv $argIdx]
            incr argIdx
        }
        "-include_ips" {
            set include_ips [lindex $::argv $argIdx]
            incr argIdx
        }
        "-archive" {
            set create_archive [lindex $::argv $argIdx]
            incr argIdx
        }
        default {
            puts "ERROR: Unknown option: $arg"
            exit 1
        }
    }
}

# Validate required arguments
if {$project_path eq ""} {
    puts "ERROR: Project path must be specified with -project_path"
    exit 1
}

# Create output directory if it doesn't exist
file mkdir $output_dir

# Open the project
puts "INFO: Opening project: $project_path"
open_project $project_path

# Get project name and directory
set project_name [file rootname [file tail $project_path]]
set project_dir [file dirname $project_path]

# Start the output script
set fd [open "$output_dir/$script_name" w]

# Write header
puts $fd "# -------------------------------------------------------"
puts $fd "# Project recreation script generated on [clock format [clock seconds] -format {%Y-%m-%d %H:%M:%S}]"
puts $fd "# Project name: $project_name"
puts $fd "# -------------------------------------------------------"
puts $fd ""
puts $fd "# Set up variables"
puts $fd "set project_name \"$project_name\""
puts $fd "set project_dir \"\[file normalize \"\$script_dir/generated_project\"\]\""
puts $fd "set source_dir \"\[file normalize \"\$script_dir/src\"\]\""
puts $fd ""
puts $fd "# Get the directory where this script is located"
puts $fd "set script_dir \[file normalize \[file dirname \[info script\]\]\]"
puts $fd ""
puts $fd "# Create project directory structure"
puts $fd "file mkdir \$project_dir"
puts $fd "file mkdir \$source_dir"
puts $fd ""

# Extract project properties
puts $fd "# Create project"
puts $fd "create_project \$project_name \$project_dir -force"
puts $fd ""

# Set project properties
set proj_props [list_property [current_project]]
puts $fd "# Set project properties"
foreach prop $proj_props {
    if {[string match "DIRECTORY_*" $prop] || [string match "PATH_*" $prop]} {
        # Skip directory/path properties as they'll be set by create_project
        continue
    }
    
    if {[string match "IS_*" $prop] || [string match "HAS_*" $prop]} {
        # Skip read-only properties
        continue
    }
    
    if {![catch {set value [get_property $prop [current_project]]}]} {
        if {$value != ""} {
            puts $fd "set_property -name \"$prop\" -value \"$value\" -objects \[current_project\]"
        }
    }
}
puts $fd ""

# Process IP repositories
set ip_repos [get_property IP_REPO_PATHS [current_project]]
if {[llength $ip_repos] > 0} {
    puts $fd "# Set IP repository paths"
    puts $fd "set obj \[get_filesets sources_1\]"
    puts $fd "set_property \"ip_repo_paths\" \{"
    foreach repo $ip_repos {
        puts $fd "  \[file normalize \"\$script_dir/[file relative $project_dir $repo]\"\]"
    }
    puts $fd "\} \$obj"
    puts $fd "update_ip_catalog"
    puts $fd ""
}

# Create src directory structure for sources
file mkdir "$output_dir/src"

# Helper function to get relative path
proc get_rel_path {base_dir path} {
    set norm_base [file normalize $base_dir]
    set norm_path [file normalize $path]
    
    if {[string first $norm_base $norm_path] == 0} {
        return [string range $norm_path [string length $norm_base]+1 end]
    } else {
        return $norm_path
    }
}

# Helper function to copy a file and ensure directory exists
proc copy_file_to_source {src_file dest_dir project_dir} {
    set rel_path [get_rel_path $project_dir $src_file]
    set dest_file "$dest_dir/src/$rel_path"
    
    # Create directory structure if needed
    file mkdir [file dirname $dest_file]
    
    # Copy the file if it exists and is readable
    if {[file exists $src_file] && [file readable $src_file]} {
        file copy -force $src_file $dest_file
    } else {
        puts "WARNING: Could not copy file: $src_file"
    }
    
    return $rel_path
}

# Process filesets
set all_filesets [get_filesets]
foreach fileset $all_filesets {
    set fs_type [get_property FILESET_TYPE $fileset]
    
    # Skip run results if not requested
    if {!$include_runs && $fs_type eq "SimulationSrcs"} {
        continue
    }
    
    puts $fd "# Create fileset '$fileset'"
    if {$fileset ne "sources_1" && $fileset ne "constrs_1" && $fileset ne "sim_1"} {
        puts $fd "if {\[string equal \[get_filesets -quiet $fileset\] \"\"\]} {"
        
        # Create appropriate fileset
        if {$fs_type eq "DesignSrcs"} {
            puts $fd "  create_fileset -srcset $fileset"
        } elseif {$fs_type eq "BlockSrcs"} {
            puts $fd "  create_fileset -blockset $fileset"
        } elseif {$fs_type eq "SimulationSrcs"} {
            puts $fd "  create_fileset -simset $fileset"
        } elseif {$fs_type eq "ConstraintSrcs"} {
            puts $fd "  create_fileset -constrset $fileset"
        }
        puts $fd "}"
    }
    
    # Get files in the fileset
    set files [get_files -of_objects $fileset]
    
    if {[llength $files] > 0} {
        puts $fd "# Add files to '$fileset'"
        set file_group_list [list]
        
        foreach file $files {
            set file_type [get_property FILE_TYPE $file]
            set is_generated [get_property IS_GENERATED $file]
            
            # Skip generated files if not requested
            if {$is_generated && !$include_ips} {
                continue
            }
            
            # Copy the file to our source directory
            set rel_path [copy_file_to_source $file $output_dir $project_dir]
            
            # Add to file group for this type
            lappend file_group_list [list $file_type $rel_path $file]
        }
        
        # Group files by type for cleaner script
        array set file_groups {}
        foreach file_info $file_group_list {
            lassign $file_info type rel_path file
            lappend file_groups($type) [list $rel_path $file]
        }
        
        # Add files by type
        foreach type [array names file_groups] {
            puts $fd "# Add $type files"
            puts $fd "set files \[list \\"
            foreach file_info $file_groups($type) {
                lassign $file_info rel_path file
                puts $fd " \"\$source_dir/$rel_path\" \\"
            }
            puts $fd "\]"
            puts $fd "add_files -norecurse -fileset \$fileset $files"
            
            # Set file properties
            foreach file_info $file_groups($type) {
                lassign $file_info rel_path file
                set file_props [list_property $file]
                
                foreach prop $file_props {
                    if {[string match "IS_*" $prop] || [string match "HAS_*" $prop]} {
                        # Skip read-only properties
                        continue
                    }
                    
                    if {![catch {set value [get_property $prop $file]}]} {
                        if {$value != "" && $prop != "LIBRARY" && $prop != "USED_IN"} {
                            puts $fd "set_property -name \"$prop\" -value \"$value\" -objects \[get_files \"\$source_dir/$rel_path\"\]"
                        }
                    }
                }
                
                # Handle special case for LIBRARY property
                if {![catch {set lib [get_property LIBRARY $file]}]} {
                    if {$lib != ""} {
                        puts $fd "set_property -name \"LIBRARY\" -value \"$lib\" -objects \[get_files \"\$source_dir/$rel_path\"\]"
                    }
                }
            }
            puts $fd ""
        }
    }
    
    # Set fileset properties
    set fs_props [list_property $fileset]
    puts $fd "# Set '$fileset' fileset properties"
    foreach prop $fs_props {
        if {[string match "IS_*" $prop] || [string match "HAS_*" $prop]} {
            # Skip read-only properties
            continue
        }
        
        if {![catch {set value [get_property $prop $fileset]}]} {
            if {$value != ""} {
                puts $fd "set_property -name \"$prop\" -value \"$value\" -objects \[get_filesets $fileset\]"
            }
        }
    }
    puts $fd ""
}

# Process constraints files separately to maintain order
set constraints [get_files -of_objects [get_filesets constrs_1] -filter {FILE_TYPE == XDC}]
if {[llength $constraints] > 0} {
    puts $fd "# Add constraints"
    foreach file $constraints {
        set rel_path [copy_file_to_source $file $output_dir $project_dir]
        puts $fd "add_files -fileset constrs_1 \"\$source_dir/$rel_path\""
        
        # Set file properties, particularly USED_IN
        if {![catch {set used_in [get_property USED_IN $file]}]} {
            puts $fd "set_property USED_IN \"$used_in\" \[get_files \"\$source_dir/$rel_path\"\]"
        }
    }
    puts $fd ""
}

# Set top module for each fileset that has a top
foreach fileset [get_filesets] {
    if {![catch {set top [get_property TOP $fileset]}]} {
        if {$top != ""} {
            puts $fd "# Set top module for fileset '$fileset'"
            puts $fd "set_property top $top \[get_filesets $fileset\]"
            puts $fd "update_compile_order -fileset $fileset"
            puts $fd ""
        }
    }
}

# Process board settings if any
if {![catch {set board [get_property BOARD_PART [current_project]]}]} {
    if {$board != ""} {
        puts $fd "# Set board part"
        puts $fd "set_property board_part $board \[current_project\]"
        puts $fd ""
    }
}

# Process runs
if {$include_runs} {
    set runs [get_runs]
    puts $fd "# Create and set up runs"
    
    foreach run $runs {
        if {$run eq "synth_1" || $run eq "impl_1"} {
            # These are created by default with the project
            puts $fd "# Configure run $run"
        } else {
            set parent_run ""
            if {![catch {set parent_run [get_property PARENT [get_runs $run]]}]} {
                set flow [get_property FLOW [get_runs $run]]
                
                if {$flow eq "Vivado Synthesis 2023"} {
                    puts $fd "create_run -name $run -part \[get_property PART \[current_project\]\] -flow {$flow} -strategy \"\[get_property STRATEGY \[get_runs $run\]\]\" -constrset \[get_property CONSTRSET \[get_runs $run\]\]"
                } else {
                    puts $fd "create_run -name $run -part \[get_property PART \[current_project\]\] -flow {$flow} -strategy \"\[get_property STRATEGY \[get_runs $run\]\]\" -constrset \[get_property CONSTRSET \[get_runs $run\]\] -parent_run $parent_run"
                }
            }
        }
        
        # Set run properties
        set run_props [list_property $run]
        foreach prop $run_props {
            if {[string match "IS_*" $prop] || [string match "HAS_*" $prop] || 
                [string match "STATS*" $prop] || [string match "NEEDS_*" $prop] ||
                [string match "STATUS" $prop] || [string match "PROGRESS" $prop]} {
                # Skip read-only properties
                continue
            }
            
            if {![catch {set value [get_property $prop $run]}]} {
                if {$value != ""} {
                    puts $fd "set_property -name \"$prop\" -value \"$value\" -objects \[get_runs $run\]"
                }
            }
        }
    }
    
    # Set current run
    set current_run [current_run -synthesis]
    puts $fd "# Set current synthesis run"
    puts $fd "current_run -synthesis \[get_runs $current_run\]"
    
    set current_impl_run [current_run -implementation]
    puts $fd "# Set current implementation run"
    puts $fd "current_run -implementation \[get_runs $current_impl_run\]"
    puts $fd ""
}

# Complete the script
puts $fd "# Complete project creation"
puts $fd "close_project"
puts $fd ""
puts $fd "puts \"Project $project_name has been recreated.\""
puts $fd "puts \"Project location: \$project_dir\""

# Close the output file
close $fd

# Create archive if requested
if {$create_archive} {
    puts "INFO: Creating archive of source files..."
    cd $output_dir
    set zip_file "project_sources.zip"
    if {[catch {exec zip -r $zip_file src} result]} {
        puts "WARNING: Could not create zip archive: $result"
    } else {
        puts "INFO: Created archive: $output_dir/$zip_file"
    }
}

puts "INFO: Project packaging complete!"
puts "INFO: Generated script: $output_dir/$script_name"
puts "INFO: Source files copied to: $output_dir/src"
puts "INFO: To recreate the project:"
puts "INFO:   1. Copy the $output_dir directory to the desired location"
puts "INFO:   2. Run: vivado -mode tcl -source $script_name"

# Close the project
close_project

# Exit Vivado if in batch mode
if {[info exists argv0] && [file tail [info script]] == [file tail $argv0]} {
    exit
}
