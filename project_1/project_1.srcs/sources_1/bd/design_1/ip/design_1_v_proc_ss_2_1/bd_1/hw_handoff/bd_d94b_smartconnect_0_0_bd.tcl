
################################################################
# This is a generated script based on design: bd_bc83
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_bc83_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART em.avnet.com:zed:part0:1.3 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_bc83

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./bd_1

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2030 -severity "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_gid_msg -ssname BD::TCL -id 2031 -severity "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_gid_msg -ssname BD::TCL -id 2032 -severity "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2033 -severity "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_gid_msg -ssname BD::TCL -id 2034 -severity "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2035 -severity "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_gid_msg -ssname BD::TCL -id 2036 -severity "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_gid_msg -ssname BD::TCL -id 2037 -severity "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir -bdsource SBD $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design -bdsource SBD $design_name} errmsg] } {
     common::send_gid_msg -ssname BD::TCL -id 2038 -severity "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: i_nodes
proc create_hier_cell_i_nodes { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_i_nodes() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_B

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_R

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_W

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AR

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AW

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_W


  # Create pins
  create_bd_pin -dir I -type clk m_sc_aclk
  create_bd_pin -dir I -type rst m_sc_aresetn
  create_bd_pin -dir I -type clk s_sc_aclk
  create_bd_pin -dir I -type rst s_sc_aresetn

  # Create instance: i_ar_node, and set properties
  set i_ar_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 i_ar_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {2} \
   CONFIG.FIFO_SIZE {0} \
   CONFIG.FIFO_TYPE {0} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {12} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $i_ar_node

  # Create instance: i_aw_node, and set properties
  set i_aw_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 i_aw_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {3} \
   CONFIG.FIFO_SIZE {0} \
   CONFIG.FIFO_TYPE {0} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {12} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $i_aw_node

  # Create instance: i_b_node, and set properties
  set i_b_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 i_b_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {4} \
   CONFIG.FIFO_SIZE {0} \
   CONFIG.FIFO_TYPE {0} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {12} \
   CONFIG.PAYLD_WIDTH {7} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_WIDTH {0} \
 ] $i_b_node

  # Create instance: i_r_node, and set properties
  set i_r_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 i_r_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {0} \
   CONFIG.FIFO_SIZE {0} \
   CONFIG.FIFO_TYPE {0} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {12} \
   CONFIG.PAYLD_WIDTH {53} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_BITS_PER_BYTE {0} \
 ] $i_r_node

  # Create instance: i_w_node, and set properties
  set i_w_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 i_w_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {1} \
   CONFIG.FIFO_SIZE {0} \
   CONFIG.FIFO_TYPE {0} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {12} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {65} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_BITS_PER_BYTE {0} \
 ] $i_w_node

  # Create interface connections
  connect_bd_intf_net -intf_net S_SC_AR_1 [get_bd_intf_pins S_SC_AR] [get_bd_intf_pins i_ar_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_AW_1 [get_bd_intf_pins S_SC_AW] [get_bd_intf_pins i_aw_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_B_1 [get_bd_intf_pins S_SC_B] [get_bd_intf_pins i_b_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_R_1 [get_bd_intf_pins S_SC_R] [get_bd_intf_pins i_r_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_W_1 [get_bd_intf_pins S_SC_W] [get_bd_intf_pins i_w_node/S_SC]
  connect_bd_intf_net -intf_net i_ar_node_M_SC [get_bd_intf_pins M_SC_AR] [get_bd_intf_pins i_ar_node/M_SC]
  connect_bd_intf_net -intf_net i_aw_node_M_SC [get_bd_intf_pins M_SC_AW] [get_bd_intf_pins i_aw_node/M_SC]
  connect_bd_intf_net -intf_net i_b_node_M_SC [get_bd_intf_pins M_SC_B] [get_bd_intf_pins i_b_node/M_SC]
  connect_bd_intf_net -intf_net i_r_node_M_SC [get_bd_intf_pins M_SC_R] [get_bd_intf_pins i_r_node/M_SC]
  connect_bd_intf_net -intf_net i_w_node_M_SC [get_bd_intf_pins M_SC_W] [get_bd_intf_pins i_w_node/M_SC]

  # Create port connections
  connect_bd_net -net m_sc_aclk_1 [get_bd_pins m_sc_aclk] [get_bd_pins i_ar_node/m_sc_aclk] [get_bd_pins i_aw_node/m_sc_aclk] [get_bd_pins i_b_node/s_sc_aclk] [get_bd_pins i_r_node/s_sc_aclk] [get_bd_pins i_w_node/m_sc_aclk]
  connect_bd_net -net m_sc_aresetn_1 [get_bd_pins m_sc_aresetn] [get_bd_pins i_ar_node/m_sc_aresetn] [get_bd_pins i_aw_node/m_sc_aresetn] [get_bd_pins i_b_node/s_sc_aresetn] [get_bd_pins i_r_node/s_sc_aresetn] [get_bd_pins i_w_node/m_sc_aresetn]
  connect_bd_net -net s_sc_aclk_1 [get_bd_pins s_sc_aclk] [get_bd_pins i_ar_node/s_sc_aclk] [get_bd_pins i_aw_node/s_sc_aclk] [get_bd_pins i_b_node/m_sc_aclk] [get_bd_pins i_r_node/m_sc_aclk] [get_bd_pins i_w_node/s_sc_aclk]
  connect_bd_net -net s_sc_aresetn_1 [get_bd_pins s_sc_aresetn] [get_bd_pins i_ar_node/s_sc_aresetn] [get_bd_pins i_aw_node/s_sc_aresetn] [get_bd_pins i_b_node/m_sc_aresetn] [get_bd_pins i_r_node/m_sc_aresetn] [get_bd_pins i_w_node/s_sc_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: switchboards
proc create_hier_cell_switchboards { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_switchboards() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M00_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M00_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M00_SC_B

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M00_SC_R

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M00_SC_W

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M01_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M01_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M01_SC_W

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M02_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M02_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M02_SC_W

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M03_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M03_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M03_SC_W

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M04_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M04_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M04_SC_W

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M05_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M05_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M05_SC_W

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M06_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M06_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M06_SC_W

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M07_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M07_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M07_SC_W

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M08_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M08_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M08_SC_W

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M09_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M09_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M09_SC_W

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M10_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M10_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M10_SC_W

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M11_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M11_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M11_SC_W

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S00_SC_AR

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S00_SC_AW

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S00_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S00_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S00_SC_W

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S01_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S01_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S02_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S02_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S03_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S03_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S04_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S04_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S05_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S05_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S06_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S06_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S07_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S07_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S08_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S08_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S09_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S09_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S10_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S10_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S11_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S11_SC_R


  # Create pins
  create_bd_pin -dir I -type clk m_sc_aclk
  create_bd_pin -dir I -type rst m_sc_aresetn
  create_bd_pin -dir I -type clk s_sc_aclk
  create_bd_pin -dir I -type rst s_sc_aresetn

  # Create instance: ar_la_in_swbd, and set properties
  set ar_la_in_swbd [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_switchboard:1.0 ar_la_in_swbd ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
 ] $ar_la_in_swbd

  # Create instance: ar_la_out_swbd, and set properties
  set ar_la_out_swbd [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_switchboard:1.0 ar_la_out_swbd ]
  set_property -dict [ list \
   CONFIG.NUM_MI {12} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
 ] $ar_la_out_swbd

  # Create instance: aw_la_in_swbd, and set properties
  set aw_la_in_swbd [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_switchboard:1.0 aw_la_in_swbd ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
 ] $aw_la_in_swbd

  # Create instance: aw_la_out_swbd, and set properties
  set aw_la_out_swbd [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_switchboard:1.0 aw_la_out_swbd ]
  set_property -dict [ list \
   CONFIG.NUM_MI {12} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
 ] $aw_la_out_swbd

  # Create instance: b_la_in_swbd, and set properties
  set b_la_in_swbd [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_switchboard:1.0 b_la_in_swbd ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {7} \
 ] $b_la_in_swbd

  # Create instance: b_la_out_swbd, and set properties
  set b_la_out_swbd [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_switchboard:1.0 b_la_out_swbd ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {12} \
   CONFIG.PAYLD_WIDTH {7} \
 ] $b_la_out_swbd

  # Create instance: i_nodes
  create_hier_cell_i_nodes $hier_obj i_nodes

  # Create instance: r_la_in_swbd, and set properties
  set r_la_in_swbd [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_switchboard:1.0 r_la_in_swbd ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {53} \
 ] $r_la_in_swbd

  # Create instance: r_la_out_swbd, and set properties
  set r_la_out_swbd [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_switchboard:1.0 r_la_out_swbd ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {12} \
   CONFIG.PAYLD_WIDTH {53} \
 ] $r_la_out_swbd

  # Create instance: w_la_in_swbd, and set properties
  set w_la_in_swbd [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_switchboard:1.0 w_la_in_swbd ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {65} \
 ] $w_la_in_swbd

  # Create instance: w_la_out_swbd, and set properties
  set w_la_out_swbd [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_switchboard:1.0 w_la_out_swbd ]
  set_property -dict [ list \
   CONFIG.NUM_MI {12} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {65} \
 ] $w_la_out_swbd

  # Create interface connections
  connect_bd_intf_net -intf_net S00_SC_AR_1 [get_bd_intf_pins S00_SC_AR] [get_bd_intf_pins ar_la_in_swbd/S00_SC]
  connect_bd_intf_net -intf_net S00_SC_AW_1 [get_bd_intf_pins S00_SC_AW] [get_bd_intf_pins aw_la_in_swbd/S00_SC]
  connect_bd_intf_net -intf_net S00_SC_B_1 [get_bd_intf_pins S00_SC_B] [get_bd_intf_pins b_la_out_swbd/S00_SC]
  connect_bd_intf_net -intf_net S00_SC_R_1 [get_bd_intf_pins S00_SC_R] [get_bd_intf_pins r_la_out_swbd/S00_SC]
  connect_bd_intf_net -intf_net S00_SC_W_1 [get_bd_intf_pins S00_SC_W] [get_bd_intf_pins w_la_in_swbd/S00_SC]
  connect_bd_intf_net -intf_net S01_SC_B_1 [get_bd_intf_pins S01_SC_B] [get_bd_intf_pins b_la_out_swbd/S01_SC]
  connect_bd_intf_net -intf_net S01_SC_R_1 [get_bd_intf_pins S01_SC_R] [get_bd_intf_pins r_la_out_swbd/S01_SC]
  connect_bd_intf_net -intf_net S02_SC_B_1 [get_bd_intf_pins S02_SC_B] [get_bd_intf_pins b_la_out_swbd/S02_SC]
  connect_bd_intf_net -intf_net S02_SC_R_1 [get_bd_intf_pins S02_SC_R] [get_bd_intf_pins r_la_out_swbd/S02_SC]
  connect_bd_intf_net -intf_net S03_SC_B_1 [get_bd_intf_pins S03_SC_B] [get_bd_intf_pins b_la_out_swbd/S03_SC]
  connect_bd_intf_net -intf_net S03_SC_R_1 [get_bd_intf_pins S03_SC_R] [get_bd_intf_pins r_la_out_swbd/S03_SC]
  connect_bd_intf_net -intf_net S04_SC_B_1 [get_bd_intf_pins S04_SC_B] [get_bd_intf_pins b_la_out_swbd/S04_SC]
  connect_bd_intf_net -intf_net S04_SC_R_1 [get_bd_intf_pins S04_SC_R] [get_bd_intf_pins r_la_out_swbd/S04_SC]
  connect_bd_intf_net -intf_net S05_SC_B_1 [get_bd_intf_pins S05_SC_B] [get_bd_intf_pins b_la_out_swbd/S05_SC]
  connect_bd_intf_net -intf_net S05_SC_R_1 [get_bd_intf_pins S05_SC_R] [get_bd_intf_pins r_la_out_swbd/S05_SC]
  connect_bd_intf_net -intf_net S06_SC_B_1 [get_bd_intf_pins S06_SC_B] [get_bd_intf_pins b_la_out_swbd/S06_SC]
  connect_bd_intf_net -intf_net S06_SC_R_1 [get_bd_intf_pins S06_SC_R] [get_bd_intf_pins r_la_out_swbd/S06_SC]
  connect_bd_intf_net -intf_net S07_SC_B_1 [get_bd_intf_pins S07_SC_B] [get_bd_intf_pins b_la_out_swbd/S07_SC]
  connect_bd_intf_net -intf_net S07_SC_R_1 [get_bd_intf_pins S07_SC_R] [get_bd_intf_pins r_la_out_swbd/S07_SC]
  connect_bd_intf_net -intf_net S08_SC_B_1 [get_bd_intf_pins S08_SC_B] [get_bd_intf_pins b_la_out_swbd/S08_SC]
  connect_bd_intf_net -intf_net S08_SC_R_1 [get_bd_intf_pins S08_SC_R] [get_bd_intf_pins r_la_out_swbd/S08_SC]
  connect_bd_intf_net -intf_net S09_SC_B_1 [get_bd_intf_pins S09_SC_B] [get_bd_intf_pins b_la_out_swbd/S09_SC]
  connect_bd_intf_net -intf_net S09_SC_R_1 [get_bd_intf_pins S09_SC_R] [get_bd_intf_pins r_la_out_swbd/S09_SC]
  connect_bd_intf_net -intf_net S10_SC_B_1 [get_bd_intf_pins S10_SC_B] [get_bd_intf_pins b_la_out_swbd/S10_SC]
  connect_bd_intf_net -intf_net S10_SC_R_1 [get_bd_intf_pins S10_SC_R] [get_bd_intf_pins r_la_out_swbd/S10_SC]
  connect_bd_intf_net -intf_net S11_SC_B_1 [get_bd_intf_pins S11_SC_B] [get_bd_intf_pins b_la_out_swbd/S11_SC]
  connect_bd_intf_net -intf_net S11_SC_R_1 [get_bd_intf_pins S11_SC_R] [get_bd_intf_pins r_la_out_swbd/S11_SC]
  connect_bd_intf_net -intf_net ar_la_in_swbd_M00_SC [get_bd_intf_pins ar_la_in_swbd/M00_SC] [get_bd_intf_pins i_nodes/S_SC_AR]
  connect_bd_intf_net -intf_net ar_la_out_swbd_M00_SC [get_bd_intf_pins M00_SC_AR] [get_bd_intf_pins ar_la_out_swbd/M00_SC]
  connect_bd_intf_net -intf_net ar_la_out_swbd_M01_SC [get_bd_intf_pins M01_SC_AR] [get_bd_intf_pins ar_la_out_swbd/M01_SC]
  connect_bd_intf_net -intf_net ar_la_out_swbd_M02_SC [get_bd_intf_pins M02_SC_AR] [get_bd_intf_pins ar_la_out_swbd/M02_SC]
  connect_bd_intf_net -intf_net ar_la_out_swbd_M03_SC [get_bd_intf_pins M03_SC_AR] [get_bd_intf_pins ar_la_out_swbd/M03_SC]
  connect_bd_intf_net -intf_net ar_la_out_swbd_M04_SC [get_bd_intf_pins M04_SC_AR] [get_bd_intf_pins ar_la_out_swbd/M04_SC]
  connect_bd_intf_net -intf_net ar_la_out_swbd_M05_SC [get_bd_intf_pins M05_SC_AR] [get_bd_intf_pins ar_la_out_swbd/M05_SC]
  connect_bd_intf_net -intf_net ar_la_out_swbd_M06_SC [get_bd_intf_pins M06_SC_AR] [get_bd_intf_pins ar_la_out_swbd/M06_SC]
  connect_bd_intf_net -intf_net ar_la_out_swbd_M07_SC [get_bd_intf_pins M07_SC_AR] [get_bd_intf_pins ar_la_out_swbd/M07_SC]
  connect_bd_intf_net -intf_net ar_la_out_swbd_M08_SC [get_bd_intf_pins M08_SC_AR] [get_bd_intf_pins ar_la_out_swbd/M08_SC]
  connect_bd_intf_net -intf_net ar_la_out_swbd_M09_SC [get_bd_intf_pins M09_SC_AR] [get_bd_intf_pins ar_la_out_swbd/M09_SC]
  connect_bd_intf_net -intf_net ar_la_out_swbd_M10_SC [get_bd_intf_pins M10_SC_AR] [get_bd_intf_pins ar_la_out_swbd/M10_SC]
  connect_bd_intf_net -intf_net ar_la_out_swbd_M11_SC [get_bd_intf_pins M11_SC_AR] [get_bd_intf_pins ar_la_out_swbd/M11_SC]
  connect_bd_intf_net -intf_net aw_la_in_swbd_M00_SC [get_bd_intf_pins aw_la_in_swbd/M00_SC] [get_bd_intf_pins i_nodes/S_SC_AW]
  connect_bd_intf_net -intf_net aw_la_out_swbd_M00_SC [get_bd_intf_pins M00_SC_AW] [get_bd_intf_pins aw_la_out_swbd/M00_SC]
  connect_bd_intf_net -intf_net aw_la_out_swbd_M01_SC [get_bd_intf_pins M01_SC_AW] [get_bd_intf_pins aw_la_out_swbd/M01_SC]
  connect_bd_intf_net -intf_net aw_la_out_swbd_M02_SC [get_bd_intf_pins M02_SC_AW] [get_bd_intf_pins aw_la_out_swbd/M02_SC]
  connect_bd_intf_net -intf_net aw_la_out_swbd_M03_SC [get_bd_intf_pins M03_SC_AW] [get_bd_intf_pins aw_la_out_swbd/M03_SC]
  connect_bd_intf_net -intf_net aw_la_out_swbd_M04_SC [get_bd_intf_pins M04_SC_AW] [get_bd_intf_pins aw_la_out_swbd/M04_SC]
  connect_bd_intf_net -intf_net aw_la_out_swbd_M05_SC [get_bd_intf_pins M05_SC_AW] [get_bd_intf_pins aw_la_out_swbd/M05_SC]
  connect_bd_intf_net -intf_net aw_la_out_swbd_M06_SC [get_bd_intf_pins M06_SC_AW] [get_bd_intf_pins aw_la_out_swbd/M06_SC]
  connect_bd_intf_net -intf_net aw_la_out_swbd_M07_SC [get_bd_intf_pins M07_SC_AW] [get_bd_intf_pins aw_la_out_swbd/M07_SC]
  connect_bd_intf_net -intf_net aw_la_out_swbd_M08_SC [get_bd_intf_pins M08_SC_AW] [get_bd_intf_pins aw_la_out_swbd/M08_SC]
  connect_bd_intf_net -intf_net aw_la_out_swbd_M09_SC [get_bd_intf_pins M09_SC_AW] [get_bd_intf_pins aw_la_out_swbd/M09_SC]
  connect_bd_intf_net -intf_net aw_la_out_swbd_M10_SC [get_bd_intf_pins M10_SC_AW] [get_bd_intf_pins aw_la_out_swbd/M10_SC]
  connect_bd_intf_net -intf_net aw_la_out_swbd_M11_SC [get_bd_intf_pins M11_SC_AW] [get_bd_intf_pins aw_la_out_swbd/M11_SC]
  connect_bd_intf_net -intf_net b_la_in_swbd_M00_SC [get_bd_intf_pins M00_SC_B] [get_bd_intf_pins b_la_in_swbd/M00_SC]
  connect_bd_intf_net -intf_net b_la_out_swbd_M00_SC [get_bd_intf_pins b_la_out_swbd/M00_SC] [get_bd_intf_pins i_nodes/S_SC_B]
  connect_bd_intf_net -intf_net i_nodes_M_SC_AR [get_bd_intf_pins ar_la_out_swbd/S00_SC] [get_bd_intf_pins i_nodes/M_SC_AR]
  connect_bd_intf_net -intf_net i_nodes_M_SC_AW [get_bd_intf_pins aw_la_out_swbd/S00_SC] [get_bd_intf_pins i_nodes/M_SC_AW]
  connect_bd_intf_net -intf_net i_nodes_M_SC_B [get_bd_intf_pins b_la_in_swbd/S00_SC] [get_bd_intf_pins i_nodes/M_SC_B]
  connect_bd_intf_net -intf_net i_nodes_M_SC_R [get_bd_intf_pins i_nodes/M_SC_R] [get_bd_intf_pins r_la_in_swbd/S00_SC]
  connect_bd_intf_net -intf_net i_nodes_M_SC_W [get_bd_intf_pins i_nodes/M_SC_W] [get_bd_intf_pins w_la_out_swbd/S00_SC]
  connect_bd_intf_net -intf_net r_la_in_swbd_M00_SC [get_bd_intf_pins M00_SC_R] [get_bd_intf_pins r_la_in_swbd/M00_SC]
  connect_bd_intf_net -intf_net r_la_out_swbd_M00_SC [get_bd_intf_pins i_nodes/S_SC_R] [get_bd_intf_pins r_la_out_swbd/M00_SC]
  connect_bd_intf_net -intf_net w_la_in_swbd_M00_SC [get_bd_intf_pins i_nodes/S_SC_W] [get_bd_intf_pins w_la_in_swbd/M00_SC]
  connect_bd_intf_net -intf_net w_la_out_swbd_M00_SC [get_bd_intf_pins M00_SC_W] [get_bd_intf_pins w_la_out_swbd/M00_SC]
  connect_bd_intf_net -intf_net w_la_out_swbd_M01_SC [get_bd_intf_pins M01_SC_W] [get_bd_intf_pins w_la_out_swbd/M01_SC]
  connect_bd_intf_net -intf_net w_la_out_swbd_M02_SC [get_bd_intf_pins M02_SC_W] [get_bd_intf_pins w_la_out_swbd/M02_SC]
  connect_bd_intf_net -intf_net w_la_out_swbd_M03_SC [get_bd_intf_pins M03_SC_W] [get_bd_intf_pins w_la_out_swbd/M03_SC]
  connect_bd_intf_net -intf_net w_la_out_swbd_M04_SC [get_bd_intf_pins M04_SC_W] [get_bd_intf_pins w_la_out_swbd/M04_SC]
  connect_bd_intf_net -intf_net w_la_out_swbd_M05_SC [get_bd_intf_pins M05_SC_W] [get_bd_intf_pins w_la_out_swbd/M05_SC]
  connect_bd_intf_net -intf_net w_la_out_swbd_M06_SC [get_bd_intf_pins M06_SC_W] [get_bd_intf_pins w_la_out_swbd/M06_SC]
  connect_bd_intf_net -intf_net w_la_out_swbd_M07_SC [get_bd_intf_pins M07_SC_W] [get_bd_intf_pins w_la_out_swbd/M07_SC]
  connect_bd_intf_net -intf_net w_la_out_swbd_M08_SC [get_bd_intf_pins M08_SC_W] [get_bd_intf_pins w_la_out_swbd/M08_SC]
  connect_bd_intf_net -intf_net w_la_out_swbd_M09_SC [get_bd_intf_pins M09_SC_W] [get_bd_intf_pins w_la_out_swbd/M09_SC]
  connect_bd_intf_net -intf_net w_la_out_swbd_M10_SC [get_bd_intf_pins M10_SC_W] [get_bd_intf_pins w_la_out_swbd/M10_SC]
  connect_bd_intf_net -intf_net w_la_out_swbd_M11_SC [get_bd_intf_pins M11_SC_W] [get_bd_intf_pins w_la_out_swbd/M11_SC]

  # Create port connections
  connect_bd_net -net m_sc_aclk_1 [get_bd_pins m_sc_aclk] [get_bd_pins ar_la_out_swbd/aclk] [get_bd_pins aw_la_out_swbd/aclk] [get_bd_pins b_la_out_swbd/aclk] [get_bd_pins i_nodes/m_sc_aclk] [get_bd_pins r_la_out_swbd/aclk] [get_bd_pins w_la_out_swbd/aclk]
  connect_bd_net -net m_sc_aresetn_1 [get_bd_pins m_sc_aresetn] [get_bd_pins i_nodes/m_sc_aresetn]
  connect_bd_net -net s_sc_aclk_1 [get_bd_pins s_sc_aclk] [get_bd_pins ar_la_in_swbd/aclk] [get_bd_pins aw_la_in_swbd/aclk] [get_bd_pins b_la_in_swbd/aclk] [get_bd_pins i_nodes/s_sc_aclk] [get_bd_pins r_la_in_swbd/aclk] [get_bd_pins w_la_in_swbd/aclk]
  connect_bd_net -net s_sc_aresetn_1 [get_bd_pins s_sc_aresetn] [get_bd_pins i_nodes/s_sc_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: s00_nodes
proc create_hier_cell_s00_nodes { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_s00_nodes() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_B

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_R

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_W

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AR

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AW

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_W


  # Create pins
  create_bd_pin -dir I -type clk m_sc_clk
  create_bd_pin -dir I -type rst m_sc_resetn
  create_bd_pin -dir I -type clk s_sc_clk
  create_bd_pin -dir I -type rst s_sc_resetn

  # Create instance: s00_ar_node, and set properties
  set s00_ar_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 s00_ar_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {2} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $s00_ar_node

  # Create instance: s00_aw_node, and set properties
  set s00_aw_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 s00_aw_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {3} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $s00_aw_node

  # Create instance: s00_b_node, and set properties
  set s00_b_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 s00_b_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {4} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {7} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_WIDTH {0} \
 ] $s00_b_node

  # Create instance: s00_r_node, and set properties
  set s00_r_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 s00_r_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {0} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {53} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_BITS_PER_BYTE {0} \
 ] $s00_r_node

  # Create instance: s00_w_node, and set properties
  set s00_w_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 s00_w_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {1} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {65} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_BITS_PER_BYTE {0} \
 ] $s00_w_node

  # Create interface connections
  connect_bd_intf_net -intf_net S_SC_AR_1 [get_bd_intf_pins S_SC_AR] [get_bd_intf_pins s00_ar_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_AW_1 [get_bd_intf_pins S_SC_AW] [get_bd_intf_pins s00_aw_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_B_1 [get_bd_intf_pins S_SC_B] [get_bd_intf_pins s00_b_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_R_1 [get_bd_intf_pins S_SC_R] [get_bd_intf_pins s00_r_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_W_1 [get_bd_intf_pins S_SC_W] [get_bd_intf_pins s00_w_node/S_SC]
  connect_bd_intf_net -intf_net s00_ar_node_M_SC [get_bd_intf_pins M_SC_AR] [get_bd_intf_pins s00_ar_node/M_SC]
  connect_bd_intf_net -intf_net s00_aw_node_M_SC [get_bd_intf_pins M_SC_AW] [get_bd_intf_pins s00_aw_node/M_SC]
  connect_bd_intf_net -intf_net s00_b_node_M_SC [get_bd_intf_pins M_SC_B] [get_bd_intf_pins s00_b_node/M_SC]
  connect_bd_intf_net -intf_net s00_r_node_M_SC [get_bd_intf_pins M_SC_R] [get_bd_intf_pins s00_r_node/M_SC]
  connect_bd_intf_net -intf_net s00_w_node_M_SC [get_bd_intf_pins M_SC_W] [get_bd_intf_pins s00_w_node/M_SC]

  # Create port connections
  connect_bd_net -net m_sc_clk_1 [get_bd_pins m_sc_clk] [get_bd_pins s00_ar_node/m_sc_aclk] [get_bd_pins s00_aw_node/m_sc_aclk] [get_bd_pins s00_b_node/s_sc_aclk] [get_bd_pins s00_r_node/s_sc_aclk] [get_bd_pins s00_w_node/m_sc_aclk]
  connect_bd_net -net m_sc_resetn_1 [get_bd_pins m_sc_resetn] [get_bd_pins s00_ar_node/m_sc_aresetn] [get_bd_pins s00_aw_node/m_sc_aresetn] [get_bd_pins s00_b_node/s_sc_aresetn] [get_bd_pins s00_r_node/s_sc_aresetn] [get_bd_pins s00_w_node/m_sc_aresetn]
  connect_bd_net -net s_sc_clk_1 [get_bd_pins s_sc_clk] [get_bd_pins s00_ar_node/s_sc_aclk] [get_bd_pins s00_aw_node/s_sc_aclk] [get_bd_pins s00_b_node/m_sc_aclk] [get_bd_pins s00_r_node/m_sc_aclk] [get_bd_pins s00_w_node/s_sc_aclk]
  connect_bd_net -net s_sc_resetn_1 [get_bd_pins s_sc_resetn] [get_bd_pins s00_ar_node/s_sc_aresetn] [get_bd_pins s00_aw_node/s_sc_aresetn] [get_bd_pins s00_b_node/m_sc_aresetn] [get_bd_pins s00_r_node/m_sc_aresetn] [get_bd_pins s00_w_node/s_sc_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: s00_entry_pipeline
proc create_hier_cell_s00_entry_pipeline { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_s00_entry_pipeline() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn

  # Create instance: s00_mmu, and set properties
  set s00_mmu [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_mmu:1.0 s00_mmu ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.ENABLE_PIPELINING {0} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.IS_CASCADED {0} \
   CONFIG.MSC000_ROUTE {0b10000000000011} \
   CONFIG.MSC001_ROUTE {0b10000000000101} \
   CONFIG.MSC002_ROUTE {0b10000000001001} \
   CONFIG.MSC003_ROUTE {0b10000000010001} \
   CONFIG.MSC004_ROUTE {0b10000000100001} \
   CONFIG.MSC005_ROUTE {0b10000001000001} \
   CONFIG.MSC006_ROUTE {0b10000010000001} \
   CONFIG.MSC007_ROUTE {0b10000100000001} \
   CONFIG.MSC008_ROUTE {0b10001000000001} \
   CONFIG.MSC009_ROUTE {0b10010000000001} \
   CONFIG.MSC010_ROUTE {0b10100000000001} \
   CONFIG.MSC011_ROUTE {0b11000000000001} \
   CONFIG.MSC_ROUTE_WIDTH {14} \
   CONFIG.NUM_MSC {12} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_SEG {6} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.RDATA_WIDTH {32} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SEG000_BASE_ADDR {0x0000000000000000} \
   CONFIG.SEG000_SECURE_READ {0} \
   CONFIG.SEG000_SECURE_WRITE {0} \
   CONFIG.SEG000_SEP_ROUTE {0b0000000000000000000000000000000000000000000000000000000000001000} \
   CONFIG.SEG000_SIZE {16} \
   CONFIG.SEG000_SUPPORTS_READ {1} \
   CONFIG.SEG000_SUPPORTS_WRITE {1} \
   CONFIG.SEG001_BASE_ADDR {0x0000000000010000} \
   CONFIG.SEG001_SECURE_READ {0} \
   CONFIG.SEG001_SECURE_WRITE {0} \
   CONFIG.SEG001_SEP_ROUTE {0b0000000000000000000000000000000000000000000000000000000000000011} \
   CONFIG.SEG001_SIZE {16} \
   CONFIG.SEG001_SUPPORTS_READ {1} \
   CONFIG.SEG001_SUPPORTS_WRITE {1} \
   CONFIG.SEG002_BASE_ADDR {0x0000000000020000} \
   CONFIG.SEG002_SECURE_READ {0} \
   CONFIG.SEG002_SECURE_WRITE {0} \
   CONFIG.SEG002_SEP_ROUTE {0b0000000000000000000000000000000000000000000000000000000000000100} \
   CONFIG.SEG002_SIZE {16} \
   CONFIG.SEG002_SUPPORTS_READ {1} \
   CONFIG.SEG002_SUPPORTS_WRITE {1} \
   CONFIG.SEG003_BASE_ADDR {0x0000000000030000} \
   CONFIG.SEG003_SECURE_READ {0} \
   CONFIG.SEG003_SECURE_WRITE {0} \
   CONFIG.SEG003_SEP_ROUTE {0b0000000000000000000000000000000000000000000000000000000000000001} \
   CONFIG.SEG003_SIZE {16} \
   CONFIG.SEG003_SUPPORTS_READ {1} \
   CONFIG.SEG003_SUPPORTS_WRITE {1} \
   CONFIG.SEG004_BASE_ADDR {0x0000000000040000} \
   CONFIG.SEG004_SECURE_READ {0} \
   CONFIG.SEG004_SECURE_WRITE {0} \
   CONFIG.SEG004_SEP_ROUTE {0b0000000000000000000000000000000000000000000000000000000000000000} \
   CONFIG.SEG004_SIZE {16} \
   CONFIG.SEG004_SUPPORTS_READ {1} \
   CONFIG.SEG004_SUPPORTS_WRITE {1} \
   CONFIG.SEG005_BASE_ADDR {0x0000000000050000} \
   CONFIG.SEG005_SECURE_READ {0} \
   CONFIG.SEG005_SECURE_WRITE {0} \
   CONFIG.SEG005_SEP_ROUTE {0b0000000000000000000000000000000000000000000000000000000000000010} \
   CONFIG.SEG005_SIZE {16} \
   CONFIG.SEG005_SUPPORTS_READ {1} \
   CONFIG.SEG005_SUPPORTS_WRITE {1} \
   CONFIG.SINGLE_ISSUING {1} \
   CONFIG.SUPPORTS_NARROW {0} \
   CONFIG.SUPPORTS_WRAP {0} \
   CONFIG.S_ARUSER_WIDTH {0} \
   CONFIG.S_AWUSER_WIDTH {0} \
   CONFIG.S_BUSER_WIDTH {0} \
   CONFIG.S_PROTOCOL {AXI4LITE} \
   CONFIG.S_RUSER_WIDTH {0} \
   CONFIG.S_WUSER_WIDTH {0} \
   CONFIG.WDATA_WIDTH {32} \
 ] $s00_mmu

  # Create instance: s00_si_converter, and set properties
  set s00_si_converter [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_si_converter:1.0 s00_si_converter ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.AXILITE_CONV {0} \
   CONFIG.HAS_BURST {0} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.IS_CASCADED {0} \
   CONFIG.LIMIT_READ_LENGTH {0} \
   CONFIG.LIMIT_WRITE_LENGTH {0} \
   CONFIG.MAX_RUSER_BITS_PER_BYTE {0} \
   CONFIG.MAX_WUSER_BITS_PER_BYTE {0} \
   CONFIG.MEP_IDENTIFIER_WIDTH {1} \
   CONFIG.MSC000_RDATA_WIDTH {32} \
   CONFIG.MSC000_WDATA_WIDTH {32} \
   CONFIG.MSC001_RDATA_WIDTH {32} \
   CONFIG.MSC001_WDATA_WIDTH {32} \
   CONFIG.MSC002_RDATA_WIDTH {32} \
   CONFIG.MSC002_WDATA_WIDTH {32} \
   CONFIG.MSC003_RDATA_WIDTH {32} \
   CONFIG.MSC003_WDATA_WIDTH {32} \
   CONFIG.MSC004_RDATA_WIDTH {32} \
   CONFIG.MSC004_WDATA_WIDTH {32} \
   CONFIG.MSC008_RDATA_WIDTH {32} \
   CONFIG.MSC008_WDATA_WIDTH {32} \
   CONFIG.NUM_MSC {12} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_SEG {6} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.RDATA_WIDTH {32} \
   CONFIG.READ_WATERMARK {0} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SEP000_PROTOCOL {AXI4LITE} \
   CONFIG.SEP000_RDATA_WIDTH {32} \
   CONFIG.SEP000_WDATA_WIDTH {32} \
   CONFIG.SEP001_PROTOCOL {AXI4LITE} \
   CONFIG.SEP001_RDATA_WIDTH {32} \
   CONFIG.SEP001_WDATA_WIDTH {32} \
   CONFIG.SEP002_PROTOCOL {AXI4LITE} \
   CONFIG.SEP002_RDATA_WIDTH {32} \
   CONFIG.SEP002_WDATA_WIDTH {32} \
   CONFIG.SEP003_PROTOCOL {AXI4LITE} \
   CONFIG.SEP003_RDATA_WIDTH {32} \
   CONFIG.SEP003_WDATA_WIDTH {32} \
   CONFIG.SEP004_PROTOCOL {AXI4LITE} \
   CONFIG.SEP004_RDATA_WIDTH {32} \
   CONFIG.SEP004_WDATA_WIDTH {32} \
   CONFIG.SEP005_PROTOCOL {AXI4LITE} \
   CONFIG.SEP005_RDATA_WIDTH {32} \
   CONFIG.SEP005_WDATA_WIDTH {32} \
   CONFIG.SINGLE_ISSUING {1} \
   CONFIG.SUPPORTS_NARROW {0} \
   CONFIG.S_RUSER_BITS_PER_BYTE {0} \
   CONFIG.S_WUSER_BITS_PER_BYTE {0} \
   CONFIG.WDATA_WIDTH {32} \
   CONFIG.WRITE_WATERMARK {0} \
 ] $s00_si_converter

  # Create instance: s00_transaction_regulator, and set properties
  set s00_transaction_regulator [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_transaction_regulator:1.0 s00_transaction_regulator ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.IS_CASCADED {0} \
   CONFIG.MEP_IDENTIFIER {0} \
   CONFIG.MEP_IDENTIFIER_WIDTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.RDATA_WIDTH {32} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SEP_ROUTE_WIDTH {4} \
   CONFIG.SINGLE_ISSUING {1} \
   CONFIG.SUPPORTS_READ_DEADLOCK {0} \
   CONFIG.SUPPORTS_WRITE_DEADLOCK {0} \
   CONFIG.S_ID_WIDTH {0} \
   CONFIG.WDATA_WIDTH {32} \
 ] $s00_transaction_regulator

  # Create interface connections
  connect_bd_intf_net -intf_net s00_mmu_M_AXI [get_bd_intf_pins s00_mmu/M_AXI] [get_bd_intf_pins s00_transaction_regulator/S_AXI]
  connect_bd_intf_net -intf_net s00_si_converter_M_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins s00_si_converter/M_AXI]
  connect_bd_intf_net -intf_net s00_transaction_regulator_M_AXI [get_bd_intf_pins s00_si_converter/S_AXI] [get_bd_intf_pins s00_transaction_regulator/M_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins s00_mmu/S_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins s00_mmu/aclk] [get_bd_pins s00_si_converter/aclk] [get_bd_pins s00_transaction_regulator/aclk]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins s00_mmu/aresetn] [get_bd_pins s00_si_converter/aresetn] [get_bd_pins s00_transaction_regulator/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: m08_nodes
proc create_hier_cell_m08_nodes { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_m08_nodes() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_B

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_R

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_W

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AR

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AW

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_W


  # Create pins
  create_bd_pin -dir I -type clk m_axi_aclk
  create_bd_pin -dir I -type rst m_axi_aresetn
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: m08_ar_node, and set properties
  set m08_ar_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m08_ar_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {2} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $m08_ar_node

  # Create instance: m08_aw_node, and set properties
  set m08_aw_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m08_aw_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {3} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $m08_aw_node

  # Create instance: m08_b_node, and set properties
  set m08_b_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m08_b_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {4} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {7} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_WIDTH {0} \
 ] $m08_b_node

  # Create instance: m08_r_node, and set properties
  set m08_r_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m08_r_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {0} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {53} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_BITS_PER_BYTE {0} \
   CONFIG.USER_WIDTH {0} \
 ] $m08_r_node

  # Create instance: m08_w_node, and set properties
  set m08_w_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m08_w_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {1} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {65} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_BITS_PER_BYTE {0} \
   CONFIG.USER_WIDTH {0} \
 ] $m08_w_node

  # Create interface connections
  connect_bd_intf_net -intf_net S_SC_AR_1 [get_bd_intf_pins S_SC_AR] [get_bd_intf_pins m08_ar_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_AW_1 [get_bd_intf_pins S_SC_AW] [get_bd_intf_pins m08_aw_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_B_1 [get_bd_intf_pins S_SC_B] [get_bd_intf_pins m08_b_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_R_1 [get_bd_intf_pins S_SC_R] [get_bd_intf_pins m08_r_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_W_1 [get_bd_intf_pins S_SC_W] [get_bd_intf_pins m08_w_node/S_SC]
  connect_bd_intf_net -intf_net m08_ar_node_M_SC [get_bd_intf_pins M_SC_AR] [get_bd_intf_pins m08_ar_node/M_SC]
  connect_bd_intf_net -intf_net m08_aw_node_M_SC [get_bd_intf_pins M_SC_AW] [get_bd_intf_pins m08_aw_node/M_SC]
  connect_bd_intf_net -intf_net m08_b_node_M_SC [get_bd_intf_pins M_SC_B] [get_bd_intf_pins m08_b_node/M_SC]
  connect_bd_intf_net -intf_net m08_r_node_M_SC [get_bd_intf_pins M_SC_R] [get_bd_intf_pins m08_r_node/M_SC]
  connect_bd_intf_net -intf_net m08_w_node_M_SC [get_bd_intf_pins M_SC_W] [get_bd_intf_pins m08_w_node/M_SC]

  # Create port connections
  connect_bd_net -net m_axi_aclk_1 [get_bd_pins m_axi_aclk] [get_bd_pins m08_ar_node/m_sc_aclk] [get_bd_pins m08_aw_node/m_sc_aclk] [get_bd_pins m08_b_node/s_sc_aclk] [get_bd_pins m08_r_node/s_sc_aclk] [get_bd_pins m08_w_node/m_sc_aclk]
  connect_bd_net -net m_axi_aresetn_1 [get_bd_pins m_axi_aresetn] [get_bd_pins m08_ar_node/m_sc_aresetn] [get_bd_pins m08_aw_node/m_sc_aresetn] [get_bd_pins m08_b_node/s_sc_aresetn] [get_bd_pins m08_r_node/s_sc_aresetn] [get_bd_pins m08_w_node/m_sc_aresetn]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins m08_ar_node/s_sc_aclk] [get_bd_pins m08_aw_node/s_sc_aclk] [get_bd_pins m08_b_node/m_sc_aclk] [get_bd_pins m08_r_node/m_sc_aclk] [get_bd_pins m08_w_node/s_sc_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins m08_ar_node/s_sc_aresetn] [get_bd_pins m08_aw_node/s_sc_aresetn] [get_bd_pins m08_b_node/m_sc_aresetn] [get_bd_pins m08_r_node/m_sc_aresetn] [get_bd_pins m08_w_node/s_sc_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: m08_exit_pipeline
proc create_hier_cell_m08_exit_pipeline { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_m08_exit_pipeline() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn

  # Create instance: m08_exit, and set properties
  set m08_exit [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_exit:1.0 m08_exit ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {8} \
   CONFIG.ENABLE_PIPELINING {0} \
   CONFIG.HAS_BURST {0} \
   CONFIG.IS_CASCADED {0} \
   CONFIG.MEP_IDENTIFIER_WIDTH {1} \
   CONFIG.M_ID_WIDTH {0} \
   CONFIG.M_MAX_BURST_LENGTH {0} \
   CONFIG.M_PROTOCOL {AXI4LITE} \
   CONFIG.NUM_MSC {12} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.RDATA_WIDTH {32} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SINGLE_ISSUING {1} \
   CONFIG.SSC000_ROUTE {0b111} \
   CONFIG.SSC001_ROUTE {0b101} \
   CONFIG.SSC_ROUTE_WIDTH {3} \
   CONFIG.S_ID_WIDTH {1} \
   CONFIG.WDATA_WIDTH {32} \
 ] $m08_exit

  # Create interface connections
  connect_bd_intf_net -intf_net m08_exit_M_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins m08_exit/M_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins m08_exit/S_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins m08_exit/aclk]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins m08_exit/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: m04_nodes
proc create_hier_cell_m04_nodes { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_m04_nodes() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_B

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_R

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_W

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AR

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AW

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_W


  # Create pins
  create_bd_pin -dir I -type clk m_axi_aclk
  create_bd_pin -dir I -type rst m_axi_aresetn
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: m04_ar_node, and set properties
  set m04_ar_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m04_ar_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {2} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $m04_ar_node

  # Create instance: m04_aw_node, and set properties
  set m04_aw_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m04_aw_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {3} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $m04_aw_node

  # Create instance: m04_b_node, and set properties
  set m04_b_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m04_b_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {4} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {7} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_WIDTH {0} \
 ] $m04_b_node

  # Create instance: m04_r_node, and set properties
  set m04_r_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m04_r_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {0} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {53} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_BITS_PER_BYTE {0} \
   CONFIG.USER_WIDTH {0} \
 ] $m04_r_node

  # Create instance: m04_w_node, and set properties
  set m04_w_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m04_w_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {1} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {65} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_BITS_PER_BYTE {0} \
   CONFIG.USER_WIDTH {0} \
 ] $m04_w_node

  # Create interface connections
  connect_bd_intf_net -intf_net S_SC_AR_1 [get_bd_intf_pins S_SC_AR] [get_bd_intf_pins m04_ar_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_AW_1 [get_bd_intf_pins S_SC_AW] [get_bd_intf_pins m04_aw_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_B_1 [get_bd_intf_pins S_SC_B] [get_bd_intf_pins m04_b_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_R_1 [get_bd_intf_pins S_SC_R] [get_bd_intf_pins m04_r_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_W_1 [get_bd_intf_pins S_SC_W] [get_bd_intf_pins m04_w_node/S_SC]
  connect_bd_intf_net -intf_net m04_ar_node_M_SC [get_bd_intf_pins M_SC_AR] [get_bd_intf_pins m04_ar_node/M_SC]
  connect_bd_intf_net -intf_net m04_aw_node_M_SC [get_bd_intf_pins M_SC_AW] [get_bd_intf_pins m04_aw_node/M_SC]
  connect_bd_intf_net -intf_net m04_b_node_M_SC [get_bd_intf_pins M_SC_B] [get_bd_intf_pins m04_b_node/M_SC]
  connect_bd_intf_net -intf_net m04_r_node_M_SC [get_bd_intf_pins M_SC_R] [get_bd_intf_pins m04_r_node/M_SC]
  connect_bd_intf_net -intf_net m04_w_node_M_SC [get_bd_intf_pins M_SC_W] [get_bd_intf_pins m04_w_node/M_SC]

  # Create port connections
  connect_bd_net -net m_axi_aclk_1 [get_bd_pins m_axi_aclk] [get_bd_pins m04_ar_node/m_sc_aclk] [get_bd_pins m04_aw_node/m_sc_aclk] [get_bd_pins m04_b_node/s_sc_aclk] [get_bd_pins m04_r_node/s_sc_aclk] [get_bd_pins m04_w_node/m_sc_aclk]
  connect_bd_net -net m_axi_aresetn_1 [get_bd_pins m_axi_aresetn] [get_bd_pins m04_ar_node/m_sc_aresetn] [get_bd_pins m04_aw_node/m_sc_aresetn] [get_bd_pins m04_b_node/s_sc_aresetn] [get_bd_pins m04_r_node/s_sc_aresetn] [get_bd_pins m04_w_node/m_sc_aresetn]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins m04_ar_node/s_sc_aclk] [get_bd_pins m04_aw_node/s_sc_aclk] [get_bd_pins m04_b_node/m_sc_aclk] [get_bd_pins m04_r_node/m_sc_aclk] [get_bd_pins m04_w_node/s_sc_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins m04_ar_node/s_sc_aresetn] [get_bd_pins m04_aw_node/s_sc_aresetn] [get_bd_pins m04_b_node/m_sc_aresetn] [get_bd_pins m04_r_node/m_sc_aresetn] [get_bd_pins m04_w_node/s_sc_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: m04_exit_pipeline
proc create_hier_cell_m04_exit_pipeline { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_m04_exit_pipeline() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn

  # Create instance: m04_exit, and set properties
  set m04_exit [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_exit:1.0 m04_exit ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {7} \
   CONFIG.ENABLE_PIPELINING {0} \
   CONFIG.HAS_BURST {0} \
   CONFIG.IS_CASCADED {0} \
   CONFIG.MEP_IDENTIFIER_WIDTH {1} \
   CONFIG.M_ID_WIDTH {0} \
   CONFIG.M_MAX_BURST_LENGTH {0} \
   CONFIG.M_PROTOCOL {AXI4LITE} \
   CONFIG.NUM_MSC {12} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.RDATA_WIDTH {32} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SINGLE_ISSUING {1} \
   CONFIG.SSC000_ROUTE {0b111} \
   CONFIG.SSC001_ROUTE {0b101} \
   CONFIG.SSC_ROUTE_WIDTH {3} \
   CONFIG.S_ID_WIDTH {1} \
   CONFIG.WDATA_WIDTH {32} \
 ] $m04_exit

  # Create interface connections
  connect_bd_intf_net -intf_net m04_exit_M_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins m04_exit/M_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins m04_exit/S_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins m04_exit/aclk]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins m04_exit/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: m03_nodes
proc create_hier_cell_m03_nodes { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_m03_nodes() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_B

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_R

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_W

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AR

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AW

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_W


  # Create pins
  create_bd_pin -dir I -type clk m_axi_aclk
  create_bd_pin -dir I -type rst m_axi_aresetn
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: m03_ar_node, and set properties
  set m03_ar_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m03_ar_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {2} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $m03_ar_node

  # Create instance: m03_aw_node, and set properties
  set m03_aw_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m03_aw_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {3} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $m03_aw_node

  # Create instance: m03_b_node, and set properties
  set m03_b_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m03_b_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {4} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {7} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_WIDTH {0} \
 ] $m03_b_node

  # Create instance: m03_r_node, and set properties
  set m03_r_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m03_r_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {0} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {53} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_BITS_PER_BYTE {0} \
   CONFIG.USER_WIDTH {0} \
 ] $m03_r_node

  # Create instance: m03_w_node, and set properties
  set m03_w_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m03_w_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {1} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {65} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_BITS_PER_BYTE {0} \
   CONFIG.USER_WIDTH {0} \
 ] $m03_w_node

  # Create interface connections
  connect_bd_intf_net -intf_net S_SC_AR_1 [get_bd_intf_pins S_SC_AR] [get_bd_intf_pins m03_ar_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_AW_1 [get_bd_intf_pins S_SC_AW] [get_bd_intf_pins m03_aw_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_B_1 [get_bd_intf_pins S_SC_B] [get_bd_intf_pins m03_b_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_R_1 [get_bd_intf_pins S_SC_R] [get_bd_intf_pins m03_r_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_W_1 [get_bd_intf_pins S_SC_W] [get_bd_intf_pins m03_w_node/S_SC]
  connect_bd_intf_net -intf_net m03_ar_node_M_SC [get_bd_intf_pins M_SC_AR] [get_bd_intf_pins m03_ar_node/M_SC]
  connect_bd_intf_net -intf_net m03_aw_node_M_SC [get_bd_intf_pins M_SC_AW] [get_bd_intf_pins m03_aw_node/M_SC]
  connect_bd_intf_net -intf_net m03_b_node_M_SC [get_bd_intf_pins M_SC_B] [get_bd_intf_pins m03_b_node/M_SC]
  connect_bd_intf_net -intf_net m03_r_node_M_SC [get_bd_intf_pins M_SC_R] [get_bd_intf_pins m03_r_node/M_SC]
  connect_bd_intf_net -intf_net m03_w_node_M_SC [get_bd_intf_pins M_SC_W] [get_bd_intf_pins m03_w_node/M_SC]

  # Create port connections
  connect_bd_net -net m_axi_aclk_1 [get_bd_pins m_axi_aclk] [get_bd_pins m03_ar_node/m_sc_aclk] [get_bd_pins m03_aw_node/m_sc_aclk] [get_bd_pins m03_b_node/s_sc_aclk] [get_bd_pins m03_r_node/s_sc_aclk] [get_bd_pins m03_w_node/m_sc_aclk]
  connect_bd_net -net m_axi_aresetn_1 [get_bd_pins m_axi_aresetn] [get_bd_pins m03_ar_node/m_sc_aresetn] [get_bd_pins m03_aw_node/m_sc_aresetn] [get_bd_pins m03_b_node/s_sc_aresetn] [get_bd_pins m03_r_node/s_sc_aresetn] [get_bd_pins m03_w_node/m_sc_aresetn]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins m03_ar_node/s_sc_aclk] [get_bd_pins m03_aw_node/s_sc_aclk] [get_bd_pins m03_b_node/m_sc_aclk] [get_bd_pins m03_r_node/m_sc_aclk] [get_bd_pins m03_w_node/s_sc_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins m03_ar_node/s_sc_aresetn] [get_bd_pins m03_aw_node/s_sc_aresetn] [get_bd_pins m03_b_node/m_sc_aresetn] [get_bd_pins m03_r_node/m_sc_aresetn] [get_bd_pins m03_w_node/s_sc_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: m03_exit_pipeline
proc create_hier_cell_m03_exit_pipeline { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_m03_exit_pipeline() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn

  # Create instance: m03_exit, and set properties
  set m03_exit [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_exit:1.0 m03_exit ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {16} \
   CONFIG.ENABLE_PIPELINING {0} \
   CONFIG.HAS_BURST {0} \
   CONFIG.IS_CASCADED {0} \
   CONFIG.MEP_IDENTIFIER_WIDTH {1} \
   CONFIG.M_ID_WIDTH {0} \
   CONFIG.M_MAX_BURST_LENGTH {0} \
   CONFIG.M_PROTOCOL {AXI4LITE} \
   CONFIG.NUM_MSC {12} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.RDATA_WIDTH {32} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SINGLE_ISSUING {1} \
   CONFIG.SSC000_ROUTE {0b111} \
   CONFIG.SSC001_ROUTE {0b101} \
   CONFIG.SSC_ROUTE_WIDTH {3} \
   CONFIG.S_ID_WIDTH {1} \
   CONFIG.WDATA_WIDTH {32} \
 ] $m03_exit

  # Create interface connections
  connect_bd_intf_net -intf_net m03_exit_M_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins m03_exit/M_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins m03_exit/S_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins m03_exit/aclk]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins m03_exit/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: m02_nodes
proc create_hier_cell_m02_nodes { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_m02_nodes() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_B

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_R

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_W

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AR

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AW

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_W


  # Create pins
  create_bd_pin -dir I -type clk m_axi_aclk
  create_bd_pin -dir I -type rst m_axi_aresetn
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: m02_ar_node, and set properties
  set m02_ar_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m02_ar_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {2} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $m02_ar_node

  # Create instance: m02_aw_node, and set properties
  set m02_aw_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m02_aw_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {3} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $m02_aw_node

  # Create instance: m02_b_node, and set properties
  set m02_b_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m02_b_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {4} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {7} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_WIDTH {0} \
 ] $m02_b_node

  # Create instance: m02_r_node, and set properties
  set m02_r_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m02_r_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {0} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {53} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_BITS_PER_BYTE {0} \
   CONFIG.USER_WIDTH {0} \
 ] $m02_r_node

  # Create instance: m02_w_node, and set properties
  set m02_w_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m02_w_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {1} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {65} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_BITS_PER_BYTE {0} \
   CONFIG.USER_WIDTH {0} \
 ] $m02_w_node

  # Create interface connections
  connect_bd_intf_net -intf_net S_SC_AR_1 [get_bd_intf_pins S_SC_AR] [get_bd_intf_pins m02_ar_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_AW_1 [get_bd_intf_pins S_SC_AW] [get_bd_intf_pins m02_aw_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_B_1 [get_bd_intf_pins S_SC_B] [get_bd_intf_pins m02_b_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_R_1 [get_bd_intf_pins S_SC_R] [get_bd_intf_pins m02_r_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_W_1 [get_bd_intf_pins S_SC_W] [get_bd_intf_pins m02_w_node/S_SC]
  connect_bd_intf_net -intf_net m02_ar_node_M_SC [get_bd_intf_pins M_SC_AR] [get_bd_intf_pins m02_ar_node/M_SC]
  connect_bd_intf_net -intf_net m02_aw_node_M_SC [get_bd_intf_pins M_SC_AW] [get_bd_intf_pins m02_aw_node/M_SC]
  connect_bd_intf_net -intf_net m02_b_node_M_SC [get_bd_intf_pins M_SC_B] [get_bd_intf_pins m02_b_node/M_SC]
  connect_bd_intf_net -intf_net m02_r_node_M_SC [get_bd_intf_pins M_SC_R] [get_bd_intf_pins m02_r_node/M_SC]
  connect_bd_intf_net -intf_net m02_w_node_M_SC [get_bd_intf_pins M_SC_W] [get_bd_intf_pins m02_w_node/M_SC]

  # Create port connections
  connect_bd_net -net m_axi_aclk_1 [get_bd_pins m_axi_aclk] [get_bd_pins m02_ar_node/m_sc_aclk] [get_bd_pins m02_aw_node/m_sc_aclk] [get_bd_pins m02_b_node/s_sc_aclk] [get_bd_pins m02_r_node/s_sc_aclk] [get_bd_pins m02_w_node/m_sc_aclk]
  connect_bd_net -net m_axi_aresetn_1 [get_bd_pins m_axi_aresetn] [get_bd_pins m02_ar_node/m_sc_aresetn] [get_bd_pins m02_aw_node/m_sc_aresetn] [get_bd_pins m02_b_node/s_sc_aresetn] [get_bd_pins m02_r_node/s_sc_aresetn] [get_bd_pins m02_w_node/m_sc_aresetn]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins m02_ar_node/s_sc_aclk] [get_bd_pins m02_aw_node/s_sc_aclk] [get_bd_pins m02_b_node/m_sc_aclk] [get_bd_pins m02_r_node/m_sc_aclk] [get_bd_pins m02_w_node/s_sc_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins m02_ar_node/s_sc_aresetn] [get_bd_pins m02_aw_node/s_sc_aresetn] [get_bd_pins m02_b_node/m_sc_aresetn] [get_bd_pins m02_r_node/m_sc_aresetn] [get_bd_pins m02_w_node/s_sc_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: m02_exit_pipeline
proc create_hier_cell_m02_exit_pipeline { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_m02_exit_pipeline() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn

  # Create instance: m02_exit, and set properties
  set m02_exit [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_exit:1.0 m02_exit ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {12} \
   CONFIG.ENABLE_PIPELINING {0} \
   CONFIG.HAS_BURST {0} \
   CONFIG.IS_CASCADED {0} \
   CONFIG.MEP_IDENTIFIER_WIDTH {1} \
   CONFIG.M_ID_WIDTH {0} \
   CONFIG.M_MAX_BURST_LENGTH {0} \
   CONFIG.M_PROTOCOL {AXI4LITE} \
   CONFIG.NUM_MSC {12} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.RDATA_WIDTH {32} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SINGLE_ISSUING {1} \
   CONFIG.SSC000_ROUTE {0b111} \
   CONFIG.SSC001_ROUTE {0b101} \
   CONFIG.SSC_ROUTE_WIDTH {3} \
   CONFIG.S_ID_WIDTH {1} \
   CONFIG.WDATA_WIDTH {32} \
 ] $m02_exit

  # Create interface connections
  connect_bd_intf_net -intf_net m02_exit_M_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins m02_exit/M_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins m02_exit/S_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins m02_exit/aclk]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins m02_exit/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: m01_nodes
proc create_hier_cell_m01_nodes { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_m01_nodes() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_B

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_R

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_W

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AR

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AW

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_W


  # Create pins
  create_bd_pin -dir I -type clk m_axi_aclk
  create_bd_pin -dir I -type rst m_axi_aresetn
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: m01_ar_node, and set properties
  set m01_ar_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m01_ar_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {2} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $m01_ar_node

  # Create instance: m01_aw_node, and set properties
  set m01_aw_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m01_aw_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {3} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $m01_aw_node

  # Create instance: m01_b_node, and set properties
  set m01_b_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m01_b_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {4} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {7} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_WIDTH {0} \
 ] $m01_b_node

  # Create instance: m01_r_node, and set properties
  set m01_r_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m01_r_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {0} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {53} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_BITS_PER_BYTE {0} \
   CONFIG.USER_WIDTH {0} \
 ] $m01_r_node

  # Create instance: m01_w_node, and set properties
  set m01_w_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m01_w_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {1} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {65} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_BITS_PER_BYTE {0} \
   CONFIG.USER_WIDTH {0} \
 ] $m01_w_node

  # Create interface connections
  connect_bd_intf_net -intf_net S_SC_AR_1 [get_bd_intf_pins S_SC_AR] [get_bd_intf_pins m01_ar_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_AW_1 [get_bd_intf_pins S_SC_AW] [get_bd_intf_pins m01_aw_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_B_1 [get_bd_intf_pins S_SC_B] [get_bd_intf_pins m01_b_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_R_1 [get_bd_intf_pins S_SC_R] [get_bd_intf_pins m01_r_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_W_1 [get_bd_intf_pins S_SC_W] [get_bd_intf_pins m01_w_node/S_SC]
  connect_bd_intf_net -intf_net m01_ar_node_M_SC [get_bd_intf_pins M_SC_AR] [get_bd_intf_pins m01_ar_node/M_SC]
  connect_bd_intf_net -intf_net m01_aw_node_M_SC [get_bd_intf_pins M_SC_AW] [get_bd_intf_pins m01_aw_node/M_SC]
  connect_bd_intf_net -intf_net m01_b_node_M_SC [get_bd_intf_pins M_SC_B] [get_bd_intf_pins m01_b_node/M_SC]
  connect_bd_intf_net -intf_net m01_r_node_M_SC [get_bd_intf_pins M_SC_R] [get_bd_intf_pins m01_r_node/M_SC]
  connect_bd_intf_net -intf_net m01_w_node_M_SC [get_bd_intf_pins M_SC_W] [get_bd_intf_pins m01_w_node/M_SC]

  # Create port connections
  connect_bd_net -net m_axi_aclk_1 [get_bd_pins m_axi_aclk] [get_bd_pins m01_ar_node/m_sc_aclk] [get_bd_pins m01_aw_node/m_sc_aclk] [get_bd_pins m01_b_node/s_sc_aclk] [get_bd_pins m01_r_node/s_sc_aclk] [get_bd_pins m01_w_node/m_sc_aclk]
  connect_bd_net -net m_axi_aresetn_1 [get_bd_pins m_axi_aresetn] [get_bd_pins m01_ar_node/m_sc_aresetn] [get_bd_pins m01_aw_node/m_sc_aresetn] [get_bd_pins m01_b_node/s_sc_aresetn] [get_bd_pins m01_r_node/s_sc_aresetn] [get_bd_pins m01_w_node/m_sc_aresetn]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins m01_ar_node/s_sc_aclk] [get_bd_pins m01_aw_node/s_sc_aclk] [get_bd_pins m01_b_node/m_sc_aclk] [get_bd_pins m01_r_node/m_sc_aclk] [get_bd_pins m01_w_node/s_sc_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins m01_ar_node/s_sc_aresetn] [get_bd_pins m01_aw_node/s_sc_aresetn] [get_bd_pins m01_b_node/m_sc_aresetn] [get_bd_pins m01_r_node/m_sc_aresetn] [get_bd_pins m01_w_node/s_sc_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: m01_exit_pipeline
proc create_hier_cell_m01_exit_pipeline { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_m01_exit_pipeline() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn

  # Create instance: m01_exit, and set properties
  set m01_exit [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_exit:1.0 m01_exit ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {9} \
   CONFIG.ENABLE_PIPELINING {0} \
   CONFIG.HAS_BURST {0} \
   CONFIG.IS_CASCADED {0} \
   CONFIG.MEP_IDENTIFIER_WIDTH {1} \
   CONFIG.M_ID_WIDTH {0} \
   CONFIG.M_MAX_BURST_LENGTH {0} \
   CONFIG.M_PROTOCOL {AXI4LITE} \
   CONFIG.NUM_MSC {12} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.RDATA_WIDTH {32} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SINGLE_ISSUING {1} \
   CONFIG.SSC000_ROUTE {0b111} \
   CONFIG.SSC001_ROUTE {0b101} \
   CONFIG.SSC_ROUTE_WIDTH {3} \
   CONFIG.S_ID_WIDTH {1} \
   CONFIG.WDATA_WIDTH {32} \
 ] $m01_exit

  # Create interface connections
  connect_bd_intf_net -intf_net m01_exit_M_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins m01_exit/M_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins m01_exit/S_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins m01_exit/aclk]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins m01_exit/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: m00_nodes
proc create_hier_cell_m00_nodes { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_m00_nodes() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AW

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_B

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_R

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_W

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AR

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AW

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_B

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_R

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_W


  # Create pins
  create_bd_pin -dir I -type clk m_axi_aclk
  create_bd_pin -dir I -type rst m_axi_aresetn
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: m00_ar_node, and set properties
  set m00_ar_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m00_ar_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {2} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $m00_ar_node

  # Create instance: m00_aw_node, and set properties
  set m00_aw_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m00_aw_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {3} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {138} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_WIDTH {0} \
 ] $m00_aw_node

  # Create instance: m00_b_node, and set properties
  set m00_b_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m00_b_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {4} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {7} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_WIDTH {0} \
 ] $m00_b_node

  # Create instance: m00_r_node, and set properties
  set m00_r_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m00_r_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {0} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {53} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {3} \
   CONFIG.USER_BITS_PER_BYTE {0} \
   CONFIG.USER_WIDTH {0} \
 ] $m00_r_node

  # Create instance: m00_w_node, and set properties
  set m00_w_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 m00_w_node ]
  set_property -dict [ list \
   CONFIG.ACLK_RELATIONSHIP {1} \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.CHANNEL {1} \
   CONFIG.FIFO_TYPE {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {4} \
   CONFIG.M01_NUM_BYTES {4} \
   CONFIG.M02_NUM_BYTES {4} \
   CONFIG.M03_NUM_BYTES {4} \
   CONFIG.M04_NUM_BYTES {4} \
   CONFIG.M05_NUM_BYTES {4} \
   CONFIG.M06_NUM_BYTES {4} \
   CONFIG.M07_NUM_BYTES {4} \
   CONFIG.M08_NUM_BYTES {4} \
   CONFIG.M09_NUM_BYTES {4} \
   CONFIG.M10_NUM_BYTES {4} \
   CONFIG.M11_NUM_BYTES {4} \
   CONFIG.M12_NUM_BYTES {4} \
   CONFIG.M13_NUM_BYTES {4} \
   CONFIG.M14_NUM_BYTES {4} \
   CONFIG.M15_NUM_BYTES {4} \
   CONFIG.MAX_PAYLD_BYTES {4} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_OUTSTANDING {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {65} \
   CONFIG.S00_NUM_BYTES {4} \
   CONFIG.S01_NUM_BYTES {4} \
   CONFIG.S02_NUM_BYTES {4} \
   CONFIG.S03_NUM_BYTES {4} \
   CONFIG.S04_NUM_BYTES {4} \
   CONFIG.S05_NUM_BYTES {4} \
   CONFIG.S06_NUM_BYTES {4} \
   CONFIG.S07_NUM_BYTES {4} \
   CONFIG.S08_NUM_BYTES {4} \
   CONFIG.S09_NUM_BYTES {4} \
   CONFIG.S10_NUM_BYTES {4} \
   CONFIG.S11_NUM_BYTES {4} \
   CONFIG.S12_NUM_BYTES {4} \
   CONFIG.S13_NUM_BYTES {4} \
   CONFIG.S14_NUM_BYTES {4} \
   CONFIG.S15_NUM_BYTES {4} \
   CONFIG.SC_ROUTE_WIDTH {14} \
   CONFIG.USER_BITS_PER_BYTE {0} \
   CONFIG.USER_WIDTH {0} \
 ] $m00_w_node

  # Create interface connections
  connect_bd_intf_net -intf_net S_SC_AR_1 [get_bd_intf_pins S_SC_AR] [get_bd_intf_pins m00_ar_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_AW_1 [get_bd_intf_pins S_SC_AW] [get_bd_intf_pins m00_aw_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_B_1 [get_bd_intf_pins S_SC_B] [get_bd_intf_pins m00_b_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_R_1 [get_bd_intf_pins S_SC_R] [get_bd_intf_pins m00_r_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_W_1 [get_bd_intf_pins S_SC_W] [get_bd_intf_pins m00_w_node/S_SC]
  connect_bd_intf_net -intf_net m00_ar_node_M_SC [get_bd_intf_pins M_SC_AR] [get_bd_intf_pins m00_ar_node/M_SC]
  connect_bd_intf_net -intf_net m00_aw_node_M_SC [get_bd_intf_pins M_SC_AW] [get_bd_intf_pins m00_aw_node/M_SC]
  connect_bd_intf_net -intf_net m00_b_node_M_SC [get_bd_intf_pins M_SC_B] [get_bd_intf_pins m00_b_node/M_SC]
  connect_bd_intf_net -intf_net m00_r_node_M_SC [get_bd_intf_pins M_SC_R] [get_bd_intf_pins m00_r_node/M_SC]
  connect_bd_intf_net -intf_net m00_w_node_M_SC [get_bd_intf_pins M_SC_W] [get_bd_intf_pins m00_w_node/M_SC]

  # Create port connections
  connect_bd_net -net m_axi_aclk_1 [get_bd_pins m_axi_aclk] [get_bd_pins m00_ar_node/m_sc_aclk] [get_bd_pins m00_aw_node/m_sc_aclk] [get_bd_pins m00_b_node/s_sc_aclk] [get_bd_pins m00_r_node/s_sc_aclk] [get_bd_pins m00_w_node/m_sc_aclk]
  connect_bd_net -net m_axi_aresetn_1 [get_bd_pins m_axi_aresetn] [get_bd_pins m00_ar_node/m_sc_aresetn] [get_bd_pins m00_aw_node/m_sc_aresetn] [get_bd_pins m00_b_node/s_sc_aresetn] [get_bd_pins m00_r_node/s_sc_aresetn] [get_bd_pins m00_w_node/m_sc_aresetn]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins m00_ar_node/s_sc_aclk] [get_bd_pins m00_aw_node/s_sc_aclk] [get_bd_pins m00_b_node/m_sc_aclk] [get_bd_pins m00_r_node/m_sc_aclk] [get_bd_pins m00_w_node/s_sc_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins m00_ar_node/s_sc_aresetn] [get_bd_pins m00_aw_node/s_sc_aresetn] [get_bd_pins m00_b_node/m_sc_aresetn] [get_bd_pins m00_r_node/m_sc_aresetn] [get_bd_pins m00_w_node/s_sc_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: m00_exit_pipeline
proc create_hier_cell_m00_exit_pipeline { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_m00_exit_pipeline() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn

  # Create instance: m00_exit, and set properties
  set m00_exit [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_exit:1.0 m00_exit ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {7} \
   CONFIG.ENABLE_PIPELINING {0} \
   CONFIG.HAS_BURST {0} \
   CONFIG.IS_CASCADED {0} \
   CONFIG.MEP_IDENTIFIER_WIDTH {1} \
   CONFIG.M_ID_WIDTH {0} \
   CONFIG.M_MAX_BURST_LENGTH {0} \
   CONFIG.M_PROTOCOL {AXI4LITE} \
   CONFIG.NUM_MSC {12} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.RDATA_WIDTH {32} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SINGLE_ISSUING {1} \
   CONFIG.SSC000_ROUTE {0b111} \
   CONFIG.SSC001_ROUTE {0b101} \
   CONFIG.SSC_ROUTE_WIDTH {3} \
   CONFIG.S_ID_WIDTH {1} \
   CONFIG.WDATA_WIDTH {32} \
 ] $m00_exit

  # Create interface connections
  connect_bd_intf_net -intf_net m00_exit_M_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins m00_exit/M_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins m00_exit/S_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins m00_exit/aclk]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins m00_exit/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: clk_map
proc create_hier_cell_clk_map { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_clk_map() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -type clk M00_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst M00_ARESETN
  create_bd_pin -dir O -type clk M01_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst M01_ARESETN
  create_bd_pin -dir O -type clk M02_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst M02_ARESETN
  create_bd_pin -dir O -type clk M03_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst M03_ARESETN
  create_bd_pin -dir O -type clk M04_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst M04_ARESETN
  create_bd_pin -dir O -type clk M05_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst M05_ARESETN
  create_bd_pin -dir O -type clk M06_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst M06_ARESETN
  create_bd_pin -dir O -type clk M07_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst M07_ARESETN
  create_bd_pin -dir O -type clk M08_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst M08_ARESETN
  create_bd_pin -dir O -type clk M09_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst M09_ARESETN
  create_bd_pin -dir O -type clk M10_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst M10_ARESETN
  create_bd_pin -dir O -type clk M11_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst M11_ARESETN
  create_bd_pin -dir O -type clk S00_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst S00_ARESETN
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type clk aclk1
  create_bd_pin -dir I -type clk aclk2
  create_bd_pin -dir I -type clk aclk3
  create_bd_pin -dir I -type clk aclk4
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir O -type rst aresetn_out
  create_bd_pin -dir O -type clk swbd_aclk
  create_bd_pin -dir O -from 0 -to 0 -type rst swbd_aresetn

  # Create instance: one, and set properties
  set one [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 one ]

  # Create instance: psr_aclk, and set properties
  set psr_aclk [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_aclk ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
   CONFIG.C_AUX_RST_WIDTH {1} \
 ] $psr_aclk

  # Create port connections
  connect_bd_net -net clk_map_aclk_net [get_bd_pins M00_ACLK] [get_bd_pins M01_ACLK] [get_bd_pins M02_ACLK] [get_bd_pins M03_ACLK] [get_bd_pins M04_ACLK] [get_bd_pins M05_ACLK] [get_bd_pins M06_ACLK] [get_bd_pins M07_ACLK] [get_bd_pins M08_ACLK] [get_bd_pins M09_ACLK] [get_bd_pins M10_ACLK] [get_bd_pins M11_ACLK] [get_bd_pins S00_ACLK] [get_bd_pins aclk] [get_bd_pins swbd_aclk] [get_bd_pins psr_aclk/slowest_sync_clk]
  connect_bd_net -net clk_map_aresetn_net [get_bd_pins aresetn] [get_bd_pins psr_aclk/aux_reset_in]
  connect_bd_net -net one_dout [get_bd_pins one/dout] [get_bd_pins psr_aclk/ext_reset_in]
  connect_bd_net -net psr_aclk_interconnect_aresetn [get_bd_pins M00_ARESETN] [get_bd_pins M01_ARESETN] [get_bd_pins M02_ARESETN] [get_bd_pins M03_ARESETN] [get_bd_pins M04_ARESETN] [get_bd_pins M05_ARESETN] [get_bd_pins M06_ARESETN] [get_bd_pins M07_ARESETN] [get_bd_pins M08_ARESETN] [get_bd_pins M09_ARESETN] [get_bd_pins M10_ARESETN] [get_bd_pins M11_ARESETN] [get_bd_pins S00_ARESETN] [get_bd_pins swbd_aresetn] [get_bd_pins psr_aclk/interconnect_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set M00_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI ]
  set_property -dict [ list \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   ] $M00_AXI

  set M01_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI ]
  set_property -dict [ list \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   ] $M01_AXI

  set M02_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M02_AXI ]
  set_property -dict [ list \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   ] $M02_AXI

  set M03_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M03_AXI ]
  set_property -dict [ list \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   ] $M03_AXI

  set M04_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M04_AXI ]
  set_property -dict [ list \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   ] $M04_AXI

  set M05_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M05_AXI ]

  set M06_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M06_AXI ]

  set M07_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M07_AXI ]

  set M08_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M08_AXI ]
  set_property -dict [ list \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   ] $M08_AXI

  set M09_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M09_AXI ]

  set M10_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M10_AXI ]

  set M11_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M11_AXI ]

  set S00_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI ]
  set_property -dict [ list \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   ] $S00_AXI


  # Create ports
  set aclk [ create_bd_port -dir I -type clk aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:S00_AXI} \
 ] $aclk
  set aclk1 [ create_bd_port -dir I -type clk aclk1 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {} \
 ] $aclk1
  set aclk2 [ create_bd_port -dir I -type clk aclk2 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {} \
 ] $aclk2
  set aclk3 [ create_bd_port -dir I -type clk aclk3 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {} \
 ] $aclk3
  set aclk4 [ create_bd_port -dir I -type clk aclk4 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {} \
 ] $aclk4
  set aresetn [ create_bd_port -dir I -type rst aresetn ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $aresetn

  # Create instance: clk_map
  create_hier_cell_clk_map [current_bd_instance .] clk_map

  # Create instance: m00_exit_pipeline
  create_hier_cell_m00_exit_pipeline [current_bd_instance .] m00_exit_pipeline

  # Create instance: m00_nodes
  create_hier_cell_m00_nodes [current_bd_instance .] m00_nodes

  # Create instance: m00_sc2axi, and set properties
  set m00_sc2axi [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_sc2axi:1.0 m00_sc2axi ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {7} \
   CONFIG.AXI_ID_WIDTH {1} \
   CONFIG.AXI_RDATA_WIDTH {32} \
   CONFIG.AXI_WDATA_WIDTH {32} \
   CONFIG.MSC_ROUTE_WIDTH {14} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SC_ADDR_WIDTH {19} \
   CONFIG.SC_ARUSER_WIDTH {0} \
   CONFIG.SC_AWUSER_WIDTH {0} \
   CONFIG.SC_BUSER_WIDTH {0} \
   CONFIG.SC_ID_WIDTH {1} \
   CONFIG.SC_RDATA_WIDTH {32} \
   CONFIG.SC_RUSER_BITS_PER_BYTE {0} \
   CONFIG.SC_WDATA_WIDTH {32} \
   CONFIG.SC_WUSER_BITS_PER_BYTE {0} \
   CONFIG.SSC_ROUTE_WIDTH {3} \
 ] $m00_sc2axi

  # Create instance: m01_exit_pipeline
  create_hier_cell_m01_exit_pipeline [current_bd_instance .] m01_exit_pipeline

  # Create instance: m01_nodes
  create_hier_cell_m01_nodes [current_bd_instance .] m01_nodes

  # Create instance: m01_sc2axi, and set properties
  set m01_sc2axi [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_sc2axi:1.0 m01_sc2axi ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {9} \
   CONFIG.AXI_ID_WIDTH {1} \
   CONFIG.AXI_RDATA_WIDTH {32} \
   CONFIG.AXI_WDATA_WIDTH {32} \
   CONFIG.MSC_ROUTE_WIDTH {14} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SC_ADDR_WIDTH {19} \
   CONFIG.SC_ARUSER_WIDTH {0} \
   CONFIG.SC_AWUSER_WIDTH {0} \
   CONFIG.SC_BUSER_WIDTH {0} \
   CONFIG.SC_ID_WIDTH {1} \
   CONFIG.SC_RDATA_WIDTH {32} \
   CONFIG.SC_RUSER_BITS_PER_BYTE {0} \
   CONFIG.SC_WDATA_WIDTH {32} \
   CONFIG.SC_WUSER_BITS_PER_BYTE {0} \
   CONFIG.SSC_ROUTE_WIDTH {3} \
 ] $m01_sc2axi

  # Create instance: m02_exit_pipeline
  create_hier_cell_m02_exit_pipeline [current_bd_instance .] m02_exit_pipeline

  # Create instance: m02_nodes
  create_hier_cell_m02_nodes [current_bd_instance .] m02_nodes

  # Create instance: m02_sc2axi, and set properties
  set m02_sc2axi [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_sc2axi:1.0 m02_sc2axi ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {12} \
   CONFIG.AXI_ID_WIDTH {1} \
   CONFIG.AXI_RDATA_WIDTH {32} \
   CONFIG.AXI_WDATA_WIDTH {32} \
   CONFIG.MSC_ROUTE_WIDTH {14} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SC_ADDR_WIDTH {19} \
   CONFIG.SC_ARUSER_WIDTH {0} \
   CONFIG.SC_AWUSER_WIDTH {0} \
   CONFIG.SC_BUSER_WIDTH {0} \
   CONFIG.SC_ID_WIDTH {1} \
   CONFIG.SC_RDATA_WIDTH {32} \
   CONFIG.SC_RUSER_BITS_PER_BYTE {0} \
   CONFIG.SC_WDATA_WIDTH {32} \
   CONFIG.SC_WUSER_BITS_PER_BYTE {0} \
   CONFIG.SSC_ROUTE_WIDTH {3} \
 ] $m02_sc2axi

  # Create instance: m03_exit_pipeline
  create_hier_cell_m03_exit_pipeline [current_bd_instance .] m03_exit_pipeline

  # Create instance: m03_nodes
  create_hier_cell_m03_nodes [current_bd_instance .] m03_nodes

  # Create instance: m03_sc2axi, and set properties
  set m03_sc2axi [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_sc2axi:1.0 m03_sc2axi ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {16} \
   CONFIG.AXI_ID_WIDTH {1} \
   CONFIG.AXI_RDATA_WIDTH {32} \
   CONFIG.AXI_WDATA_WIDTH {32} \
   CONFIG.MSC_ROUTE_WIDTH {14} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SC_ADDR_WIDTH {19} \
   CONFIG.SC_ARUSER_WIDTH {0} \
   CONFIG.SC_AWUSER_WIDTH {0} \
   CONFIG.SC_BUSER_WIDTH {0} \
   CONFIG.SC_ID_WIDTH {1} \
   CONFIG.SC_RDATA_WIDTH {32} \
   CONFIG.SC_RUSER_BITS_PER_BYTE {0} \
   CONFIG.SC_WDATA_WIDTH {32} \
   CONFIG.SC_WUSER_BITS_PER_BYTE {0} \
   CONFIG.SSC_ROUTE_WIDTH {3} \
 ] $m03_sc2axi

  # Create instance: m04_exit_pipeline
  create_hier_cell_m04_exit_pipeline [current_bd_instance .] m04_exit_pipeline

  # Create instance: m04_nodes
  create_hier_cell_m04_nodes [current_bd_instance .] m04_nodes

  # Create instance: m04_sc2axi, and set properties
  set m04_sc2axi [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_sc2axi:1.0 m04_sc2axi ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {7} \
   CONFIG.AXI_ID_WIDTH {1} \
   CONFIG.AXI_RDATA_WIDTH {32} \
   CONFIG.AXI_WDATA_WIDTH {32} \
   CONFIG.MSC_ROUTE_WIDTH {14} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SC_ADDR_WIDTH {19} \
   CONFIG.SC_ARUSER_WIDTH {0} \
   CONFIG.SC_AWUSER_WIDTH {0} \
   CONFIG.SC_BUSER_WIDTH {0} \
   CONFIG.SC_ID_WIDTH {1} \
   CONFIG.SC_RDATA_WIDTH {32} \
   CONFIG.SC_RUSER_BITS_PER_BYTE {0} \
   CONFIG.SC_WDATA_WIDTH {32} \
   CONFIG.SC_WUSER_BITS_PER_BYTE {0} \
   CONFIG.SSC_ROUTE_WIDTH {3} \
 ] $m04_sc2axi

  # Create instance: m08_exit_pipeline
  create_hier_cell_m08_exit_pipeline [current_bd_instance .] m08_exit_pipeline

  # Create instance: m08_nodes
  create_hier_cell_m08_nodes [current_bd_instance .] m08_nodes

  # Create instance: m08_sc2axi, and set properties
  set m08_sc2axi [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_sc2axi:1.0 m08_sc2axi ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {8} \
   CONFIG.AXI_ID_WIDTH {1} \
   CONFIG.AXI_RDATA_WIDTH {32} \
   CONFIG.AXI_WDATA_WIDTH {32} \
   CONFIG.MSC_ROUTE_WIDTH {14} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SC_ADDR_WIDTH {19} \
   CONFIG.SC_ARUSER_WIDTH {0} \
   CONFIG.SC_AWUSER_WIDTH {0} \
   CONFIG.SC_BUSER_WIDTH {0} \
   CONFIG.SC_ID_WIDTH {1} \
   CONFIG.SC_RDATA_WIDTH {32} \
   CONFIG.SC_RUSER_BITS_PER_BYTE {0} \
   CONFIG.SC_WDATA_WIDTH {32} \
   CONFIG.SC_WUSER_BITS_PER_BYTE {0} \
   CONFIG.SSC_ROUTE_WIDTH {3} \
 ] $m08_sc2axi

  # Create instance: s00_axi2sc, and set properties
  set s00_axi2sc [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_axi2sc:1.0 s00_axi2sc ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {19} \
   CONFIG.AXI_ID_WIDTH {1} \
   CONFIG.AXI_RDATA_WIDTH {32} \
   CONFIG.AXI_WDATA_WIDTH {32} \
   CONFIG.MSC_ROUTE_WIDTH {14} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SC_ADDR_WIDTH {19} \
   CONFIG.SC_ARUSER_WIDTH {0} \
   CONFIG.SC_AWUSER_WIDTH {0} \
   CONFIG.SC_BUSER_WIDTH {0} \
   CONFIG.SC_ID_WIDTH {1} \
   CONFIG.SC_RDATA_WIDTH {32} \
   CONFIG.SC_RUSER_BITS_PER_BYTE {0} \
   CONFIG.SC_WDATA_WIDTH {32} \
   CONFIG.SC_WUSER_BITS_PER_BYTE {0} \
   CONFIG.SSC_ROUTE_WIDTH {3} \
 ] $s00_axi2sc

  # Create instance: s00_entry_pipeline
  create_hier_cell_s00_entry_pipeline [current_bd_instance .] s00_entry_pipeline

  # Create instance: s00_nodes
  create_hier_cell_s00_nodes [current_bd_instance .] s00_nodes

  # Create instance: switchboards
  create_hier_cell_switchboards [current_bd_instance .] switchboards

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_ports S00_AXI] [get_bd_intf_pins s00_entry_pipeline/s_axi]
  connect_bd_intf_net -intf_net S_SC_AR_1 [get_bd_intf_pins s00_axi2sc/M_SC_AR] [get_bd_intf_pins s00_nodes/S_SC_AR]
  connect_bd_intf_net -intf_net S_SC_AR_2 [get_bd_intf_pins m00_nodes/S_SC_AR] [get_bd_intf_pins switchboards/M00_SC_AR]
  connect_bd_intf_net -intf_net S_SC_AR_3 [get_bd_intf_pins m01_nodes/S_SC_AR] [get_bd_intf_pins switchboards/M01_SC_AR]
  connect_bd_intf_net -intf_net S_SC_AR_4 [get_bd_intf_pins m02_nodes/S_SC_AR] [get_bd_intf_pins switchboards/M02_SC_AR]
  connect_bd_intf_net -intf_net S_SC_AR_5 [get_bd_intf_pins m03_nodes/S_SC_AR] [get_bd_intf_pins switchboards/M03_SC_AR]
  connect_bd_intf_net -intf_net S_SC_AR_6 [get_bd_intf_pins m04_nodes/S_SC_AR] [get_bd_intf_pins switchboards/M04_SC_AR]
  connect_bd_intf_net -intf_net S_SC_AR_7 [get_bd_intf_pins m08_nodes/S_SC_AR] [get_bd_intf_pins switchboards/M08_SC_AR]
  connect_bd_intf_net -intf_net S_SC_AW_1 [get_bd_intf_pins s00_axi2sc/M_SC_AW] [get_bd_intf_pins s00_nodes/S_SC_AW]
  connect_bd_intf_net -intf_net S_SC_AW_2 [get_bd_intf_pins m00_nodes/S_SC_AW] [get_bd_intf_pins switchboards/M00_SC_AW]
  connect_bd_intf_net -intf_net S_SC_AW_3 [get_bd_intf_pins m01_nodes/S_SC_AW] [get_bd_intf_pins switchboards/M01_SC_AW]
  connect_bd_intf_net -intf_net S_SC_AW_4 [get_bd_intf_pins m02_nodes/S_SC_AW] [get_bd_intf_pins switchboards/M02_SC_AW]
  connect_bd_intf_net -intf_net S_SC_AW_5 [get_bd_intf_pins m03_nodes/S_SC_AW] [get_bd_intf_pins switchboards/M03_SC_AW]
  connect_bd_intf_net -intf_net S_SC_AW_6 [get_bd_intf_pins m04_nodes/S_SC_AW] [get_bd_intf_pins switchboards/M04_SC_AW]
  connect_bd_intf_net -intf_net S_SC_AW_7 [get_bd_intf_pins m08_nodes/S_SC_AW] [get_bd_intf_pins switchboards/M08_SC_AW]
  connect_bd_intf_net -intf_net S_SC_B_1 [get_bd_intf_pins s00_nodes/S_SC_B] [get_bd_intf_pins switchboards/M00_SC_B]
  connect_bd_intf_net -intf_net S_SC_B_2 [get_bd_intf_pins m00_nodes/S_SC_B] [get_bd_intf_pins m00_sc2axi/M_SC_B]
  connect_bd_intf_net -intf_net S_SC_B_3 [get_bd_intf_pins m01_nodes/S_SC_B] [get_bd_intf_pins m01_sc2axi/M_SC_B]
  connect_bd_intf_net -intf_net S_SC_B_4 [get_bd_intf_pins m02_nodes/S_SC_B] [get_bd_intf_pins m02_sc2axi/M_SC_B]
  connect_bd_intf_net -intf_net S_SC_B_5 [get_bd_intf_pins m03_nodes/S_SC_B] [get_bd_intf_pins m03_sc2axi/M_SC_B]
  connect_bd_intf_net -intf_net S_SC_B_6 [get_bd_intf_pins m04_nodes/S_SC_B] [get_bd_intf_pins m04_sc2axi/M_SC_B]
  connect_bd_intf_net -intf_net S_SC_B_7 [get_bd_intf_pins m08_nodes/S_SC_B] [get_bd_intf_pins m08_sc2axi/M_SC_B]
  connect_bd_intf_net -intf_net S_SC_R_1 [get_bd_intf_pins s00_nodes/S_SC_R] [get_bd_intf_pins switchboards/M00_SC_R]
  connect_bd_intf_net -intf_net S_SC_R_2 [get_bd_intf_pins m00_nodes/S_SC_R] [get_bd_intf_pins m00_sc2axi/M_SC_R]
  connect_bd_intf_net -intf_net S_SC_R_3 [get_bd_intf_pins m01_nodes/S_SC_R] [get_bd_intf_pins m01_sc2axi/M_SC_R]
  connect_bd_intf_net -intf_net S_SC_R_4 [get_bd_intf_pins m02_nodes/S_SC_R] [get_bd_intf_pins m02_sc2axi/M_SC_R]
  connect_bd_intf_net -intf_net S_SC_R_5 [get_bd_intf_pins m03_nodes/S_SC_R] [get_bd_intf_pins m03_sc2axi/M_SC_R]
  connect_bd_intf_net -intf_net S_SC_R_6 [get_bd_intf_pins m04_nodes/S_SC_R] [get_bd_intf_pins m04_sc2axi/M_SC_R]
  connect_bd_intf_net -intf_net S_SC_R_7 [get_bd_intf_pins m08_nodes/S_SC_R] [get_bd_intf_pins m08_sc2axi/M_SC_R]
  connect_bd_intf_net -intf_net S_SC_W_1 [get_bd_intf_pins s00_axi2sc/M_SC_W] [get_bd_intf_pins s00_nodes/S_SC_W]
  connect_bd_intf_net -intf_net S_SC_W_2 [get_bd_intf_pins m00_nodes/S_SC_W] [get_bd_intf_pins switchboards/M00_SC_W]
  connect_bd_intf_net -intf_net S_SC_W_3 [get_bd_intf_pins m01_nodes/S_SC_W] [get_bd_intf_pins switchboards/M01_SC_W]
  connect_bd_intf_net -intf_net S_SC_W_4 [get_bd_intf_pins m02_nodes/S_SC_W] [get_bd_intf_pins switchboards/M02_SC_W]
  connect_bd_intf_net -intf_net S_SC_W_5 [get_bd_intf_pins m03_nodes/S_SC_W] [get_bd_intf_pins switchboards/M03_SC_W]
  connect_bd_intf_net -intf_net S_SC_W_6 [get_bd_intf_pins m04_nodes/S_SC_W] [get_bd_intf_pins switchboards/M04_SC_W]
  connect_bd_intf_net -intf_net S_SC_W_7 [get_bd_intf_pins m08_nodes/S_SC_W] [get_bd_intf_pins switchboards/M08_SC_W]
  connect_bd_intf_net -intf_net m00_exit_pipeline_m_axi [get_bd_intf_ports M00_AXI] [get_bd_intf_pins m00_exit_pipeline/m_axi]
  connect_bd_intf_net -intf_net m00_nodes_M_SC_AR [get_bd_intf_pins m00_nodes/M_SC_AR] [get_bd_intf_pins m00_sc2axi/S_SC_AR]
  connect_bd_intf_net -intf_net m00_nodes_M_SC_AW [get_bd_intf_pins m00_nodes/M_SC_AW] [get_bd_intf_pins m00_sc2axi/S_SC_AW]
  connect_bd_intf_net -intf_net m00_nodes_M_SC_B [get_bd_intf_pins m00_nodes/M_SC_B] [get_bd_intf_pins switchboards/S00_SC_B]
  connect_bd_intf_net -intf_net m00_nodes_M_SC_R [get_bd_intf_pins m00_nodes/M_SC_R] [get_bd_intf_pins switchboards/S00_SC_R]
  connect_bd_intf_net -intf_net m00_nodes_M_SC_W [get_bd_intf_pins m00_nodes/M_SC_W] [get_bd_intf_pins m00_sc2axi/S_SC_W]
  connect_bd_intf_net -intf_net m00_sc2axi_M_AXI [get_bd_intf_pins m00_exit_pipeline/s_axi] [get_bd_intf_pins m00_sc2axi/M_AXI]
  connect_bd_intf_net -intf_net m01_exit_pipeline_m_axi [get_bd_intf_ports M01_AXI] [get_bd_intf_pins m01_exit_pipeline/m_axi]
  connect_bd_intf_net -intf_net m01_nodes_M_SC_AR [get_bd_intf_pins m01_nodes/M_SC_AR] [get_bd_intf_pins m01_sc2axi/S_SC_AR]
  connect_bd_intf_net -intf_net m01_nodes_M_SC_AW [get_bd_intf_pins m01_nodes/M_SC_AW] [get_bd_intf_pins m01_sc2axi/S_SC_AW]
  connect_bd_intf_net -intf_net m01_nodes_M_SC_B [get_bd_intf_pins m01_nodes/M_SC_B] [get_bd_intf_pins switchboards/S01_SC_B]
  connect_bd_intf_net -intf_net m01_nodes_M_SC_R [get_bd_intf_pins m01_nodes/M_SC_R] [get_bd_intf_pins switchboards/S01_SC_R]
  connect_bd_intf_net -intf_net m01_nodes_M_SC_W [get_bd_intf_pins m01_nodes/M_SC_W] [get_bd_intf_pins m01_sc2axi/S_SC_W]
  connect_bd_intf_net -intf_net m01_sc2axi_M_AXI [get_bd_intf_pins m01_exit_pipeline/s_axi] [get_bd_intf_pins m01_sc2axi/M_AXI]
  connect_bd_intf_net -intf_net m02_exit_pipeline_m_axi [get_bd_intf_ports M02_AXI] [get_bd_intf_pins m02_exit_pipeline/m_axi]
  connect_bd_intf_net -intf_net m02_nodes_M_SC_AR [get_bd_intf_pins m02_nodes/M_SC_AR] [get_bd_intf_pins m02_sc2axi/S_SC_AR]
  connect_bd_intf_net -intf_net m02_nodes_M_SC_AW [get_bd_intf_pins m02_nodes/M_SC_AW] [get_bd_intf_pins m02_sc2axi/S_SC_AW]
  connect_bd_intf_net -intf_net m02_nodes_M_SC_B [get_bd_intf_pins m02_nodes/M_SC_B] [get_bd_intf_pins switchboards/S02_SC_B]
  connect_bd_intf_net -intf_net m02_nodes_M_SC_R [get_bd_intf_pins m02_nodes/M_SC_R] [get_bd_intf_pins switchboards/S02_SC_R]
  connect_bd_intf_net -intf_net m02_nodes_M_SC_W [get_bd_intf_pins m02_nodes/M_SC_W] [get_bd_intf_pins m02_sc2axi/S_SC_W]
  connect_bd_intf_net -intf_net m02_sc2axi_M_AXI [get_bd_intf_pins m02_exit_pipeline/s_axi] [get_bd_intf_pins m02_sc2axi/M_AXI]
  connect_bd_intf_net -intf_net m03_exit_pipeline_m_axi [get_bd_intf_ports M03_AXI] [get_bd_intf_pins m03_exit_pipeline/m_axi]
  connect_bd_intf_net -intf_net m03_nodes_M_SC_AR [get_bd_intf_pins m03_nodes/M_SC_AR] [get_bd_intf_pins m03_sc2axi/S_SC_AR]
  connect_bd_intf_net -intf_net m03_nodes_M_SC_AW [get_bd_intf_pins m03_nodes/M_SC_AW] [get_bd_intf_pins m03_sc2axi/S_SC_AW]
  connect_bd_intf_net -intf_net m03_nodes_M_SC_B [get_bd_intf_pins m03_nodes/M_SC_B] [get_bd_intf_pins switchboards/S03_SC_B]
  connect_bd_intf_net -intf_net m03_nodes_M_SC_R [get_bd_intf_pins m03_nodes/M_SC_R] [get_bd_intf_pins switchboards/S03_SC_R]
  connect_bd_intf_net -intf_net m03_nodes_M_SC_W [get_bd_intf_pins m03_nodes/M_SC_W] [get_bd_intf_pins m03_sc2axi/S_SC_W]
  connect_bd_intf_net -intf_net m03_sc2axi_M_AXI [get_bd_intf_pins m03_exit_pipeline/s_axi] [get_bd_intf_pins m03_sc2axi/M_AXI]
  connect_bd_intf_net -intf_net m04_exit_pipeline_m_axi [get_bd_intf_ports M04_AXI] [get_bd_intf_pins m04_exit_pipeline/m_axi]
  connect_bd_intf_net -intf_net m04_nodes_M_SC_AR [get_bd_intf_pins m04_nodes/M_SC_AR] [get_bd_intf_pins m04_sc2axi/S_SC_AR]
  connect_bd_intf_net -intf_net m04_nodes_M_SC_AW [get_bd_intf_pins m04_nodes/M_SC_AW] [get_bd_intf_pins m04_sc2axi/S_SC_AW]
  connect_bd_intf_net -intf_net m04_nodes_M_SC_B [get_bd_intf_pins m04_nodes/M_SC_B] [get_bd_intf_pins switchboards/S04_SC_B]
  connect_bd_intf_net -intf_net m04_nodes_M_SC_R [get_bd_intf_pins m04_nodes/M_SC_R] [get_bd_intf_pins switchboards/S04_SC_R]
  connect_bd_intf_net -intf_net m04_nodes_M_SC_W [get_bd_intf_pins m04_nodes/M_SC_W] [get_bd_intf_pins m04_sc2axi/S_SC_W]
  connect_bd_intf_net -intf_net m04_sc2axi_M_AXI [get_bd_intf_pins m04_exit_pipeline/s_axi] [get_bd_intf_pins m04_sc2axi/M_AXI]
  connect_bd_intf_net -intf_net m08_exit_pipeline_m_axi [get_bd_intf_ports M08_AXI] [get_bd_intf_pins m08_exit_pipeline/m_axi]
  connect_bd_intf_net -intf_net m08_nodes_M_SC_AR [get_bd_intf_pins m08_nodes/M_SC_AR] [get_bd_intf_pins m08_sc2axi/S_SC_AR]
  connect_bd_intf_net -intf_net m08_nodes_M_SC_AW [get_bd_intf_pins m08_nodes/M_SC_AW] [get_bd_intf_pins m08_sc2axi/S_SC_AW]
  connect_bd_intf_net -intf_net m08_nodes_M_SC_B [get_bd_intf_pins m08_nodes/M_SC_B] [get_bd_intf_pins switchboards/S08_SC_B]
  connect_bd_intf_net -intf_net m08_nodes_M_SC_R [get_bd_intf_pins m08_nodes/M_SC_R] [get_bd_intf_pins switchboards/S08_SC_R]
  connect_bd_intf_net -intf_net m08_nodes_M_SC_W [get_bd_intf_pins m08_nodes/M_SC_W] [get_bd_intf_pins m08_sc2axi/S_SC_W]
  connect_bd_intf_net -intf_net m08_sc2axi_M_AXI [get_bd_intf_pins m08_exit_pipeline/s_axi] [get_bd_intf_pins m08_sc2axi/M_AXI]
  connect_bd_intf_net -intf_net s00_entry_pipeline_m_axi [get_bd_intf_pins s00_axi2sc/S_AXI] [get_bd_intf_pins s00_entry_pipeline/m_axi]
  connect_bd_intf_net -intf_net s00_nodes_M_SC_AR [get_bd_intf_pins s00_nodes/M_SC_AR] [get_bd_intf_pins switchboards/S00_SC_AR]
  connect_bd_intf_net -intf_net s00_nodes_M_SC_AW [get_bd_intf_pins s00_nodes/M_SC_AW] [get_bd_intf_pins switchboards/S00_SC_AW]
  connect_bd_intf_net -intf_net s00_nodes_M_SC_B [get_bd_intf_pins s00_axi2sc/S_SC_B] [get_bd_intf_pins s00_nodes/M_SC_B]
  connect_bd_intf_net -intf_net s00_nodes_M_SC_R [get_bd_intf_pins s00_axi2sc/S_SC_R] [get_bd_intf_pins s00_nodes/M_SC_R]
  connect_bd_intf_net -intf_net s00_nodes_M_SC_W [get_bd_intf_pins s00_nodes/M_SC_W] [get_bd_intf_pins switchboards/S00_SC_W]

  # Create port connections
  connect_bd_net -net aclk1_1 [get_bd_ports aclk1] [get_bd_pins clk_map/aclk1]
  connect_bd_net -net aclk2_1 [get_bd_ports aclk2] [get_bd_pins clk_map/aclk2]
  connect_bd_net -net aclk3_1 [get_bd_ports aclk3] [get_bd_pins clk_map/aclk3]
  connect_bd_net -net aclk4_1 [get_bd_ports aclk4] [get_bd_pins clk_map/aclk4]
  connect_bd_net -net aclk_net [get_bd_ports aclk] [get_bd_pins clk_map/aclk]
  connect_bd_net -net aresetn_1 [get_bd_ports aresetn] [get_bd_pins clk_map/aresetn]
  connect_bd_net -net aresetn_net -boundary_type upper [get_bd_pins clk_map/aresetn_out]
  connect_bd_net -net clk_map_M00_ACLK [get_bd_pins clk_map/M00_ACLK] [get_bd_pins m00_exit_pipeline/aclk] [get_bd_pins m00_nodes/m_axi_aclk] [get_bd_pins m00_nodes/s_axi_aclk] [get_bd_pins m00_sc2axi/aclk] [get_bd_pins m01_nodes/s_axi_aclk] [get_bd_pins m02_nodes/s_axi_aclk] [get_bd_pins m03_nodes/s_axi_aclk] [get_bd_pins m04_nodes/s_axi_aclk] [get_bd_pins m08_nodes/s_axi_aclk] [get_bd_pins switchboards/m_sc_aclk]
  connect_bd_net -net clk_map_M00_ARESETN [get_bd_pins clk_map/M00_ARESETN] [get_bd_pins m00_exit_pipeline/aresetn] [get_bd_pins m00_nodes/m_axi_aresetn] [get_bd_pins m00_nodes/s_axi_aresetn] [get_bd_pins m01_nodes/s_axi_aresetn] [get_bd_pins m02_nodes/s_axi_aresetn] [get_bd_pins m03_nodes/s_axi_aresetn] [get_bd_pins m04_nodes/s_axi_aresetn] [get_bd_pins m08_nodes/s_axi_aresetn] [get_bd_pins switchboards/m_sc_aresetn]
  connect_bd_net -net clk_map_M01_ACLK [get_bd_pins clk_map/M01_ACLK] [get_bd_pins m01_exit_pipeline/aclk] [get_bd_pins m01_nodes/m_axi_aclk] [get_bd_pins m01_sc2axi/aclk]
  connect_bd_net -net clk_map_M02_ACLK [get_bd_pins clk_map/M02_ACLK] [get_bd_pins m02_exit_pipeline/aclk] [get_bd_pins m02_nodes/m_axi_aclk] [get_bd_pins m02_sc2axi/aclk]
  connect_bd_net -net clk_map_M03_ACLK [get_bd_pins clk_map/M03_ACLK] [get_bd_pins m03_exit_pipeline/aclk] [get_bd_pins m03_nodes/m_axi_aclk] [get_bd_pins m03_sc2axi/aclk]
  connect_bd_net -net clk_map_M04_ACLK [get_bd_pins clk_map/M04_ACLK] [get_bd_pins m04_exit_pipeline/aclk] [get_bd_pins m04_nodes/m_axi_aclk] [get_bd_pins m04_sc2axi/aclk]
  connect_bd_net -net clk_map_M08_ACLK [get_bd_pins clk_map/M08_ACLK] [get_bd_pins m08_exit_pipeline/aclk] [get_bd_pins m08_nodes/m_axi_aclk] [get_bd_pins m08_sc2axi/aclk]
  connect_bd_net -net clk_map_S00_ACLK [get_bd_pins clk_map/S00_ACLK] [get_bd_pins s00_axi2sc/aclk] [get_bd_pins s00_entry_pipeline/aclk] [get_bd_pins s00_nodes/m_sc_clk] [get_bd_pins s00_nodes/s_sc_clk] [get_bd_pins switchboards/s_sc_aclk]
  connect_bd_net -net clk_map_S00_ARESETN [get_bd_pins clk_map/S00_ARESETN] [get_bd_pins s00_entry_pipeline/aresetn] [get_bd_pins s00_nodes/m_sc_resetn] [get_bd_pins s00_nodes/s_sc_resetn] [get_bd_pins switchboards/s_sc_aresetn]
  connect_bd_net -net m_axi_aresetn_1 [get_bd_pins clk_map/M01_ARESETN] [get_bd_pins m01_exit_pipeline/aresetn] [get_bd_pins m01_nodes/m_axi_aresetn]
  connect_bd_net -net m_axi_aresetn_2 [get_bd_pins clk_map/M02_ARESETN] [get_bd_pins m02_exit_pipeline/aresetn] [get_bd_pins m02_nodes/m_axi_aresetn]
  connect_bd_net -net m_axi_aresetn_3 [get_bd_pins clk_map/M03_ARESETN] [get_bd_pins m03_exit_pipeline/aresetn] [get_bd_pins m03_nodes/m_axi_aresetn]
  connect_bd_net -net m_axi_aresetn_4 [get_bd_pins clk_map/M04_ARESETN] [get_bd_pins m04_exit_pipeline/aresetn] [get_bd_pins m04_nodes/m_axi_aresetn]
  connect_bd_net -net m_axi_aresetn_5 [get_bd_pins clk_map/M08_ARESETN] [get_bd_pins m08_exit_pipeline/aresetn] [get_bd_pins m08_nodes/m_axi_aresetn]
  connect_bd_net -net swbd_aclk_net -boundary_type upper [get_bd_pins clk_map/swbd_aclk]
  connect_bd_net -net swbd_aresetn_net -boundary_type upper [get_bd_pins clk_map/swbd_aresetn]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


