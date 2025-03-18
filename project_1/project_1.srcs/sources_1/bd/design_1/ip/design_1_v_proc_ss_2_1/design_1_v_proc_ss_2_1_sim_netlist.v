// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Mar 10 14:40:46 2025
// Host        : CO2041-04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_v_proc_ss_2_1 -prefix
//               design_1_v_proc_ss_2_1_ design_1_v_proc_ss_2_1_sim_netlist.v
// Design      : design_1_v_proc_ss_2_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* hw_handoff = "design_1_v_proc_ss_2_1.hwdef" *) 
module design_1_v_proc_ss_2_1_bd_d94b
   (aclk_axis,
    aclk_ctrl,
    aresetn_ctrl,
    aresetn_io_axis,
    m_axis_tdata,
    m_axis_tdest,
    m_axis_tid,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tstrb,
    m_axis_tuser,
    m_axis_tvalid,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arprot,
    s_axi_ctrl_arready,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_awprot,
    s_axi_ctrl_awready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rready,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wready,
    s_axi_ctrl_wstrb,
    s_axi_ctrl_wvalid,
    s_axis_tdata,
    s_axis_tdest,
    s_axis_tid,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tready,
    s_axis_tstrb,
    s_axis_tuser,
    s_axis_tvalid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.ACLK_AXIS CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.ACLK_AXIS, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_CLKEN aclken, ASSOCIATED_RESET aresetn_io_axis, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk_axis;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_CLKEN s_sc_aclken, ASSOCIATED_RESET aresetn_ctrl, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk_ctrl;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_ctrl;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.ARESETN_IO_AXIS RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.ARESETN_IO_AXIS, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]aresetn_io_axis;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 148500000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1" *) output [23:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDEST" *) output [3:0]m_axis_tdest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TID" *) output [0:0]m_axis_tid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [2:0]m_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TSTRB" *) output [2:0]m_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output [0:0]m_axis_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_ctrl, ADDR_WIDTH 19, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN /clk_wiz_0_clk_out1, DATA_WIDTH 32, FREQ_HZ 148500000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [18:0]s_axi_ctrl_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT" *) input [2:0]s_axi_ctrl_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY" *) output [0:0]s_axi_ctrl_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID" *) input [0:0]s_axi_ctrl_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR" *) input [18:0]s_axi_ctrl_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT" *) input [2:0]s_axi_ctrl_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY" *) output [0:0]s_axi_ctrl_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID" *) input [0:0]s_axi_ctrl_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY" *) input [0:0]s_axi_ctrl_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP" *) output [1:0]s_axi_ctrl_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID" *) output [0:0]s_axi_ctrl_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA" *) output [31:0]s_axi_ctrl_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY" *) input [0:0]s_axi_ctrl_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP" *) output [1:0]s_axi_ctrl_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID" *) output [0:0]s_axi_ctrl_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA" *) input [31:0]s_axi_ctrl_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY" *) output [0:0]s_axi_ctrl_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB" *) input [3:0]s_axi_ctrl_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID" *) input [0:0]s_axi_ctrl_wvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 148500000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) input [23:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDEST" *) input [0:0]s_axis_tdest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TID" *) input [0:0]s_axis_tid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [2:0]s_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TSTRB" *) input [2:0]s_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input [0:0]s_axis_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;

  wire aclk_axis;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire [0:0]aresetn_io_axis;
  wire [23:0]intf_net_csc_m_axis_video_TDATA;
  wire intf_net_csc_m_axis_video_TDEST;
  wire intf_net_csc_m_axis_video_TID;
  wire [2:0]intf_net_csc_m_axis_video_TKEEP;
  wire intf_net_csc_m_axis_video_TLAST;
  wire intf_net_csc_m_axis_video_TREADY;
  wire [2:0]intf_net_csc_m_axis_video_TSTRB;
  wire intf_net_csc_m_axis_video_TUSER;
  wire intf_net_csc_m_axis_video_TVALID;
  wire [23:0]intf_net_hsc_m_axis_video_TDATA;
  wire intf_net_hsc_m_axis_video_TDEST;
  wire intf_net_hsc_m_axis_video_TID;
  wire [2:0]intf_net_hsc_m_axis_video_TKEEP;
  wire intf_net_hsc_m_axis_video_TLAST;
  wire intf_net_hsc_m_axis_video_TREADY;
  wire [2:0]intf_net_hsc_m_axis_video_TSTRB;
  wire intf_net_hsc_m_axis_video_TUSER;
  wire intf_net_hsc_m_axis_video_TVALID;
  wire [23:0]intf_net_input_size_set_M_AXIS_TDATA;
  wire intf_net_input_size_set_M_AXIS_TDEST;
  wire intf_net_input_size_set_M_AXIS_TID;
  wire [2:0]intf_net_input_size_set_M_AXIS_TKEEP;
  wire intf_net_input_size_set_M_AXIS_TLAST;
  wire intf_net_input_size_set_M_AXIS_TREADY;
  wire [2:0]intf_net_input_size_set_M_AXIS_TSTRB;
  wire intf_net_input_size_set_M_AXIS_TUSER;
  wire intf_net_input_size_set_M_AXIS_TVALID;
  wire [23:0]intf_net_ltr_m_axis_video_TDATA;
  wire intf_net_ltr_m_axis_video_TDEST;
  wire intf_net_ltr_m_axis_video_TID;
  wire [2:0]intf_net_ltr_m_axis_video_TKEEP;
  wire intf_net_ltr_m_axis_video_TLAST;
  wire intf_net_ltr_m_axis_video_TREADY;
  wire [2:0]intf_net_ltr_m_axis_video_TSTRB;
  wire intf_net_ltr_m_axis_video_TUSER;
  wire intf_net_ltr_m_axis_video_TVALID;
  wire [6:0]intf_net_smartconnect_0_M00_AXI_ARADDR;
  wire intf_net_smartconnect_0_M00_AXI_ARREADY;
  wire intf_net_smartconnect_0_M00_AXI_ARVALID;
  wire [6:0]intf_net_smartconnect_0_M00_AXI_AWADDR;
  wire intf_net_smartconnect_0_M00_AXI_AWREADY;
  wire intf_net_smartconnect_0_M00_AXI_AWVALID;
  wire intf_net_smartconnect_0_M00_AXI_BREADY;
  wire [1:0]intf_net_smartconnect_0_M00_AXI_BRESP;
  wire intf_net_smartconnect_0_M00_AXI_BVALID;
  wire [31:0]intf_net_smartconnect_0_M00_AXI_RDATA;
  wire intf_net_smartconnect_0_M00_AXI_RREADY;
  wire [1:0]intf_net_smartconnect_0_M00_AXI_RRESP;
  wire intf_net_smartconnect_0_M00_AXI_RVALID;
  wire [31:0]intf_net_smartconnect_0_M00_AXI_WDATA;
  wire intf_net_smartconnect_0_M00_AXI_WREADY;
  wire intf_net_smartconnect_0_M00_AXI_WVALID;
  wire [8:0]intf_net_smartconnect_0_M01_AXI_ARADDR;
  wire intf_net_smartconnect_0_M01_AXI_ARREADY;
  wire intf_net_smartconnect_0_M01_AXI_ARVALID;
  wire [8:0]intf_net_smartconnect_0_M01_AXI_AWADDR;
  wire intf_net_smartconnect_0_M01_AXI_AWREADY;
  wire intf_net_smartconnect_0_M01_AXI_AWVALID;
  wire intf_net_smartconnect_0_M01_AXI_BREADY;
  wire [1:0]intf_net_smartconnect_0_M01_AXI_BRESP;
  wire intf_net_smartconnect_0_M01_AXI_BVALID;
  wire [31:0]intf_net_smartconnect_0_M01_AXI_RDATA;
  wire intf_net_smartconnect_0_M01_AXI_RREADY;
  wire [1:0]intf_net_smartconnect_0_M01_AXI_RRESP;
  wire intf_net_smartconnect_0_M01_AXI_RVALID;
  wire [31:0]intf_net_smartconnect_0_M01_AXI_WDATA;
  wire intf_net_smartconnect_0_M01_AXI_WREADY;
  wire [3:0]intf_net_smartconnect_0_M01_AXI_WSTRB;
  wire intf_net_smartconnect_0_M01_AXI_WVALID;
  wire [11:0]intf_net_smartconnect_0_M02_AXI_ARADDR;
  wire intf_net_smartconnect_0_M02_AXI_ARREADY;
  wire intf_net_smartconnect_0_M02_AXI_ARVALID;
  wire [11:0]intf_net_smartconnect_0_M02_AXI_AWADDR;
  wire intf_net_smartconnect_0_M02_AXI_AWREADY;
  wire intf_net_smartconnect_0_M02_AXI_AWVALID;
  wire intf_net_smartconnect_0_M02_AXI_BREADY;
  wire [1:0]intf_net_smartconnect_0_M02_AXI_BRESP;
  wire intf_net_smartconnect_0_M02_AXI_BVALID;
  wire [31:0]intf_net_smartconnect_0_M02_AXI_RDATA;
  wire intf_net_smartconnect_0_M02_AXI_RREADY;
  wire [1:0]intf_net_smartconnect_0_M02_AXI_RRESP;
  wire intf_net_smartconnect_0_M02_AXI_RVALID;
  wire [31:0]intf_net_smartconnect_0_M02_AXI_WDATA;
  wire intf_net_smartconnect_0_M02_AXI_WREADY;
  wire [3:0]intf_net_smartconnect_0_M02_AXI_WSTRB;
  wire intf_net_smartconnect_0_M02_AXI_WVALID;
  wire [15:0]intf_net_smartconnect_0_M03_AXI_ARADDR;
  wire intf_net_smartconnect_0_M03_AXI_ARREADY;
  wire intf_net_smartconnect_0_M03_AXI_ARVALID;
  wire [15:0]intf_net_smartconnect_0_M03_AXI_AWADDR;
  wire intf_net_smartconnect_0_M03_AXI_AWREADY;
  wire intf_net_smartconnect_0_M03_AXI_AWVALID;
  wire intf_net_smartconnect_0_M03_AXI_BREADY;
  wire [1:0]intf_net_smartconnect_0_M03_AXI_BRESP;
  wire intf_net_smartconnect_0_M03_AXI_BVALID;
  wire [31:0]intf_net_smartconnect_0_M03_AXI_RDATA;
  wire intf_net_smartconnect_0_M03_AXI_RREADY;
  wire [1:0]intf_net_smartconnect_0_M03_AXI_RRESP;
  wire intf_net_smartconnect_0_M03_AXI_RVALID;
  wire [31:0]intf_net_smartconnect_0_M03_AXI_WDATA;
  wire intf_net_smartconnect_0_M03_AXI_WREADY;
  wire [3:0]intf_net_smartconnect_0_M03_AXI_WSTRB;
  wire intf_net_smartconnect_0_M03_AXI_WVALID;
  wire [6:0]intf_net_smartconnect_0_M04_AXI_ARADDR;
  wire intf_net_smartconnect_0_M04_AXI_ARREADY;
  wire intf_net_smartconnect_0_M04_AXI_ARVALID;
  wire [6:0]intf_net_smartconnect_0_M04_AXI_AWADDR;
  wire intf_net_smartconnect_0_M04_AXI_AWREADY;
  wire intf_net_smartconnect_0_M04_AXI_AWVALID;
  wire intf_net_smartconnect_0_M04_AXI_BREADY;
  wire [1:0]intf_net_smartconnect_0_M04_AXI_BRESP;
  wire intf_net_smartconnect_0_M04_AXI_BVALID;
  wire [31:0]intf_net_smartconnect_0_M04_AXI_RDATA;
  wire intf_net_smartconnect_0_M04_AXI_RREADY;
  wire [1:0]intf_net_smartconnect_0_M04_AXI_RRESP;
  wire intf_net_smartconnect_0_M04_AXI_RVALID;
  wire [31:0]intf_net_smartconnect_0_M04_AXI_WDATA;
  wire intf_net_smartconnect_0_M04_AXI_WREADY;
  wire [3:0]intf_net_smartconnect_0_M04_AXI_WSTRB;
  wire intf_net_smartconnect_0_M04_AXI_WVALID;
  wire [7:0]intf_net_smartconnect_0_M08_AXI_ARADDR;
  wire intf_net_smartconnect_0_M08_AXI_ARREADY;
  wire intf_net_smartconnect_0_M08_AXI_ARVALID;
  wire [7:0]intf_net_smartconnect_0_M08_AXI_AWADDR;
  wire intf_net_smartconnect_0_M08_AXI_AWREADY;
  wire intf_net_smartconnect_0_M08_AXI_AWVALID;
  wire intf_net_smartconnect_0_M08_AXI_BREADY;
  wire [1:0]intf_net_smartconnect_0_M08_AXI_BRESP;
  wire intf_net_smartconnect_0_M08_AXI_BVALID;
  wire [31:0]intf_net_smartconnect_0_M08_AXI_RDATA;
  wire intf_net_smartconnect_0_M08_AXI_RREADY;
  wire [1:0]intf_net_smartconnect_0_M08_AXI_RRESP;
  wire intf_net_smartconnect_0_M08_AXI_RVALID;
  wire [31:0]intf_net_smartconnect_0_M08_AXI_WDATA;
  wire intf_net_smartconnect_0_M08_AXI_WREADY;
  wire [3:0]intf_net_smartconnect_0_M08_AXI_WSTRB;
  wire intf_net_smartconnect_0_M08_AXI_WVALID;
  wire [23:0]intf_net_video_router_M01_AXIS_TDATA;
  wire intf_net_video_router_M01_AXIS_TDEST;
  wire intf_net_video_router_M01_AXIS_TID;
  wire [2:0]intf_net_video_router_M01_AXIS_TKEEP;
  wire intf_net_video_router_M01_AXIS_TLAST;
  wire intf_net_video_router_M01_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M01_AXIS_TSTRB;
  wire intf_net_video_router_M01_AXIS_TUSER;
  wire intf_net_video_router_M01_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M02_AXIS_TDATA;
  wire intf_net_video_router_M02_AXIS_TDEST;
  wire intf_net_video_router_M02_AXIS_TID;
  wire [2:0]intf_net_video_router_M02_AXIS_TKEEP;
  wire intf_net_video_router_M02_AXIS_TLAST;
  wire intf_net_video_router_M02_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M02_AXIS_TSTRB;
  wire intf_net_video_router_M02_AXIS_TUSER;
  wire intf_net_video_router_M02_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M04_AXIS_TDATA;
  wire intf_net_video_router_M04_AXIS_TDEST;
  wire intf_net_video_router_M04_AXIS_TID;
  wire [2:0]intf_net_video_router_M04_AXIS_TKEEP;
  wire intf_net_video_router_M04_AXIS_TLAST;
  wire intf_net_video_router_M04_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M04_AXIS_TSTRB;
  wire intf_net_video_router_M04_AXIS_TUSER;
  wire intf_net_video_router_M04_AXIS_TVALID;
  wire [23:0]intf_net_video_router_M08_AXIS_TDATA;
  wire intf_net_video_router_M08_AXIS_TDEST;
  wire intf_net_video_router_M08_AXIS_TID;
  wire [2:0]intf_net_video_router_M08_AXIS_TKEEP;
  wire intf_net_video_router_M08_AXIS_TLAST;
  wire intf_net_video_router_M08_AXIS_TREADY;
  wire [2:0]intf_net_video_router_M08_AXIS_TSTRB;
  wire intf_net_video_router_M08_AXIS_TUSER;
  wire intf_net_video_router_M08_AXIS_TVALID;
  wire [23:0]intf_net_vsc_m_axis_video_TDATA;
  wire intf_net_vsc_m_axis_video_TDEST;
  wire intf_net_vsc_m_axis_video_TID;
  wire [2:0]intf_net_vsc_m_axis_video_TKEEP;
  wire intf_net_vsc_m_axis_video_TLAST;
  wire intf_net_vsc_m_axis_video_TREADY;
  wire [2:0]intf_net_vsc_m_axis_video_TSTRB;
  wire intf_net_vsc_m_axis_video_TUSER;
  wire intf_net_vsc_m_axis_video_TVALID;
  wire [23:0]m_axis_tdata;
  wire [3:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire net_proc_ss_ip_aresetn_Dout;
  wire [1:0]net_reset_sel_axis_gpio_io_o;
  wire net_rst_axis_peripheral_aresetn;
  wire [18:0]s_axi_ctrl_araddr;
  wire [2:0]s_axi_ctrl_arprot;
  wire [0:0]s_axi_ctrl_arready;
  wire [0:0]s_axi_ctrl_arvalid;
  wire [18:0]s_axi_ctrl_awaddr;
  wire [2:0]s_axi_ctrl_awprot;
  wire [0:0]s_axi_ctrl_awready;
  wire [0:0]s_axi_ctrl_awvalid;
  wire [0:0]s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bresp;
  wire [0:0]s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire [0:0]s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rresp;
  wire [0:0]s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire [0:0]s_axi_ctrl_wready;
  wire [3:0]s_axi_ctrl_wstrb;
  wire [0:0]s_axi_ctrl_wvalid;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire NLW_csc_interrupt_UNCONNECTED;
  wire NLW_hsc_interrupt_UNCONNECTED;
  wire NLW_ltr_interrupt_UNCONNECTED;
  wire [1:0]NLW_reset_sel_axis_gpio_io_t_UNCONNECTED;
  wire NLW_rst_axis_mb_reset_UNCONNECTED;
  wire [0:0]NLW_rst_axis_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_rst_axis_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_rst_axis_peripheral_reset_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_araddr_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_arid_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_arlen_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_arlock_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_aruser_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_awaddr_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_awid_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_awlen_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_awlock_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_awuser_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_wdata_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_wid_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_wstrb_UNCONNECTED;
  wire NLW_smartconnect_0_M05_AXI_wuser_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_araddr_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_arid_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_arlen_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_arlock_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_aruser_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_awaddr_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_awid_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_awlen_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_awlock_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_awuser_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_wdata_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_wid_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_wstrb_UNCONNECTED;
  wire NLW_smartconnect_0_M06_AXI_wuser_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_araddr_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_arid_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_arlen_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_arlock_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_aruser_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_awaddr_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_awid_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_awlen_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_awlock_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_awuser_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_wdata_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_wid_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_wstrb_UNCONNECTED;
  wire NLW_smartconnect_0_M07_AXI_wuser_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_araddr_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_arid_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_arlen_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_arlock_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_aruser_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_awaddr_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_awid_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_awlen_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_awlock_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_awuser_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_wdata_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_wid_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_wstrb_UNCONNECTED;
  wire NLW_smartconnect_0_M09_AXI_wuser_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_araddr_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_arid_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_arlen_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_arlock_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_aruser_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_awaddr_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_awid_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_awlen_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_awlock_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_awuser_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_wdata_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_wid_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_wstrb_UNCONNECTED;
  wire NLW_smartconnect_0_M10_AXI_wuser_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_araddr_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_arid_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_arlen_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_arlock_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_aruser_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_awaddr_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_awid_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_awlen_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_awlock_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_awuser_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_wdata_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_wid_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_wstrb_UNCONNECTED;
  wire NLW_smartconnect_0_M11_AXI_wuser_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M00_AXI_arprot_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M00_AXI_awprot_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M00_AXI_wstrb_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M01_AXI_arprot_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M01_AXI_awprot_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M02_AXI_arprot_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M02_AXI_awprot_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M03_AXI_arprot_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M03_AXI_awprot_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M04_AXI_arprot_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M04_AXI_awprot_UNCONNECTED;
  wire [1:0]NLW_smartconnect_0_M05_AXI_arburst_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M05_AXI_arcache_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M05_AXI_arprot_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M05_AXI_arqos_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M05_AXI_arregion_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M05_AXI_arsize_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M05_AXI_arvalid_UNCONNECTED;
  wire [1:0]NLW_smartconnect_0_M05_AXI_awburst_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M05_AXI_awcache_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M05_AXI_awprot_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M05_AXI_awqos_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M05_AXI_awregion_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M05_AXI_awsize_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M05_AXI_awvalid_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M05_AXI_bready_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M05_AXI_rready_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M05_AXI_wlast_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M05_AXI_wvalid_UNCONNECTED;
  wire [1:0]NLW_smartconnect_0_M06_AXI_arburst_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M06_AXI_arcache_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M06_AXI_arprot_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M06_AXI_arqos_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M06_AXI_arregion_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M06_AXI_arsize_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M06_AXI_arvalid_UNCONNECTED;
  wire [1:0]NLW_smartconnect_0_M06_AXI_awburst_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M06_AXI_awcache_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M06_AXI_awprot_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M06_AXI_awqos_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M06_AXI_awregion_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M06_AXI_awsize_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M06_AXI_awvalid_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M06_AXI_bready_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M06_AXI_rready_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M06_AXI_wlast_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M06_AXI_wvalid_UNCONNECTED;
  wire [1:0]NLW_smartconnect_0_M07_AXI_arburst_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M07_AXI_arcache_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M07_AXI_arprot_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M07_AXI_arqos_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M07_AXI_arregion_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M07_AXI_arsize_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M07_AXI_arvalid_UNCONNECTED;
  wire [1:0]NLW_smartconnect_0_M07_AXI_awburst_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M07_AXI_awcache_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M07_AXI_awprot_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M07_AXI_awqos_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M07_AXI_awregion_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M07_AXI_awsize_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M07_AXI_awvalid_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M07_AXI_bready_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M07_AXI_rready_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M07_AXI_wlast_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M07_AXI_wvalid_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M08_AXI_arprot_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M08_AXI_awprot_UNCONNECTED;
  wire [1:0]NLW_smartconnect_0_M09_AXI_arburst_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M09_AXI_arcache_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M09_AXI_arprot_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M09_AXI_arqos_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M09_AXI_arregion_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M09_AXI_arsize_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M09_AXI_arvalid_UNCONNECTED;
  wire [1:0]NLW_smartconnect_0_M09_AXI_awburst_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M09_AXI_awcache_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M09_AXI_awprot_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M09_AXI_awqos_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M09_AXI_awregion_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M09_AXI_awsize_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M09_AXI_awvalid_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M09_AXI_bready_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M09_AXI_rready_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M09_AXI_wlast_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M09_AXI_wvalid_UNCONNECTED;
  wire [1:0]NLW_smartconnect_0_M10_AXI_arburst_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M10_AXI_arcache_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M10_AXI_arprot_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M10_AXI_arqos_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M10_AXI_arregion_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M10_AXI_arsize_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M10_AXI_arvalid_UNCONNECTED;
  wire [1:0]NLW_smartconnect_0_M10_AXI_awburst_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M10_AXI_awcache_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M10_AXI_awprot_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M10_AXI_awqos_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M10_AXI_awregion_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M10_AXI_awsize_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M10_AXI_awvalid_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M10_AXI_bready_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M10_AXI_rready_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M10_AXI_wlast_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M10_AXI_wvalid_UNCONNECTED;
  wire [1:0]NLW_smartconnect_0_M11_AXI_arburst_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M11_AXI_arcache_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M11_AXI_arprot_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M11_AXI_arqos_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M11_AXI_arregion_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M11_AXI_arsize_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M11_AXI_arvalid_UNCONNECTED;
  wire [1:0]NLW_smartconnect_0_M11_AXI_awburst_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M11_AXI_awcache_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M11_AXI_awprot_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M11_AXI_awqos_UNCONNECTED;
  wire [3:0]NLW_smartconnect_0_M11_AXI_awregion_UNCONNECTED;
  wire [2:0]NLW_smartconnect_0_M11_AXI_awsize_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M11_AXI_awvalid_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M11_AXI_bready_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M11_AXI_rready_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M11_AXI_wlast_UNCONNECTED;
  wire [0:0]NLW_smartconnect_0_M11_AXI_wvalid_UNCONNECTED;
  wire NLW_video_router_M03_AXIS_tdata_UNCONNECTED;
  wire NLW_video_router_M03_AXIS_tdest_UNCONNECTED;
  wire NLW_video_router_M03_AXIS_tvalid_UNCONNECTED;
  wire NLW_video_router_M05_AXIS_tdata_UNCONNECTED;
  wire NLW_video_router_M05_AXIS_tvalid_UNCONNECTED;
  wire NLW_video_router_M06_AXIS_tdata_UNCONNECTED;
  wire NLW_video_router_M06_AXIS_tvalid_UNCONNECTED;
  wire NLW_video_router_M07_AXIS_tdata_UNCONNECTED;
  wire NLW_video_router_M07_AXIS_tvalid_UNCONNECTED;
  wire NLW_video_router_M09_AXIS_tdata_UNCONNECTED;
  wire NLW_video_router_M09_AXIS_tdest_UNCONNECTED;
  wire NLW_video_router_M09_AXIS_tvalid_UNCONNECTED;
  wire NLW_video_router_S03_AXIS_tready_UNCONNECTED;
  wire NLW_video_router_S05_AXIS_tready_UNCONNECTED;
  wire NLW_video_router_S06_AXIS_tready_UNCONNECTED;
  wire NLW_video_router_S07_AXIS_tready_UNCONNECTED;
  wire NLW_video_router_S09_AXIS_tready_UNCONNECTED;
  wire NLW_vsc_interrupt_UNCONNECTED;

  (* X_CORE_INFO = "bd_d94b_csc_0_v_csc,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_csc_0 csc
       (.ap_clk(aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
        .interrupt(NLW_csc_interrupt_UNCONNECTED),
        .m_axis_video_TDATA(intf_net_csc_m_axis_video_TDATA),
        .m_axis_video_TDEST(intf_net_csc_m_axis_video_TDEST),
        .m_axis_video_TID(intf_net_csc_m_axis_video_TID),
        .m_axis_video_TKEEP(intf_net_csc_m_axis_video_TKEEP),
        .m_axis_video_TLAST(intf_net_csc_m_axis_video_TLAST),
        .m_axis_video_TREADY(intf_net_csc_m_axis_video_TREADY),
        .m_axis_video_TSTRB(intf_net_csc_m_axis_video_TSTRB),
        .m_axis_video_TUSER(intf_net_csc_m_axis_video_TUSER),
        .m_axis_video_TVALID(intf_net_csc_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(intf_net_smartconnect_0_M08_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(intf_net_smartconnect_0_M08_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(intf_net_smartconnect_0_M08_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(intf_net_smartconnect_0_M08_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(intf_net_smartconnect_0_M08_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(intf_net_smartconnect_0_M08_AXI_AWVALID),
        .s_axi_CTRL_BREADY(intf_net_smartconnect_0_M08_AXI_BREADY),
        .s_axi_CTRL_BRESP(intf_net_smartconnect_0_M08_AXI_BRESP),
        .s_axi_CTRL_BVALID(intf_net_smartconnect_0_M08_AXI_BVALID),
        .s_axi_CTRL_RDATA(intf_net_smartconnect_0_M08_AXI_RDATA),
        .s_axi_CTRL_RREADY(intf_net_smartconnect_0_M08_AXI_RREADY),
        .s_axi_CTRL_RRESP(intf_net_smartconnect_0_M08_AXI_RRESP),
        .s_axi_CTRL_RVALID(intf_net_smartconnect_0_M08_AXI_RVALID),
        .s_axi_CTRL_WDATA(intf_net_smartconnect_0_M08_AXI_WDATA),
        .s_axi_CTRL_WREADY(intf_net_smartconnect_0_M08_AXI_WREADY),
        .s_axi_CTRL_WSTRB(intf_net_smartconnect_0_M08_AXI_WSTRB),
        .s_axi_CTRL_WVALID(intf_net_smartconnect_0_M08_AXI_WVALID),
        .s_axis_video_TDATA(intf_net_video_router_M08_AXIS_TDATA),
        .s_axis_video_TDEST(intf_net_video_router_M08_AXIS_TDEST),
        .s_axis_video_TID(intf_net_video_router_M08_AXIS_TID),
        .s_axis_video_TKEEP(intf_net_video_router_M08_AXIS_TKEEP),
        .s_axis_video_TLAST(intf_net_video_router_M08_AXIS_TLAST),
        .s_axis_video_TREADY(intf_net_video_router_M08_AXIS_TREADY),
        .s_axis_video_TSTRB(intf_net_video_router_M08_AXIS_TSTRB),
        .s_axis_video_TUSER(intf_net_video_router_M08_AXIS_TUSER),
        .s_axis_video_TVALID(intf_net_video_router_M08_AXIS_TVALID));
  (* X_CORE_INFO = "bd_d94b_hsc_0_v_hscaler,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_hsc_0 hsc
       (.ap_clk(aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
        .interrupt(NLW_hsc_interrupt_UNCONNECTED),
        .m_axis_video_TDATA(intf_net_hsc_m_axis_video_TDATA),
        .m_axis_video_TDEST(intf_net_hsc_m_axis_video_TDEST),
        .m_axis_video_TID(intf_net_hsc_m_axis_video_TID),
        .m_axis_video_TKEEP(intf_net_hsc_m_axis_video_TKEEP),
        .m_axis_video_TLAST(intf_net_hsc_m_axis_video_TLAST),
        .m_axis_video_TREADY(intf_net_hsc_m_axis_video_TREADY),
        .m_axis_video_TSTRB(intf_net_hsc_m_axis_video_TSTRB),
        .m_axis_video_TUSER(intf_net_hsc_m_axis_video_TUSER),
        .m_axis_video_TVALID(intf_net_hsc_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(intf_net_smartconnect_0_M03_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(intf_net_smartconnect_0_M03_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(intf_net_smartconnect_0_M03_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(intf_net_smartconnect_0_M03_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(intf_net_smartconnect_0_M03_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(intf_net_smartconnect_0_M03_AXI_AWVALID),
        .s_axi_CTRL_BREADY(intf_net_smartconnect_0_M03_AXI_BREADY),
        .s_axi_CTRL_BRESP(intf_net_smartconnect_0_M03_AXI_BRESP),
        .s_axi_CTRL_BVALID(intf_net_smartconnect_0_M03_AXI_BVALID),
        .s_axi_CTRL_RDATA(intf_net_smartconnect_0_M03_AXI_RDATA),
        .s_axi_CTRL_RREADY(intf_net_smartconnect_0_M03_AXI_RREADY),
        .s_axi_CTRL_RRESP(intf_net_smartconnect_0_M03_AXI_RRESP),
        .s_axi_CTRL_RVALID(intf_net_smartconnect_0_M03_AXI_RVALID),
        .s_axi_CTRL_WDATA(intf_net_smartconnect_0_M03_AXI_WDATA),
        .s_axi_CTRL_WREADY(intf_net_smartconnect_0_M03_AXI_WREADY),
        .s_axi_CTRL_WSTRB(intf_net_smartconnect_0_M03_AXI_WSTRB),
        .s_axi_CTRL_WVALID(intf_net_smartconnect_0_M03_AXI_WVALID),
        .s_axis_video_TDATA(intf_net_video_router_M02_AXIS_TDATA),
        .s_axis_video_TDEST(intf_net_video_router_M02_AXIS_TDEST),
        .s_axis_video_TID(intf_net_video_router_M02_AXIS_TID),
        .s_axis_video_TKEEP(intf_net_video_router_M02_AXIS_TKEEP),
        .s_axis_video_TLAST(intf_net_video_router_M02_AXIS_TLAST),
        .s_axis_video_TREADY(intf_net_video_router_M02_AXIS_TREADY),
        .s_axis_video_TSTRB(intf_net_video_router_M02_AXIS_TSTRB),
        .s_axis_video_TUSER(intf_net_video_router_M02_AXIS_TUSER),
        .s_axis_video_TVALID(intf_net_video_router_M02_AXIS_TVALID));
  (* X_CORE_INFO = "top_bd_d94b_input_size_set_0,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_input_size_set_0 input_size_set
       (.aclk(aclk_axis),
        .aresetn(net_proc_ss_ip_aresetn_Dout),
        .m_axis_tdata(intf_net_input_size_set_M_AXIS_TDATA),
        .m_axis_tdest(intf_net_input_size_set_M_AXIS_TDEST),
        .m_axis_tid(intf_net_input_size_set_M_AXIS_TID),
        .m_axis_tkeep(intf_net_input_size_set_M_AXIS_TKEEP),
        .m_axis_tlast(intf_net_input_size_set_M_AXIS_TLAST),
        .m_axis_tready(intf_net_input_size_set_M_AXIS_TREADY),
        .m_axis_tstrb(intf_net_input_size_set_M_AXIS_TSTRB),
        .m_axis_tuser(intf_net_input_size_set_M_AXIS_TUSER),
        .m_axis_tvalid(intf_net_input_size_set_M_AXIS_TVALID),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
  (* X_CORE_INFO = "bd_d94b_ltr_0_v_letterbox,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_ltr_0 ltr
       (.ap_clk(aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
        .interrupt(NLW_ltr_interrupt_UNCONNECTED),
        .m_axis_video_TDATA(intf_net_ltr_m_axis_video_TDATA),
        .m_axis_video_TDEST(intf_net_ltr_m_axis_video_TDEST),
        .m_axis_video_TID(intf_net_ltr_m_axis_video_TID),
        .m_axis_video_TKEEP(intf_net_ltr_m_axis_video_TKEEP),
        .m_axis_video_TLAST(intf_net_ltr_m_axis_video_TLAST),
        .m_axis_video_TREADY(intf_net_ltr_m_axis_video_TREADY),
        .m_axis_video_TSTRB(intf_net_ltr_m_axis_video_TSTRB),
        .m_axis_video_TUSER(intf_net_ltr_m_axis_video_TUSER),
        .m_axis_video_TVALID(intf_net_ltr_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(intf_net_smartconnect_0_M04_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(intf_net_smartconnect_0_M04_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(intf_net_smartconnect_0_M04_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(intf_net_smartconnect_0_M04_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(intf_net_smartconnect_0_M04_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(intf_net_smartconnect_0_M04_AXI_AWVALID),
        .s_axi_CTRL_BREADY(intf_net_smartconnect_0_M04_AXI_BREADY),
        .s_axi_CTRL_BRESP(intf_net_smartconnect_0_M04_AXI_BRESP),
        .s_axi_CTRL_BVALID(intf_net_smartconnect_0_M04_AXI_BVALID),
        .s_axi_CTRL_RDATA(intf_net_smartconnect_0_M04_AXI_RDATA),
        .s_axi_CTRL_RREADY(intf_net_smartconnect_0_M04_AXI_RREADY),
        .s_axi_CTRL_RRESP(intf_net_smartconnect_0_M04_AXI_RRESP),
        .s_axi_CTRL_RVALID(intf_net_smartconnect_0_M04_AXI_RVALID),
        .s_axi_CTRL_WDATA(intf_net_smartconnect_0_M04_AXI_WDATA),
        .s_axi_CTRL_WREADY(intf_net_smartconnect_0_M04_AXI_WREADY),
        .s_axi_CTRL_WSTRB(intf_net_smartconnect_0_M04_AXI_WSTRB),
        .s_axi_CTRL_WVALID(intf_net_smartconnect_0_M04_AXI_WVALID),
        .s_axis_video_TDATA(intf_net_video_router_M04_AXIS_TDATA),
        .s_axis_video_TDEST(intf_net_video_router_M04_AXIS_TDEST),
        .s_axis_video_TID(intf_net_video_router_M04_AXIS_TID),
        .s_axis_video_TKEEP(intf_net_video_router_M04_AXIS_TKEEP),
        .s_axis_video_TLAST(intf_net_video_router_M04_AXIS_TLAST),
        .s_axis_video_TREADY(intf_net_video_router_M04_AXIS_TREADY),
        .s_axis_video_TSTRB(intf_net_video_router_M04_AXIS_TSTRB),
        .s_axis_video_TUSER(intf_net_video_router_M04_AXIS_TUSER),
        .s_axis_video_TVALID(intf_net_video_router_M04_AXIS_TVALID));
  (* CHECK_LICENSE_TYPE = "bd_d94b_proc_ss_ip_aresetn_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.1" *) 
  design_1_v_proc_ss_2_1_bd_d94b_proc_ss_ip_aresetn_0 proc_ss_ip_aresetn
       (.Din(net_reset_sel_axis_gpio_io_o),
        .Dout(net_proc_ss_ip_aresetn_Dout));
  (* X_CORE_INFO = "axi_gpio,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_reset_sel_axis_0 reset_sel_axis
       (.gpio_io_i(net_reset_sel_axis_gpio_io_o),
        .gpio_io_o(net_reset_sel_axis_gpio_io_o),
        .gpio_io_t(NLW_reset_sel_axis_gpio_io_t_UNCONNECTED[1:0]),
        .s_axi_aclk(aclk_axis),
        .s_axi_araddr(intf_net_smartconnect_0_M01_AXI_ARADDR),
        .s_axi_aresetn(net_rst_axis_peripheral_aresetn),
        .s_axi_arready(intf_net_smartconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(intf_net_smartconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(intf_net_smartconnect_0_M01_AXI_AWADDR),
        .s_axi_awready(intf_net_smartconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(intf_net_smartconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(intf_net_smartconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(intf_net_smartconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(intf_net_smartconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(intf_net_smartconnect_0_M01_AXI_RDATA),
        .s_axi_rready(intf_net_smartconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(intf_net_smartconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(intf_net_smartconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(intf_net_smartconnect_0_M01_AXI_WDATA),
        .s_axi_wready(intf_net_smartconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(intf_net_smartconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(intf_net_smartconnect_0_M01_AXI_WVALID));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_rst_axis_0 rst_axis
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_rst_axis_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_ctrl),
        .interconnect_aresetn(NLW_rst_axis_interconnect_aresetn_UNCONNECTED[0]),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_rst_axis_mb_reset_UNCONNECTED),
        .peripheral_aresetn(net_rst_axis_peripheral_aresetn),
        .peripheral_reset(NLW_rst_axis_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk_axis));
  (* X_CORE_INFO = "bd_bc83,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(intf_net_smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(NLW_smartconnect_0_M00_AXI_arprot_UNCONNECTED[2:0]),
        .M00_AXI_arready(intf_net_smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(intf_net_smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(intf_net_smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(NLW_smartconnect_0_M00_AXI_awprot_UNCONNECTED[2:0]),
        .M00_AXI_awready(intf_net_smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(intf_net_smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(intf_net_smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(intf_net_smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(intf_net_smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(intf_net_smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(intf_net_smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(intf_net_smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(intf_net_smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(intf_net_smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(intf_net_smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(NLW_smartconnect_0_M00_AXI_wstrb_UNCONNECTED[3:0]),
        .M00_AXI_wvalid(intf_net_smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(intf_net_smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arprot(NLW_smartconnect_0_M01_AXI_arprot_UNCONNECTED[2:0]),
        .M01_AXI_arready(intf_net_smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(intf_net_smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(intf_net_smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awprot(NLW_smartconnect_0_M01_AXI_awprot_UNCONNECTED[2:0]),
        .M01_AXI_awready(intf_net_smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(intf_net_smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(intf_net_smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(intf_net_smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(intf_net_smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(intf_net_smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(intf_net_smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(intf_net_smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(intf_net_smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(intf_net_smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(intf_net_smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(intf_net_smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(intf_net_smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(intf_net_smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arprot(NLW_smartconnect_0_M02_AXI_arprot_UNCONNECTED[2:0]),
        .M02_AXI_arready(intf_net_smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(intf_net_smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(intf_net_smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awprot(NLW_smartconnect_0_M02_AXI_awprot_UNCONNECTED[2:0]),
        .M02_AXI_awready(intf_net_smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(intf_net_smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(intf_net_smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(intf_net_smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(intf_net_smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(intf_net_smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(intf_net_smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(intf_net_smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(intf_net_smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(intf_net_smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(intf_net_smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(intf_net_smartconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(intf_net_smartconnect_0_M02_AXI_WVALID),
        .M03_AXI_araddr(intf_net_smartconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arprot(NLW_smartconnect_0_M03_AXI_arprot_UNCONNECTED[2:0]),
        .M03_AXI_arready(intf_net_smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(intf_net_smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(intf_net_smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awprot(NLW_smartconnect_0_M03_AXI_awprot_UNCONNECTED[2:0]),
        .M03_AXI_awready(intf_net_smartconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(intf_net_smartconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(intf_net_smartconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(intf_net_smartconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(intf_net_smartconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(intf_net_smartconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(intf_net_smartconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(intf_net_smartconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(intf_net_smartconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(intf_net_smartconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(intf_net_smartconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(intf_net_smartconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(intf_net_smartconnect_0_M03_AXI_WVALID),
        .M04_AXI_araddr(intf_net_smartconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arprot(NLW_smartconnect_0_M04_AXI_arprot_UNCONNECTED[2:0]),
        .M04_AXI_arready(intf_net_smartconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(intf_net_smartconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(intf_net_smartconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awprot(NLW_smartconnect_0_M04_AXI_awprot_UNCONNECTED[2:0]),
        .M04_AXI_awready(intf_net_smartconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(intf_net_smartconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(intf_net_smartconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(intf_net_smartconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(intf_net_smartconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(intf_net_smartconnect_0_M04_AXI_RDATA),
        .M04_AXI_rready(intf_net_smartconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(intf_net_smartconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(intf_net_smartconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(intf_net_smartconnect_0_M04_AXI_WDATA),
        .M04_AXI_wready(intf_net_smartconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(intf_net_smartconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(intf_net_smartconnect_0_M04_AXI_WVALID),
        .M05_AXI_araddr(NLW_smartconnect_0_M05_AXI_araddr_UNCONNECTED),
        .M05_AXI_arburst(NLW_smartconnect_0_M05_AXI_arburst_UNCONNECTED[1:0]),
        .M05_AXI_arcache(NLW_smartconnect_0_M05_AXI_arcache_UNCONNECTED[3:0]),
        .M05_AXI_arid(NLW_smartconnect_0_M05_AXI_arid_UNCONNECTED),
        .M05_AXI_arlen(NLW_smartconnect_0_M05_AXI_arlen_UNCONNECTED),
        .M05_AXI_arlock(NLW_smartconnect_0_M05_AXI_arlock_UNCONNECTED),
        .M05_AXI_arprot(NLW_smartconnect_0_M05_AXI_arprot_UNCONNECTED[2:0]),
        .M05_AXI_arqos(NLW_smartconnect_0_M05_AXI_arqos_UNCONNECTED[3:0]),
        .M05_AXI_arready(1'b0),
        .M05_AXI_arregion(NLW_smartconnect_0_M05_AXI_arregion_UNCONNECTED[3:0]),
        .M05_AXI_arsize(NLW_smartconnect_0_M05_AXI_arsize_UNCONNECTED[2:0]),
        .M05_AXI_aruser(NLW_smartconnect_0_M05_AXI_aruser_UNCONNECTED),
        .M05_AXI_arvalid(NLW_smartconnect_0_M05_AXI_arvalid_UNCONNECTED[0]),
        .M05_AXI_awaddr(NLW_smartconnect_0_M05_AXI_awaddr_UNCONNECTED),
        .M05_AXI_awburst(NLW_smartconnect_0_M05_AXI_awburst_UNCONNECTED[1:0]),
        .M05_AXI_awcache(NLW_smartconnect_0_M05_AXI_awcache_UNCONNECTED[3:0]),
        .M05_AXI_awid(NLW_smartconnect_0_M05_AXI_awid_UNCONNECTED),
        .M05_AXI_awlen(NLW_smartconnect_0_M05_AXI_awlen_UNCONNECTED),
        .M05_AXI_awlock(NLW_smartconnect_0_M05_AXI_awlock_UNCONNECTED),
        .M05_AXI_awprot(NLW_smartconnect_0_M05_AXI_awprot_UNCONNECTED[2:0]),
        .M05_AXI_awqos(NLW_smartconnect_0_M05_AXI_awqos_UNCONNECTED[3:0]),
        .M05_AXI_awready(1'b0),
        .M05_AXI_awregion(NLW_smartconnect_0_M05_AXI_awregion_UNCONNECTED[3:0]),
        .M05_AXI_awsize(NLW_smartconnect_0_M05_AXI_awsize_UNCONNECTED[2:0]),
        .M05_AXI_awuser(NLW_smartconnect_0_M05_AXI_awuser_UNCONNECTED),
        .M05_AXI_awvalid(NLW_smartconnect_0_M05_AXI_awvalid_UNCONNECTED[0]),
        .M05_AXI_bid(1'b0),
        .M05_AXI_bready(NLW_smartconnect_0_M05_AXI_bready_UNCONNECTED[0]),
        .M05_AXI_bresp({1'b0,1'b0}),
        .M05_AXI_buser(1'b0),
        .M05_AXI_bvalid(1'b0),
        .M05_AXI_rdata(1'b0),
        .M05_AXI_rid(1'b0),
        .M05_AXI_rlast(1'b0),
        .M05_AXI_rready(NLW_smartconnect_0_M05_AXI_rready_UNCONNECTED[0]),
        .M05_AXI_rresp({1'b0,1'b0}),
        .M05_AXI_ruser(1'b0),
        .M05_AXI_rvalid(1'b0),
        .M05_AXI_wdata(NLW_smartconnect_0_M05_AXI_wdata_UNCONNECTED),
        .M05_AXI_wid(NLW_smartconnect_0_M05_AXI_wid_UNCONNECTED),
        .M05_AXI_wlast(NLW_smartconnect_0_M05_AXI_wlast_UNCONNECTED[0]),
        .M05_AXI_wready(1'b0),
        .M05_AXI_wstrb(NLW_smartconnect_0_M05_AXI_wstrb_UNCONNECTED),
        .M05_AXI_wuser(NLW_smartconnect_0_M05_AXI_wuser_UNCONNECTED),
        .M05_AXI_wvalid(NLW_smartconnect_0_M05_AXI_wvalid_UNCONNECTED[0]),
        .M06_AXI_araddr(NLW_smartconnect_0_M06_AXI_araddr_UNCONNECTED),
        .M06_AXI_arburst(NLW_smartconnect_0_M06_AXI_arburst_UNCONNECTED[1:0]),
        .M06_AXI_arcache(NLW_smartconnect_0_M06_AXI_arcache_UNCONNECTED[3:0]),
        .M06_AXI_arid(NLW_smartconnect_0_M06_AXI_arid_UNCONNECTED),
        .M06_AXI_arlen(NLW_smartconnect_0_M06_AXI_arlen_UNCONNECTED),
        .M06_AXI_arlock(NLW_smartconnect_0_M06_AXI_arlock_UNCONNECTED),
        .M06_AXI_arprot(NLW_smartconnect_0_M06_AXI_arprot_UNCONNECTED[2:0]),
        .M06_AXI_arqos(NLW_smartconnect_0_M06_AXI_arqos_UNCONNECTED[3:0]),
        .M06_AXI_arready(1'b0),
        .M06_AXI_arregion(NLW_smartconnect_0_M06_AXI_arregion_UNCONNECTED[3:0]),
        .M06_AXI_arsize(NLW_smartconnect_0_M06_AXI_arsize_UNCONNECTED[2:0]),
        .M06_AXI_aruser(NLW_smartconnect_0_M06_AXI_aruser_UNCONNECTED),
        .M06_AXI_arvalid(NLW_smartconnect_0_M06_AXI_arvalid_UNCONNECTED[0]),
        .M06_AXI_awaddr(NLW_smartconnect_0_M06_AXI_awaddr_UNCONNECTED),
        .M06_AXI_awburst(NLW_smartconnect_0_M06_AXI_awburst_UNCONNECTED[1:0]),
        .M06_AXI_awcache(NLW_smartconnect_0_M06_AXI_awcache_UNCONNECTED[3:0]),
        .M06_AXI_awid(NLW_smartconnect_0_M06_AXI_awid_UNCONNECTED),
        .M06_AXI_awlen(NLW_smartconnect_0_M06_AXI_awlen_UNCONNECTED),
        .M06_AXI_awlock(NLW_smartconnect_0_M06_AXI_awlock_UNCONNECTED),
        .M06_AXI_awprot(NLW_smartconnect_0_M06_AXI_awprot_UNCONNECTED[2:0]),
        .M06_AXI_awqos(NLW_smartconnect_0_M06_AXI_awqos_UNCONNECTED[3:0]),
        .M06_AXI_awready(1'b0),
        .M06_AXI_awregion(NLW_smartconnect_0_M06_AXI_awregion_UNCONNECTED[3:0]),
        .M06_AXI_awsize(NLW_smartconnect_0_M06_AXI_awsize_UNCONNECTED[2:0]),
        .M06_AXI_awuser(NLW_smartconnect_0_M06_AXI_awuser_UNCONNECTED),
        .M06_AXI_awvalid(NLW_smartconnect_0_M06_AXI_awvalid_UNCONNECTED[0]),
        .M06_AXI_bid(1'b0),
        .M06_AXI_bready(NLW_smartconnect_0_M06_AXI_bready_UNCONNECTED[0]),
        .M06_AXI_bresp({1'b0,1'b0}),
        .M06_AXI_buser(1'b0),
        .M06_AXI_bvalid(1'b0),
        .M06_AXI_rdata(1'b0),
        .M06_AXI_rid(1'b0),
        .M06_AXI_rlast(1'b0),
        .M06_AXI_rready(NLW_smartconnect_0_M06_AXI_rready_UNCONNECTED[0]),
        .M06_AXI_rresp({1'b0,1'b0}),
        .M06_AXI_ruser(1'b0),
        .M06_AXI_rvalid(1'b0),
        .M06_AXI_wdata(NLW_smartconnect_0_M06_AXI_wdata_UNCONNECTED),
        .M06_AXI_wid(NLW_smartconnect_0_M06_AXI_wid_UNCONNECTED),
        .M06_AXI_wlast(NLW_smartconnect_0_M06_AXI_wlast_UNCONNECTED[0]),
        .M06_AXI_wready(1'b0),
        .M06_AXI_wstrb(NLW_smartconnect_0_M06_AXI_wstrb_UNCONNECTED),
        .M06_AXI_wuser(NLW_smartconnect_0_M06_AXI_wuser_UNCONNECTED),
        .M06_AXI_wvalid(NLW_smartconnect_0_M06_AXI_wvalid_UNCONNECTED[0]),
        .M07_AXI_araddr(NLW_smartconnect_0_M07_AXI_araddr_UNCONNECTED),
        .M07_AXI_arburst(NLW_smartconnect_0_M07_AXI_arburst_UNCONNECTED[1:0]),
        .M07_AXI_arcache(NLW_smartconnect_0_M07_AXI_arcache_UNCONNECTED[3:0]),
        .M07_AXI_arid(NLW_smartconnect_0_M07_AXI_arid_UNCONNECTED),
        .M07_AXI_arlen(NLW_smartconnect_0_M07_AXI_arlen_UNCONNECTED),
        .M07_AXI_arlock(NLW_smartconnect_0_M07_AXI_arlock_UNCONNECTED),
        .M07_AXI_arprot(NLW_smartconnect_0_M07_AXI_arprot_UNCONNECTED[2:0]),
        .M07_AXI_arqos(NLW_smartconnect_0_M07_AXI_arqos_UNCONNECTED[3:0]),
        .M07_AXI_arready(1'b0),
        .M07_AXI_arregion(NLW_smartconnect_0_M07_AXI_arregion_UNCONNECTED[3:0]),
        .M07_AXI_arsize(NLW_smartconnect_0_M07_AXI_arsize_UNCONNECTED[2:0]),
        .M07_AXI_aruser(NLW_smartconnect_0_M07_AXI_aruser_UNCONNECTED),
        .M07_AXI_arvalid(NLW_smartconnect_0_M07_AXI_arvalid_UNCONNECTED[0]),
        .M07_AXI_awaddr(NLW_smartconnect_0_M07_AXI_awaddr_UNCONNECTED),
        .M07_AXI_awburst(NLW_smartconnect_0_M07_AXI_awburst_UNCONNECTED[1:0]),
        .M07_AXI_awcache(NLW_smartconnect_0_M07_AXI_awcache_UNCONNECTED[3:0]),
        .M07_AXI_awid(NLW_smartconnect_0_M07_AXI_awid_UNCONNECTED),
        .M07_AXI_awlen(NLW_smartconnect_0_M07_AXI_awlen_UNCONNECTED),
        .M07_AXI_awlock(NLW_smartconnect_0_M07_AXI_awlock_UNCONNECTED),
        .M07_AXI_awprot(NLW_smartconnect_0_M07_AXI_awprot_UNCONNECTED[2:0]),
        .M07_AXI_awqos(NLW_smartconnect_0_M07_AXI_awqos_UNCONNECTED[3:0]),
        .M07_AXI_awready(1'b0),
        .M07_AXI_awregion(NLW_smartconnect_0_M07_AXI_awregion_UNCONNECTED[3:0]),
        .M07_AXI_awsize(NLW_smartconnect_0_M07_AXI_awsize_UNCONNECTED[2:0]),
        .M07_AXI_awuser(NLW_smartconnect_0_M07_AXI_awuser_UNCONNECTED),
        .M07_AXI_awvalid(NLW_smartconnect_0_M07_AXI_awvalid_UNCONNECTED[0]),
        .M07_AXI_bid(1'b0),
        .M07_AXI_bready(NLW_smartconnect_0_M07_AXI_bready_UNCONNECTED[0]),
        .M07_AXI_bresp({1'b0,1'b0}),
        .M07_AXI_buser(1'b0),
        .M07_AXI_bvalid(1'b0),
        .M07_AXI_rdata(1'b0),
        .M07_AXI_rid(1'b0),
        .M07_AXI_rlast(1'b0),
        .M07_AXI_rready(NLW_smartconnect_0_M07_AXI_rready_UNCONNECTED[0]),
        .M07_AXI_rresp({1'b0,1'b0}),
        .M07_AXI_ruser(1'b0),
        .M07_AXI_rvalid(1'b0),
        .M07_AXI_wdata(NLW_smartconnect_0_M07_AXI_wdata_UNCONNECTED),
        .M07_AXI_wid(NLW_smartconnect_0_M07_AXI_wid_UNCONNECTED),
        .M07_AXI_wlast(NLW_smartconnect_0_M07_AXI_wlast_UNCONNECTED[0]),
        .M07_AXI_wready(1'b0),
        .M07_AXI_wstrb(NLW_smartconnect_0_M07_AXI_wstrb_UNCONNECTED),
        .M07_AXI_wuser(NLW_smartconnect_0_M07_AXI_wuser_UNCONNECTED),
        .M07_AXI_wvalid(NLW_smartconnect_0_M07_AXI_wvalid_UNCONNECTED[0]),
        .M08_AXI_araddr(intf_net_smartconnect_0_M08_AXI_ARADDR),
        .M08_AXI_arprot(NLW_smartconnect_0_M08_AXI_arprot_UNCONNECTED[2:0]),
        .M08_AXI_arready(intf_net_smartconnect_0_M08_AXI_ARREADY),
        .M08_AXI_arvalid(intf_net_smartconnect_0_M08_AXI_ARVALID),
        .M08_AXI_awaddr(intf_net_smartconnect_0_M08_AXI_AWADDR),
        .M08_AXI_awprot(NLW_smartconnect_0_M08_AXI_awprot_UNCONNECTED[2:0]),
        .M08_AXI_awready(intf_net_smartconnect_0_M08_AXI_AWREADY),
        .M08_AXI_awvalid(intf_net_smartconnect_0_M08_AXI_AWVALID),
        .M08_AXI_bready(intf_net_smartconnect_0_M08_AXI_BREADY),
        .M08_AXI_bresp(intf_net_smartconnect_0_M08_AXI_BRESP),
        .M08_AXI_bvalid(intf_net_smartconnect_0_M08_AXI_BVALID),
        .M08_AXI_rdata(intf_net_smartconnect_0_M08_AXI_RDATA),
        .M08_AXI_rready(intf_net_smartconnect_0_M08_AXI_RREADY),
        .M08_AXI_rresp(intf_net_smartconnect_0_M08_AXI_RRESP),
        .M08_AXI_rvalid(intf_net_smartconnect_0_M08_AXI_RVALID),
        .M08_AXI_wdata(intf_net_smartconnect_0_M08_AXI_WDATA),
        .M08_AXI_wready(intf_net_smartconnect_0_M08_AXI_WREADY),
        .M08_AXI_wstrb(intf_net_smartconnect_0_M08_AXI_WSTRB),
        .M08_AXI_wvalid(intf_net_smartconnect_0_M08_AXI_WVALID),
        .M09_AXI_araddr(NLW_smartconnect_0_M09_AXI_araddr_UNCONNECTED),
        .M09_AXI_arburst(NLW_smartconnect_0_M09_AXI_arburst_UNCONNECTED[1:0]),
        .M09_AXI_arcache(NLW_smartconnect_0_M09_AXI_arcache_UNCONNECTED[3:0]),
        .M09_AXI_arid(NLW_smartconnect_0_M09_AXI_arid_UNCONNECTED),
        .M09_AXI_arlen(NLW_smartconnect_0_M09_AXI_arlen_UNCONNECTED),
        .M09_AXI_arlock(NLW_smartconnect_0_M09_AXI_arlock_UNCONNECTED),
        .M09_AXI_arprot(NLW_smartconnect_0_M09_AXI_arprot_UNCONNECTED[2:0]),
        .M09_AXI_arqos(NLW_smartconnect_0_M09_AXI_arqos_UNCONNECTED[3:0]),
        .M09_AXI_arready(1'b0),
        .M09_AXI_arregion(NLW_smartconnect_0_M09_AXI_arregion_UNCONNECTED[3:0]),
        .M09_AXI_arsize(NLW_smartconnect_0_M09_AXI_arsize_UNCONNECTED[2:0]),
        .M09_AXI_aruser(NLW_smartconnect_0_M09_AXI_aruser_UNCONNECTED),
        .M09_AXI_arvalid(NLW_smartconnect_0_M09_AXI_arvalid_UNCONNECTED[0]),
        .M09_AXI_awaddr(NLW_smartconnect_0_M09_AXI_awaddr_UNCONNECTED),
        .M09_AXI_awburst(NLW_smartconnect_0_M09_AXI_awburst_UNCONNECTED[1:0]),
        .M09_AXI_awcache(NLW_smartconnect_0_M09_AXI_awcache_UNCONNECTED[3:0]),
        .M09_AXI_awid(NLW_smartconnect_0_M09_AXI_awid_UNCONNECTED),
        .M09_AXI_awlen(NLW_smartconnect_0_M09_AXI_awlen_UNCONNECTED),
        .M09_AXI_awlock(NLW_smartconnect_0_M09_AXI_awlock_UNCONNECTED),
        .M09_AXI_awprot(NLW_smartconnect_0_M09_AXI_awprot_UNCONNECTED[2:0]),
        .M09_AXI_awqos(NLW_smartconnect_0_M09_AXI_awqos_UNCONNECTED[3:0]),
        .M09_AXI_awready(1'b0),
        .M09_AXI_awregion(NLW_smartconnect_0_M09_AXI_awregion_UNCONNECTED[3:0]),
        .M09_AXI_awsize(NLW_smartconnect_0_M09_AXI_awsize_UNCONNECTED[2:0]),
        .M09_AXI_awuser(NLW_smartconnect_0_M09_AXI_awuser_UNCONNECTED),
        .M09_AXI_awvalid(NLW_smartconnect_0_M09_AXI_awvalid_UNCONNECTED[0]),
        .M09_AXI_bid(1'b0),
        .M09_AXI_bready(NLW_smartconnect_0_M09_AXI_bready_UNCONNECTED[0]),
        .M09_AXI_bresp({1'b0,1'b0}),
        .M09_AXI_buser(1'b0),
        .M09_AXI_bvalid(1'b0),
        .M09_AXI_rdata(1'b0),
        .M09_AXI_rid(1'b0),
        .M09_AXI_rlast(1'b0),
        .M09_AXI_rready(NLW_smartconnect_0_M09_AXI_rready_UNCONNECTED[0]),
        .M09_AXI_rresp({1'b0,1'b0}),
        .M09_AXI_ruser(1'b0),
        .M09_AXI_rvalid(1'b0),
        .M09_AXI_wdata(NLW_smartconnect_0_M09_AXI_wdata_UNCONNECTED),
        .M09_AXI_wid(NLW_smartconnect_0_M09_AXI_wid_UNCONNECTED),
        .M09_AXI_wlast(NLW_smartconnect_0_M09_AXI_wlast_UNCONNECTED[0]),
        .M09_AXI_wready(1'b0),
        .M09_AXI_wstrb(NLW_smartconnect_0_M09_AXI_wstrb_UNCONNECTED),
        .M09_AXI_wuser(NLW_smartconnect_0_M09_AXI_wuser_UNCONNECTED),
        .M09_AXI_wvalid(NLW_smartconnect_0_M09_AXI_wvalid_UNCONNECTED[0]),
        .M10_AXI_araddr(NLW_smartconnect_0_M10_AXI_araddr_UNCONNECTED),
        .M10_AXI_arburst(NLW_smartconnect_0_M10_AXI_arburst_UNCONNECTED[1:0]),
        .M10_AXI_arcache(NLW_smartconnect_0_M10_AXI_arcache_UNCONNECTED[3:0]),
        .M10_AXI_arid(NLW_smartconnect_0_M10_AXI_arid_UNCONNECTED),
        .M10_AXI_arlen(NLW_smartconnect_0_M10_AXI_arlen_UNCONNECTED),
        .M10_AXI_arlock(NLW_smartconnect_0_M10_AXI_arlock_UNCONNECTED),
        .M10_AXI_arprot(NLW_smartconnect_0_M10_AXI_arprot_UNCONNECTED[2:0]),
        .M10_AXI_arqos(NLW_smartconnect_0_M10_AXI_arqos_UNCONNECTED[3:0]),
        .M10_AXI_arready(1'b0),
        .M10_AXI_arregion(NLW_smartconnect_0_M10_AXI_arregion_UNCONNECTED[3:0]),
        .M10_AXI_arsize(NLW_smartconnect_0_M10_AXI_arsize_UNCONNECTED[2:0]),
        .M10_AXI_aruser(NLW_smartconnect_0_M10_AXI_aruser_UNCONNECTED),
        .M10_AXI_arvalid(NLW_smartconnect_0_M10_AXI_arvalid_UNCONNECTED[0]),
        .M10_AXI_awaddr(NLW_smartconnect_0_M10_AXI_awaddr_UNCONNECTED),
        .M10_AXI_awburst(NLW_smartconnect_0_M10_AXI_awburst_UNCONNECTED[1:0]),
        .M10_AXI_awcache(NLW_smartconnect_0_M10_AXI_awcache_UNCONNECTED[3:0]),
        .M10_AXI_awid(NLW_smartconnect_0_M10_AXI_awid_UNCONNECTED),
        .M10_AXI_awlen(NLW_smartconnect_0_M10_AXI_awlen_UNCONNECTED),
        .M10_AXI_awlock(NLW_smartconnect_0_M10_AXI_awlock_UNCONNECTED),
        .M10_AXI_awprot(NLW_smartconnect_0_M10_AXI_awprot_UNCONNECTED[2:0]),
        .M10_AXI_awqos(NLW_smartconnect_0_M10_AXI_awqos_UNCONNECTED[3:0]),
        .M10_AXI_awready(1'b0),
        .M10_AXI_awregion(NLW_smartconnect_0_M10_AXI_awregion_UNCONNECTED[3:0]),
        .M10_AXI_awsize(NLW_smartconnect_0_M10_AXI_awsize_UNCONNECTED[2:0]),
        .M10_AXI_awuser(NLW_smartconnect_0_M10_AXI_awuser_UNCONNECTED),
        .M10_AXI_awvalid(NLW_smartconnect_0_M10_AXI_awvalid_UNCONNECTED[0]),
        .M10_AXI_bid(1'b0),
        .M10_AXI_bready(NLW_smartconnect_0_M10_AXI_bready_UNCONNECTED[0]),
        .M10_AXI_bresp({1'b0,1'b0}),
        .M10_AXI_buser(1'b0),
        .M10_AXI_bvalid(1'b0),
        .M10_AXI_rdata(1'b0),
        .M10_AXI_rid(1'b0),
        .M10_AXI_rlast(1'b0),
        .M10_AXI_rready(NLW_smartconnect_0_M10_AXI_rready_UNCONNECTED[0]),
        .M10_AXI_rresp({1'b0,1'b0}),
        .M10_AXI_ruser(1'b0),
        .M10_AXI_rvalid(1'b0),
        .M10_AXI_wdata(NLW_smartconnect_0_M10_AXI_wdata_UNCONNECTED),
        .M10_AXI_wid(NLW_smartconnect_0_M10_AXI_wid_UNCONNECTED),
        .M10_AXI_wlast(NLW_smartconnect_0_M10_AXI_wlast_UNCONNECTED[0]),
        .M10_AXI_wready(1'b0),
        .M10_AXI_wstrb(NLW_smartconnect_0_M10_AXI_wstrb_UNCONNECTED),
        .M10_AXI_wuser(NLW_smartconnect_0_M10_AXI_wuser_UNCONNECTED),
        .M10_AXI_wvalid(NLW_smartconnect_0_M10_AXI_wvalid_UNCONNECTED[0]),
        .M11_AXI_araddr(NLW_smartconnect_0_M11_AXI_araddr_UNCONNECTED),
        .M11_AXI_arburst(NLW_smartconnect_0_M11_AXI_arburst_UNCONNECTED[1:0]),
        .M11_AXI_arcache(NLW_smartconnect_0_M11_AXI_arcache_UNCONNECTED[3:0]),
        .M11_AXI_arid(NLW_smartconnect_0_M11_AXI_arid_UNCONNECTED),
        .M11_AXI_arlen(NLW_smartconnect_0_M11_AXI_arlen_UNCONNECTED),
        .M11_AXI_arlock(NLW_smartconnect_0_M11_AXI_arlock_UNCONNECTED),
        .M11_AXI_arprot(NLW_smartconnect_0_M11_AXI_arprot_UNCONNECTED[2:0]),
        .M11_AXI_arqos(NLW_smartconnect_0_M11_AXI_arqos_UNCONNECTED[3:0]),
        .M11_AXI_arready(1'b0),
        .M11_AXI_arregion(NLW_smartconnect_0_M11_AXI_arregion_UNCONNECTED[3:0]),
        .M11_AXI_arsize(NLW_smartconnect_0_M11_AXI_arsize_UNCONNECTED[2:0]),
        .M11_AXI_aruser(NLW_smartconnect_0_M11_AXI_aruser_UNCONNECTED),
        .M11_AXI_arvalid(NLW_smartconnect_0_M11_AXI_arvalid_UNCONNECTED[0]),
        .M11_AXI_awaddr(NLW_smartconnect_0_M11_AXI_awaddr_UNCONNECTED),
        .M11_AXI_awburst(NLW_smartconnect_0_M11_AXI_awburst_UNCONNECTED[1:0]),
        .M11_AXI_awcache(NLW_smartconnect_0_M11_AXI_awcache_UNCONNECTED[3:0]),
        .M11_AXI_awid(NLW_smartconnect_0_M11_AXI_awid_UNCONNECTED),
        .M11_AXI_awlen(NLW_smartconnect_0_M11_AXI_awlen_UNCONNECTED),
        .M11_AXI_awlock(NLW_smartconnect_0_M11_AXI_awlock_UNCONNECTED),
        .M11_AXI_awprot(NLW_smartconnect_0_M11_AXI_awprot_UNCONNECTED[2:0]),
        .M11_AXI_awqos(NLW_smartconnect_0_M11_AXI_awqos_UNCONNECTED[3:0]),
        .M11_AXI_awready(1'b0),
        .M11_AXI_awregion(NLW_smartconnect_0_M11_AXI_awregion_UNCONNECTED[3:0]),
        .M11_AXI_awsize(NLW_smartconnect_0_M11_AXI_awsize_UNCONNECTED[2:0]),
        .M11_AXI_awuser(NLW_smartconnect_0_M11_AXI_awuser_UNCONNECTED),
        .M11_AXI_awvalid(NLW_smartconnect_0_M11_AXI_awvalid_UNCONNECTED[0]),
        .M11_AXI_bid(1'b0),
        .M11_AXI_bready(NLW_smartconnect_0_M11_AXI_bready_UNCONNECTED[0]),
        .M11_AXI_bresp({1'b0,1'b0}),
        .M11_AXI_buser(1'b0),
        .M11_AXI_bvalid(1'b0),
        .M11_AXI_rdata(1'b0),
        .M11_AXI_rid(1'b0),
        .M11_AXI_rlast(1'b0),
        .M11_AXI_rready(NLW_smartconnect_0_M11_AXI_rready_UNCONNECTED[0]),
        .M11_AXI_rresp({1'b0,1'b0}),
        .M11_AXI_ruser(1'b0),
        .M11_AXI_rvalid(1'b0),
        .M11_AXI_wdata(NLW_smartconnect_0_M11_AXI_wdata_UNCONNECTED),
        .M11_AXI_wid(NLW_smartconnect_0_M11_AXI_wid_UNCONNECTED),
        .M11_AXI_wlast(NLW_smartconnect_0_M11_AXI_wlast_UNCONNECTED[0]),
        .M11_AXI_wready(1'b0),
        .M11_AXI_wstrb(NLW_smartconnect_0_M11_AXI_wstrb_UNCONNECTED),
        .M11_AXI_wuser(NLW_smartconnect_0_M11_AXI_wuser_UNCONNECTED),
        .M11_AXI_wvalid(NLW_smartconnect_0_M11_AXI_wvalid_UNCONNECTED[0]),
        .S00_AXI_araddr(s_axi_ctrl_araddr),
        .S00_AXI_arprot(s_axi_ctrl_arprot),
        .S00_AXI_arready(s_axi_ctrl_arready),
        .S00_AXI_arvalid(s_axi_ctrl_arvalid),
        .S00_AXI_awaddr(s_axi_ctrl_awaddr),
        .S00_AXI_awprot(s_axi_ctrl_awprot),
        .S00_AXI_awready(s_axi_ctrl_awready),
        .S00_AXI_awvalid(s_axi_ctrl_awvalid),
        .S00_AXI_bready(s_axi_ctrl_bready),
        .S00_AXI_bresp(s_axi_ctrl_bresp),
        .S00_AXI_bvalid(s_axi_ctrl_bvalid),
        .S00_AXI_rdata(s_axi_ctrl_rdata),
        .S00_AXI_rready(s_axi_ctrl_rready),
        .S00_AXI_rresp(s_axi_ctrl_rresp),
        .S00_AXI_rvalid(s_axi_ctrl_rvalid),
        .S00_AXI_wdata(s_axi_ctrl_wdata),
        .S00_AXI_wready(s_axi_ctrl_wready),
        .S00_AXI_wstrb(s_axi_ctrl_wstrb),
        .S00_AXI_wvalid(s_axi_ctrl_wvalid),
        .aclk(aclk_ctrl),
        .aclk1(aclk_axis),
        .aclk2(aclk_ctrl),
        .aclk3(aclk_ctrl),
        .aclk4(aclk_ctrl),
        .aresetn(aresetn_ctrl));
  (* CHECK_LICENSE_TYPE = "bd_d94b_vid_in_aresetn_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.1" *) 
  design_1_v_proc_ss_2_1_bd_d94b_vid_in_aresetn_0 vid_in_aresetn
       (.Din(net_reset_sel_axis_gpio_io_o),
        .Dout(aresetn_io_axis));
  design_1_v_proc_ss_2_1_bd_d94b_video_router_0 video_router
       (.ACLK(aclk_axis),
        .ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M00_AXIS_ACLK(aclk_axis),
        .M00_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M00_AXIS_tdata(m_axis_tdata),
        .M00_AXIS_tdest(m_axis_tdest),
        .M00_AXIS_tid(m_axis_tid),
        .M00_AXIS_tkeep(m_axis_tkeep),
        .M00_AXIS_tlast(m_axis_tlast),
        .M00_AXIS_tready(m_axis_tready),
        .M00_AXIS_tstrb(m_axis_tstrb),
        .M00_AXIS_tuser(m_axis_tuser),
        .M00_AXIS_tvalid(m_axis_tvalid),
        .M01_AXIS_ACLK(aclk_axis),
        .M01_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M01_AXIS_tdata(intf_net_video_router_M01_AXIS_TDATA),
        .M01_AXIS_tdest(intf_net_video_router_M01_AXIS_TDEST),
        .M01_AXIS_tid(intf_net_video_router_M01_AXIS_TID),
        .M01_AXIS_tkeep(intf_net_video_router_M01_AXIS_TKEEP),
        .M01_AXIS_tlast(intf_net_video_router_M01_AXIS_TLAST),
        .M01_AXIS_tready(intf_net_video_router_M01_AXIS_TREADY),
        .M01_AXIS_tstrb(intf_net_video_router_M01_AXIS_TSTRB),
        .M01_AXIS_tuser(intf_net_video_router_M01_AXIS_TUSER),
        .M01_AXIS_tvalid(intf_net_video_router_M01_AXIS_TVALID),
        .M02_AXIS_ACLK(aclk_axis),
        .M02_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M02_AXIS_tdata(intf_net_video_router_M02_AXIS_TDATA),
        .M02_AXIS_tdest(intf_net_video_router_M02_AXIS_TDEST),
        .M02_AXIS_tid(intf_net_video_router_M02_AXIS_TID),
        .M02_AXIS_tkeep(intf_net_video_router_M02_AXIS_TKEEP),
        .M02_AXIS_tlast(intf_net_video_router_M02_AXIS_TLAST),
        .M02_AXIS_tready(intf_net_video_router_M02_AXIS_TREADY),
        .M02_AXIS_tstrb(intf_net_video_router_M02_AXIS_TSTRB),
        .M02_AXIS_tuser(intf_net_video_router_M02_AXIS_TUSER),
        .M02_AXIS_tvalid(intf_net_video_router_M02_AXIS_TVALID),
        .M03_AXIS_ACLK(aclk_axis),
        .M03_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M03_AXIS_tdata(NLW_video_router_M03_AXIS_tdata_UNCONNECTED),
        .M03_AXIS_tdest(NLW_video_router_M03_AXIS_tdest_UNCONNECTED),
        .M03_AXIS_tready(1'b0),
        .M03_AXIS_tvalid(NLW_video_router_M03_AXIS_tvalid_UNCONNECTED),
        .M04_AXIS_ACLK(aclk_axis),
        .M04_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M04_AXIS_tdata(intf_net_video_router_M04_AXIS_TDATA),
        .M04_AXIS_tdest(intf_net_video_router_M04_AXIS_TDEST),
        .M04_AXIS_tid(intf_net_video_router_M04_AXIS_TID),
        .M04_AXIS_tkeep(intf_net_video_router_M04_AXIS_TKEEP),
        .M04_AXIS_tlast(intf_net_video_router_M04_AXIS_TLAST),
        .M04_AXIS_tready(intf_net_video_router_M04_AXIS_TREADY),
        .M04_AXIS_tstrb(intf_net_video_router_M04_AXIS_TSTRB),
        .M04_AXIS_tuser(intf_net_video_router_M04_AXIS_TUSER),
        .M04_AXIS_tvalid(intf_net_video_router_M04_AXIS_TVALID),
        .M05_AXIS_ACLK(aclk_axis),
        .M05_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M05_AXIS_tdata(NLW_video_router_M05_AXIS_tdata_UNCONNECTED),
        .M05_AXIS_tready(1'b1),
        .M05_AXIS_tvalid(NLW_video_router_M05_AXIS_tvalid_UNCONNECTED),
        .M06_AXIS_ACLK(aclk_axis),
        .M06_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M06_AXIS_tdata(NLW_video_router_M06_AXIS_tdata_UNCONNECTED),
        .M06_AXIS_tready(1'b1),
        .M06_AXIS_tvalid(NLW_video_router_M06_AXIS_tvalid_UNCONNECTED),
        .M07_AXIS_ACLK(aclk_axis),
        .M07_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M07_AXIS_tdata(NLW_video_router_M07_AXIS_tdata_UNCONNECTED),
        .M07_AXIS_tready(1'b1),
        .M07_AXIS_tvalid(NLW_video_router_M07_AXIS_tvalid_UNCONNECTED),
        .M08_AXIS_ACLK(aclk_axis),
        .M08_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M08_AXIS_tdata(intf_net_video_router_M08_AXIS_TDATA),
        .M08_AXIS_tdest(intf_net_video_router_M08_AXIS_TDEST),
        .M08_AXIS_tid(intf_net_video_router_M08_AXIS_TID),
        .M08_AXIS_tkeep(intf_net_video_router_M08_AXIS_TKEEP),
        .M08_AXIS_tlast(intf_net_video_router_M08_AXIS_TLAST),
        .M08_AXIS_tready(intf_net_video_router_M08_AXIS_TREADY),
        .M08_AXIS_tstrb(intf_net_video_router_M08_AXIS_TSTRB),
        .M08_AXIS_tuser(intf_net_video_router_M08_AXIS_TUSER),
        .M08_AXIS_tvalid(intf_net_video_router_M08_AXIS_TVALID),
        .M09_AXIS_ACLK(aclk_axis),
        .M09_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .M09_AXIS_tdata(NLW_video_router_M09_AXIS_tdata_UNCONNECTED),
        .M09_AXIS_tdest(NLW_video_router_M09_AXIS_tdest_UNCONNECTED),
        .M09_AXIS_tready(1'b0),
        .M09_AXIS_tvalid(NLW_video_router_M09_AXIS_tvalid_UNCONNECTED),
        .S00_AXIS_ACLK(aclk_axis),
        .S00_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S00_AXIS_tdata(intf_net_input_size_set_M_AXIS_TDATA),
        .S00_AXIS_tdest(intf_net_input_size_set_M_AXIS_TDEST),
        .S00_AXIS_tid(intf_net_input_size_set_M_AXIS_TID),
        .S00_AXIS_tkeep(intf_net_input_size_set_M_AXIS_TKEEP),
        .S00_AXIS_tlast(intf_net_input_size_set_M_AXIS_TLAST),
        .S00_AXIS_tready(intf_net_input_size_set_M_AXIS_TREADY),
        .S00_AXIS_tstrb(intf_net_input_size_set_M_AXIS_TSTRB),
        .S00_AXIS_tuser(intf_net_input_size_set_M_AXIS_TUSER),
        .S00_AXIS_tvalid(intf_net_input_size_set_M_AXIS_TVALID),
        .S01_AXIS_ACLK(aclk_axis),
        .S01_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S01_AXIS_tdata(intf_net_vsc_m_axis_video_TDATA),
        .S01_AXIS_tdest(intf_net_vsc_m_axis_video_TDEST),
        .S01_AXIS_tid(intf_net_vsc_m_axis_video_TID),
        .S01_AXIS_tkeep(intf_net_vsc_m_axis_video_TKEEP),
        .S01_AXIS_tlast(intf_net_vsc_m_axis_video_TLAST),
        .S01_AXIS_tready(intf_net_vsc_m_axis_video_TREADY),
        .S01_AXIS_tstrb(intf_net_vsc_m_axis_video_TSTRB),
        .S01_AXIS_tuser(intf_net_vsc_m_axis_video_TUSER),
        .S01_AXIS_tvalid(intf_net_vsc_m_axis_video_TVALID),
        .S02_AXIS_ACLK(aclk_axis),
        .S02_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S02_AXIS_tdata(intf_net_hsc_m_axis_video_TDATA),
        .S02_AXIS_tdest(intf_net_hsc_m_axis_video_TDEST),
        .S02_AXIS_tid(intf_net_hsc_m_axis_video_TID),
        .S02_AXIS_tkeep(intf_net_hsc_m_axis_video_TKEEP),
        .S02_AXIS_tlast(intf_net_hsc_m_axis_video_TLAST),
        .S02_AXIS_tready(intf_net_hsc_m_axis_video_TREADY),
        .S02_AXIS_tstrb(intf_net_hsc_m_axis_video_TSTRB),
        .S02_AXIS_tuser(intf_net_hsc_m_axis_video_TUSER),
        .S02_AXIS_tvalid(intf_net_hsc_m_axis_video_TVALID),
        .S03_AXIS_ACLK(aclk_axis),
        .S03_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S03_AXIS_tdata(1'b0),
        .S03_AXIS_tdest(1'b0),
        .S03_AXIS_tready(NLW_video_router_S03_AXIS_tready_UNCONNECTED),
        .S03_AXIS_tvalid(1'b0),
        .S04_AXIS_ACLK(aclk_axis),
        .S04_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S04_AXIS_tdata(intf_net_ltr_m_axis_video_TDATA),
        .S04_AXIS_tdest(intf_net_ltr_m_axis_video_TDEST),
        .S04_AXIS_tid(intf_net_ltr_m_axis_video_TID),
        .S04_AXIS_tkeep(intf_net_ltr_m_axis_video_TKEEP),
        .S04_AXIS_tlast(intf_net_ltr_m_axis_video_TLAST),
        .S04_AXIS_tready(intf_net_ltr_m_axis_video_TREADY),
        .S04_AXIS_tstrb(intf_net_ltr_m_axis_video_TSTRB),
        .S04_AXIS_tuser(intf_net_ltr_m_axis_video_TUSER),
        .S04_AXIS_tvalid(intf_net_ltr_m_axis_video_TVALID),
        .S05_AXIS_ACLK(aclk_axis),
        .S05_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S05_AXIS_tdata(1'b0),
        .S05_AXIS_tdest(1'b0),
        .S05_AXIS_tready(NLW_video_router_S05_AXIS_tready_UNCONNECTED),
        .S05_AXIS_tvalid(1'b0),
        .S06_AXIS_ACLK(aclk_axis),
        .S06_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S06_AXIS_tdata(1'b0),
        .S06_AXIS_tdest(1'b0),
        .S06_AXIS_tready(NLW_video_router_S06_AXIS_tready_UNCONNECTED),
        .S06_AXIS_tvalid(1'b0),
        .S07_AXIS_ACLK(aclk_axis),
        .S07_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S07_AXIS_tdata(1'b0),
        .S07_AXIS_tdest(1'b0),
        .S07_AXIS_tready(NLW_video_router_S07_AXIS_tready_UNCONNECTED),
        .S07_AXIS_tvalid(1'b0),
        .S08_AXIS_ACLK(aclk_axis),
        .S08_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S08_AXIS_tdata(intf_net_csc_m_axis_video_TDATA),
        .S08_AXIS_tdest(intf_net_csc_m_axis_video_TDEST),
        .S08_AXIS_tid(intf_net_csc_m_axis_video_TID),
        .S08_AXIS_tkeep(intf_net_csc_m_axis_video_TKEEP),
        .S08_AXIS_tlast(intf_net_csc_m_axis_video_TLAST),
        .S08_AXIS_tready(intf_net_csc_m_axis_video_TREADY),
        .S08_AXIS_tstrb(intf_net_csc_m_axis_video_TSTRB),
        .S08_AXIS_tuser(intf_net_csc_m_axis_video_TUSER),
        .S08_AXIS_tvalid(intf_net_csc_m_axis_video_TVALID),
        .S09_AXIS_ACLK(aclk_axis),
        .S09_AXIS_ARESETN(net_proc_ss_ip_aresetn_Dout),
        .S09_AXIS_tdata(1'b0),
        .S09_AXIS_tdest(1'b0),
        .S09_AXIS_tready(NLW_video_router_S09_AXIS_tready_UNCONNECTED),
        .S09_AXIS_tvalid(1'b0),
        .S_AXI_CTRL_ACLK(aclk_ctrl),
        .S_AXI_CTRL_ARESETN(aresetn_ctrl),
        .S_AXI_CTRL_araddr(intf_net_smartconnect_0_M00_AXI_ARADDR),
        .S_AXI_CTRL_arready(intf_net_smartconnect_0_M00_AXI_ARREADY),
        .S_AXI_CTRL_arvalid(intf_net_smartconnect_0_M00_AXI_ARVALID),
        .S_AXI_CTRL_awaddr(intf_net_smartconnect_0_M00_AXI_AWADDR),
        .S_AXI_CTRL_awready(intf_net_smartconnect_0_M00_AXI_AWREADY),
        .S_AXI_CTRL_awvalid(intf_net_smartconnect_0_M00_AXI_AWVALID),
        .S_AXI_CTRL_bready(intf_net_smartconnect_0_M00_AXI_BREADY),
        .S_AXI_CTRL_bresp(intf_net_smartconnect_0_M00_AXI_BRESP),
        .S_AXI_CTRL_bvalid(intf_net_smartconnect_0_M00_AXI_BVALID),
        .S_AXI_CTRL_rdata(intf_net_smartconnect_0_M00_AXI_RDATA),
        .S_AXI_CTRL_rready(intf_net_smartconnect_0_M00_AXI_RREADY),
        .S_AXI_CTRL_rresp(intf_net_smartconnect_0_M00_AXI_RRESP),
        .S_AXI_CTRL_rvalid(intf_net_smartconnect_0_M00_AXI_RVALID),
        .S_AXI_CTRL_wdata(intf_net_smartconnect_0_M00_AXI_WDATA),
        .S_AXI_CTRL_wready(intf_net_smartconnect_0_M00_AXI_WREADY),
        .S_AXI_CTRL_wvalid(intf_net_smartconnect_0_M00_AXI_WVALID));
  (* X_CORE_INFO = "bd_d94b_vsc_0_v_vscaler,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_vsc_0 vsc
       (.ap_clk(aclk_axis),
        .ap_rst_n(net_proc_ss_ip_aresetn_Dout),
        .interrupt(NLW_vsc_interrupt_UNCONNECTED),
        .m_axis_video_TDATA(intf_net_vsc_m_axis_video_TDATA),
        .m_axis_video_TDEST(intf_net_vsc_m_axis_video_TDEST),
        .m_axis_video_TID(intf_net_vsc_m_axis_video_TID),
        .m_axis_video_TKEEP(intf_net_vsc_m_axis_video_TKEEP),
        .m_axis_video_TLAST(intf_net_vsc_m_axis_video_TLAST),
        .m_axis_video_TREADY(intf_net_vsc_m_axis_video_TREADY),
        .m_axis_video_TSTRB(intf_net_vsc_m_axis_video_TSTRB),
        .m_axis_video_TUSER(intf_net_vsc_m_axis_video_TUSER),
        .m_axis_video_TVALID(intf_net_vsc_m_axis_video_TVALID),
        .s_axi_CTRL_ARADDR(intf_net_smartconnect_0_M02_AXI_ARADDR),
        .s_axi_CTRL_ARREADY(intf_net_smartconnect_0_M02_AXI_ARREADY),
        .s_axi_CTRL_ARVALID(intf_net_smartconnect_0_M02_AXI_ARVALID),
        .s_axi_CTRL_AWADDR(intf_net_smartconnect_0_M02_AXI_AWADDR),
        .s_axi_CTRL_AWREADY(intf_net_smartconnect_0_M02_AXI_AWREADY),
        .s_axi_CTRL_AWVALID(intf_net_smartconnect_0_M02_AXI_AWVALID),
        .s_axi_CTRL_BREADY(intf_net_smartconnect_0_M02_AXI_BREADY),
        .s_axi_CTRL_BRESP(intf_net_smartconnect_0_M02_AXI_BRESP),
        .s_axi_CTRL_BVALID(intf_net_smartconnect_0_M02_AXI_BVALID),
        .s_axi_CTRL_RDATA(intf_net_smartconnect_0_M02_AXI_RDATA),
        .s_axi_CTRL_RREADY(intf_net_smartconnect_0_M02_AXI_RREADY),
        .s_axi_CTRL_RRESP(intf_net_smartconnect_0_M02_AXI_RRESP),
        .s_axi_CTRL_RVALID(intf_net_smartconnect_0_M02_AXI_RVALID),
        .s_axi_CTRL_WDATA(intf_net_smartconnect_0_M02_AXI_WDATA),
        .s_axi_CTRL_WREADY(intf_net_smartconnect_0_M02_AXI_WREADY),
        .s_axi_CTRL_WSTRB(intf_net_smartconnect_0_M02_AXI_WSTRB),
        .s_axi_CTRL_WVALID(intf_net_smartconnect_0_M02_AXI_WVALID),
        .s_axis_video_TDATA(intf_net_video_router_M01_AXIS_TDATA),
        .s_axis_video_TDEST(intf_net_video_router_M01_AXIS_TDEST),
        .s_axis_video_TID(intf_net_video_router_M01_AXIS_TID),
        .s_axis_video_TKEEP(intf_net_video_router_M01_AXIS_TKEEP),
        .s_axis_video_TLAST(intf_net_video_router_M01_AXIS_TLAST),
        .s_axis_video_TREADY(intf_net_video_router_M01_AXIS_TREADY),
        .s_axis_video_TSTRB(intf_net_video_router_M01_AXIS_TSTRB),
        .s_axis_video_TUSER(intf_net_video_router_M01_AXIS_TUSER),
        .s_axis_video_TVALID(intf_net_video_router_M01_AXIS_TVALID));
endmodule

module design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slid_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slid_1
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slid_2
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slid_3
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slid_4
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slidr_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slidr_1
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slidr_2
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slidr_3
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_csc_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  input [7:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [7:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_hsc_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  input [15:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [15:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_input_size_set_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_ltr_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  input [6:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [6:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_m00_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_m01_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_m02_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_m04_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_m05_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_m06_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_m07_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_m08_regslice_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;


endmodule

(* CHECK_LICENSE_TYPE = "bd_d94b_proc_ss_ip_aresetn_0,xlslice_v1_0_2_xlslice,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2020.1" *) 
module design_1_v_proc_ss_2_1_bd_d94b_proc_ss_ip_aresetn_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

module design_1_v_proc_ss_2_1_bd_d94b_reset_sel_axis_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [1:0]gpio_io_i;
  output [1:0]gpio_io_o;
  output [1:0]gpio_io_t;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_rst_axis_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_smartconnect_0_0
   (aclk,
    aclk1,
    aclk2,
    aclk3,
    aclk4,
    aresetn,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_rready,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awvalid,
    M01_AXI_awready,
    M01_AXI_wdata,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M01_AXI_wready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_bready,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arvalid,
    M01_AXI_arready,
    M01_AXI_rdata,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_rready,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awvalid,
    M02_AXI_awready,
    M02_AXI_wdata,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M02_AXI_wready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_bready,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arvalid,
    M02_AXI_arready,
    M02_AXI_rdata,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_rready,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awvalid,
    M03_AXI_awready,
    M03_AXI_wdata,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M03_AXI_wready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_bready,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arvalid,
    M03_AXI_arready,
    M03_AXI_rdata,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_rready,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awvalid,
    M04_AXI_awready,
    M04_AXI_wdata,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M04_AXI_wready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_bready,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arvalid,
    M04_AXI_arready,
    M04_AXI_rdata,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_rready,
    M05_AXI_awid,
    M05_AXI_awaddr,
    M05_AXI_awlen,
    M05_AXI_awsize,
    M05_AXI_awburst,
    M05_AXI_awlock,
    M05_AXI_awcache,
    M05_AXI_awprot,
    M05_AXI_awregion,
    M05_AXI_awqos,
    M05_AXI_awuser,
    M05_AXI_awvalid,
    M05_AXI_awready,
    M05_AXI_wid,
    M05_AXI_wdata,
    M05_AXI_wstrb,
    M05_AXI_wlast,
    M05_AXI_wuser,
    M05_AXI_wvalid,
    M05_AXI_wready,
    M05_AXI_bid,
    M05_AXI_bresp,
    M05_AXI_buser,
    M05_AXI_bvalid,
    M05_AXI_bready,
    M05_AXI_arid,
    M05_AXI_araddr,
    M05_AXI_arlen,
    M05_AXI_arsize,
    M05_AXI_arburst,
    M05_AXI_arlock,
    M05_AXI_arcache,
    M05_AXI_arprot,
    M05_AXI_arregion,
    M05_AXI_arqos,
    M05_AXI_aruser,
    M05_AXI_arvalid,
    M05_AXI_arready,
    M05_AXI_rid,
    M05_AXI_rdata,
    M05_AXI_rresp,
    M05_AXI_rlast,
    M05_AXI_ruser,
    M05_AXI_rvalid,
    M05_AXI_rready,
    M06_AXI_awid,
    M06_AXI_awaddr,
    M06_AXI_awlen,
    M06_AXI_awsize,
    M06_AXI_awburst,
    M06_AXI_awlock,
    M06_AXI_awcache,
    M06_AXI_awprot,
    M06_AXI_awregion,
    M06_AXI_awqos,
    M06_AXI_awuser,
    M06_AXI_awvalid,
    M06_AXI_awready,
    M06_AXI_wid,
    M06_AXI_wdata,
    M06_AXI_wstrb,
    M06_AXI_wlast,
    M06_AXI_wuser,
    M06_AXI_wvalid,
    M06_AXI_wready,
    M06_AXI_bid,
    M06_AXI_bresp,
    M06_AXI_buser,
    M06_AXI_bvalid,
    M06_AXI_bready,
    M06_AXI_arid,
    M06_AXI_araddr,
    M06_AXI_arlen,
    M06_AXI_arsize,
    M06_AXI_arburst,
    M06_AXI_arlock,
    M06_AXI_arcache,
    M06_AXI_arprot,
    M06_AXI_arregion,
    M06_AXI_arqos,
    M06_AXI_aruser,
    M06_AXI_arvalid,
    M06_AXI_arready,
    M06_AXI_rid,
    M06_AXI_rdata,
    M06_AXI_rresp,
    M06_AXI_rlast,
    M06_AXI_ruser,
    M06_AXI_rvalid,
    M06_AXI_rready,
    M07_AXI_awid,
    M07_AXI_awaddr,
    M07_AXI_awlen,
    M07_AXI_awsize,
    M07_AXI_awburst,
    M07_AXI_awlock,
    M07_AXI_awcache,
    M07_AXI_awprot,
    M07_AXI_awregion,
    M07_AXI_awqos,
    M07_AXI_awuser,
    M07_AXI_awvalid,
    M07_AXI_awready,
    M07_AXI_wid,
    M07_AXI_wdata,
    M07_AXI_wstrb,
    M07_AXI_wlast,
    M07_AXI_wuser,
    M07_AXI_wvalid,
    M07_AXI_wready,
    M07_AXI_bid,
    M07_AXI_bresp,
    M07_AXI_buser,
    M07_AXI_bvalid,
    M07_AXI_bready,
    M07_AXI_arid,
    M07_AXI_araddr,
    M07_AXI_arlen,
    M07_AXI_arsize,
    M07_AXI_arburst,
    M07_AXI_arlock,
    M07_AXI_arcache,
    M07_AXI_arprot,
    M07_AXI_arregion,
    M07_AXI_arqos,
    M07_AXI_aruser,
    M07_AXI_arvalid,
    M07_AXI_arready,
    M07_AXI_rid,
    M07_AXI_rdata,
    M07_AXI_rresp,
    M07_AXI_rlast,
    M07_AXI_ruser,
    M07_AXI_rvalid,
    M07_AXI_rready,
    M08_AXI_awaddr,
    M08_AXI_awprot,
    M08_AXI_awvalid,
    M08_AXI_awready,
    M08_AXI_wdata,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M08_AXI_wready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_bready,
    M08_AXI_araddr,
    M08_AXI_arprot,
    M08_AXI_arvalid,
    M08_AXI_arready,
    M08_AXI_rdata,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_rready,
    M09_AXI_awid,
    M09_AXI_awaddr,
    M09_AXI_awlen,
    M09_AXI_awsize,
    M09_AXI_awburst,
    M09_AXI_awlock,
    M09_AXI_awcache,
    M09_AXI_awprot,
    M09_AXI_awregion,
    M09_AXI_awqos,
    M09_AXI_awuser,
    M09_AXI_awvalid,
    M09_AXI_awready,
    M09_AXI_wid,
    M09_AXI_wdata,
    M09_AXI_wstrb,
    M09_AXI_wlast,
    M09_AXI_wuser,
    M09_AXI_wvalid,
    M09_AXI_wready,
    M09_AXI_bid,
    M09_AXI_bresp,
    M09_AXI_buser,
    M09_AXI_bvalid,
    M09_AXI_bready,
    M09_AXI_arid,
    M09_AXI_araddr,
    M09_AXI_arlen,
    M09_AXI_arsize,
    M09_AXI_arburst,
    M09_AXI_arlock,
    M09_AXI_arcache,
    M09_AXI_arprot,
    M09_AXI_arregion,
    M09_AXI_arqos,
    M09_AXI_aruser,
    M09_AXI_arvalid,
    M09_AXI_arready,
    M09_AXI_rid,
    M09_AXI_rdata,
    M09_AXI_rresp,
    M09_AXI_rlast,
    M09_AXI_ruser,
    M09_AXI_rvalid,
    M09_AXI_rready,
    M10_AXI_awid,
    M10_AXI_awaddr,
    M10_AXI_awlen,
    M10_AXI_awsize,
    M10_AXI_awburst,
    M10_AXI_awlock,
    M10_AXI_awcache,
    M10_AXI_awprot,
    M10_AXI_awregion,
    M10_AXI_awqos,
    M10_AXI_awuser,
    M10_AXI_awvalid,
    M10_AXI_awready,
    M10_AXI_wid,
    M10_AXI_wdata,
    M10_AXI_wstrb,
    M10_AXI_wlast,
    M10_AXI_wuser,
    M10_AXI_wvalid,
    M10_AXI_wready,
    M10_AXI_bid,
    M10_AXI_bresp,
    M10_AXI_buser,
    M10_AXI_bvalid,
    M10_AXI_bready,
    M10_AXI_arid,
    M10_AXI_araddr,
    M10_AXI_arlen,
    M10_AXI_arsize,
    M10_AXI_arburst,
    M10_AXI_arlock,
    M10_AXI_arcache,
    M10_AXI_arprot,
    M10_AXI_arregion,
    M10_AXI_arqos,
    M10_AXI_aruser,
    M10_AXI_arvalid,
    M10_AXI_arready,
    M10_AXI_rid,
    M10_AXI_rdata,
    M10_AXI_rresp,
    M10_AXI_rlast,
    M10_AXI_ruser,
    M10_AXI_rvalid,
    M10_AXI_rready,
    M11_AXI_awid,
    M11_AXI_awaddr,
    M11_AXI_awlen,
    M11_AXI_awsize,
    M11_AXI_awburst,
    M11_AXI_awlock,
    M11_AXI_awcache,
    M11_AXI_awprot,
    M11_AXI_awregion,
    M11_AXI_awqos,
    M11_AXI_awuser,
    M11_AXI_awvalid,
    M11_AXI_awready,
    M11_AXI_wid,
    M11_AXI_wdata,
    M11_AXI_wstrb,
    M11_AXI_wlast,
    M11_AXI_wuser,
    M11_AXI_wvalid,
    M11_AXI_wready,
    M11_AXI_bid,
    M11_AXI_bresp,
    M11_AXI_buser,
    M11_AXI_bvalid,
    M11_AXI_bready,
    M11_AXI_arid,
    M11_AXI_araddr,
    M11_AXI_arlen,
    M11_AXI_arsize,
    M11_AXI_arburst,
    M11_AXI_arlock,
    M11_AXI_arcache,
    M11_AXI_arprot,
    M11_AXI_arregion,
    M11_AXI_arqos,
    M11_AXI_aruser,
    M11_AXI_arvalid,
    M11_AXI_arready,
    M11_AXI_rid,
    M11_AXI_rdata,
    M11_AXI_rresp,
    M11_AXI_rlast,
    M11_AXI_ruser,
    M11_AXI_rvalid,
    M11_AXI_rready);
  input aclk;
  input aclk1;
  input aclk2;
  input aclk3;
  input aclk4;
  input aresetn;
  input [18:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [31:0]S00_AXI_wdata;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [18:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  output [6:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [31:0]M00_AXI_wdata;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [6:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [31:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output M00_AXI_rready;
  output [8:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  output M01_AXI_awvalid;
  input M01_AXI_awready;
  output [31:0]M01_AXI_wdata;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M01_AXI_wready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  output M01_AXI_bready;
  output [8:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  output M01_AXI_arvalid;
  input M01_AXI_arready;
  input [31:0]M01_AXI_rdata;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output M01_AXI_rready;
  output [11:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  output M02_AXI_awvalid;
  input M02_AXI_awready;
  output [31:0]M02_AXI_wdata;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M02_AXI_wready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  output M02_AXI_bready;
  output [11:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  output M02_AXI_arvalid;
  input M02_AXI_arready;
  input [31:0]M02_AXI_rdata;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output M02_AXI_rready;
  output [15:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  output M03_AXI_awvalid;
  input M03_AXI_awready;
  output [31:0]M03_AXI_wdata;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M03_AXI_wready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  output M03_AXI_bready;
  output [15:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  output M03_AXI_arvalid;
  input M03_AXI_arready;
  input [31:0]M03_AXI_rdata;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output M03_AXI_rready;
  output [6:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  output M04_AXI_awvalid;
  input M04_AXI_awready;
  output [31:0]M04_AXI_wdata;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M04_AXI_wready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  output M04_AXI_bready;
  output [6:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  output M04_AXI_arvalid;
  input M04_AXI_arready;
  input [31:0]M04_AXI_rdata;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output M04_AXI_rready;
  output M05_AXI_awid;
  output M05_AXI_awaddr;
  output M05_AXI_awlen;
  output [2:0]M05_AXI_awsize;
  output [1:0]M05_AXI_awburst;
  output M05_AXI_awlock;
  output [3:0]M05_AXI_awcache;
  output [2:0]M05_AXI_awprot;
  output [3:0]M05_AXI_awregion;
  output [3:0]M05_AXI_awqos;
  output M05_AXI_awuser;
  output [0:0]M05_AXI_awvalid;
  input [0:0]M05_AXI_awready;
  output M05_AXI_wid;
  output M05_AXI_wdata;
  output M05_AXI_wstrb;
  output [0:0]M05_AXI_wlast;
  output M05_AXI_wuser;
  output [0:0]M05_AXI_wvalid;
  input [0:0]M05_AXI_wready;
  input M05_AXI_bid;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_buser;
  input [0:0]M05_AXI_bvalid;
  output [0:0]M05_AXI_bready;
  output M05_AXI_arid;
  output M05_AXI_araddr;
  output M05_AXI_arlen;
  output [2:0]M05_AXI_arsize;
  output [1:0]M05_AXI_arburst;
  output M05_AXI_arlock;
  output [3:0]M05_AXI_arcache;
  output [2:0]M05_AXI_arprot;
  output [3:0]M05_AXI_arregion;
  output [3:0]M05_AXI_arqos;
  output M05_AXI_aruser;
  output [0:0]M05_AXI_arvalid;
  input [0:0]M05_AXI_arready;
  input M05_AXI_rid;
  input M05_AXI_rdata;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rlast;
  input M05_AXI_ruser;
  input [0:0]M05_AXI_rvalid;
  output [0:0]M05_AXI_rready;
  output M06_AXI_awid;
  output M06_AXI_awaddr;
  output M06_AXI_awlen;
  output [2:0]M06_AXI_awsize;
  output [1:0]M06_AXI_awburst;
  output M06_AXI_awlock;
  output [3:0]M06_AXI_awcache;
  output [2:0]M06_AXI_awprot;
  output [3:0]M06_AXI_awregion;
  output [3:0]M06_AXI_awqos;
  output M06_AXI_awuser;
  output [0:0]M06_AXI_awvalid;
  input [0:0]M06_AXI_awready;
  output M06_AXI_wid;
  output M06_AXI_wdata;
  output M06_AXI_wstrb;
  output [0:0]M06_AXI_wlast;
  output M06_AXI_wuser;
  output [0:0]M06_AXI_wvalid;
  input [0:0]M06_AXI_wready;
  input M06_AXI_bid;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_buser;
  input [0:0]M06_AXI_bvalid;
  output [0:0]M06_AXI_bready;
  output M06_AXI_arid;
  output M06_AXI_araddr;
  output M06_AXI_arlen;
  output [2:0]M06_AXI_arsize;
  output [1:0]M06_AXI_arburst;
  output M06_AXI_arlock;
  output [3:0]M06_AXI_arcache;
  output [2:0]M06_AXI_arprot;
  output [3:0]M06_AXI_arregion;
  output [3:0]M06_AXI_arqos;
  output M06_AXI_aruser;
  output [0:0]M06_AXI_arvalid;
  input [0:0]M06_AXI_arready;
  input M06_AXI_rid;
  input M06_AXI_rdata;
  input [1:0]M06_AXI_rresp;
  input [0:0]M06_AXI_rlast;
  input M06_AXI_ruser;
  input [0:0]M06_AXI_rvalid;
  output [0:0]M06_AXI_rready;
  output M07_AXI_awid;
  output M07_AXI_awaddr;
  output M07_AXI_awlen;
  output [2:0]M07_AXI_awsize;
  output [1:0]M07_AXI_awburst;
  output M07_AXI_awlock;
  output [3:0]M07_AXI_awcache;
  output [2:0]M07_AXI_awprot;
  output [3:0]M07_AXI_awregion;
  output [3:0]M07_AXI_awqos;
  output M07_AXI_awuser;
  output [0:0]M07_AXI_awvalid;
  input [0:0]M07_AXI_awready;
  output M07_AXI_wid;
  output M07_AXI_wdata;
  output M07_AXI_wstrb;
  output [0:0]M07_AXI_wlast;
  output M07_AXI_wuser;
  output [0:0]M07_AXI_wvalid;
  input [0:0]M07_AXI_wready;
  input M07_AXI_bid;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_buser;
  input [0:0]M07_AXI_bvalid;
  output [0:0]M07_AXI_bready;
  output M07_AXI_arid;
  output M07_AXI_araddr;
  output M07_AXI_arlen;
  output [2:0]M07_AXI_arsize;
  output [1:0]M07_AXI_arburst;
  output M07_AXI_arlock;
  output [3:0]M07_AXI_arcache;
  output [2:0]M07_AXI_arprot;
  output [3:0]M07_AXI_arregion;
  output [3:0]M07_AXI_arqos;
  output M07_AXI_aruser;
  output [0:0]M07_AXI_arvalid;
  input [0:0]M07_AXI_arready;
  input M07_AXI_rid;
  input M07_AXI_rdata;
  input [1:0]M07_AXI_rresp;
  input [0:0]M07_AXI_rlast;
  input M07_AXI_ruser;
  input [0:0]M07_AXI_rvalid;
  output [0:0]M07_AXI_rready;
  output [7:0]M08_AXI_awaddr;
  output [2:0]M08_AXI_awprot;
  output M08_AXI_awvalid;
  input M08_AXI_awready;
  output [31:0]M08_AXI_wdata;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input M08_AXI_wready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  output M08_AXI_bready;
  output [7:0]M08_AXI_araddr;
  output [2:0]M08_AXI_arprot;
  output M08_AXI_arvalid;
  input M08_AXI_arready;
  input [31:0]M08_AXI_rdata;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output M08_AXI_rready;
  output M09_AXI_awid;
  output M09_AXI_awaddr;
  output M09_AXI_awlen;
  output [2:0]M09_AXI_awsize;
  output [1:0]M09_AXI_awburst;
  output M09_AXI_awlock;
  output [3:0]M09_AXI_awcache;
  output [2:0]M09_AXI_awprot;
  output [3:0]M09_AXI_awregion;
  output [3:0]M09_AXI_awqos;
  output M09_AXI_awuser;
  output [0:0]M09_AXI_awvalid;
  input [0:0]M09_AXI_awready;
  output M09_AXI_wid;
  output M09_AXI_wdata;
  output M09_AXI_wstrb;
  output [0:0]M09_AXI_wlast;
  output M09_AXI_wuser;
  output [0:0]M09_AXI_wvalid;
  input [0:0]M09_AXI_wready;
  input M09_AXI_bid;
  input [1:0]M09_AXI_bresp;
  input M09_AXI_buser;
  input [0:0]M09_AXI_bvalid;
  output [0:0]M09_AXI_bready;
  output M09_AXI_arid;
  output M09_AXI_araddr;
  output M09_AXI_arlen;
  output [2:0]M09_AXI_arsize;
  output [1:0]M09_AXI_arburst;
  output M09_AXI_arlock;
  output [3:0]M09_AXI_arcache;
  output [2:0]M09_AXI_arprot;
  output [3:0]M09_AXI_arregion;
  output [3:0]M09_AXI_arqos;
  output M09_AXI_aruser;
  output [0:0]M09_AXI_arvalid;
  input [0:0]M09_AXI_arready;
  input M09_AXI_rid;
  input M09_AXI_rdata;
  input [1:0]M09_AXI_rresp;
  input [0:0]M09_AXI_rlast;
  input M09_AXI_ruser;
  input [0:0]M09_AXI_rvalid;
  output [0:0]M09_AXI_rready;
  output M10_AXI_awid;
  output M10_AXI_awaddr;
  output M10_AXI_awlen;
  output [2:0]M10_AXI_awsize;
  output [1:0]M10_AXI_awburst;
  output M10_AXI_awlock;
  output [3:0]M10_AXI_awcache;
  output [2:0]M10_AXI_awprot;
  output [3:0]M10_AXI_awregion;
  output [3:0]M10_AXI_awqos;
  output M10_AXI_awuser;
  output [0:0]M10_AXI_awvalid;
  input [0:0]M10_AXI_awready;
  output M10_AXI_wid;
  output M10_AXI_wdata;
  output M10_AXI_wstrb;
  output [0:0]M10_AXI_wlast;
  output M10_AXI_wuser;
  output [0:0]M10_AXI_wvalid;
  input [0:0]M10_AXI_wready;
  input M10_AXI_bid;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_buser;
  input [0:0]M10_AXI_bvalid;
  output [0:0]M10_AXI_bready;
  output M10_AXI_arid;
  output M10_AXI_araddr;
  output M10_AXI_arlen;
  output [2:0]M10_AXI_arsize;
  output [1:0]M10_AXI_arburst;
  output M10_AXI_arlock;
  output [3:0]M10_AXI_arcache;
  output [2:0]M10_AXI_arprot;
  output [3:0]M10_AXI_arregion;
  output [3:0]M10_AXI_arqos;
  output M10_AXI_aruser;
  output [0:0]M10_AXI_arvalid;
  input [0:0]M10_AXI_arready;
  input M10_AXI_rid;
  input M10_AXI_rdata;
  input [1:0]M10_AXI_rresp;
  input [0:0]M10_AXI_rlast;
  input M10_AXI_ruser;
  input [0:0]M10_AXI_rvalid;
  output [0:0]M10_AXI_rready;
  output M11_AXI_awid;
  output M11_AXI_awaddr;
  output M11_AXI_awlen;
  output [2:0]M11_AXI_awsize;
  output [1:0]M11_AXI_awburst;
  output M11_AXI_awlock;
  output [3:0]M11_AXI_awcache;
  output [2:0]M11_AXI_awprot;
  output [3:0]M11_AXI_awregion;
  output [3:0]M11_AXI_awqos;
  output M11_AXI_awuser;
  output [0:0]M11_AXI_awvalid;
  input [0:0]M11_AXI_awready;
  output M11_AXI_wid;
  output M11_AXI_wdata;
  output M11_AXI_wstrb;
  output [0:0]M11_AXI_wlast;
  output M11_AXI_wuser;
  output [0:0]M11_AXI_wvalid;
  input [0:0]M11_AXI_wready;
  input M11_AXI_bid;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_buser;
  input [0:0]M11_AXI_bvalid;
  output [0:0]M11_AXI_bready;
  output M11_AXI_arid;
  output M11_AXI_araddr;
  output M11_AXI_arlen;
  output [2:0]M11_AXI_arsize;
  output [1:0]M11_AXI_arburst;
  output M11_AXI_arlock;
  output [3:0]M11_AXI_arcache;
  output [2:0]M11_AXI_arprot;
  output [3:0]M11_AXI_arregion;
  output [3:0]M11_AXI_arqos;
  output M11_AXI_aruser;
  output [0:0]M11_AXI_arvalid;
  input [0:0]M11_AXI_arready;
  input M11_AXI_rid;
  input M11_AXI_rdata;
  input [1:0]M11_AXI_rresp;
  input [0:0]M11_AXI_rlast;
  input M11_AXI_ruser;
  input [0:0]M11_AXI_rvalid;
  output [0:0]M11_AXI_rready;


endmodule

(* CHECK_LICENSE_TYPE = "bd_d94b_vid_in_aresetn_0,xlslice_v1_0_2_xlslice,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2020.1" *) 
module design_1_v_proc_ss_2_1_bd_d94b_vid_in_aresetn_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

module design_1_v_proc_ss_2_1_bd_d94b_video_router_0
   (ACLK,
    ARESETN,
    M00_AXIS_ACLK,
    M00_AXIS_ARESETN,
    M00_AXIS_tdata,
    M00_AXIS_tdest,
    M00_AXIS_tid,
    M00_AXIS_tkeep,
    M00_AXIS_tlast,
    M00_AXIS_tready,
    M00_AXIS_tstrb,
    M00_AXIS_tuser,
    M00_AXIS_tvalid,
    M01_AXIS_ACLK,
    M01_AXIS_ARESETN,
    M01_AXIS_tdata,
    M01_AXIS_tdest,
    M01_AXIS_tid,
    M01_AXIS_tkeep,
    M01_AXIS_tlast,
    M01_AXIS_tready,
    M01_AXIS_tstrb,
    M01_AXIS_tuser,
    M01_AXIS_tvalid,
    M02_AXIS_ACLK,
    M02_AXIS_ARESETN,
    M02_AXIS_tdata,
    M02_AXIS_tdest,
    M02_AXIS_tid,
    M02_AXIS_tkeep,
    M02_AXIS_tlast,
    M02_AXIS_tready,
    M02_AXIS_tstrb,
    M02_AXIS_tuser,
    M02_AXIS_tvalid,
    M03_AXIS_ACLK,
    M03_AXIS_ARESETN,
    M03_AXIS_tdata,
    M03_AXIS_tdest,
    M03_AXIS_tready,
    M03_AXIS_tvalid,
    M04_AXIS_ACLK,
    M04_AXIS_ARESETN,
    M04_AXIS_tdata,
    M04_AXIS_tdest,
    M04_AXIS_tid,
    M04_AXIS_tkeep,
    M04_AXIS_tlast,
    M04_AXIS_tready,
    M04_AXIS_tstrb,
    M04_AXIS_tuser,
    M04_AXIS_tvalid,
    M05_AXIS_ACLK,
    M05_AXIS_ARESETN,
    M05_AXIS_tdata,
    M05_AXIS_tready,
    M05_AXIS_tvalid,
    M06_AXIS_ACLK,
    M06_AXIS_ARESETN,
    M06_AXIS_tdata,
    M06_AXIS_tready,
    M06_AXIS_tvalid,
    M07_AXIS_ACLK,
    M07_AXIS_ARESETN,
    M07_AXIS_tdata,
    M07_AXIS_tready,
    M07_AXIS_tvalid,
    M08_AXIS_ACLK,
    M08_AXIS_ARESETN,
    M08_AXIS_tdata,
    M08_AXIS_tdest,
    M08_AXIS_tid,
    M08_AXIS_tkeep,
    M08_AXIS_tlast,
    M08_AXIS_tready,
    M08_AXIS_tstrb,
    M08_AXIS_tuser,
    M08_AXIS_tvalid,
    M09_AXIS_ACLK,
    M09_AXIS_ARESETN,
    M09_AXIS_tdata,
    M09_AXIS_tdest,
    M09_AXIS_tready,
    M09_AXIS_tvalid,
    S00_AXIS_ACLK,
    S00_AXIS_ARESETN,
    S00_AXIS_tdata,
    S00_AXIS_tdest,
    S00_AXIS_tid,
    S00_AXIS_tkeep,
    S00_AXIS_tlast,
    S00_AXIS_tready,
    S00_AXIS_tstrb,
    S00_AXIS_tuser,
    S00_AXIS_tvalid,
    S01_AXIS_ACLK,
    S01_AXIS_ARESETN,
    S01_AXIS_tdata,
    S01_AXIS_tdest,
    S01_AXIS_tid,
    S01_AXIS_tkeep,
    S01_AXIS_tlast,
    S01_AXIS_tready,
    S01_AXIS_tstrb,
    S01_AXIS_tuser,
    S01_AXIS_tvalid,
    S02_AXIS_ACLK,
    S02_AXIS_ARESETN,
    S02_AXIS_tdata,
    S02_AXIS_tdest,
    S02_AXIS_tid,
    S02_AXIS_tkeep,
    S02_AXIS_tlast,
    S02_AXIS_tready,
    S02_AXIS_tstrb,
    S02_AXIS_tuser,
    S02_AXIS_tvalid,
    S03_AXIS_ACLK,
    S03_AXIS_ARESETN,
    S03_AXIS_tdata,
    S03_AXIS_tdest,
    S03_AXIS_tready,
    S03_AXIS_tvalid,
    S04_AXIS_ACLK,
    S04_AXIS_ARESETN,
    S04_AXIS_tdata,
    S04_AXIS_tdest,
    S04_AXIS_tid,
    S04_AXIS_tkeep,
    S04_AXIS_tlast,
    S04_AXIS_tready,
    S04_AXIS_tstrb,
    S04_AXIS_tuser,
    S04_AXIS_tvalid,
    S05_AXIS_ACLK,
    S05_AXIS_ARESETN,
    S05_AXIS_tdata,
    S05_AXIS_tdest,
    S05_AXIS_tready,
    S05_AXIS_tvalid,
    S06_AXIS_ACLK,
    S06_AXIS_ARESETN,
    S06_AXIS_tdata,
    S06_AXIS_tdest,
    S06_AXIS_tready,
    S06_AXIS_tvalid,
    S07_AXIS_ACLK,
    S07_AXIS_ARESETN,
    S07_AXIS_tdata,
    S07_AXIS_tdest,
    S07_AXIS_tready,
    S07_AXIS_tvalid,
    S08_AXIS_ACLK,
    S08_AXIS_ARESETN,
    S08_AXIS_tdata,
    S08_AXIS_tdest,
    S08_AXIS_tid,
    S08_AXIS_tkeep,
    S08_AXIS_tlast,
    S08_AXIS_tready,
    S08_AXIS_tstrb,
    S08_AXIS_tuser,
    S08_AXIS_tvalid,
    S09_AXIS_ACLK,
    S09_AXIS_ARESETN,
    S09_AXIS_tdata,
    S09_AXIS_tdest,
    S09_AXIS_tready,
    S09_AXIS_tvalid,
    S_AXI_CTRL_ACLK,
    S_AXI_CTRL_ARESETN,
    S_AXI_CTRL_araddr,
    S_AXI_CTRL_arready,
    S_AXI_CTRL_arvalid,
    S_AXI_CTRL_awaddr,
    S_AXI_CTRL_awready,
    S_AXI_CTRL_awvalid,
    S_AXI_CTRL_bready,
    S_AXI_CTRL_bresp,
    S_AXI_CTRL_bvalid,
    S_AXI_CTRL_rdata,
    S_AXI_CTRL_rready,
    S_AXI_CTRL_rresp,
    S_AXI_CTRL_rvalid,
    S_AXI_CTRL_wdata,
    S_AXI_CTRL_wready,
    S_AXI_CTRL_wvalid);
  input ACLK;
  input ARESETN;
  input M00_AXIS_ACLK;
  input M00_AXIS_ARESETN;
  output [23:0]M00_AXIS_tdata;
  output [3:0]M00_AXIS_tdest;
  output [0:0]M00_AXIS_tid;
  output [2:0]M00_AXIS_tkeep;
  output M00_AXIS_tlast;
  input M00_AXIS_tready;
  output [2:0]M00_AXIS_tstrb;
  output [0:0]M00_AXIS_tuser;
  output M00_AXIS_tvalid;
  input M01_AXIS_ACLK;
  input M01_AXIS_ARESETN;
  output [23:0]M01_AXIS_tdata;
  output [0:0]M01_AXIS_tdest;
  output [0:0]M01_AXIS_tid;
  output [2:0]M01_AXIS_tkeep;
  output M01_AXIS_tlast;
  input M01_AXIS_tready;
  output [2:0]M01_AXIS_tstrb;
  output [0:0]M01_AXIS_tuser;
  output M01_AXIS_tvalid;
  input M02_AXIS_ACLK;
  input M02_AXIS_ARESETN;
  output [23:0]M02_AXIS_tdata;
  output [0:0]M02_AXIS_tdest;
  output [0:0]M02_AXIS_tid;
  output [2:0]M02_AXIS_tkeep;
  output M02_AXIS_tlast;
  input M02_AXIS_tready;
  output [2:0]M02_AXIS_tstrb;
  output [0:0]M02_AXIS_tuser;
  output M02_AXIS_tvalid;
  input M03_AXIS_ACLK;
  input M03_AXIS_ARESETN;
  output M03_AXIS_tdata;
  output M03_AXIS_tdest;
  input M03_AXIS_tready;
  output M03_AXIS_tvalid;
  input M04_AXIS_ACLK;
  input M04_AXIS_ARESETN;
  output [23:0]M04_AXIS_tdata;
  output [0:0]M04_AXIS_tdest;
  output [0:0]M04_AXIS_tid;
  output [2:0]M04_AXIS_tkeep;
  output M04_AXIS_tlast;
  input M04_AXIS_tready;
  output [2:0]M04_AXIS_tstrb;
  output [0:0]M04_AXIS_tuser;
  output M04_AXIS_tvalid;
  input M05_AXIS_ACLK;
  input M05_AXIS_ARESETN;
  output M05_AXIS_tdata;
  input M05_AXIS_tready;
  output M05_AXIS_tvalid;
  input M06_AXIS_ACLK;
  input M06_AXIS_ARESETN;
  output M06_AXIS_tdata;
  input M06_AXIS_tready;
  output M06_AXIS_tvalid;
  input M07_AXIS_ACLK;
  input M07_AXIS_ARESETN;
  output M07_AXIS_tdata;
  input M07_AXIS_tready;
  output M07_AXIS_tvalid;
  input M08_AXIS_ACLK;
  input M08_AXIS_ARESETN;
  output [23:0]M08_AXIS_tdata;
  output [0:0]M08_AXIS_tdest;
  output [0:0]M08_AXIS_tid;
  output [2:0]M08_AXIS_tkeep;
  output M08_AXIS_tlast;
  input M08_AXIS_tready;
  output [2:0]M08_AXIS_tstrb;
  output [0:0]M08_AXIS_tuser;
  output M08_AXIS_tvalid;
  input M09_AXIS_ACLK;
  input M09_AXIS_ARESETN;
  output M09_AXIS_tdata;
  output M09_AXIS_tdest;
  input M09_AXIS_tready;
  output M09_AXIS_tvalid;
  input S00_AXIS_ACLK;
  input S00_AXIS_ARESETN;
  input [23:0]S00_AXIS_tdata;
  input [0:0]S00_AXIS_tdest;
  input [0:0]S00_AXIS_tid;
  input [2:0]S00_AXIS_tkeep;
  input [0:0]S00_AXIS_tlast;
  output [0:0]S00_AXIS_tready;
  input [2:0]S00_AXIS_tstrb;
  input [0:0]S00_AXIS_tuser;
  input [0:0]S00_AXIS_tvalid;
  input S01_AXIS_ACLK;
  input S01_AXIS_ARESETN;
  input [23:0]S01_AXIS_tdata;
  input [0:0]S01_AXIS_tdest;
  input [0:0]S01_AXIS_tid;
  input [2:0]S01_AXIS_tkeep;
  input [0:0]S01_AXIS_tlast;
  output [0:0]S01_AXIS_tready;
  input [2:0]S01_AXIS_tstrb;
  input [0:0]S01_AXIS_tuser;
  input [0:0]S01_AXIS_tvalid;
  input S02_AXIS_ACLK;
  input S02_AXIS_ARESETN;
  input [23:0]S02_AXIS_tdata;
  input [0:0]S02_AXIS_tdest;
  input [0:0]S02_AXIS_tid;
  input [2:0]S02_AXIS_tkeep;
  input [0:0]S02_AXIS_tlast;
  output [0:0]S02_AXIS_tready;
  input [2:0]S02_AXIS_tstrb;
  input [0:0]S02_AXIS_tuser;
  input [0:0]S02_AXIS_tvalid;
  input S03_AXIS_ACLK;
  input S03_AXIS_ARESETN;
  input S03_AXIS_tdata;
  input S03_AXIS_tdest;
  output S03_AXIS_tready;
  input S03_AXIS_tvalid;
  input S04_AXIS_ACLK;
  input S04_AXIS_ARESETN;
  input [23:0]S04_AXIS_tdata;
  input [0:0]S04_AXIS_tdest;
  input [0:0]S04_AXIS_tid;
  input [2:0]S04_AXIS_tkeep;
  input [0:0]S04_AXIS_tlast;
  output [0:0]S04_AXIS_tready;
  input [2:0]S04_AXIS_tstrb;
  input [0:0]S04_AXIS_tuser;
  input [0:0]S04_AXIS_tvalid;
  input S05_AXIS_ACLK;
  input S05_AXIS_ARESETN;
  input S05_AXIS_tdata;
  input S05_AXIS_tdest;
  output S05_AXIS_tready;
  input S05_AXIS_tvalid;
  input S06_AXIS_ACLK;
  input S06_AXIS_ARESETN;
  input S06_AXIS_tdata;
  input S06_AXIS_tdest;
  output S06_AXIS_tready;
  input S06_AXIS_tvalid;
  input S07_AXIS_ACLK;
  input S07_AXIS_ARESETN;
  input S07_AXIS_tdata;
  input S07_AXIS_tdest;
  output S07_AXIS_tready;
  input S07_AXIS_tvalid;
  input S08_AXIS_ACLK;
  input S08_AXIS_ARESETN;
  input [23:0]S08_AXIS_tdata;
  input [0:0]S08_AXIS_tdest;
  input [0:0]S08_AXIS_tid;
  input [2:0]S08_AXIS_tkeep;
  input [0:0]S08_AXIS_tlast;
  output [0:0]S08_AXIS_tready;
  input [2:0]S08_AXIS_tstrb;
  input [0:0]S08_AXIS_tuser;
  input [0:0]S08_AXIS_tvalid;
  input S09_AXIS_ACLK;
  input S09_AXIS_ARESETN;
  input S09_AXIS_tdata;
  input S09_AXIS_tdest;
  output S09_AXIS_tready;
  input S09_AXIS_tvalid;
  input S_AXI_CTRL_ACLK;
  input S_AXI_CTRL_ARESETN;
  input [6:0]S_AXI_CTRL_araddr;
  output S_AXI_CTRL_arready;
  input S_AXI_CTRL_arvalid;
  input [6:0]S_AXI_CTRL_awaddr;
  output S_AXI_CTRL_awready;
  input S_AXI_CTRL_awvalid;
  input S_AXI_CTRL_bready;
  output [1:0]S_AXI_CTRL_bresp;
  output S_AXI_CTRL_bvalid;
  output [31:0]S_AXI_CTRL_rdata;
  input S_AXI_CTRL_rready;
  output [1:0]S_AXI_CTRL_rresp;
  output S_AXI_CTRL_rvalid;
  input [31:0]S_AXI_CTRL_wdata;
  output S_AXI_CTRL_wready;
  input S_AXI_CTRL_wvalid;

  wire ACLK;
  wire ARESETN;
  wire M00_AXIS_ACLK;
  wire M00_AXIS_ARESETN;
  wire [23:0]M00_AXIS_tdata;
  wire [3:0]M00_AXIS_tdest;
  wire [0:0]M00_AXIS_tid;
  wire [2:0]M00_AXIS_tkeep;
  wire M00_AXIS_tlast;
  wire M00_AXIS_tready;
  wire [2:0]M00_AXIS_tstrb;
  wire [0:0]M00_AXIS_tuser;
  wire M00_AXIS_tvalid;
  wire M01_AXIS_ACLK;
  wire M01_AXIS_ARESETN;
  wire [23:0]M01_AXIS_tdata;
  wire [0:0]M01_AXIS_tdest;
  wire [0:0]M01_AXIS_tid;
  wire [2:0]M01_AXIS_tkeep;
  wire M01_AXIS_tlast;
  wire M01_AXIS_tready;
  wire [2:0]M01_AXIS_tstrb;
  wire [0:0]M01_AXIS_tuser;
  wire M01_AXIS_tvalid;
  wire M02_AXIS_ACLK;
  wire M02_AXIS_ARESETN;
  wire [23:0]M02_AXIS_tdata;
  wire [0:0]M02_AXIS_tdest;
  wire [0:0]M02_AXIS_tid;
  wire [2:0]M02_AXIS_tkeep;
  wire M02_AXIS_tlast;
  wire M02_AXIS_tready;
  wire [2:0]M02_AXIS_tstrb;
  wire [0:0]M02_AXIS_tuser;
  wire M02_AXIS_tvalid;
  wire M03_AXIS_tdata;
  wire M03_AXIS_tdest;
  wire M03_AXIS_tready;
  wire M03_AXIS_tvalid;
  wire M04_AXIS_ACLK;
  wire M04_AXIS_ARESETN;
  wire [23:0]M04_AXIS_tdata;
  wire [0:0]M04_AXIS_tdest;
  wire [0:0]M04_AXIS_tid;
  wire [2:0]M04_AXIS_tkeep;
  wire M04_AXIS_tlast;
  wire M04_AXIS_tready;
  wire [2:0]M04_AXIS_tstrb;
  wire [0:0]M04_AXIS_tuser;
  wire M04_AXIS_tvalid;
  wire M05_AXIS_ACLK;
  wire M05_AXIS_ARESETN;
  wire M05_AXIS_tdata;
  wire M05_AXIS_tready;
  wire M05_AXIS_tvalid;
  wire M06_AXIS_ACLK;
  wire M06_AXIS_ARESETN;
  wire M06_AXIS_tdata;
  wire M06_AXIS_tready;
  wire M06_AXIS_tvalid;
  wire M07_AXIS_ACLK;
  wire M07_AXIS_ARESETN;
  wire M07_AXIS_tdata;
  wire M07_AXIS_tready;
  wire M07_AXIS_tvalid;
  wire M08_AXIS_ACLK;
  wire M08_AXIS_ARESETN;
  wire [23:0]M08_AXIS_tdata;
  wire [0:0]M08_AXIS_tdest;
  wire [0:0]M08_AXIS_tid;
  wire [2:0]M08_AXIS_tkeep;
  wire M08_AXIS_tlast;
  wire M08_AXIS_tready;
  wire [2:0]M08_AXIS_tstrb;
  wire [0:0]M08_AXIS_tuser;
  wire M08_AXIS_tvalid;
  wire M09_AXIS_tdata;
  wire M09_AXIS_tdest;
  wire M09_AXIS_tready;
  wire M09_AXIS_tvalid;
  wire S00_AXIS_ACLK;
  wire S00_AXIS_ARESETN;
  wire [23:0]S00_AXIS_tdata;
  wire [0:0]S00_AXIS_tdest;
  wire [0:0]S00_AXIS_tid;
  wire [2:0]S00_AXIS_tkeep;
  wire [0:0]S00_AXIS_tlast;
  wire [0:0]S00_AXIS_tready;
  wire [2:0]S00_AXIS_tstrb;
  wire [0:0]S00_AXIS_tuser;
  wire [0:0]S00_AXIS_tvalid;
  wire S01_AXIS_ACLK;
  wire S01_AXIS_ARESETN;
  wire [23:0]S01_AXIS_tdata;
  wire [0:0]S01_AXIS_tdest;
  wire [0:0]S01_AXIS_tid;
  wire [2:0]S01_AXIS_tkeep;
  wire [0:0]S01_AXIS_tlast;
  wire [0:0]S01_AXIS_tready;
  wire [2:0]S01_AXIS_tstrb;
  wire [0:0]S01_AXIS_tuser;
  wire [0:0]S01_AXIS_tvalid;
  wire S02_AXIS_ACLK;
  wire S02_AXIS_ARESETN;
  wire [23:0]S02_AXIS_tdata;
  wire [0:0]S02_AXIS_tdest;
  wire [0:0]S02_AXIS_tid;
  wire [2:0]S02_AXIS_tkeep;
  wire [0:0]S02_AXIS_tlast;
  wire [0:0]S02_AXIS_tready;
  wire [2:0]S02_AXIS_tstrb;
  wire [0:0]S02_AXIS_tuser;
  wire [0:0]S02_AXIS_tvalid;
  wire S03_AXIS_tdata;
  wire S03_AXIS_tdest;
  wire S03_AXIS_tready;
  wire S03_AXIS_tvalid;
  wire S04_AXIS_ACLK;
  wire S04_AXIS_ARESETN;
  wire [23:0]S04_AXIS_tdata;
  wire [0:0]S04_AXIS_tdest;
  wire [0:0]S04_AXIS_tid;
  wire [2:0]S04_AXIS_tkeep;
  wire [0:0]S04_AXIS_tlast;
  wire [0:0]S04_AXIS_tready;
  wire [2:0]S04_AXIS_tstrb;
  wire [0:0]S04_AXIS_tuser;
  wire [0:0]S04_AXIS_tvalid;
  wire S05_AXIS_tdata;
  wire S05_AXIS_tdest;
  wire S05_AXIS_tready;
  wire S05_AXIS_tvalid;
  wire S06_AXIS_tdata;
  wire S06_AXIS_tdest;
  wire S06_AXIS_tready;
  wire S06_AXIS_tvalid;
  wire S07_AXIS_tdata;
  wire S07_AXIS_tdest;
  wire S07_AXIS_tready;
  wire S07_AXIS_tvalid;
  wire S08_AXIS_ACLK;
  wire S08_AXIS_ARESETN;
  wire [23:0]S08_AXIS_tdata;
  wire [0:0]S08_AXIS_tdest;
  wire [0:0]S08_AXIS_tid;
  wire [2:0]S08_AXIS_tkeep;
  wire [0:0]S08_AXIS_tlast;
  wire [0:0]S08_AXIS_tready;
  wire [2:0]S08_AXIS_tstrb;
  wire [0:0]S08_AXIS_tuser;
  wire [0:0]S08_AXIS_tvalid;
  wire S09_AXIS_tdata;
  wire S09_AXIS_tdest;
  wire S09_AXIS_tready;
  wire S09_AXIS_tvalid;
  wire S_AXI_CTRL_ACLK;
  wire S_AXI_CTRL_ARESETN;
  wire [6:0]S_AXI_CTRL_araddr;
  wire S_AXI_CTRL_arready;
  wire S_AXI_CTRL_arvalid;
  wire [6:0]S_AXI_CTRL_awaddr;
  wire S_AXI_CTRL_awready;
  wire S_AXI_CTRL_awvalid;
  wire S_AXI_CTRL_bready;
  wire [1:0]S_AXI_CTRL_bresp;
  wire S_AXI_CTRL_bvalid;
  wire [31:0]S_AXI_CTRL_rdata;
  wire S_AXI_CTRL_rready;
  wire [1:0]S_AXI_CTRL_rresp;
  wire S_AXI_CTRL_rvalid;
  wire [31:0]S_AXI_CTRL_wdata;
  wire S_AXI_CTRL_wready;
  wire S_AXI_CTRL_wvalid;
  wire [23:0]s00_couplers_to_xbar_TDATA;
  wire [3:0]s00_couplers_to_xbar_TDEST;
  wire s00_couplers_to_xbar_TID;
  wire [2:0]s00_couplers_to_xbar_TKEEP;
  wire s00_couplers_to_xbar_TLAST;
  wire s00_couplers_to_xbar_TREADY;
  wire [2:0]s00_couplers_to_xbar_TSTRB;
  wire s00_couplers_to_xbar_TUSER;
  wire s00_couplers_to_xbar_TVALID;
  wire [23:0]s01_couplers_to_xbar_TDATA;
  wire [3:0]s01_couplers_to_xbar_TDEST;
  wire s01_couplers_to_xbar_TID;
  wire [2:0]s01_couplers_to_xbar_TKEEP;
  wire s01_couplers_to_xbar_TLAST;
  wire s01_couplers_to_xbar_TREADY;
  wire [2:0]s01_couplers_to_xbar_TSTRB;
  wire s01_couplers_to_xbar_TUSER;
  wire s01_couplers_to_xbar_TVALID;
  wire [23:0]s02_couplers_to_xbar_TDATA;
  wire [3:0]s02_couplers_to_xbar_TDEST;
  wire s02_couplers_to_xbar_TID;
  wire [2:0]s02_couplers_to_xbar_TKEEP;
  wire s02_couplers_to_xbar_TLAST;
  wire s02_couplers_to_xbar_TREADY;
  wire [2:0]s02_couplers_to_xbar_TSTRB;
  wire s02_couplers_to_xbar_TUSER;
  wire s02_couplers_to_xbar_TVALID;
  wire [23:0]s04_couplers_to_xbar_TDATA;
  wire [3:0]s04_couplers_to_xbar_TDEST;
  wire s04_couplers_to_xbar_TID;
  wire [2:0]s04_couplers_to_xbar_TKEEP;
  wire s04_couplers_to_xbar_TLAST;
  wire s04_couplers_to_xbar_TREADY;
  wire [2:0]s04_couplers_to_xbar_TSTRB;
  wire s04_couplers_to_xbar_TUSER;
  wire s04_couplers_to_xbar_TVALID;
  wire [23:0]s08_couplers_to_xbar_TDATA;
  wire [3:0]s08_couplers_to_xbar_TDEST;
  wire s08_couplers_to_xbar_TID;
  wire [2:0]s08_couplers_to_xbar_TKEEP;
  wire s08_couplers_to_xbar_TLAST;
  wire s08_couplers_to_xbar_TREADY;
  wire [2:0]s08_couplers_to_xbar_TSTRB;
  wire s08_couplers_to_xbar_TUSER;
  wire s08_couplers_to_xbar_TVALID;
  wire [23:0]xbar_to_m00_couplers_TDATA;
  wire [3:0]xbar_to_m00_couplers_TDEST;
  wire xbar_to_m00_couplers_TID;
  wire [2:0]xbar_to_m00_couplers_TKEEP;
  wire xbar_to_m00_couplers_TLAST;
  wire xbar_to_m00_couplers_TREADY;
  wire [2:0]xbar_to_m00_couplers_TSTRB;
  wire xbar_to_m00_couplers_TUSER;
  wire xbar_to_m00_couplers_TVALID;
  wire [47:24]xbar_to_m01_couplers_TDATA;
  wire [7:4]xbar_to_m01_couplers_TDEST;
  wire xbar_to_m01_couplers_TID;
  wire [5:3]xbar_to_m01_couplers_TKEEP;
  wire xbar_to_m01_couplers_TLAST;
  wire xbar_to_m01_couplers_TREADY;
  wire [5:3]xbar_to_m01_couplers_TSTRB;
  wire xbar_to_m01_couplers_TUSER;
  wire xbar_to_m01_couplers_TVALID;
  wire [71:48]xbar_to_m02_couplers_TDATA;
  wire [11:8]xbar_to_m02_couplers_TDEST;
  wire xbar_to_m02_couplers_TID;
  wire [8:6]xbar_to_m02_couplers_TKEEP;
  wire xbar_to_m02_couplers_TLAST;
  wire xbar_to_m02_couplers_TREADY;
  wire [8:6]xbar_to_m02_couplers_TSTRB;
  wire xbar_to_m02_couplers_TUSER;
  wire xbar_to_m02_couplers_TVALID;
  wire [119:96]xbar_to_m04_couplers_TDATA;
  wire [19:16]xbar_to_m04_couplers_TDEST;
  wire xbar_to_m04_couplers_TID;
  wire [14:12]xbar_to_m04_couplers_TKEEP;
  wire xbar_to_m04_couplers_TLAST;
  wire xbar_to_m04_couplers_TREADY;
  wire [14:12]xbar_to_m04_couplers_TSTRB;
  wire xbar_to_m04_couplers_TUSER;
  wire xbar_to_m04_couplers_TVALID;
  wire [143:120]xbar_to_m05_couplers_TDATA;
  wire [23:20]xbar_to_m05_couplers_TDEST;
  wire xbar_to_m05_couplers_TID;
  wire [17:15]xbar_to_m05_couplers_TKEEP;
  wire xbar_to_m05_couplers_TLAST;
  wire xbar_to_m05_couplers_TREADY;
  wire [17:15]xbar_to_m05_couplers_TSTRB;
  wire xbar_to_m05_couplers_TUSER;
  wire xbar_to_m05_couplers_TVALID;
  wire [167:144]xbar_to_m06_couplers_TDATA;
  wire [27:24]xbar_to_m06_couplers_TDEST;
  wire xbar_to_m06_couplers_TID;
  wire [20:18]xbar_to_m06_couplers_TKEEP;
  wire xbar_to_m06_couplers_TLAST;
  wire xbar_to_m06_couplers_TREADY;
  wire [20:18]xbar_to_m06_couplers_TSTRB;
  wire xbar_to_m06_couplers_TUSER;
  wire xbar_to_m06_couplers_TVALID;
  wire [191:168]xbar_to_m07_couplers_TDATA;
  wire [31:28]xbar_to_m07_couplers_TDEST;
  wire xbar_to_m07_couplers_TID;
  wire [23:21]xbar_to_m07_couplers_TKEEP;
  wire xbar_to_m07_couplers_TLAST;
  wire xbar_to_m07_couplers_TREADY;
  wire [23:21]xbar_to_m07_couplers_TSTRB;
  wire xbar_to_m07_couplers_TUSER;
  wire xbar_to_m07_couplers_TVALID;
  wire [215:192]xbar_to_m08_couplers_TDATA;
  wire [35:32]xbar_to_m08_couplers_TDEST;
  wire xbar_to_m08_couplers_TID;
  wire [26:24]xbar_to_m08_couplers_TKEEP;
  wire xbar_to_m08_couplers_TLAST;
  wire xbar_to_m08_couplers_TREADY;
  wire [26:24]xbar_to_m08_couplers_TSTRB;
  wire xbar_to_m08_couplers_TUSER;
  wire xbar_to_m08_couplers_TVALID;
  wire [239:73]NLW_xbar_m_axis_tdata_UNCONNECTED;
  wire [39:13]NLW_xbar_m_axis_tdest_UNCONNECTED;
  wire [9:3]NLW_xbar_m_axis_tid_UNCONNECTED;
  wire [29:9]NLW_xbar_m_axis_tkeep_UNCONNECTED;
  wire [9:3]NLW_xbar_m_axis_tlast_UNCONNECTED;
  wire [29:9]NLW_xbar_m_axis_tstrb_UNCONNECTED;
  wire [9:3]NLW_xbar_m_axis_tuser_UNCONNECTED;

  design_1_v_proc_ss_2_1_m00_couplers_imp_FKOZA0 m00_couplers
       (.M00_AXIS_ACLK(M00_AXIS_ACLK),
        .M00_AXIS_ARESETN(M00_AXIS_ARESETN),
        .M00_AXIS_tdata(M00_AXIS_tdata),
        .M00_AXIS_tdest(M00_AXIS_tdest),
        .M00_AXIS_tid(M00_AXIS_tid),
        .M00_AXIS_tkeep(M00_AXIS_tkeep),
        .M00_AXIS_tlast(M00_AXIS_tlast),
        .M00_AXIS_tready(M00_AXIS_tready),
        .M00_AXIS_tstrb(M00_AXIS_tstrb),
        .M00_AXIS_tuser(M00_AXIS_tuser),
        .M00_AXIS_tvalid(M00_AXIS_tvalid),
        .m_axis_tdata(xbar_to_m00_couplers_TDATA),
        .m_axis_tdest(xbar_to_m00_couplers_TDEST),
        .m_axis_tid(xbar_to_m00_couplers_TID),
        .m_axis_tkeep(xbar_to_m00_couplers_TKEEP),
        .m_axis_tlast(xbar_to_m00_couplers_TLAST),
        .m_axis_tstrb(xbar_to_m00_couplers_TSTRB),
        .m_axis_tuser(xbar_to_m00_couplers_TUSER),
        .m_axis_tvalid(xbar_to_m00_couplers_TVALID),
        .s_axis_tready(xbar_to_m00_couplers_TREADY));
  design_1_v_proc_ss_2_1_m01_couplers_imp_1H54D0B m01_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M01_AXIS_ACLK(M01_AXIS_ACLK),
        .M01_AXIS_ARESETN(M01_AXIS_ARESETN),
        .M01_AXIS_tdata(M01_AXIS_tdata),
        .M01_AXIS_tdest(M01_AXIS_tdest),
        .M01_AXIS_tid(M01_AXIS_tid),
        .M01_AXIS_tkeep(M01_AXIS_tkeep),
        .M01_AXIS_tlast(M01_AXIS_tlast),
        .M01_AXIS_tready(M01_AXIS_tready),
        .M01_AXIS_tstrb(M01_AXIS_tstrb),
        .M01_AXIS_tuser(M01_AXIS_tuser),
        .M01_AXIS_tvalid(M01_AXIS_tvalid),
        .S_AXIS_tdata(xbar_to_m01_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m01_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m01_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m01_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m01_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m01_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m01_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m01_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m01_couplers_TVALID));
  design_1_v_proc_ss_2_1_m02_couplers_imp_1TIHHEN m02_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M02_AXIS_ACLK(M02_AXIS_ACLK),
        .M02_AXIS_ARESETN(M02_AXIS_ARESETN),
        .M02_AXIS_tdata(M02_AXIS_tdata),
        .M02_AXIS_tdest(M02_AXIS_tdest),
        .M02_AXIS_tid(M02_AXIS_tid),
        .M02_AXIS_tkeep(M02_AXIS_tkeep),
        .M02_AXIS_tlast(M02_AXIS_tlast),
        .M02_AXIS_tready(M02_AXIS_tready),
        .M02_AXIS_tstrb(M02_AXIS_tstrb),
        .M02_AXIS_tuser(M02_AXIS_tuser),
        .M02_AXIS_tvalid(M02_AXIS_tvalid),
        .S_AXIS_tdata(xbar_to_m02_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m02_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m02_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m02_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m02_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m02_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m02_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m02_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m02_couplers_TVALID));
  design_1_v_proc_ss_2_1_m04_couplers_imp_KUSD3R m04_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M04_AXIS_ACLK(M04_AXIS_ACLK),
        .M04_AXIS_ARESETN(M04_AXIS_ARESETN),
        .M04_AXIS_tdata(M04_AXIS_tdata),
        .M04_AXIS_tdest(M04_AXIS_tdest),
        .M04_AXIS_tid(M04_AXIS_tid),
        .M04_AXIS_tkeep(M04_AXIS_tkeep),
        .M04_AXIS_tlast(M04_AXIS_tlast),
        .M04_AXIS_tready(M04_AXIS_tready),
        .M04_AXIS_tstrb(M04_AXIS_tstrb),
        .M04_AXIS_tuser(M04_AXIS_tuser),
        .M04_AXIS_tvalid(M04_AXIS_tvalid),
        .S_AXIS_tdata(xbar_to_m04_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m04_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m04_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m04_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m04_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m04_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m04_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m04_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m04_couplers_TVALID));
  design_1_v_proc_ss_2_1_m05_couplers_imp_1KRA590 m05_couplers
       (.M05_AXIS_ACLK(M05_AXIS_ACLK),
        .M05_AXIS_ARESETN(M05_AXIS_ARESETN),
        .M05_AXIS_tdata(M05_AXIS_tdata),
        .M05_AXIS_tready(M05_AXIS_tready),
        .M05_AXIS_tvalid(M05_AXIS_tvalid),
        .m_axis_tdata(xbar_to_m05_couplers_TDATA),
        .m_axis_tdest(xbar_to_m05_couplers_TDEST),
        .m_axis_tid(xbar_to_m05_couplers_TID),
        .m_axis_tkeep(xbar_to_m05_couplers_TKEEP),
        .m_axis_tlast(xbar_to_m05_couplers_TLAST),
        .m_axis_tstrb(xbar_to_m05_couplers_TSTRB),
        .m_axis_tuser(xbar_to_m05_couplers_TUSER),
        .m_axis_tvalid(xbar_to_m05_couplers_TVALID),
        .s_axis_tready(xbar_to_m05_couplers_TREADY));
  design_1_v_proc_ss_2_1_m06_couplers_imp_1851DHS m06_couplers
       (.M06_AXIS_ACLK(M06_AXIS_ACLK),
        .M06_AXIS_ARESETN(M06_AXIS_ARESETN),
        .M06_AXIS_tdata(M06_AXIS_tdata),
        .M06_AXIS_tready(M06_AXIS_tready),
        .M06_AXIS_tvalid(M06_AXIS_tvalid),
        .m_axis_tdata(xbar_to_m06_couplers_TDATA),
        .m_axis_tdest(xbar_to_m06_couplers_TDEST),
        .m_axis_tid(xbar_to_m06_couplers_TID),
        .m_axis_tkeep(xbar_to_m06_couplers_TKEEP),
        .m_axis_tlast(xbar_to_m06_couplers_TLAST),
        .m_axis_tstrb(xbar_to_m06_couplers_TSTRB),
        .m_axis_tuser(xbar_to_m06_couplers_TUSER),
        .m_axis_tvalid(xbar_to_m06_couplers_TVALID),
        .s_axis_tready(xbar_to_m06_couplers_TREADY));
  design_1_v_proc_ss_2_1_m07_couplers_imp_6UQF2R m07_couplers
       (.M07_AXIS_ACLK(M07_AXIS_ACLK),
        .M07_AXIS_ARESETN(M07_AXIS_ARESETN),
        .M07_AXIS_tdata(M07_AXIS_tdata),
        .M07_AXIS_tready(M07_AXIS_tready),
        .M07_AXIS_tvalid(M07_AXIS_tvalid),
        .m_axis_tdata(xbar_to_m07_couplers_TDATA),
        .m_axis_tdest(xbar_to_m07_couplers_TDEST),
        .m_axis_tid(xbar_to_m07_couplers_TID),
        .m_axis_tkeep(xbar_to_m07_couplers_TKEEP),
        .m_axis_tlast(xbar_to_m07_couplers_TLAST),
        .m_axis_tstrb(xbar_to_m07_couplers_TSTRB),
        .m_axis_tuser(xbar_to_m07_couplers_TUSER),
        .m_axis_tvalid(xbar_to_m07_couplers_TVALID),
        .s_axis_tready(xbar_to_m07_couplers_TREADY));
  design_1_v_proc_ss_2_1_m08_couplers_imp_1PNFOXY m08_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M08_AXIS_ACLK(M08_AXIS_ACLK),
        .M08_AXIS_ARESETN(M08_AXIS_ARESETN),
        .M08_AXIS_tdata(M08_AXIS_tdata),
        .M08_AXIS_tdest(M08_AXIS_tdest),
        .M08_AXIS_tid(M08_AXIS_tid),
        .M08_AXIS_tkeep(M08_AXIS_tkeep),
        .M08_AXIS_tlast(M08_AXIS_tlast),
        .M08_AXIS_tready(M08_AXIS_tready),
        .M08_AXIS_tstrb(M08_AXIS_tstrb),
        .M08_AXIS_tuser(M08_AXIS_tuser),
        .M08_AXIS_tvalid(M08_AXIS_tvalid),
        .S_AXIS_tdata(xbar_to_m08_couplers_TDATA),
        .S_AXIS_tdest(xbar_to_m08_couplers_TDEST),
        .S_AXIS_tid(xbar_to_m08_couplers_TID),
        .S_AXIS_tkeep(xbar_to_m08_couplers_TKEEP),
        .S_AXIS_tlast(xbar_to_m08_couplers_TLAST),
        .S_AXIS_tready(xbar_to_m08_couplers_TREADY),
        .S_AXIS_tstrb(xbar_to_m08_couplers_TSTRB),
        .S_AXIS_tuser(xbar_to_m08_couplers_TUSER),
        .S_AXIS_tvalid(xbar_to_m08_couplers_TVALID));
  design_1_v_proc_ss_2_1_s00_couplers_imp_1H11R7O s00_couplers
       (.S00_AXIS_ACLK(S00_AXIS_ACLK),
        .S00_AXIS_ARESETN(S00_AXIS_ARESETN),
        .S00_AXIS_tdata(S00_AXIS_tdata),
        .S00_AXIS_tdest(S00_AXIS_tdest),
        .S00_AXIS_tid(S00_AXIS_tid),
        .S00_AXIS_tkeep(S00_AXIS_tkeep),
        .S00_AXIS_tlast(S00_AXIS_tlast),
        .S00_AXIS_tready(S00_AXIS_tready),
        .S00_AXIS_tstrb(S00_AXIS_tstrb),
        .S00_AXIS_tuser(S00_AXIS_tuser),
        .S00_AXIS_tvalid(S00_AXIS_tvalid),
        .m_axis_tdata(s00_couplers_to_xbar_TDATA),
        .m_axis_tdest(s00_couplers_to_xbar_TDEST),
        .m_axis_tid(s00_couplers_to_xbar_TID),
        .m_axis_tkeep(s00_couplers_to_xbar_TKEEP),
        .m_axis_tlast(s00_couplers_to_xbar_TLAST),
        .m_axis_tstrb(s00_couplers_to_xbar_TSTRB),
        .m_axis_tuser(s00_couplers_to_xbar_TUSER),
        .m_axis_tvalid(s00_couplers_to_xbar_TVALID),
        .s_axis_tready(s00_couplers_to_xbar_TREADY));
  design_1_v_proc_ss_2_1_s01_couplers_imp_FQJVWN s01_couplers
       (.S01_AXIS_ACLK(S01_AXIS_ACLK),
        .S01_AXIS_ARESETN(S01_AXIS_ARESETN),
        .S01_AXIS_tdata(S01_AXIS_tdata),
        .S01_AXIS_tdest(S01_AXIS_tdest),
        .S01_AXIS_tid(S01_AXIS_tid),
        .S01_AXIS_tkeep(S01_AXIS_tkeep),
        .S01_AXIS_tlast(S01_AXIS_tlast),
        .S01_AXIS_tready(S01_AXIS_tready),
        .S01_AXIS_tstrb(S01_AXIS_tstrb),
        .S01_AXIS_tuser(S01_AXIS_tuser),
        .S01_AXIS_tvalid(S01_AXIS_tvalid),
        .m_axis_tdata(s01_couplers_to_xbar_TDATA),
        .m_axis_tdest(s01_couplers_to_xbar_TDEST),
        .m_axis_tid(s01_couplers_to_xbar_TID),
        .m_axis_tkeep(s01_couplers_to_xbar_TKEEP),
        .m_axis_tlast(s01_couplers_to_xbar_TLAST),
        .m_axis_tstrb(s01_couplers_to_xbar_TSTRB),
        .m_axis_tuser(s01_couplers_to_xbar_TUSER),
        .m_axis_tvalid(s01_couplers_to_xbar_TVALID),
        .s_axis_tready(s01_couplers_to_xbar_TREADY));
  design_1_v_proc_ss_2_1_s02_couplers_imp_TQ4P1F s02_couplers
       (.S02_AXIS_ACLK(S02_AXIS_ACLK),
        .S02_AXIS_ARESETN(S02_AXIS_ARESETN),
        .S02_AXIS_tdata(S02_AXIS_tdata),
        .S02_AXIS_tdest(S02_AXIS_tdest),
        .S02_AXIS_tid(S02_AXIS_tid),
        .S02_AXIS_tkeep(S02_AXIS_tkeep),
        .S02_AXIS_tlast(S02_AXIS_tlast),
        .S02_AXIS_tready(S02_AXIS_tready),
        .S02_AXIS_tstrb(S02_AXIS_tstrb),
        .S02_AXIS_tuser(S02_AXIS_tuser),
        .S02_AXIS_tvalid(S02_AXIS_tvalid),
        .m_axis_tdata(s02_couplers_to_xbar_TDATA),
        .m_axis_tdest(s02_couplers_to_xbar_TDEST),
        .m_axis_tid(s02_couplers_to_xbar_TID),
        .m_axis_tkeep(s02_couplers_to_xbar_TKEEP),
        .m_axis_tlast(s02_couplers_to_xbar_TLAST),
        .m_axis_tstrb(s02_couplers_to_xbar_TSTRB),
        .m_axis_tuser(s02_couplers_to_xbar_TUSER),
        .m_axis_tvalid(s02_couplers_to_xbar_TVALID),
        .s_axis_tready(s02_couplers_to_xbar_TREADY));
  design_1_v_proc_ss_2_1_s04_couplers_imp_1KMLEIZ s04_couplers
       (.S04_AXIS_ACLK(S04_AXIS_ACLK),
        .S04_AXIS_ARESETN(S04_AXIS_ARESETN),
        .S04_AXIS_tdata(S04_AXIS_tdata),
        .S04_AXIS_tdest(S04_AXIS_tdest),
        .S04_AXIS_tid(S04_AXIS_tid),
        .S04_AXIS_tkeep(S04_AXIS_tkeep),
        .S04_AXIS_tlast(S04_AXIS_tlast),
        .S04_AXIS_tready(S04_AXIS_tready),
        .S04_AXIS_tstrb(S04_AXIS_tstrb),
        .S04_AXIS_tuser(S04_AXIS_tuser),
        .S04_AXIS_tvalid(S04_AXIS_tvalid),
        .m_axis_tdata(s04_couplers_to_xbar_TDATA),
        .m_axis_tdest(s04_couplers_to_xbar_TDEST),
        .m_axis_tid(s04_couplers_to_xbar_TID),
        .m_axis_tkeep(s04_couplers_to_xbar_TKEEP),
        .m_axis_tlast(s04_couplers_to_xbar_TLAST),
        .m_axis_tstrb(s04_couplers_to_xbar_TSTRB),
        .m_axis_tuser(s04_couplers_to_xbar_TUSER),
        .m_axis_tvalid(s04_couplers_to_xbar_TVALID),
        .s_axis_tready(s04_couplers_to_xbar_TREADY));
  design_1_v_proc_ss_2_1_s08_couplers_imp_OPKDJU s08_couplers
       (.S08_AXIS_ACLK(S08_AXIS_ACLK),
        .S08_AXIS_ARESETN(S08_AXIS_ARESETN),
        .S08_AXIS_tdata(S08_AXIS_tdata),
        .S08_AXIS_tdest(S08_AXIS_tdest),
        .S08_AXIS_tid(S08_AXIS_tid),
        .S08_AXIS_tkeep(S08_AXIS_tkeep),
        .S08_AXIS_tlast(S08_AXIS_tlast),
        .S08_AXIS_tready(S08_AXIS_tready),
        .S08_AXIS_tstrb(S08_AXIS_tstrb),
        .S08_AXIS_tuser(S08_AXIS_tuser),
        .S08_AXIS_tvalid(S08_AXIS_tvalid),
        .m_axis_tdata(s08_couplers_to_xbar_TDATA),
        .m_axis_tdest(s08_couplers_to_xbar_TDEST),
        .m_axis_tid(s08_couplers_to_xbar_TID),
        .m_axis_tkeep(s08_couplers_to_xbar_TKEEP),
        .m_axis_tlast(s08_couplers_to_xbar_TLAST),
        .m_axis_tstrb(s08_couplers_to_xbar_TSTRB),
        .m_axis_tuser(s08_couplers_to_xbar_TUSER),
        .m_axis_tvalid(s08_couplers_to_xbar_TVALID),
        .s_axis_tready(s08_couplers_to_xbar_TREADY));
  (* X_CORE_INFO = "axis_switch_v1_1_21_axis_switch,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_xbar_0 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axis_tdata({NLW_xbar_m_axis_tdata_UNCONNECTED[239:217],M09_AXIS_tdata,xbar_to_m08_couplers_TDATA,xbar_to_m07_couplers_TDATA,xbar_to_m06_couplers_TDATA,xbar_to_m05_couplers_TDATA,xbar_to_m04_couplers_TDATA,NLW_xbar_m_axis_tdata_UNCONNECTED[95:73],M03_AXIS_tdata,xbar_to_m02_couplers_TDATA,xbar_to_m01_couplers_TDATA,xbar_to_m00_couplers_TDATA}),
        .m_axis_tdest({NLW_xbar_m_axis_tdest_UNCONNECTED[39:37],M09_AXIS_tdest,xbar_to_m08_couplers_TDEST,xbar_to_m07_couplers_TDEST,xbar_to_m06_couplers_TDEST,xbar_to_m05_couplers_TDEST,xbar_to_m04_couplers_TDEST,NLW_xbar_m_axis_tdest_UNCONNECTED[15:13],M03_AXIS_tdest,xbar_to_m02_couplers_TDEST,xbar_to_m01_couplers_TDEST,xbar_to_m00_couplers_TDEST}),
        .m_axis_tid({NLW_xbar_m_axis_tid_UNCONNECTED[9],xbar_to_m08_couplers_TID,xbar_to_m07_couplers_TID,xbar_to_m06_couplers_TID,xbar_to_m05_couplers_TID,xbar_to_m04_couplers_TID,NLW_xbar_m_axis_tid_UNCONNECTED[3],xbar_to_m02_couplers_TID,xbar_to_m01_couplers_TID,xbar_to_m00_couplers_TID}),
        .m_axis_tkeep({NLW_xbar_m_axis_tkeep_UNCONNECTED[29:27],xbar_to_m08_couplers_TKEEP,xbar_to_m07_couplers_TKEEP,xbar_to_m06_couplers_TKEEP,xbar_to_m05_couplers_TKEEP,xbar_to_m04_couplers_TKEEP,NLW_xbar_m_axis_tkeep_UNCONNECTED[11:9],xbar_to_m02_couplers_TKEEP,xbar_to_m01_couplers_TKEEP,xbar_to_m00_couplers_TKEEP}),
        .m_axis_tlast({NLW_xbar_m_axis_tlast_UNCONNECTED[9],xbar_to_m08_couplers_TLAST,xbar_to_m07_couplers_TLAST,xbar_to_m06_couplers_TLAST,xbar_to_m05_couplers_TLAST,xbar_to_m04_couplers_TLAST,NLW_xbar_m_axis_tlast_UNCONNECTED[3],xbar_to_m02_couplers_TLAST,xbar_to_m01_couplers_TLAST,xbar_to_m00_couplers_TLAST}),
        .m_axis_tready({M09_AXIS_tready,xbar_to_m08_couplers_TREADY,xbar_to_m07_couplers_TREADY,xbar_to_m06_couplers_TREADY,xbar_to_m05_couplers_TREADY,xbar_to_m04_couplers_TREADY,M03_AXIS_tready,xbar_to_m02_couplers_TREADY,xbar_to_m01_couplers_TREADY,xbar_to_m00_couplers_TREADY}),
        .m_axis_tstrb({NLW_xbar_m_axis_tstrb_UNCONNECTED[29:27],xbar_to_m08_couplers_TSTRB,xbar_to_m07_couplers_TSTRB,xbar_to_m06_couplers_TSTRB,xbar_to_m05_couplers_TSTRB,xbar_to_m04_couplers_TSTRB,NLW_xbar_m_axis_tstrb_UNCONNECTED[11:9],xbar_to_m02_couplers_TSTRB,xbar_to_m01_couplers_TSTRB,xbar_to_m00_couplers_TSTRB}),
        .m_axis_tuser({NLW_xbar_m_axis_tuser_UNCONNECTED[9],xbar_to_m08_couplers_TUSER,xbar_to_m07_couplers_TUSER,xbar_to_m06_couplers_TUSER,xbar_to_m05_couplers_TUSER,xbar_to_m04_couplers_TUSER,NLW_xbar_m_axis_tuser_UNCONNECTED[3],xbar_to_m02_couplers_TUSER,xbar_to_m01_couplers_TUSER,xbar_to_m00_couplers_TUSER}),
        .m_axis_tvalid({M09_AXIS_tvalid,xbar_to_m08_couplers_TVALID,xbar_to_m07_couplers_TVALID,xbar_to_m06_couplers_TVALID,xbar_to_m05_couplers_TVALID,xbar_to_m04_couplers_TVALID,M03_AXIS_tvalid,xbar_to_m02_couplers_TVALID,xbar_to_m01_couplers_TVALID,xbar_to_m00_couplers_TVALID}),
        .s_axi_ctrl_aclk(S_AXI_CTRL_ACLK),
        .s_axi_ctrl_araddr(S_AXI_CTRL_araddr),
        .s_axi_ctrl_aresetn(S_AXI_CTRL_ARESETN),
        .s_axi_ctrl_arready(S_AXI_CTRL_arready),
        .s_axi_ctrl_arvalid(S_AXI_CTRL_arvalid),
        .s_axi_ctrl_awaddr(S_AXI_CTRL_awaddr),
        .s_axi_ctrl_awready(S_AXI_CTRL_awready),
        .s_axi_ctrl_awvalid(S_AXI_CTRL_awvalid),
        .s_axi_ctrl_bready(S_AXI_CTRL_bready),
        .s_axi_ctrl_bresp(S_AXI_CTRL_bresp),
        .s_axi_ctrl_bvalid(S_AXI_CTRL_bvalid),
        .s_axi_ctrl_rdata(S_AXI_CTRL_rdata),
        .s_axi_ctrl_rready(S_AXI_CTRL_rready),
        .s_axi_ctrl_rresp(S_AXI_CTRL_rresp),
        .s_axi_ctrl_rvalid(S_AXI_CTRL_rvalid),
        .s_axi_ctrl_wdata(S_AXI_CTRL_wdata),
        .s_axi_ctrl_wready(S_AXI_CTRL_wready),
        .s_axi_ctrl_wvalid(S_AXI_CTRL_wvalid),
        .s_axis_tdata({S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,S09_AXIS_tdata,s08_couplers_to_xbar_TDATA,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S07_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S06_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,S05_AXIS_tdata,s04_couplers_to_xbar_TDATA,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,S03_AXIS_tdata,s02_couplers_to_xbar_TDATA,s01_couplers_to_xbar_TDATA,s00_couplers_to_xbar_TDATA}),
        .s_axis_tdest({S09_AXIS_tdest,S09_AXIS_tdest,S09_AXIS_tdest,S09_AXIS_tdest,s08_couplers_to_xbar_TDEST,S07_AXIS_tdest,S07_AXIS_tdest,S07_AXIS_tdest,S07_AXIS_tdest,S06_AXIS_tdest,S06_AXIS_tdest,S06_AXIS_tdest,S06_AXIS_tdest,S05_AXIS_tdest,S05_AXIS_tdest,S05_AXIS_tdest,S05_AXIS_tdest,s04_couplers_to_xbar_TDEST,S03_AXIS_tdest,S03_AXIS_tdest,S03_AXIS_tdest,S03_AXIS_tdest,s02_couplers_to_xbar_TDEST,s01_couplers_to_xbar_TDEST,s00_couplers_to_xbar_TDEST}),
        .s_axis_tid({1'b0,s08_couplers_to_xbar_TID,1'b0,1'b0,1'b0,s04_couplers_to_xbar_TID,1'b0,s02_couplers_to_xbar_TID,s01_couplers_to_xbar_TID,s00_couplers_to_xbar_TID}),
        .s_axis_tkeep({1'b1,1'b1,1'b1,s08_couplers_to_xbar_TKEEP,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s04_couplers_to_xbar_TKEEP,1'b1,1'b1,1'b1,s02_couplers_to_xbar_TKEEP,s01_couplers_to_xbar_TKEEP,s00_couplers_to_xbar_TKEEP}),
        .s_axis_tlast({1'b0,s08_couplers_to_xbar_TLAST,1'b0,1'b0,1'b0,s04_couplers_to_xbar_TLAST,1'b0,s02_couplers_to_xbar_TLAST,s01_couplers_to_xbar_TLAST,s00_couplers_to_xbar_TLAST}),
        .s_axis_tready({S09_AXIS_tready,s08_couplers_to_xbar_TREADY,S07_AXIS_tready,S06_AXIS_tready,S05_AXIS_tready,s04_couplers_to_xbar_TREADY,S03_AXIS_tready,s02_couplers_to_xbar_TREADY,s01_couplers_to_xbar_TREADY,s00_couplers_to_xbar_TREADY}),
        .s_axis_tstrb({1'b1,1'b1,1'b1,s08_couplers_to_xbar_TSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s04_couplers_to_xbar_TSTRB,1'b1,1'b1,1'b1,s02_couplers_to_xbar_TSTRB,s01_couplers_to_xbar_TSTRB,s00_couplers_to_xbar_TSTRB}),
        .s_axis_tuser({1'b0,s08_couplers_to_xbar_TUSER,1'b0,1'b0,1'b0,s04_couplers_to_xbar_TUSER,1'b0,s02_couplers_to_xbar_TUSER,s01_couplers_to_xbar_TUSER,s00_couplers_to_xbar_TUSER}),
        .s_axis_tvalid({S09_AXIS_tvalid,s08_couplers_to_xbar_TVALID,S07_AXIS_tvalid,S06_AXIS_tvalid,S05_AXIS_tvalid,s04_couplers_to_xbar_TVALID,S03_AXIS_tvalid,s02_couplers_to_xbar_TVALID,s01_couplers_to_xbar_TVALID,s00_couplers_to_xbar_TVALID}));
endmodule

module design_1_v_proc_ss_2_1_bd_d94b_vsc_0
   (s_axi_CTRL_AWADDR,
    s_axi_CTRL_AWVALID,
    s_axi_CTRL_AWREADY,
    s_axi_CTRL_WDATA,
    s_axi_CTRL_WSTRB,
    s_axi_CTRL_WVALID,
    s_axi_CTRL_WREADY,
    s_axi_CTRL_BRESP,
    s_axi_CTRL_BVALID,
    s_axi_CTRL_BREADY,
    s_axi_CTRL_ARADDR,
    s_axi_CTRL_ARVALID,
    s_axi_CTRL_ARREADY,
    s_axi_CTRL_RDATA,
    s_axi_CTRL_RRESP,
    s_axi_CTRL_RVALID,
    s_axi_CTRL_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TDATA,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  input [11:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [11:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [23:0]s_axis_video_TDATA;
  input [2:0]s_axis_video_TKEEP;
  input [2:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [23:0]m_axis_video_TDATA;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;


endmodule

module design_1_v_proc_ss_2_1_bd_d94b_xbar_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp);
  input aclk;
  input aresetn;
  input [9:0]s_axis_tvalid;
  output [9:0]s_axis_tready;
  input [239:0]s_axis_tdata;
  input [29:0]s_axis_tstrb;
  input [29:0]s_axis_tkeep;
  input [9:0]s_axis_tlast;
  input [9:0]s_axis_tid;
  input [39:0]s_axis_tdest;
  input [9:0]s_axis_tuser;
  output [9:0]m_axis_tvalid;
  input [9:0]m_axis_tready;
  output [239:0]m_axis_tdata;
  output [29:0]m_axis_tstrb;
  output [29:0]m_axis_tkeep;
  output [9:0]m_axis_tlast;
  output [9:0]m_axis_tid;
  output [39:0]m_axis_tdest;
  output [9:0]m_axis_tuser;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [6:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [6:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;


endmodule

(* CHECK_LICENSE_TYPE = "design_1_v_proc_ss_2_1,bd_d94b,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "bd_d94b,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_v_proc_ss_2_1
   (aclk_axis,
    aclk_ctrl,
    aresetn_ctrl,
    aresetn_io_axis,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_awprot,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wstrb,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arprot,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axis_tdata,
    s_axis_tdest,
    s_axis_tid,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tready,
    s_axis_tstrb,
    s_axis_tuser,
    s_axis_tvalid,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tdest,
    m_axis_tid,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tstrb,
    m_axis_tuser);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.aclk_axis CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.aclk_axis, ASSOCIATED_RESET aresetn_io_axis, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF m_axis:s_axis, INSERT_VIP 0, ASSOCIATED_CLKEN aclken" *) input aclk_axis;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.aclk_ctrl, ASSOCIATED_RESET aresetn_ctrl, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF s_axi_ctrl, INSERT_VIP 0, ASSOCIATED_CLKEN s_sc_aclken" *) input aclk_ctrl;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn_ctrl;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.aresetn_io_axis RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.aresetn_io_axis, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output [0:0]aresetn_io_axis;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 148500000, ID_WIDTH 0, ADDR_WIDTH 19, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [18:0]s_axi_ctrl_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT" *) input [2:0]s_axi_ctrl_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID" *) input [0:0]s_axi_ctrl_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY" *) output [0:0]s_axi_ctrl_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA" *) input [31:0]s_axi_ctrl_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB" *) input [3:0]s_axi_ctrl_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID" *) input [0:0]s_axi_ctrl_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY" *) output [0:0]s_axi_ctrl_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP" *) output [1:0]s_axi_ctrl_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID" *) output [0:0]s_axi_ctrl_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY" *) input [0:0]s_axi_ctrl_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR" *) input [18:0]s_axi_ctrl_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT" *) input [2:0]s_axi_ctrl_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID" *) input [0:0]s_axi_ctrl_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY" *) output [0:0]s_axi_ctrl_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA" *) output [31:0]s_axi_ctrl_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP" *) output [1:0]s_axi_ctrl_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID" *) output [0:0]s_axi_ctrl_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY" *) input [0:0]s_axi_ctrl_rready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [23:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDEST" *) input [0:0]s_axis_tdest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TID" *) input [0:0]s_axis_tid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [2:0]s_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TSTRB" *) input [2:0]s_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input [0:0]s_axis_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [23:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDEST" *) output [3:0]m_axis_tdest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TID" *) output [0:0]m_axis_tid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [2:0]m_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TSTRB" *) output [2:0]m_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output [0:0]m_axis_tuser;

  wire aclk_axis;
  wire aclk_ctrl;
  wire aresetn_ctrl;
  wire [0:0]aresetn_io_axis;
  wire [23:0]m_axis_tdata;
  wire [3:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [18:0]s_axi_ctrl_araddr;
  wire [2:0]s_axi_ctrl_arprot;
  wire [0:0]s_axi_ctrl_arready;
  wire [0:0]s_axi_ctrl_arvalid;
  wire [18:0]s_axi_ctrl_awaddr;
  wire [2:0]s_axi_ctrl_awprot;
  wire [0:0]s_axi_ctrl_awready;
  wire [0:0]s_axi_ctrl_awvalid;
  wire [0:0]s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bresp;
  wire [0:0]s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire [0:0]s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rresp;
  wire [0:0]s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire [0:0]s_axi_ctrl_wready;
  wire [3:0]s_axi_ctrl_wstrb;
  wire [0:0]s_axi_ctrl_wvalid;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;

  (* hw_handoff = "design_1_v_proc_ss_2_1.hwdef" *) 
  design_1_v_proc_ss_2_1_bd_d94b U0
       (.aclk_axis(aclk_axis),
        .aclk_ctrl(aclk_ctrl),
        .aresetn_ctrl(aresetn_ctrl),
        .aresetn_io_axis(aresetn_io_axis),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arprot(s_axi_ctrl_arprot),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awprot(s_axi_ctrl_awprot),
        .s_axi_ctrl_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bresp(s_axi_ctrl_bresp),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rresp(s_axi_ctrl_rresp),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wready(s_axi_ctrl_wready),
        .s_axi_ctrl_wstrb(s_axi_ctrl_wstrb),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module design_1_v_proc_ss_2_1_m00_couplers_imp_FKOZA0
   (s_axis_tready,
    M00_AXIS_tvalid,
    M00_AXIS_tdata,
    M00_AXIS_tstrb,
    M00_AXIS_tkeep,
    M00_AXIS_tlast,
    M00_AXIS_tid,
    M00_AXIS_tdest,
    M00_AXIS_tuser,
    M00_AXIS_ACLK,
    M00_AXIS_ARESETN,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    M00_AXIS_tready);
  output s_axis_tready;
  output M00_AXIS_tvalid;
  output [23:0]M00_AXIS_tdata;
  output [2:0]M00_AXIS_tstrb;
  output [2:0]M00_AXIS_tkeep;
  output M00_AXIS_tlast;
  output [0:0]M00_AXIS_tid;
  output [3:0]M00_AXIS_tdest;
  output [0:0]M00_AXIS_tuser;
  input M00_AXIS_ACLK;
  input M00_AXIS_ARESETN;
  input [0:0]m_axis_tvalid;
  input [23:0]m_axis_tdata;
  input [2:0]m_axis_tstrb;
  input [2:0]m_axis_tkeep;
  input [0:0]m_axis_tlast;
  input [0:0]m_axis_tid;
  input [3:0]m_axis_tdest;
  input [0:0]m_axis_tuser;
  input M00_AXIS_tready;

  wire M00_AXIS_ACLK;
  wire M00_AXIS_ARESETN;
  wire [23:0]M00_AXIS_tdata;
  wire [3:0]M00_AXIS_tdest;
  wire [0:0]M00_AXIS_tid;
  wire [2:0]M00_AXIS_tkeep;
  wire M00_AXIS_tlast;
  wire M00_AXIS_tready;
  wire [2:0]M00_AXIS_tstrb;
  wire [0:0]M00_AXIS_tuser;
  wire M00_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [3:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire s_axis_tready;

  (* X_CORE_INFO = "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_m00_regslice_0 m00_regslice
       (.aclk(M00_AXIS_ACLK),
        .aresetn(M00_AXIS_ARESETN),
        .m_axis_tdata(M00_AXIS_tdata),
        .m_axis_tdest(M00_AXIS_tdest),
        .m_axis_tid(M00_AXIS_tid),
        .m_axis_tkeep(M00_AXIS_tkeep),
        .m_axis_tlast(M00_AXIS_tlast),
        .m_axis_tready(M00_AXIS_tready),
        .m_axis_tstrb(M00_AXIS_tstrb),
        .m_axis_tuser(M00_AXIS_tuser),
        .m_axis_tvalid(M00_AXIS_tvalid),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tdest(m_axis_tdest),
        .s_axis_tid(m_axis_tid),
        .s_axis_tkeep(m_axis_tkeep),
        .s_axis_tlast(m_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(m_axis_tstrb),
        .s_axis_tuser(m_axis_tuser),
        .s_axis_tvalid(m_axis_tvalid));
endmodule

module design_1_v_proc_ss_2_1_m01_couplers_imp_1H54D0B
   (S_AXIS_tready,
    M01_AXIS_tvalid,
    M01_AXIS_tdata,
    M01_AXIS_tstrb,
    M01_AXIS_tkeep,
    M01_AXIS_tlast,
    M01_AXIS_tid,
    M01_AXIS_tdest,
    M01_AXIS_tuser,
    ACLK,
    ARESETN,
    S_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tstrb,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tid,
    S_AXIS_tdest,
    S_AXIS_tuser,
    M01_AXIS_ACLK,
    M01_AXIS_ARESETN,
    M01_AXIS_tready);
  output S_AXIS_tready;
  output M01_AXIS_tvalid;
  output [23:0]M01_AXIS_tdata;
  output [2:0]M01_AXIS_tstrb;
  output [2:0]M01_AXIS_tkeep;
  output M01_AXIS_tlast;
  output [0:0]M01_AXIS_tid;
  output [0:0]M01_AXIS_tdest;
  output [0:0]M01_AXIS_tuser;
  input ACLK;
  input ARESETN;
  input S_AXIS_tvalid;
  input [23:0]S_AXIS_tdata;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  input [0:0]S_AXIS_tid;
  input [3:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tuser;
  input M01_AXIS_ACLK;
  input M01_AXIS_ARESETN;
  input M01_AXIS_tready;

  wire ACLK;
  wire ARESETN;
  wire M01_AXIS_ACLK;
  wire M01_AXIS_ARESETN;
  wire [23:0]M01_AXIS_tdata;
  wire [0:0]M01_AXIS_tdest;
  wire [0:0]M01_AXIS_tid;
  wire [2:0]M01_AXIS_tkeep;
  wire M01_AXIS_tlast;
  wire M01_AXIS_tready;
  wire [2:0]M01_AXIS_tstrb;
  wire [0:0]M01_AXIS_tuser;
  wire M01_AXIS_tvalid;
  wire [23:0]S_AXIS_tdata;
  wire [3:0]S_AXIS_tdest;
  wire [0:0]S_AXIS_tid;
  wire [2:0]S_AXIS_tkeep;
  wire S_AXIS_tlast;
  wire S_AXIS_tready;
  wire [2:0]S_AXIS_tstrb;
  wire [0:0]S_AXIS_tuser;
  wire S_AXIS_tvalid;
  wire [23:0]auto_ss_slidr_to_m01_regslice_TDATA;
  wire auto_ss_slidr_to_m01_regslice_TDEST;
  wire auto_ss_slidr_to_m01_regslice_TID;
  wire [2:0]auto_ss_slidr_to_m01_regslice_TKEEP;
  wire auto_ss_slidr_to_m01_regslice_TLAST;
  wire auto_ss_slidr_to_m01_regslice_TREADY;
  wire [2:0]auto_ss_slidr_to_m01_regslice_TSTRB;
  wire auto_ss_slidr_to_m01_regslice_TUSER;
  wire auto_ss_slidr_to_m01_regslice_TVALID;

  (* X_CORE_INFO = "top_bd_d94b_auto_ss_slidr_0,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slidr_0 auto_ss_slidr
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axis_tdata(auto_ss_slidr_to_m01_regslice_TDATA),
        .m_axis_tdest(auto_ss_slidr_to_m01_regslice_TDEST),
        .m_axis_tid(auto_ss_slidr_to_m01_regslice_TID),
        .m_axis_tkeep(auto_ss_slidr_to_m01_regslice_TKEEP),
        .m_axis_tlast(auto_ss_slidr_to_m01_regslice_TLAST),
        .m_axis_tready(auto_ss_slidr_to_m01_regslice_TREADY),
        .m_axis_tstrb(auto_ss_slidr_to_m01_regslice_TSTRB),
        .m_axis_tuser(auto_ss_slidr_to_m01_regslice_TUSER),
        .m_axis_tvalid(auto_ss_slidr_to_m01_regslice_TVALID),
        .s_axis_tdata(S_AXIS_tdata),
        .s_axis_tdest(S_AXIS_tdest),
        .s_axis_tid(S_AXIS_tid),
        .s_axis_tkeep(S_AXIS_tkeep),
        .s_axis_tlast(S_AXIS_tlast),
        .s_axis_tready(S_AXIS_tready),
        .s_axis_tstrb(S_AXIS_tstrb),
        .s_axis_tuser(S_AXIS_tuser),
        .s_axis_tvalid(S_AXIS_tvalid));
  (* X_CORE_INFO = "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_m01_regslice_0 m01_regslice
       (.aclk(M01_AXIS_ACLK),
        .aresetn(M01_AXIS_ARESETN),
        .m_axis_tdata(M01_AXIS_tdata),
        .m_axis_tdest(M01_AXIS_tdest),
        .m_axis_tid(M01_AXIS_tid),
        .m_axis_tkeep(M01_AXIS_tkeep),
        .m_axis_tlast(M01_AXIS_tlast),
        .m_axis_tready(M01_AXIS_tready),
        .m_axis_tstrb(M01_AXIS_tstrb),
        .m_axis_tuser(M01_AXIS_tuser),
        .m_axis_tvalid(M01_AXIS_tvalid),
        .s_axis_tdata(auto_ss_slidr_to_m01_regslice_TDATA),
        .s_axis_tdest(auto_ss_slidr_to_m01_regslice_TDEST),
        .s_axis_tid(auto_ss_slidr_to_m01_regslice_TID),
        .s_axis_tkeep(auto_ss_slidr_to_m01_regslice_TKEEP),
        .s_axis_tlast(auto_ss_slidr_to_m01_regslice_TLAST),
        .s_axis_tready(auto_ss_slidr_to_m01_regslice_TREADY),
        .s_axis_tstrb(auto_ss_slidr_to_m01_regslice_TSTRB),
        .s_axis_tuser(auto_ss_slidr_to_m01_regslice_TUSER),
        .s_axis_tvalid(auto_ss_slidr_to_m01_regslice_TVALID));
endmodule

module design_1_v_proc_ss_2_1_m02_couplers_imp_1TIHHEN
   (S_AXIS_tready,
    M02_AXIS_tvalid,
    M02_AXIS_tdata,
    M02_AXIS_tstrb,
    M02_AXIS_tkeep,
    M02_AXIS_tlast,
    M02_AXIS_tid,
    M02_AXIS_tdest,
    M02_AXIS_tuser,
    ACLK,
    ARESETN,
    S_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tstrb,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tid,
    S_AXIS_tdest,
    S_AXIS_tuser,
    M02_AXIS_ACLK,
    M02_AXIS_ARESETN,
    M02_AXIS_tready);
  output S_AXIS_tready;
  output M02_AXIS_tvalid;
  output [23:0]M02_AXIS_tdata;
  output [2:0]M02_AXIS_tstrb;
  output [2:0]M02_AXIS_tkeep;
  output M02_AXIS_tlast;
  output [0:0]M02_AXIS_tid;
  output [0:0]M02_AXIS_tdest;
  output [0:0]M02_AXIS_tuser;
  input ACLK;
  input ARESETN;
  input S_AXIS_tvalid;
  input [23:0]S_AXIS_tdata;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  input [0:0]S_AXIS_tid;
  input [3:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tuser;
  input M02_AXIS_ACLK;
  input M02_AXIS_ARESETN;
  input M02_AXIS_tready;

  wire ACLK;
  wire ARESETN;
  wire M02_AXIS_ACLK;
  wire M02_AXIS_ARESETN;
  wire [23:0]M02_AXIS_tdata;
  wire [0:0]M02_AXIS_tdest;
  wire [0:0]M02_AXIS_tid;
  wire [2:0]M02_AXIS_tkeep;
  wire M02_AXIS_tlast;
  wire M02_AXIS_tready;
  wire [2:0]M02_AXIS_tstrb;
  wire [0:0]M02_AXIS_tuser;
  wire M02_AXIS_tvalid;
  wire [23:0]S_AXIS_tdata;
  wire [3:0]S_AXIS_tdest;
  wire [0:0]S_AXIS_tid;
  wire [2:0]S_AXIS_tkeep;
  wire S_AXIS_tlast;
  wire S_AXIS_tready;
  wire [2:0]S_AXIS_tstrb;
  wire [0:0]S_AXIS_tuser;
  wire S_AXIS_tvalid;
  wire [23:0]auto_ss_slidr_to_m02_regslice_TDATA;
  wire auto_ss_slidr_to_m02_regslice_TDEST;
  wire auto_ss_slidr_to_m02_regslice_TID;
  wire [2:0]auto_ss_slidr_to_m02_regslice_TKEEP;
  wire auto_ss_slidr_to_m02_regslice_TLAST;
  wire auto_ss_slidr_to_m02_regslice_TREADY;
  wire [2:0]auto_ss_slidr_to_m02_regslice_TSTRB;
  wire auto_ss_slidr_to_m02_regslice_TUSER;
  wire auto_ss_slidr_to_m02_regslice_TVALID;

  (* X_CORE_INFO = "top_bd_d94b_auto_ss_slidr_1,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slidr_1 auto_ss_slidr
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axis_tdata(auto_ss_slidr_to_m02_regslice_TDATA),
        .m_axis_tdest(auto_ss_slidr_to_m02_regslice_TDEST),
        .m_axis_tid(auto_ss_slidr_to_m02_regslice_TID),
        .m_axis_tkeep(auto_ss_slidr_to_m02_regslice_TKEEP),
        .m_axis_tlast(auto_ss_slidr_to_m02_regslice_TLAST),
        .m_axis_tready(auto_ss_slidr_to_m02_regslice_TREADY),
        .m_axis_tstrb(auto_ss_slidr_to_m02_regslice_TSTRB),
        .m_axis_tuser(auto_ss_slidr_to_m02_regslice_TUSER),
        .m_axis_tvalid(auto_ss_slidr_to_m02_regslice_TVALID),
        .s_axis_tdata(S_AXIS_tdata),
        .s_axis_tdest(S_AXIS_tdest),
        .s_axis_tid(S_AXIS_tid),
        .s_axis_tkeep(S_AXIS_tkeep),
        .s_axis_tlast(S_AXIS_tlast),
        .s_axis_tready(S_AXIS_tready),
        .s_axis_tstrb(S_AXIS_tstrb),
        .s_axis_tuser(S_AXIS_tuser),
        .s_axis_tvalid(S_AXIS_tvalid));
  (* X_CORE_INFO = "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_m02_regslice_0 m02_regslice
       (.aclk(M02_AXIS_ACLK),
        .aresetn(M02_AXIS_ARESETN),
        .m_axis_tdata(M02_AXIS_tdata),
        .m_axis_tdest(M02_AXIS_tdest),
        .m_axis_tid(M02_AXIS_tid),
        .m_axis_tkeep(M02_AXIS_tkeep),
        .m_axis_tlast(M02_AXIS_tlast),
        .m_axis_tready(M02_AXIS_tready),
        .m_axis_tstrb(M02_AXIS_tstrb),
        .m_axis_tuser(M02_AXIS_tuser),
        .m_axis_tvalid(M02_AXIS_tvalid),
        .s_axis_tdata(auto_ss_slidr_to_m02_regslice_TDATA),
        .s_axis_tdest(auto_ss_slidr_to_m02_regslice_TDEST),
        .s_axis_tid(auto_ss_slidr_to_m02_regslice_TID),
        .s_axis_tkeep(auto_ss_slidr_to_m02_regslice_TKEEP),
        .s_axis_tlast(auto_ss_slidr_to_m02_regslice_TLAST),
        .s_axis_tready(auto_ss_slidr_to_m02_regslice_TREADY),
        .s_axis_tstrb(auto_ss_slidr_to_m02_regslice_TSTRB),
        .s_axis_tuser(auto_ss_slidr_to_m02_regslice_TUSER),
        .s_axis_tvalid(auto_ss_slidr_to_m02_regslice_TVALID));
endmodule

module design_1_v_proc_ss_2_1_m04_couplers_imp_KUSD3R
   (S_AXIS_tready,
    M04_AXIS_tvalid,
    M04_AXIS_tdata,
    M04_AXIS_tstrb,
    M04_AXIS_tkeep,
    M04_AXIS_tlast,
    M04_AXIS_tid,
    M04_AXIS_tdest,
    M04_AXIS_tuser,
    ACLK,
    ARESETN,
    S_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tstrb,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tid,
    S_AXIS_tdest,
    S_AXIS_tuser,
    M04_AXIS_ACLK,
    M04_AXIS_ARESETN,
    M04_AXIS_tready);
  output S_AXIS_tready;
  output M04_AXIS_tvalid;
  output [23:0]M04_AXIS_tdata;
  output [2:0]M04_AXIS_tstrb;
  output [2:0]M04_AXIS_tkeep;
  output M04_AXIS_tlast;
  output [0:0]M04_AXIS_tid;
  output [0:0]M04_AXIS_tdest;
  output [0:0]M04_AXIS_tuser;
  input ACLK;
  input ARESETN;
  input S_AXIS_tvalid;
  input [23:0]S_AXIS_tdata;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  input [0:0]S_AXIS_tid;
  input [3:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tuser;
  input M04_AXIS_ACLK;
  input M04_AXIS_ARESETN;
  input M04_AXIS_tready;

  wire ACLK;
  wire ARESETN;
  wire M04_AXIS_ACLK;
  wire M04_AXIS_ARESETN;
  wire [23:0]M04_AXIS_tdata;
  wire [0:0]M04_AXIS_tdest;
  wire [0:0]M04_AXIS_tid;
  wire [2:0]M04_AXIS_tkeep;
  wire M04_AXIS_tlast;
  wire M04_AXIS_tready;
  wire [2:0]M04_AXIS_tstrb;
  wire [0:0]M04_AXIS_tuser;
  wire M04_AXIS_tvalid;
  wire [23:0]S_AXIS_tdata;
  wire [3:0]S_AXIS_tdest;
  wire [0:0]S_AXIS_tid;
  wire [2:0]S_AXIS_tkeep;
  wire S_AXIS_tlast;
  wire S_AXIS_tready;
  wire [2:0]S_AXIS_tstrb;
  wire [0:0]S_AXIS_tuser;
  wire S_AXIS_tvalid;
  wire [23:0]auto_ss_slidr_to_m04_regslice_TDATA;
  wire auto_ss_slidr_to_m04_regslice_TDEST;
  wire auto_ss_slidr_to_m04_regslice_TID;
  wire [2:0]auto_ss_slidr_to_m04_regslice_TKEEP;
  wire auto_ss_slidr_to_m04_regslice_TLAST;
  wire auto_ss_slidr_to_m04_regslice_TREADY;
  wire [2:0]auto_ss_slidr_to_m04_regslice_TSTRB;
  wire auto_ss_slidr_to_m04_regslice_TUSER;
  wire auto_ss_slidr_to_m04_regslice_TVALID;

  (* X_CORE_INFO = "top_bd_d94b_auto_ss_slidr_2,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slidr_2 auto_ss_slidr
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axis_tdata(auto_ss_slidr_to_m04_regslice_TDATA),
        .m_axis_tdest(auto_ss_slidr_to_m04_regslice_TDEST),
        .m_axis_tid(auto_ss_slidr_to_m04_regslice_TID),
        .m_axis_tkeep(auto_ss_slidr_to_m04_regslice_TKEEP),
        .m_axis_tlast(auto_ss_slidr_to_m04_regslice_TLAST),
        .m_axis_tready(auto_ss_slidr_to_m04_regslice_TREADY),
        .m_axis_tstrb(auto_ss_slidr_to_m04_regslice_TSTRB),
        .m_axis_tuser(auto_ss_slidr_to_m04_regslice_TUSER),
        .m_axis_tvalid(auto_ss_slidr_to_m04_regslice_TVALID),
        .s_axis_tdata(S_AXIS_tdata),
        .s_axis_tdest(S_AXIS_tdest),
        .s_axis_tid(S_AXIS_tid),
        .s_axis_tkeep(S_AXIS_tkeep),
        .s_axis_tlast(S_AXIS_tlast),
        .s_axis_tready(S_AXIS_tready),
        .s_axis_tstrb(S_AXIS_tstrb),
        .s_axis_tuser(S_AXIS_tuser),
        .s_axis_tvalid(S_AXIS_tvalid));
  (* X_CORE_INFO = "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_m04_regslice_0 m04_regslice
       (.aclk(M04_AXIS_ACLK),
        .aresetn(M04_AXIS_ARESETN),
        .m_axis_tdata(M04_AXIS_tdata),
        .m_axis_tdest(M04_AXIS_tdest),
        .m_axis_tid(M04_AXIS_tid),
        .m_axis_tkeep(M04_AXIS_tkeep),
        .m_axis_tlast(M04_AXIS_tlast),
        .m_axis_tready(M04_AXIS_tready),
        .m_axis_tstrb(M04_AXIS_tstrb),
        .m_axis_tuser(M04_AXIS_tuser),
        .m_axis_tvalid(M04_AXIS_tvalid),
        .s_axis_tdata(auto_ss_slidr_to_m04_regslice_TDATA),
        .s_axis_tdest(auto_ss_slidr_to_m04_regslice_TDEST),
        .s_axis_tid(auto_ss_slidr_to_m04_regslice_TID),
        .s_axis_tkeep(auto_ss_slidr_to_m04_regslice_TKEEP),
        .s_axis_tlast(auto_ss_slidr_to_m04_regslice_TLAST),
        .s_axis_tready(auto_ss_slidr_to_m04_regslice_TREADY),
        .s_axis_tstrb(auto_ss_slidr_to_m04_regslice_TSTRB),
        .s_axis_tuser(auto_ss_slidr_to_m04_regslice_TUSER),
        .s_axis_tvalid(auto_ss_slidr_to_m04_regslice_TVALID));
endmodule

module design_1_v_proc_ss_2_1_m05_couplers_imp_1KRA590
   (s_axis_tready,
    M05_AXIS_tvalid,
    M05_AXIS_tdata,
    M05_AXIS_ACLK,
    M05_AXIS_ARESETN,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    M05_AXIS_tready);
  output s_axis_tready;
  output M05_AXIS_tvalid;
  output M05_AXIS_tdata;
  input M05_AXIS_ACLK;
  input M05_AXIS_ARESETN;
  input [0:0]m_axis_tvalid;
  input [23:0]m_axis_tdata;
  input [2:0]m_axis_tstrb;
  input [2:0]m_axis_tkeep;
  input [0:0]m_axis_tlast;
  input [0:0]m_axis_tid;
  input [3:0]m_axis_tdest;
  input [0:0]m_axis_tuser;
  input M05_AXIS_tready;

  wire M05_AXIS_ACLK;
  wire M05_AXIS_ARESETN;
  wire M05_AXIS_tdata;
  wire M05_AXIS_tready;
  wire M05_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [3:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire s_axis_tready;
  wire NLW_m05_regslice_m_axis_tlast_UNCONNECTED;
  wire [23:1]NLW_m05_regslice_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_m05_regslice_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_m05_regslice_m_axis_tid_UNCONNECTED;
  wire [2:0]NLW_m05_regslice_m_axis_tkeep_UNCONNECTED;
  wire [2:0]NLW_m05_regslice_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_m05_regslice_m_axis_tuser_UNCONNECTED;

  (* X_CORE_INFO = "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_m05_regslice_0 m05_regslice
       (.aclk(M05_AXIS_ACLK),
        .aresetn(M05_AXIS_ARESETN),
        .m_axis_tdata({NLW_m05_regslice_m_axis_tdata_UNCONNECTED[23:1],M05_AXIS_tdata}),
        .m_axis_tdest(NLW_m05_regslice_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_m05_regslice_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_m05_regslice_m_axis_tkeep_UNCONNECTED[2:0]),
        .m_axis_tlast(NLW_m05_regslice_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(M05_AXIS_tready),
        .m_axis_tstrb(NLW_m05_regslice_m_axis_tstrb_UNCONNECTED[2:0]),
        .m_axis_tuser(NLW_m05_regslice_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(M05_AXIS_tvalid),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tdest(m_axis_tdest),
        .s_axis_tid(m_axis_tid),
        .s_axis_tkeep(m_axis_tkeep),
        .s_axis_tlast(m_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(m_axis_tstrb),
        .s_axis_tuser(m_axis_tuser),
        .s_axis_tvalid(m_axis_tvalid));
endmodule

module design_1_v_proc_ss_2_1_m06_couplers_imp_1851DHS
   (s_axis_tready,
    M06_AXIS_tvalid,
    M06_AXIS_tdata,
    M06_AXIS_ACLK,
    M06_AXIS_ARESETN,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    M06_AXIS_tready);
  output s_axis_tready;
  output M06_AXIS_tvalid;
  output M06_AXIS_tdata;
  input M06_AXIS_ACLK;
  input M06_AXIS_ARESETN;
  input [0:0]m_axis_tvalid;
  input [23:0]m_axis_tdata;
  input [2:0]m_axis_tstrb;
  input [2:0]m_axis_tkeep;
  input [0:0]m_axis_tlast;
  input [0:0]m_axis_tid;
  input [3:0]m_axis_tdest;
  input [0:0]m_axis_tuser;
  input M06_AXIS_tready;

  wire M06_AXIS_ACLK;
  wire M06_AXIS_ARESETN;
  wire M06_AXIS_tdata;
  wire M06_AXIS_tready;
  wire M06_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [3:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire s_axis_tready;
  wire NLW_m06_regslice_m_axis_tlast_UNCONNECTED;
  wire [23:1]NLW_m06_regslice_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_m06_regslice_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_m06_regslice_m_axis_tid_UNCONNECTED;
  wire [2:0]NLW_m06_regslice_m_axis_tkeep_UNCONNECTED;
  wire [2:0]NLW_m06_regslice_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_m06_regslice_m_axis_tuser_UNCONNECTED;

  (* X_CORE_INFO = "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_m06_regslice_0 m06_regslice
       (.aclk(M06_AXIS_ACLK),
        .aresetn(M06_AXIS_ARESETN),
        .m_axis_tdata({NLW_m06_regslice_m_axis_tdata_UNCONNECTED[23:1],M06_AXIS_tdata}),
        .m_axis_tdest(NLW_m06_regslice_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_m06_regslice_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_m06_regslice_m_axis_tkeep_UNCONNECTED[2:0]),
        .m_axis_tlast(NLW_m06_regslice_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(M06_AXIS_tready),
        .m_axis_tstrb(NLW_m06_regslice_m_axis_tstrb_UNCONNECTED[2:0]),
        .m_axis_tuser(NLW_m06_regslice_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(M06_AXIS_tvalid),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tdest(m_axis_tdest),
        .s_axis_tid(m_axis_tid),
        .s_axis_tkeep(m_axis_tkeep),
        .s_axis_tlast(m_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(m_axis_tstrb),
        .s_axis_tuser(m_axis_tuser),
        .s_axis_tvalid(m_axis_tvalid));
endmodule

module design_1_v_proc_ss_2_1_m07_couplers_imp_6UQF2R
   (s_axis_tready,
    M07_AXIS_tvalid,
    M07_AXIS_tdata,
    M07_AXIS_ACLK,
    M07_AXIS_ARESETN,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    M07_AXIS_tready);
  output s_axis_tready;
  output M07_AXIS_tvalid;
  output M07_AXIS_tdata;
  input M07_AXIS_ACLK;
  input M07_AXIS_ARESETN;
  input [0:0]m_axis_tvalid;
  input [23:0]m_axis_tdata;
  input [2:0]m_axis_tstrb;
  input [2:0]m_axis_tkeep;
  input [0:0]m_axis_tlast;
  input [0:0]m_axis_tid;
  input [3:0]m_axis_tdest;
  input [0:0]m_axis_tuser;
  input M07_AXIS_tready;

  wire M07_AXIS_ACLK;
  wire M07_AXIS_ARESETN;
  wire M07_AXIS_tdata;
  wire M07_AXIS_tready;
  wire M07_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [3:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire [0:0]m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire [0:0]m_axis_tvalid;
  wire s_axis_tready;
  wire NLW_m07_regslice_m_axis_tlast_UNCONNECTED;
  wire [23:1]NLW_m07_regslice_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_m07_regslice_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_m07_regslice_m_axis_tid_UNCONNECTED;
  wire [2:0]NLW_m07_regslice_m_axis_tkeep_UNCONNECTED;
  wire [2:0]NLW_m07_regslice_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_m07_regslice_m_axis_tuser_UNCONNECTED;

  (* X_CORE_INFO = "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_m07_regslice_0 m07_regslice
       (.aclk(M07_AXIS_ACLK),
        .aresetn(M07_AXIS_ARESETN),
        .m_axis_tdata({NLW_m07_regslice_m_axis_tdata_UNCONNECTED[23:1],M07_AXIS_tdata}),
        .m_axis_tdest(NLW_m07_regslice_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_m07_regslice_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_m07_regslice_m_axis_tkeep_UNCONNECTED[2:0]),
        .m_axis_tlast(NLW_m07_regslice_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(M07_AXIS_tready),
        .m_axis_tstrb(NLW_m07_regslice_m_axis_tstrb_UNCONNECTED[2:0]),
        .m_axis_tuser(NLW_m07_regslice_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(M07_AXIS_tvalid),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tdest(m_axis_tdest),
        .s_axis_tid(m_axis_tid),
        .s_axis_tkeep(m_axis_tkeep),
        .s_axis_tlast(m_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(m_axis_tstrb),
        .s_axis_tuser(m_axis_tuser),
        .s_axis_tvalid(m_axis_tvalid));
endmodule

module design_1_v_proc_ss_2_1_m08_couplers_imp_1PNFOXY
   (S_AXIS_tready,
    M08_AXIS_tvalid,
    M08_AXIS_tdata,
    M08_AXIS_tstrb,
    M08_AXIS_tkeep,
    M08_AXIS_tlast,
    M08_AXIS_tid,
    M08_AXIS_tdest,
    M08_AXIS_tuser,
    ACLK,
    ARESETN,
    S_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tstrb,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tid,
    S_AXIS_tdest,
    S_AXIS_tuser,
    M08_AXIS_ACLK,
    M08_AXIS_ARESETN,
    M08_AXIS_tready);
  output S_AXIS_tready;
  output M08_AXIS_tvalid;
  output [23:0]M08_AXIS_tdata;
  output [2:0]M08_AXIS_tstrb;
  output [2:0]M08_AXIS_tkeep;
  output M08_AXIS_tlast;
  output [0:0]M08_AXIS_tid;
  output [0:0]M08_AXIS_tdest;
  output [0:0]M08_AXIS_tuser;
  input ACLK;
  input ARESETN;
  input S_AXIS_tvalid;
  input [23:0]S_AXIS_tdata;
  input [2:0]S_AXIS_tstrb;
  input [2:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  input [0:0]S_AXIS_tid;
  input [3:0]S_AXIS_tdest;
  input [0:0]S_AXIS_tuser;
  input M08_AXIS_ACLK;
  input M08_AXIS_ARESETN;
  input M08_AXIS_tready;

  wire ACLK;
  wire ARESETN;
  wire M08_AXIS_ACLK;
  wire M08_AXIS_ARESETN;
  wire [23:0]M08_AXIS_tdata;
  wire [0:0]M08_AXIS_tdest;
  wire [0:0]M08_AXIS_tid;
  wire [2:0]M08_AXIS_tkeep;
  wire M08_AXIS_tlast;
  wire M08_AXIS_tready;
  wire [2:0]M08_AXIS_tstrb;
  wire [0:0]M08_AXIS_tuser;
  wire M08_AXIS_tvalid;
  wire [23:0]S_AXIS_tdata;
  wire [3:0]S_AXIS_tdest;
  wire [0:0]S_AXIS_tid;
  wire [2:0]S_AXIS_tkeep;
  wire S_AXIS_tlast;
  wire S_AXIS_tready;
  wire [2:0]S_AXIS_tstrb;
  wire [0:0]S_AXIS_tuser;
  wire S_AXIS_tvalid;
  wire [23:0]auto_ss_slidr_to_m08_regslice_TDATA;
  wire auto_ss_slidr_to_m08_regslice_TDEST;
  wire auto_ss_slidr_to_m08_regslice_TID;
  wire [2:0]auto_ss_slidr_to_m08_regslice_TKEEP;
  wire auto_ss_slidr_to_m08_regslice_TLAST;
  wire auto_ss_slidr_to_m08_regslice_TREADY;
  wire [2:0]auto_ss_slidr_to_m08_regslice_TSTRB;
  wire auto_ss_slidr_to_m08_regslice_TUSER;
  wire auto_ss_slidr_to_m08_regslice_TVALID;

  (* X_CORE_INFO = "top_bd_d94b_auto_ss_slidr_3,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slidr_3 auto_ss_slidr
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axis_tdata(auto_ss_slidr_to_m08_regslice_TDATA),
        .m_axis_tdest(auto_ss_slidr_to_m08_regslice_TDEST),
        .m_axis_tid(auto_ss_slidr_to_m08_regslice_TID),
        .m_axis_tkeep(auto_ss_slidr_to_m08_regslice_TKEEP),
        .m_axis_tlast(auto_ss_slidr_to_m08_regslice_TLAST),
        .m_axis_tready(auto_ss_slidr_to_m08_regslice_TREADY),
        .m_axis_tstrb(auto_ss_slidr_to_m08_regslice_TSTRB),
        .m_axis_tuser(auto_ss_slidr_to_m08_regslice_TUSER),
        .m_axis_tvalid(auto_ss_slidr_to_m08_regslice_TVALID),
        .s_axis_tdata(S_AXIS_tdata),
        .s_axis_tdest(S_AXIS_tdest),
        .s_axis_tid(S_AXIS_tid),
        .s_axis_tkeep(S_AXIS_tkeep),
        .s_axis_tlast(S_AXIS_tlast),
        .s_axis_tready(S_AXIS_tready),
        .s_axis_tstrb(S_AXIS_tstrb),
        .s_axis_tuser(S_AXIS_tuser),
        .s_axis_tvalid(S_AXIS_tvalid));
  (* X_CORE_INFO = "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_m08_regslice_0 m08_regslice
       (.aclk(M08_AXIS_ACLK),
        .aresetn(M08_AXIS_ARESETN),
        .m_axis_tdata(M08_AXIS_tdata),
        .m_axis_tdest(M08_AXIS_tdest),
        .m_axis_tid(M08_AXIS_tid),
        .m_axis_tkeep(M08_AXIS_tkeep),
        .m_axis_tlast(M08_AXIS_tlast),
        .m_axis_tready(M08_AXIS_tready),
        .m_axis_tstrb(M08_AXIS_tstrb),
        .m_axis_tuser(M08_AXIS_tuser),
        .m_axis_tvalid(M08_AXIS_tvalid),
        .s_axis_tdata(auto_ss_slidr_to_m08_regslice_TDATA),
        .s_axis_tdest(auto_ss_slidr_to_m08_regslice_TDEST),
        .s_axis_tid(auto_ss_slidr_to_m08_regslice_TID),
        .s_axis_tkeep(auto_ss_slidr_to_m08_regslice_TKEEP),
        .s_axis_tlast(auto_ss_slidr_to_m08_regslice_TLAST),
        .s_axis_tready(auto_ss_slidr_to_m08_regslice_TREADY),
        .s_axis_tstrb(auto_ss_slidr_to_m08_regslice_TSTRB),
        .s_axis_tuser(auto_ss_slidr_to_m08_regslice_TUSER),
        .s_axis_tvalid(auto_ss_slidr_to_m08_regslice_TVALID));
endmodule

module design_1_v_proc_ss_2_1_s00_couplers_imp_1H11R7O
   (S00_AXIS_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    S00_AXIS_ACLK,
    S00_AXIS_ARESETN,
    S00_AXIS_tvalid,
    S00_AXIS_tdata,
    S00_AXIS_tstrb,
    S00_AXIS_tkeep,
    S00_AXIS_tlast,
    S00_AXIS_tid,
    S00_AXIS_tdest,
    S00_AXIS_tuser,
    s_axis_tready);
  output [0:0]S00_AXIS_tready;
  output m_axis_tvalid;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  input S00_AXIS_ACLK;
  input S00_AXIS_ARESETN;
  input [0:0]S00_AXIS_tvalid;
  input [23:0]S00_AXIS_tdata;
  input [2:0]S00_AXIS_tstrb;
  input [2:0]S00_AXIS_tkeep;
  input [0:0]S00_AXIS_tlast;
  input [0:0]S00_AXIS_tid;
  input [0:0]S00_AXIS_tdest;
  input [0:0]S00_AXIS_tuser;
  input [0:0]s_axis_tready;

  wire S00_AXIS_ACLK;
  wire S00_AXIS_ARESETN;
  wire [23:0]S00_AXIS_tdata;
  wire [0:0]S00_AXIS_tdest;
  wire [0:0]S00_AXIS_tid;
  wire [2:0]S00_AXIS_tkeep;
  wire [0:0]S00_AXIS_tlast;
  wire [0:0]S00_AXIS_tready;
  wire [2:0]S00_AXIS_tstrb;
  wire [0:0]S00_AXIS_tuser;
  wire [0:0]S00_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [3:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [0:0]s_axis_tready;

  (* X_CORE_INFO = "top_bd_d94b_auto_ss_slid_0,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slid_0 auto_ss_slid
       (.aclk(S00_AXIS_ACLK),
        .aresetn(S00_AXIS_ARESETN),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(s_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(S00_AXIS_tdata),
        .s_axis_tdest(S00_AXIS_tdest),
        .s_axis_tid(S00_AXIS_tid),
        .s_axis_tkeep(S00_AXIS_tkeep),
        .s_axis_tlast(S00_AXIS_tlast),
        .s_axis_tready(S00_AXIS_tready),
        .s_axis_tstrb(S00_AXIS_tstrb),
        .s_axis_tuser(S00_AXIS_tuser),
        .s_axis_tvalid(S00_AXIS_tvalid));
endmodule

module design_1_v_proc_ss_2_1_s01_couplers_imp_FQJVWN
   (S01_AXIS_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    S01_AXIS_ACLK,
    S01_AXIS_ARESETN,
    S01_AXIS_tvalid,
    S01_AXIS_tdata,
    S01_AXIS_tstrb,
    S01_AXIS_tkeep,
    S01_AXIS_tlast,
    S01_AXIS_tid,
    S01_AXIS_tdest,
    S01_AXIS_tuser,
    s_axis_tready);
  output [0:0]S01_AXIS_tready;
  output m_axis_tvalid;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  input S01_AXIS_ACLK;
  input S01_AXIS_ARESETN;
  input [0:0]S01_AXIS_tvalid;
  input [23:0]S01_AXIS_tdata;
  input [2:0]S01_AXIS_tstrb;
  input [2:0]S01_AXIS_tkeep;
  input [0:0]S01_AXIS_tlast;
  input [0:0]S01_AXIS_tid;
  input [0:0]S01_AXIS_tdest;
  input [0:0]S01_AXIS_tuser;
  input [0:0]s_axis_tready;

  wire S01_AXIS_ACLK;
  wire S01_AXIS_ARESETN;
  wire [23:0]S01_AXIS_tdata;
  wire [0:0]S01_AXIS_tdest;
  wire [0:0]S01_AXIS_tid;
  wire [2:0]S01_AXIS_tkeep;
  wire [0:0]S01_AXIS_tlast;
  wire [0:0]S01_AXIS_tready;
  wire [2:0]S01_AXIS_tstrb;
  wire [0:0]S01_AXIS_tuser;
  wire [0:0]S01_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [3:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [0:0]s_axis_tready;

  (* X_CORE_INFO = "top_bd_d94b_auto_ss_slid_1,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slid_1 auto_ss_slid
       (.aclk(S01_AXIS_ACLK),
        .aresetn(S01_AXIS_ARESETN),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(s_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(S01_AXIS_tdata),
        .s_axis_tdest(S01_AXIS_tdest),
        .s_axis_tid(S01_AXIS_tid),
        .s_axis_tkeep(S01_AXIS_tkeep),
        .s_axis_tlast(S01_AXIS_tlast),
        .s_axis_tready(S01_AXIS_tready),
        .s_axis_tstrb(S01_AXIS_tstrb),
        .s_axis_tuser(S01_AXIS_tuser),
        .s_axis_tvalid(S01_AXIS_tvalid));
endmodule

module design_1_v_proc_ss_2_1_s02_couplers_imp_TQ4P1F
   (S02_AXIS_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    S02_AXIS_ACLK,
    S02_AXIS_ARESETN,
    S02_AXIS_tvalid,
    S02_AXIS_tdata,
    S02_AXIS_tstrb,
    S02_AXIS_tkeep,
    S02_AXIS_tlast,
    S02_AXIS_tid,
    S02_AXIS_tdest,
    S02_AXIS_tuser,
    s_axis_tready);
  output [0:0]S02_AXIS_tready;
  output m_axis_tvalid;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  input S02_AXIS_ACLK;
  input S02_AXIS_ARESETN;
  input [0:0]S02_AXIS_tvalid;
  input [23:0]S02_AXIS_tdata;
  input [2:0]S02_AXIS_tstrb;
  input [2:0]S02_AXIS_tkeep;
  input [0:0]S02_AXIS_tlast;
  input [0:0]S02_AXIS_tid;
  input [0:0]S02_AXIS_tdest;
  input [0:0]S02_AXIS_tuser;
  input [0:0]s_axis_tready;

  wire S02_AXIS_ACLK;
  wire S02_AXIS_ARESETN;
  wire [23:0]S02_AXIS_tdata;
  wire [0:0]S02_AXIS_tdest;
  wire [0:0]S02_AXIS_tid;
  wire [2:0]S02_AXIS_tkeep;
  wire [0:0]S02_AXIS_tlast;
  wire [0:0]S02_AXIS_tready;
  wire [2:0]S02_AXIS_tstrb;
  wire [0:0]S02_AXIS_tuser;
  wire [0:0]S02_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [3:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [0:0]s_axis_tready;

  (* X_CORE_INFO = "top_bd_d94b_auto_ss_slid_2,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slid_2 auto_ss_slid
       (.aclk(S02_AXIS_ACLK),
        .aresetn(S02_AXIS_ARESETN),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(s_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(S02_AXIS_tdata),
        .s_axis_tdest(S02_AXIS_tdest),
        .s_axis_tid(S02_AXIS_tid),
        .s_axis_tkeep(S02_AXIS_tkeep),
        .s_axis_tlast(S02_AXIS_tlast),
        .s_axis_tready(S02_AXIS_tready),
        .s_axis_tstrb(S02_AXIS_tstrb),
        .s_axis_tuser(S02_AXIS_tuser),
        .s_axis_tvalid(S02_AXIS_tvalid));
endmodule

module design_1_v_proc_ss_2_1_s04_couplers_imp_1KMLEIZ
   (S04_AXIS_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    S04_AXIS_ACLK,
    S04_AXIS_ARESETN,
    S04_AXIS_tvalid,
    S04_AXIS_tdata,
    S04_AXIS_tstrb,
    S04_AXIS_tkeep,
    S04_AXIS_tlast,
    S04_AXIS_tid,
    S04_AXIS_tdest,
    S04_AXIS_tuser,
    s_axis_tready);
  output [0:0]S04_AXIS_tready;
  output m_axis_tvalid;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  input S04_AXIS_ACLK;
  input S04_AXIS_ARESETN;
  input [0:0]S04_AXIS_tvalid;
  input [23:0]S04_AXIS_tdata;
  input [2:0]S04_AXIS_tstrb;
  input [2:0]S04_AXIS_tkeep;
  input [0:0]S04_AXIS_tlast;
  input [0:0]S04_AXIS_tid;
  input [0:0]S04_AXIS_tdest;
  input [0:0]S04_AXIS_tuser;
  input [0:0]s_axis_tready;

  wire S04_AXIS_ACLK;
  wire S04_AXIS_ARESETN;
  wire [23:0]S04_AXIS_tdata;
  wire [0:0]S04_AXIS_tdest;
  wire [0:0]S04_AXIS_tid;
  wire [2:0]S04_AXIS_tkeep;
  wire [0:0]S04_AXIS_tlast;
  wire [0:0]S04_AXIS_tready;
  wire [2:0]S04_AXIS_tstrb;
  wire [0:0]S04_AXIS_tuser;
  wire [0:0]S04_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [3:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [0:0]s_axis_tready;

  (* X_CORE_INFO = "top_bd_d94b_auto_ss_slid_3,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slid_3 auto_ss_slid
       (.aclk(S04_AXIS_ACLK),
        .aresetn(S04_AXIS_ARESETN),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(s_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(S04_AXIS_tdata),
        .s_axis_tdest(S04_AXIS_tdest),
        .s_axis_tid(S04_AXIS_tid),
        .s_axis_tkeep(S04_AXIS_tkeep),
        .s_axis_tlast(S04_AXIS_tlast),
        .s_axis_tready(S04_AXIS_tready),
        .s_axis_tstrb(S04_AXIS_tstrb),
        .s_axis_tuser(S04_AXIS_tuser),
        .s_axis_tvalid(S04_AXIS_tvalid));
endmodule

module design_1_v_proc_ss_2_1_s08_couplers_imp_OPKDJU
   (S08_AXIS_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    S08_AXIS_ACLK,
    S08_AXIS_ARESETN,
    S08_AXIS_tvalid,
    S08_AXIS_tdata,
    S08_AXIS_tstrb,
    S08_AXIS_tkeep,
    S08_AXIS_tlast,
    S08_AXIS_tid,
    S08_AXIS_tdest,
    S08_AXIS_tuser,
    s_axis_tready);
  output [0:0]S08_AXIS_tready;
  output m_axis_tvalid;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  input S08_AXIS_ACLK;
  input S08_AXIS_ARESETN;
  input [0:0]S08_AXIS_tvalid;
  input [23:0]S08_AXIS_tdata;
  input [2:0]S08_AXIS_tstrb;
  input [2:0]S08_AXIS_tkeep;
  input [0:0]S08_AXIS_tlast;
  input [0:0]S08_AXIS_tid;
  input [0:0]S08_AXIS_tdest;
  input [0:0]S08_AXIS_tuser;
  input [0:0]s_axis_tready;

  wire S08_AXIS_ACLK;
  wire S08_AXIS_ARESETN;
  wire [23:0]S08_AXIS_tdata;
  wire [0:0]S08_AXIS_tdest;
  wire [0:0]S08_AXIS_tid;
  wire [2:0]S08_AXIS_tkeep;
  wire [0:0]S08_AXIS_tlast;
  wire [0:0]S08_AXIS_tready;
  wire [2:0]S08_AXIS_tstrb;
  wire [0:0]S08_AXIS_tuser;
  wire [0:0]S08_AXIS_tvalid;
  wire [23:0]m_axis_tdata;
  wire [3:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [2:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire [2:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [0:0]s_axis_tready;

  (* X_CORE_INFO = "top_bd_d94b_auto_ss_slid_4,Vivado 2020.1" *) 
  (* syn_black_box = "TRUE" *) 
  design_1_v_proc_ss_2_1_bd_d94b_auto_ss_slid_4 auto_ss_slid
       (.aclk(S08_AXIS_ACLK),
        .aresetn(S08_AXIS_ARESETN),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(s_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(S08_AXIS_tdata),
        .s_axis_tdest(S08_AXIS_tdest),
        .s_axis_tid(S08_AXIS_tid),
        .s_axis_tkeep(S08_AXIS_tkeep),
        .s_axis_tlast(S08_AXIS_tlast),
        .s_axis_tready(S08_AXIS_tready),
        .s_axis_tstrb(S08_AXIS_tstrb),
        .s_axis_tuser(S08_AXIS_tuser),
        .s_axis_tvalid(S08_AXIS_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
