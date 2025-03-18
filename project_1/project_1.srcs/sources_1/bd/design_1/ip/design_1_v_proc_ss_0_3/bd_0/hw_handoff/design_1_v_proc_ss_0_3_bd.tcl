
################################################################
# This is a generated script based on design: bd_d86b
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
# source bd_d86b_script.tcl

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
set design_name bd_d86b

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SBD $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



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
  set m_axis [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis ]

  set s_axi_ctrl [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_ctrl ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {19} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   ] $s_axi_ctrl

  set s_axis [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis ]


  # Create ports
  set aclk_axis [ create_bd_port -dir I -type clk aclk_axis ]
  set aclk_ctrl [ create_bd_port -dir I -type clk aclk_ctrl ]
  set aresetn_ctrl [ create_bd_port -dir I -type rst aresetn_ctrl ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $aresetn_ctrl
  set aresetn_io_axis [ create_bd_port -dir O -from 0 -to 0 -type rst aresetn_io_axis ]

  # Create instance: csc, and set properties
  set csc [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_csc:1.0 csc ]
  set_property -dict [ list \
   CONFIG.ENABLE_420 {0} \
   CONFIG.ENABLE_422 {0} \
   CONFIG.ENABLE_WINDOW {0} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.SAMPLES_PER_CLOCK {1} \
   CONFIG.USE_URAM {0} \
   CONFIG.V_CSC_MAX_HEIGHT {2160} \
   CONFIG.V_CSC_MAX_WIDTH {3840} \
 ] $csc

  # Create instance: hsc, and set properties
  set hsc [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_hscaler:1.0 hsc ]
  set_property -dict [ list \
   CONFIG.ENABLE_420 {0} \
   CONFIG.ENABLE_422 {0} \
   CONFIG.ENABLE_CSC {0} \
   CONFIG.MAX_COLS {3840} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.MAX_ROWS {2160} \
   CONFIG.SAMPLES_PER_CLOCK {1} \
   CONFIG.SCALE_MODE {2} \
   CONFIG.TAPS {6} \
   CONFIG.USE_URAM {0} \
 ] $hsc

  # Create instance: input_size_set, and set properties
  set input_size_set [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 input_size_set ]
  set_property -dict [ list \
   CONFIG.M_HAS_TKEEP {1} \
   CONFIG.M_HAS_TSTRB {1} \
   CONFIG.M_TDEST_WIDTH {1} \
   CONFIG.M_TID_WIDTH {1} \
   CONFIG.S_HAS_TKEEP {1} \
   CONFIG.S_HAS_TLAST {1} \
   CONFIG.S_HAS_TSTRB {1} \
   CONFIG.S_TDATA_NUM_BYTES {3} \
   CONFIG.S_TDEST_WIDTH {1} \
   CONFIG.S_TID_WIDTH {1} \
   CONFIG.S_TUSER_WIDTH {1} \
 ] $input_size_set

  # Create instance: ltr, and set properties
  set ltr [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_letterbox:1.0 ltr ]
  set_property -dict [ list \
   CONFIG.MAX_COLS {3840} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.MAX_ROWS {2160} \
   CONFIG.SAMPLES_PER_CLOCK {1} \
 ] $ltr

  # Create instance: proc_ss_ip_aresetn, and set properties
  set proc_ss_ip_aresetn [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 proc_ss_ip_aresetn ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $proc_ss_ip_aresetn

  # Create instance: reset_sel_axis, and set properties
  set reset_sel_axis [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 reset_sel_axis ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {2} \
 ] $reset_sel_axis

  # Create instance: rst_axis, and set properties
  set rst_axis [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_axis ]

  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]
  set_property -dict [ list \
   CONFIG.HAS_ARESETN {1} \
   CONFIG.NUM_CLKS {5} \
   CONFIG.NUM_MI {12} \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_0

  # Create instance: vid_in_aresetn, and set properties
  set vid_in_aresetn [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 vid_in_aresetn ]
  set_property -dict [ list \
   CONFIG.DIN_WIDTH {2} \
 ] $vid_in_aresetn

  # Create instance: video_router, and set properties
  set video_router [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_interconnect:2.1 video_router ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.M00_HAS_REGSLICE {1} \
   CONFIG.M01_HAS_REGSLICE {1} \
   CONFIG.M02_HAS_REGSLICE {1} \
   CONFIG.M04_HAS_REGSLICE {1} \
   CONFIG.M05_HAS_REGSLICE {1} \
   CONFIG.M06_HAS_REGSLICE {1} \
   CONFIG.M07_HAS_REGSLICE {1} \
   CONFIG.M08_HAS_REGSLICE {1} \
   CONFIG.NUM_MI {10} \
   CONFIG.NUM_SI {10} \
   CONFIG.ROUTING_MODE {1} \
   CONFIG.S00_HAS_REGSLICE {0} \
   CONFIG.XBAR_TDATA_NUM_BYTES {3} \
 ] $video_router

  # Create instance: vsc, and set properties
  set vsc [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vscaler:1.0 vsc ]
  set_property -dict [ list \
   CONFIG.ENABLE_420 {0} \
   CONFIG.MAX_COLS {3840} \
   CONFIG.MAX_DATA_WIDTH {8} \
   CONFIG.MAX_ROWS {2160} \
   CONFIG.SAMPLES_PER_CLOCK {1} \
   CONFIG.SCALE_MODE {2} \
   CONFIG.TAPS {6} \
   CONFIG.USE_URAM {0} \
 ] $vsc

  # Create interface connections
  connect_bd_intf_net -intf_net intf_net_bdry_in_s_axi_ctrl [get_bd_intf_ports s_axi_ctrl] [get_bd_intf_pins smartconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net intf_net_bdry_in_s_axis [get_bd_intf_ports s_axis] [get_bd_intf_pins input_size_set/S_AXIS]
  connect_bd_intf_net -intf_net intf_net_csc_m_axis_video [get_bd_intf_pins csc/m_axis_video] [get_bd_intf_pins video_router/S08_AXIS]
  connect_bd_intf_net -intf_net intf_net_hsc_m_axis_video [get_bd_intf_pins hsc/m_axis_video] [get_bd_intf_pins video_router/S02_AXIS]
  connect_bd_intf_net -intf_net intf_net_input_size_set_M_AXIS [get_bd_intf_pins input_size_set/M_AXIS] [get_bd_intf_pins video_router/S00_AXIS]
  connect_bd_intf_net -intf_net intf_net_ltr_m_axis_video [get_bd_intf_pins ltr/m_axis_video] [get_bd_intf_pins video_router/S04_AXIS]
  connect_bd_intf_net -intf_net intf_net_smartconnect_0_M00_AXI [get_bd_intf_pins smartconnect_0/M00_AXI] [get_bd_intf_pins video_router/S_AXI_CTRL]
  connect_bd_intf_net -intf_net intf_net_smartconnect_0_M01_AXI [get_bd_intf_pins reset_sel_axis/S_AXI] [get_bd_intf_pins smartconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net intf_net_smartconnect_0_M02_AXI [get_bd_intf_pins smartconnect_0/M02_AXI] [get_bd_intf_pins vsc/s_axi_CTRL]
  connect_bd_intf_net -intf_net intf_net_smartconnect_0_M03_AXI [get_bd_intf_pins hsc/s_axi_CTRL] [get_bd_intf_pins smartconnect_0/M03_AXI]
  connect_bd_intf_net -intf_net intf_net_smartconnect_0_M04_AXI [get_bd_intf_pins ltr/s_axi_CTRL] [get_bd_intf_pins smartconnect_0/M04_AXI]
  connect_bd_intf_net -intf_net intf_net_smartconnect_0_M08_AXI [get_bd_intf_pins csc/s_axi_CTRL] [get_bd_intf_pins smartconnect_0/M08_AXI]
  connect_bd_intf_net -intf_net intf_net_video_router_M00_AXIS [get_bd_intf_ports m_axis] [get_bd_intf_pins video_router/M00_AXIS]
  connect_bd_intf_net -intf_net intf_net_video_router_M01_AXIS [get_bd_intf_pins video_router/M01_AXIS] [get_bd_intf_pins vsc/s_axis_video]
  connect_bd_intf_net -intf_net intf_net_video_router_M02_AXIS [get_bd_intf_pins hsc/s_axis_video] [get_bd_intf_pins video_router/M02_AXIS]
  connect_bd_intf_net -intf_net intf_net_video_router_M04_AXIS [get_bd_intf_pins ltr/s_axis_video] [get_bd_intf_pins video_router/M04_AXIS]
  connect_bd_intf_net -intf_net intf_net_video_router_M08_AXIS [get_bd_intf_pins csc/s_axis_video] [get_bd_intf_pins video_router/M08_AXIS]
  connect_bd_intf_net -intf_net intf_net_vsc_m_axis_video [get_bd_intf_pins video_router/S01_AXIS] [get_bd_intf_pins vsc/m_axis_video]

  # Create port connections
  connect_bd_net -net net_bdry_in_aclk_axis [get_bd_ports aclk_axis] [get_bd_pins csc/ap_clk] [get_bd_pins hsc/ap_clk] [get_bd_pins input_size_set/aclk] [get_bd_pins ltr/ap_clk] [get_bd_pins reset_sel_axis/s_axi_aclk] [get_bd_pins rst_axis/slowest_sync_clk] [get_bd_pins smartconnect_0/aclk1] [get_bd_pins video_router/ACLK] [get_bd_pins video_router/M00_AXIS_ACLK] [get_bd_pins video_router/M01_AXIS_ACLK] [get_bd_pins video_router/M02_AXIS_ACLK] [get_bd_pins video_router/M03_AXIS_ACLK] [get_bd_pins video_router/M04_AXIS_ACLK] [get_bd_pins video_router/M05_AXIS_ACLK] [get_bd_pins video_router/M06_AXIS_ACLK] [get_bd_pins video_router/M07_AXIS_ACLK] [get_bd_pins video_router/M08_AXIS_ACLK] [get_bd_pins video_router/M09_AXIS_ACLK] [get_bd_pins video_router/S00_AXIS_ACLK] [get_bd_pins video_router/S01_AXIS_ACLK] [get_bd_pins video_router/S02_AXIS_ACLK] [get_bd_pins video_router/S03_AXIS_ACLK] [get_bd_pins video_router/S04_AXIS_ACLK] [get_bd_pins video_router/S05_AXIS_ACLK] [get_bd_pins video_router/S06_AXIS_ACLK] [get_bd_pins video_router/S07_AXIS_ACLK] [get_bd_pins video_router/S08_AXIS_ACLK] [get_bd_pins video_router/S09_AXIS_ACLK] [get_bd_pins vsc/ap_clk]
  connect_bd_net -net net_bdry_in_aclk_ctrl [get_bd_ports aclk_ctrl] [get_bd_pins smartconnect_0/aclk] [get_bd_pins smartconnect_0/aclk2] [get_bd_pins smartconnect_0/aclk3] [get_bd_pins smartconnect_0/aclk4] [get_bd_pins video_router/S_AXI_CTRL_ACLK]
  connect_bd_net -net net_bdry_in_aresetn_ctrl [get_bd_ports aresetn_ctrl] [get_bd_pins rst_axis/ext_reset_in] [get_bd_pins smartconnect_0/aresetn] [get_bd_pins video_router/S_AXI_CTRL_ARESETN]
  connect_bd_net -net net_proc_ss_ip_aresetn_Dout [get_bd_pins csc/ap_rst_n] [get_bd_pins hsc/ap_rst_n] [get_bd_pins input_size_set/aresetn] [get_bd_pins ltr/ap_rst_n] [get_bd_pins proc_ss_ip_aresetn/Dout] [get_bd_pins video_router/ARESETN] [get_bd_pins video_router/M00_AXIS_ARESETN] [get_bd_pins video_router/M01_AXIS_ARESETN] [get_bd_pins video_router/M02_AXIS_ARESETN] [get_bd_pins video_router/M03_AXIS_ARESETN] [get_bd_pins video_router/M04_AXIS_ARESETN] [get_bd_pins video_router/M05_AXIS_ARESETN] [get_bd_pins video_router/M06_AXIS_ARESETN] [get_bd_pins video_router/M07_AXIS_ARESETN] [get_bd_pins video_router/M08_AXIS_ARESETN] [get_bd_pins video_router/M09_AXIS_ARESETN] [get_bd_pins video_router/S00_AXIS_ARESETN] [get_bd_pins video_router/S01_AXIS_ARESETN] [get_bd_pins video_router/S02_AXIS_ARESETN] [get_bd_pins video_router/S03_AXIS_ARESETN] [get_bd_pins video_router/S04_AXIS_ARESETN] [get_bd_pins video_router/S05_AXIS_ARESETN] [get_bd_pins video_router/S06_AXIS_ARESETN] [get_bd_pins video_router/S07_AXIS_ARESETN] [get_bd_pins video_router/S08_AXIS_ARESETN] [get_bd_pins video_router/S09_AXIS_ARESETN] [get_bd_pins vsc/ap_rst_n]
  connect_bd_net -net net_reset_sel_axis_gpio_io_o [get_bd_pins proc_ss_ip_aresetn/Din] [get_bd_pins reset_sel_axis/gpio_io_i] [get_bd_pins reset_sel_axis/gpio_io_o] [get_bd_pins vid_in_aresetn/Din]
  connect_bd_net -net net_rst_axis_peripheral_aresetn [get_bd_pins reset_sel_axis/s_axi_aresetn] [get_bd_pins rst_axis/peripheral_aresetn]
  connect_bd_net -net net_vid_in_aresetn_Dout [get_bd_ports aresetn_io_axis] [get_bd_pins vid_in_aresetn/Dout]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs csc/s_axi_CTRL/Reg] -force
  assign_bd_address -offset 0x00010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs hsc/s_axi_CTRL/Reg] -force
  assign_bd_address -offset 0x00020000 -range 0x00010000 -target_address_space [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs ltr/s_axi_CTRL/Reg] -force
  assign_bd_address -offset 0x00030000 -range 0x00010000 -target_address_space [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs reset_sel_axis/S_AXI/Reg] -force
  assign_bd_address -offset 0x00050000 -range 0x00010000 -target_address_space [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs vsc/s_axi_CTRL/Reg] -force
  assign_bd_address -offset 0x00040000 -range 0x00010000 -target_address_space [get_bd_addr_spaces s_axi_ctrl] [get_bd_addr_segs video_router/xbar/S_AXI_CTRL/Reg] -force


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


