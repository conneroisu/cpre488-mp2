-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon Mar 10 00:07:31 2025
-- Host        : CO2041-04 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_v_proc_ss_0_3_sim_netlist.vhdl
-- Design      : design_1_v_proc_ss_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_proc_ss_ip_aresetn_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_proc_ss_ip_aresetn_0 : entity is "bd_d86b_proc_ss_ip_aresetn_0,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_proc_ss_ip_aresetn_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_proc_ss_ip_aresetn_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_proc_ss_ip_aresetn_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_proc_ss_ip_aresetn_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Dout(0) <= \^din\(1);
  \^din\(1) <= Din(1);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_vid_in_aresetn_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_vid_in_aresetn_0 : entity is "bd_d86b_vid_in_aresetn_0,xlslice_v1_0_2_xlslice,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_vid_in_aresetn_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_vid_in_aresetn_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_vid_in_aresetn_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_vid_in_aresetn_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m00_couplers_imp_3A81M5 is
  port (
    s_axis_tready : out STD_LOGIC;
    M00_AXIS_tvalid : out STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M00_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m00_couplers_imp_3A81M5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m00_couplers_imp_3A81M5 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m00_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m00_regslice_0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m00_regslice : label is "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of m00_regslice : label is "TRUE";
begin
m00_regslice: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m00_regslice_0
     port map (
      aclk => M00_AXIS_ACLK,
      aresetn => M00_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => M00_AXIS_tdata(23 downto 0),
      m_axis_tdest(3 downto 0) => M00_AXIS_tdest(3 downto 0),
      m_axis_tid(0) => M00_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M00_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M00_AXIS_tlast,
      m_axis_tready => M00_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M00_AXIS_tstrb(2 downto 0),
      m_axis_tuser(0) => M00_AXIS_tuser(0),
      m_axis_tvalid => M00_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdest(3 downto 0) => m_axis_tdest(3 downto 0),
      s_axis_tid(0) => m_axis_tid(0),
      s_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      s_axis_tlast => m_axis_tlast(0),
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      s_axis_tuser(0) => m_axis_tuser(0),
      s_axis_tvalid => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m01_couplers_imp_12YX0MM is
  port (
    S_AXIS_tready : out STD_LOGIC;
    M01_AXIS_tvalid : out STD_LOGIC;
    M01_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M01_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXIS_tlast : out STD_LOGIC;
    M01_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXIS_ACLK : in STD_LOGIC;
    M01_AXIS_ARESETN : in STD_LOGIC;
    M01_AXIS_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m01_couplers_imp_12YX0MM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m01_couplers_imp_12YX0MM is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slidr_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slidr_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m01_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m01_regslice_0;
  signal auto_ss_slidr_to_m01_regslice_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ss_slidr_to_m01_regslice_TDEST : STD_LOGIC;
  signal auto_ss_slidr_to_m01_regslice_TID : STD_LOGIC;
  signal auto_ss_slidr_to_m01_regslice_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m01_regslice_TLAST : STD_LOGIC;
  signal auto_ss_slidr_to_m01_regslice_TREADY : STD_LOGIC;
  signal auto_ss_slidr_to_m01_regslice_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m01_regslice_TUSER : STD_LOGIC;
  signal auto_ss_slidr_to_m01_regslice_TVALID : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_ss_slidr : label is "top_bd_d86b_auto_ss_slidr_0,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of auto_ss_slidr : label is "TRUE";
  attribute X_CORE_INFO of m01_regslice : label is "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1";
  attribute syn_black_box of m01_regslice : label is "TRUE";
begin
auto_ss_slidr: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slidr_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axis_tdata(23 downto 0) => auto_ss_slidr_to_m01_regslice_TDATA(23 downto 0),
      m_axis_tdest(0) => auto_ss_slidr_to_m01_regslice_TDEST,
      m_axis_tid(0) => auto_ss_slidr_to_m01_regslice_TID,
      m_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m01_regslice_TKEEP(2 downto 0),
      m_axis_tlast => auto_ss_slidr_to_m01_regslice_TLAST,
      m_axis_tready => auto_ss_slidr_to_m01_regslice_TREADY,
      m_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m01_regslice_TSTRB(2 downto 0),
      m_axis_tuser(0) => auto_ss_slidr_to_m01_regslice_TUSER,
      m_axis_tvalid => auto_ss_slidr_to_m01_regslice_TVALID,
      s_axis_tdata(23 downto 0) => S_AXIS_tdata(23 downto 0),
      s_axis_tdest(3 downto 0) => S_AXIS_tdest(3 downto 0),
      s_axis_tid(0) => S_AXIS_tid(0),
      s_axis_tkeep(2 downto 0) => S_AXIS_tkeep(2 downto 0),
      s_axis_tlast => S_AXIS_tlast,
      s_axis_tready => S_AXIS_tready,
      s_axis_tstrb(2 downto 0) => S_AXIS_tstrb(2 downto 0),
      s_axis_tuser(0) => S_AXIS_tuser(0),
      s_axis_tvalid => S_AXIS_tvalid
    );
m01_regslice: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m01_regslice_0
     port map (
      aclk => M01_AXIS_ACLK,
      aresetn => M01_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => M01_AXIS_tdata(23 downto 0),
      m_axis_tdest(0) => M01_AXIS_tdest(0),
      m_axis_tid(0) => M01_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M01_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M01_AXIS_tlast,
      m_axis_tready => M01_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M01_AXIS_tstrb(2 downto 0),
      m_axis_tuser(0) => M01_AXIS_tuser(0),
      m_axis_tvalid => M01_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => auto_ss_slidr_to_m01_regslice_TDATA(23 downto 0),
      s_axis_tdest(0) => auto_ss_slidr_to_m01_regslice_TDEST,
      s_axis_tid(0) => auto_ss_slidr_to_m01_regslice_TID,
      s_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m01_regslice_TKEEP(2 downto 0),
      s_axis_tlast => auto_ss_slidr_to_m01_regslice_TLAST,
      s_axis_tready => auto_ss_slidr_to_m01_regslice_TREADY,
      s_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m01_regslice_TSTRB(2 downto 0),
      s_axis_tuser(0) => auto_ss_slidr_to_m01_regslice_TUSER,
      s_axis_tvalid => auto_ss_slidr_to_m01_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m02_couplers_imp_1Q4L9T6 is
  port (
    S_AXIS_tready : out STD_LOGIC;
    M02_AXIS_tvalid : out STD_LOGIC;
    M02_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M02_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXIS_tlast : out STD_LOGIC;
    M02_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXIS_ACLK : in STD_LOGIC;
    M02_AXIS_ARESETN : in STD_LOGIC;
    M02_AXIS_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m02_couplers_imp_1Q4L9T6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m02_couplers_imp_1Q4L9T6 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slidr_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slidr_1;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m02_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m02_regslice_0;
  signal auto_ss_slidr_to_m02_regslice_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ss_slidr_to_m02_regslice_TDEST : STD_LOGIC;
  signal auto_ss_slidr_to_m02_regslice_TID : STD_LOGIC;
  signal auto_ss_slidr_to_m02_regslice_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m02_regslice_TLAST : STD_LOGIC;
  signal auto_ss_slidr_to_m02_regslice_TREADY : STD_LOGIC;
  signal auto_ss_slidr_to_m02_regslice_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m02_regslice_TUSER : STD_LOGIC;
  signal auto_ss_slidr_to_m02_regslice_TVALID : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_ss_slidr : label is "top_bd_d86b_auto_ss_slidr_1,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of auto_ss_slidr : label is "TRUE";
  attribute X_CORE_INFO of m02_regslice : label is "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1";
  attribute syn_black_box of m02_regslice : label is "TRUE";
begin
auto_ss_slidr: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slidr_1
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axis_tdata(23 downto 0) => auto_ss_slidr_to_m02_regslice_TDATA(23 downto 0),
      m_axis_tdest(0) => auto_ss_slidr_to_m02_regslice_TDEST,
      m_axis_tid(0) => auto_ss_slidr_to_m02_regslice_TID,
      m_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m02_regslice_TKEEP(2 downto 0),
      m_axis_tlast => auto_ss_slidr_to_m02_regslice_TLAST,
      m_axis_tready => auto_ss_slidr_to_m02_regslice_TREADY,
      m_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m02_regslice_TSTRB(2 downto 0),
      m_axis_tuser(0) => auto_ss_slidr_to_m02_regslice_TUSER,
      m_axis_tvalid => auto_ss_slidr_to_m02_regslice_TVALID,
      s_axis_tdata(23 downto 0) => S_AXIS_tdata(23 downto 0),
      s_axis_tdest(3 downto 0) => S_AXIS_tdest(3 downto 0),
      s_axis_tid(0) => S_AXIS_tid(0),
      s_axis_tkeep(2 downto 0) => S_AXIS_tkeep(2 downto 0),
      s_axis_tlast => S_AXIS_tlast,
      s_axis_tready => S_AXIS_tready,
      s_axis_tstrb(2 downto 0) => S_AXIS_tstrb(2 downto 0),
      s_axis_tuser(0) => S_AXIS_tuser(0),
      s_axis_tvalid => S_AXIS_tvalid
    );
m02_regslice: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m02_regslice_0
     port map (
      aclk => M02_AXIS_ACLK,
      aresetn => M02_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => M02_AXIS_tdata(23 downto 0),
      m_axis_tdest(0) => M02_AXIS_tdest(0),
      m_axis_tid(0) => M02_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M02_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M02_AXIS_tlast,
      m_axis_tready => M02_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M02_AXIS_tstrb(2 downto 0),
      m_axis_tuser(0) => M02_AXIS_tuser(0),
      m_axis_tvalid => M02_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => auto_ss_slidr_to_m02_regslice_TDATA(23 downto 0),
      s_axis_tdest(0) => auto_ss_slidr_to_m02_regslice_TDEST,
      s_axis_tid(0) => auto_ss_slidr_to_m02_regslice_TID,
      s_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m02_regslice_TKEEP(2 downto 0),
      s_axis_tlast => auto_ss_slidr_to_m02_regslice_TLAST,
      s_axis_tready => auto_ss_slidr_to_m02_regslice_TREADY,
      s_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m02_regslice_TSTRB(2 downto 0),
      s_axis_tuser(0) => auto_ss_slidr_to_m02_regslice_TUSER,
      s_axis_tvalid => auto_ss_slidr_to_m02_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m04_couplers_imp_XJAW2Q is
  port (
    S_AXIS_tready : out STD_LOGIC;
    M04_AXIS_tvalid : out STD_LOGIC;
    M04_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M04_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXIS_tlast : out STD_LOGIC;
    M04_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXIS_ACLK : in STD_LOGIC;
    M04_AXIS_ARESETN : in STD_LOGIC;
    M04_AXIS_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m04_couplers_imp_XJAW2Q;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m04_couplers_imp_XJAW2Q is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slidr_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slidr_2;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m04_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m04_regslice_0;
  signal auto_ss_slidr_to_m04_regslice_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ss_slidr_to_m04_regslice_TDEST : STD_LOGIC;
  signal auto_ss_slidr_to_m04_regslice_TID : STD_LOGIC;
  signal auto_ss_slidr_to_m04_regslice_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m04_regslice_TLAST : STD_LOGIC;
  signal auto_ss_slidr_to_m04_regslice_TREADY : STD_LOGIC;
  signal auto_ss_slidr_to_m04_regslice_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m04_regslice_TUSER : STD_LOGIC;
  signal auto_ss_slidr_to_m04_regslice_TVALID : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_ss_slidr : label is "top_bd_d86b_auto_ss_slidr_2,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of auto_ss_slidr : label is "TRUE";
  attribute X_CORE_INFO of m04_regslice : label is "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1";
  attribute syn_black_box of m04_regslice : label is "TRUE";
begin
auto_ss_slidr: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slidr_2
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axis_tdata(23 downto 0) => auto_ss_slidr_to_m04_regslice_TDATA(23 downto 0),
      m_axis_tdest(0) => auto_ss_slidr_to_m04_regslice_TDEST,
      m_axis_tid(0) => auto_ss_slidr_to_m04_regslice_TID,
      m_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m04_regslice_TKEEP(2 downto 0),
      m_axis_tlast => auto_ss_slidr_to_m04_regslice_TLAST,
      m_axis_tready => auto_ss_slidr_to_m04_regslice_TREADY,
      m_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m04_regslice_TSTRB(2 downto 0),
      m_axis_tuser(0) => auto_ss_slidr_to_m04_regslice_TUSER,
      m_axis_tvalid => auto_ss_slidr_to_m04_regslice_TVALID,
      s_axis_tdata(23 downto 0) => S_AXIS_tdata(23 downto 0),
      s_axis_tdest(3 downto 0) => S_AXIS_tdest(3 downto 0),
      s_axis_tid(0) => S_AXIS_tid(0),
      s_axis_tkeep(2 downto 0) => S_AXIS_tkeep(2 downto 0),
      s_axis_tlast => S_AXIS_tlast,
      s_axis_tready => S_AXIS_tready,
      s_axis_tstrb(2 downto 0) => S_AXIS_tstrb(2 downto 0),
      s_axis_tuser(0) => S_AXIS_tuser(0),
      s_axis_tvalid => S_AXIS_tvalid
    );
m04_regslice: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m04_regslice_0
     port map (
      aclk => M04_AXIS_ACLK,
      aresetn => M04_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => M04_AXIS_tdata(23 downto 0),
      m_axis_tdest(0) => M04_AXIS_tdest(0),
      m_axis_tid(0) => M04_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M04_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M04_AXIS_tlast,
      m_axis_tready => M04_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M04_AXIS_tstrb(2 downto 0),
      m_axis_tuser(0) => M04_AXIS_tuser(0),
      m_axis_tvalid => M04_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => auto_ss_slidr_to_m04_regslice_TDATA(23 downto 0),
      s_axis_tdest(0) => auto_ss_slidr_to_m04_regslice_TDEST,
      s_axis_tid(0) => auto_ss_slidr_to_m04_regslice_TID,
      s_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m04_regslice_TKEEP(2 downto 0),
      s_axis_tlast => auto_ss_slidr_to_m04_regslice_TLAST,
      s_axis_tready => auto_ss_slidr_to_m04_regslice_TREADY,
      s_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m04_regslice_TSTRB(2 downto 0),
      s_axis_tuser(0) => auto_ss_slidr_to_m04_regslice_TUSER,
      s_axis_tvalid => auto_ss_slidr_to_m04_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m05_couplers_imp_1YVXE3L is
  port (
    s_axis_tready : out STD_LOGIC;
    M05_AXIS_tvalid : out STD_LOGIC;
    M05_AXIS_tdata : out STD_LOGIC;
    M05_AXIS_ACLK : in STD_LOGIC;
    M05_AXIS_ARESETN : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXIS_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m05_couplers_imp_1YVXE3L;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m05_couplers_imp_1YVXE3L is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m05_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m05_regslice_0;
  signal NLW_m05_regslice_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_m05_regslice_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal NLW_m05_regslice_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m05_regslice_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_m05_regslice_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m05_regslice_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m05_regslice_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m05_regslice : label is "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of m05_regslice : label is "TRUE";
begin
m05_regslice: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m05_regslice_0
     port map (
      aclk => M05_AXIS_ACLK,
      aresetn => M05_AXIS_ARESETN,
      m_axis_tdata(23 downto 1) => NLW_m05_regslice_m_axis_tdata_UNCONNECTED(23 downto 1),
      m_axis_tdata(0) => M05_AXIS_tdata,
      m_axis_tdest(3 downto 0) => NLW_m05_regslice_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(0) => NLW_m05_regslice_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(2 downto 0) => NLW_m05_regslice_m_axis_tkeep_UNCONNECTED(2 downto 0),
      m_axis_tlast => NLW_m05_regslice_m_axis_tlast_UNCONNECTED,
      m_axis_tready => M05_AXIS_tready,
      m_axis_tstrb(2 downto 0) => NLW_m05_regslice_m_axis_tstrb_UNCONNECTED(2 downto 0),
      m_axis_tuser(0) => NLW_m05_regslice_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => M05_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdest(3 downto 0) => m_axis_tdest(3 downto 0),
      s_axis_tid(0) => m_axis_tid(0),
      s_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      s_axis_tlast => m_axis_tlast(0),
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      s_axis_tuser(0) => m_axis_tuser(0),
      s_axis_tvalid => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m06_couplers_imp_1BYULNP is
  port (
    s_axis_tready : out STD_LOGIC;
    M06_AXIS_tvalid : out STD_LOGIC;
    M06_AXIS_tdata : out STD_LOGIC;
    M06_AXIS_ACLK : in STD_LOGIC;
    M06_AXIS_ARESETN : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXIS_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m06_couplers_imp_1BYULNP;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m06_couplers_imp_1BYULNP is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m06_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m06_regslice_0;
  signal NLW_m06_regslice_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_m06_regslice_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal NLW_m06_regslice_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m06_regslice_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_m06_regslice_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m06_regslice_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m06_regslice_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m06_regslice : label is "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of m06_regslice : label is "TRUE";
begin
m06_regslice: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m06_regslice_0
     port map (
      aclk => M06_AXIS_ACLK,
      aresetn => M06_AXIS_ARESETN,
      m_axis_tdata(23 downto 1) => NLW_m06_regslice_m_axis_tdata_UNCONNECTED(23 downto 1),
      m_axis_tdata(0) => M06_AXIS_tdata,
      m_axis_tdest(3 downto 0) => NLW_m06_regslice_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(0) => NLW_m06_regslice_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(2 downto 0) => NLW_m06_regslice_m_axis_tkeep_UNCONNECTED(2 downto 0),
      m_axis_tlast => NLW_m06_regslice_m_axis_tlast_UNCONNECTED,
      m_axis_tready => M06_AXIS_tready,
      m_axis_tstrb(2 downto 0) => NLW_m06_regslice_m_axis_tstrb_UNCONNECTED(2 downto 0),
      m_axis_tuser(0) => NLW_m06_regslice_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => M06_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdest(3 downto 0) => m_axis_tdest(3 downto 0),
      s_axis_tid(0) => m_axis_tid(0),
      s_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      s_axis_tlast => m_axis_tlast(0),
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      s_axis_tuser(0) => m_axis_tuser(0),
      s_axis_tvalid => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m07_couplers_imp_C0B1IE is
  port (
    s_axis_tready : out STD_LOGIC;
    M07_AXIS_tvalid : out STD_LOGIC;
    M07_AXIS_tdata : out STD_LOGIC;
    M07_AXIS_ACLK : in STD_LOGIC;
    M07_AXIS_ARESETN : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXIS_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m07_couplers_imp_C0B1IE;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m07_couplers_imp_C0B1IE is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m07_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m07_regslice_0;
  signal NLW_m07_regslice_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_m07_regslice_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal NLW_m07_regslice_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m07_regslice_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_m07_regslice_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m07_regslice_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m07_regslice_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m07_regslice : label is "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of m07_regslice : label is "TRUE";
begin
m07_regslice: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m07_regslice_0
     port map (
      aclk => M07_AXIS_ACLK,
      aresetn => M07_AXIS_ARESETN,
      m_axis_tdata(23 downto 1) => NLW_m07_regslice_m_axis_tdata_UNCONNECTED(23 downto 1),
      m_axis_tdata(0) => M07_AXIS_tdata,
      m_axis_tdest(3 downto 0) => NLW_m07_regslice_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(0) => NLW_m07_regslice_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(2 downto 0) => NLW_m07_regslice_m_axis_tkeep_UNCONNECTED(2 downto 0),
      m_axis_tlast => NLW_m07_regslice_m_axis_tlast_UNCONNECTED,
      m_axis_tready => M07_AXIS_tready,
      m_axis_tstrb(2 downto 0) => NLW_m07_regslice_m_axis_tstrb_UNCONNECTED(2 downto 0),
      m_axis_tuser(0) => NLW_m07_regslice_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => M07_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdest(3 downto 0) => m_axis_tdest(3 downto 0),
      s_axis_tid(0) => m_axis_tid(0),
      s_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      s_axis_tlast => m_axis_tlast(0),
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      s_axis_tuser(0) => m_axis_tuser(0),
      s_axis_tvalid => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m08_couplers_imp_1TZ1JG3 is
  port (
    S_AXIS_tready : out STD_LOGIC;
    M08_AXIS_tvalid : out STD_LOGIC;
    M08_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M08_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXIS_tlast : out STD_LOGIC;
    M08_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXIS_ACLK : in STD_LOGIC;
    M08_AXIS_ARESETN : in STD_LOGIC;
    M08_AXIS_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m08_couplers_imp_1TZ1JG3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m08_couplers_imp_1TZ1JG3 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slidr_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slidr_3;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m08_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m08_regslice_0;
  signal auto_ss_slidr_to_m08_regslice_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ss_slidr_to_m08_regslice_TDEST : STD_LOGIC;
  signal auto_ss_slidr_to_m08_regslice_TID : STD_LOGIC;
  signal auto_ss_slidr_to_m08_regslice_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m08_regslice_TLAST : STD_LOGIC;
  signal auto_ss_slidr_to_m08_regslice_TREADY : STD_LOGIC;
  signal auto_ss_slidr_to_m08_regslice_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m08_regslice_TUSER : STD_LOGIC;
  signal auto_ss_slidr_to_m08_regslice_TVALID : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_ss_slidr : label is "top_bd_d86b_auto_ss_slidr_3,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of auto_ss_slidr : label is "TRUE";
  attribute X_CORE_INFO of m08_regslice : label is "axis_register_slice_v1_1_21_axis_register_slice,Vivado 2020.1";
  attribute syn_black_box of m08_regslice : label is "TRUE";
begin
auto_ss_slidr: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slidr_3
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axis_tdata(23 downto 0) => auto_ss_slidr_to_m08_regslice_TDATA(23 downto 0),
      m_axis_tdest(0) => auto_ss_slidr_to_m08_regslice_TDEST,
      m_axis_tid(0) => auto_ss_slidr_to_m08_regslice_TID,
      m_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m08_regslice_TKEEP(2 downto 0),
      m_axis_tlast => auto_ss_slidr_to_m08_regslice_TLAST,
      m_axis_tready => auto_ss_slidr_to_m08_regslice_TREADY,
      m_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m08_regslice_TSTRB(2 downto 0),
      m_axis_tuser(0) => auto_ss_slidr_to_m08_regslice_TUSER,
      m_axis_tvalid => auto_ss_slidr_to_m08_regslice_TVALID,
      s_axis_tdata(23 downto 0) => S_AXIS_tdata(23 downto 0),
      s_axis_tdest(3 downto 0) => S_AXIS_tdest(3 downto 0),
      s_axis_tid(0) => S_AXIS_tid(0),
      s_axis_tkeep(2 downto 0) => S_AXIS_tkeep(2 downto 0),
      s_axis_tlast => S_AXIS_tlast,
      s_axis_tready => S_AXIS_tready,
      s_axis_tstrb(2 downto 0) => S_AXIS_tstrb(2 downto 0),
      s_axis_tuser(0) => S_AXIS_tuser(0),
      s_axis_tvalid => S_AXIS_tvalid
    );
m08_regslice: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_m08_regslice_0
     port map (
      aclk => M08_AXIS_ACLK,
      aresetn => M08_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => M08_AXIS_tdata(23 downto 0),
      m_axis_tdest(0) => M08_AXIS_tdest(0),
      m_axis_tid(0) => M08_AXIS_tid(0),
      m_axis_tkeep(2 downto 0) => M08_AXIS_tkeep(2 downto 0),
      m_axis_tlast => M08_AXIS_tlast,
      m_axis_tready => M08_AXIS_tready,
      m_axis_tstrb(2 downto 0) => M08_AXIS_tstrb(2 downto 0),
      m_axis_tuser(0) => M08_AXIS_tuser(0),
      m_axis_tvalid => M08_AXIS_tvalid,
      s_axis_tdata(23 downto 0) => auto_ss_slidr_to_m08_regslice_TDATA(23 downto 0),
      s_axis_tdest(0) => auto_ss_slidr_to_m08_regslice_TDEST,
      s_axis_tid(0) => auto_ss_slidr_to_m08_regslice_TID,
      s_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m08_regslice_TKEEP(2 downto 0),
      s_axis_tlast => auto_ss_slidr_to_m08_regslice_TLAST,
      s_axis_tready => auto_ss_slidr_to_m08_regslice_TREADY,
      s_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m08_regslice_TSTRB(2 downto 0),
      s_axis_tuser(0) => auto_ss_slidr_to_m08_regslice_TUSER,
      s_axis_tvalid => auto_ss_slidr_to_m08_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_133L29D is
  port (
    S00_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S00_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_133L29D;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_133L29D is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_ss_slid : label is "top_bd_d86b_auto_ss_slid_0,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of auto_ss_slid : label is "TRUE";
begin
auto_ss_slid: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_0
     port map (
      aclk => S00_AXIS_ACLK,
      aresetn => S00_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tdest(3 downto 0) => m_axis_tdest(3 downto 0),
      m_axis_tid(0) => m_axis_tid(0),
      m_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => s_axis_tready(0),
      m_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => S00_AXIS_tdata(23 downto 0),
      s_axis_tdest(0) => S00_AXIS_tdest(0),
      s_axis_tid(0) => S00_AXIS_tid(0),
      s_axis_tkeep(2 downto 0) => S00_AXIS_tkeep(2 downto 0),
      s_axis_tlast => S00_AXIS_tlast(0),
      s_axis_tready => S00_AXIS_tready(0),
      s_axis_tstrb(2 downto 0) => S00_AXIS_tstrb(2 downto 0),
      s_axis_tuser(0) => S00_AXIS_tuser(0),
      s_axis_tvalid => S00_AXIS_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s01_couplers_imp_34UEWI is
  port (
    S01_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_ACLK : in STD_LOGIC;
    S01_AXIS_ARESETN : in STD_LOGIC;
    S01_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S01_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s01_couplers_imp_34UEWI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s01_couplers_imp_34UEWI is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_1;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_ss_slid : label is "top_bd_d86b_auto_ss_slid_1,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of auto_ss_slid : label is "TRUE";
begin
auto_ss_slid: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_1
     port map (
      aclk => S01_AXIS_ACLK,
      aresetn => S01_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tdest(3 downto 0) => m_axis_tdest(3 downto 0),
      m_axis_tid(0) => m_axis_tid(0),
      m_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => s_axis_tready(0),
      m_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => S01_AXIS_tdata(23 downto 0),
      s_axis_tdest(0) => S01_AXIS_tdest(0),
      s_axis_tid(0) => S01_AXIS_tid(0),
      s_axis_tkeep(2 downto 0) => S01_AXIS_tkeep(2 downto 0),
      s_axis_tlast => S01_AXIS_tlast(0),
      s_axis_tready => S01_AXIS_tready(0),
      s_axis_tstrb(2 downto 0) => S01_AXIS_tstrb(2 downto 0),
      s_axis_tuser(0) => S01_AXIS_tuser(0),
      s_axis_tvalid => S01_AXIS_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s02_couplers_imp_ONDAIE is
  port (
    S02_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_ACLK : in STD_LOGIC;
    S02_AXIS_ARESETN : in STD_LOGIC;
    S02_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S02_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s02_couplers_imp_ONDAIE;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s02_couplers_imp_ONDAIE is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_2;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_ss_slid : label is "top_bd_d86b_auto_ss_slid_2,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of auto_ss_slid : label is "TRUE";
begin
auto_ss_slid: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_2
     port map (
      aclk => S02_AXIS_ACLK,
      aresetn => S02_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tdest(3 downto 0) => m_axis_tdest(3 downto 0),
      m_axis_tid(0) => m_axis_tid(0),
      m_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => s_axis_tready(0),
      m_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => S02_AXIS_tdata(23 downto 0),
      s_axis_tdest(0) => S02_AXIS_tdest(0),
      s_axis_tid(0) => S02_AXIS_tid(0),
      s_axis_tkeep(2 downto 0) => S02_AXIS_tkeep(2 downto 0),
      s_axis_tlast => S02_AXIS_tlast(0),
      s_axis_tready => S02_AXIS_tready(0),
      s_axis_tstrb(2 downto 0) => S02_AXIS_tstrb(2 downto 0),
      s_axis_tuser(0) => S02_AXIS_tuser(0),
      s_axis_tvalid => S02_AXIS_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s04_couplers_imp_1YZZAF2 is
  port (
    S04_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_ACLK : in STD_LOGIC;
    S04_AXIS_ARESETN : in STD_LOGIC;
    S04_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S04_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s04_couplers_imp_1YZZAF2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s04_couplers_imp_1YZZAF2 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_3;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_ss_slid : label is "top_bd_d86b_auto_ss_slid_3,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of auto_ss_slid : label is "TRUE";
begin
auto_ss_slid: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_3
     port map (
      aclk => S04_AXIS_ACLK,
      aresetn => S04_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tdest(3 downto 0) => m_axis_tdest(3 downto 0),
      m_axis_tid(0) => m_axis_tid(0),
      m_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => s_axis_tready(0),
      m_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => S04_AXIS_tdata(23 downto 0),
      s_axis_tdest(0) => S04_AXIS_tdest(0),
      s_axis_tid(0) => S04_AXIS_tid(0),
      s_axis_tkeep(2 downto 0) => S04_AXIS_tkeep(2 downto 0),
      s_axis_tlast => S04_AXIS_tlast(0),
      s_axis_tready => S04_AXIS_tready(0),
      s_axis_tstrb(2 downto 0) => S04_AXIS_tstrb(2 downto 0),
      s_axis_tuser(0) => S04_AXIS_tuser(0),
      s_axis_tvalid => S04_AXIS_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s08_couplers_imp_TOKXF3 is
  port (
    S08_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_ACLK : in STD_LOGIC;
    S08_AXIS_ARESETN : in STD_LOGIC;
    S08_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S08_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s08_couplers_imp_TOKXF3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s08_couplers_imp_TOKXF3 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_4;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_ss_slid : label is "top_bd_d86b_auto_ss_slid_4,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of auto_ss_slid : label is "TRUE";
begin
auto_ss_slid: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_auto_ss_slid_4
     port map (
      aclk => S08_AXIS_ACLK,
      aresetn => S08_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tdest(3 downto 0) => m_axis_tdest(3 downto 0),
      m_axis_tid(0) => m_axis_tid(0),
      m_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => s_axis_tready(0),
      m_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => S08_AXIS_tdata(23 downto 0),
      s_axis_tdest(0) => S08_AXIS_tdest(0),
      s_axis_tid(0) => S08_AXIS_tid(0),
      s_axis_tkeep(2 downto 0) => S08_AXIS_tkeep(2 downto 0),
      s_axis_tlast => S08_AXIS_tlast(0),
      s_axis_tready => S08_AXIS_tready(0),
      s_axis_tstrb(2 downto 0) => S08_AXIS_tstrb(2 downto 0),
      s_axis_tuser(0) => S08_AXIS_tuser(0),
      s_axis_tvalid => S08_AXIS_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_video_router_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_AXIS_ACLK : in STD_LOGIC;
    M00_AXIS_ARESETN : in STD_LOGIC;
    M00_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M00_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXIS_tlast : out STD_LOGIC;
    M00_AXIS_tready : in STD_LOGIC;
    M00_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_tvalid : out STD_LOGIC;
    M01_AXIS_ACLK : in STD_LOGIC;
    M01_AXIS_ARESETN : in STD_LOGIC;
    M01_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M01_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXIS_tlast : out STD_LOGIC;
    M01_AXIS_tready : in STD_LOGIC;
    M01_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXIS_tvalid : out STD_LOGIC;
    M02_AXIS_ACLK : in STD_LOGIC;
    M02_AXIS_ARESETN : in STD_LOGIC;
    M02_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M02_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXIS_tlast : out STD_LOGIC;
    M02_AXIS_tready : in STD_LOGIC;
    M02_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXIS_tvalid : out STD_LOGIC;
    M03_AXIS_ACLK : in STD_LOGIC;
    M03_AXIS_ARESETN : in STD_LOGIC;
    M03_AXIS_tdata : out STD_LOGIC;
    M03_AXIS_tdest : out STD_LOGIC;
    M03_AXIS_tready : in STD_LOGIC;
    M03_AXIS_tvalid : out STD_LOGIC;
    M04_AXIS_ACLK : in STD_LOGIC;
    M04_AXIS_ARESETN : in STD_LOGIC;
    M04_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M04_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXIS_tlast : out STD_LOGIC;
    M04_AXIS_tready : in STD_LOGIC;
    M04_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXIS_tvalid : out STD_LOGIC;
    M05_AXIS_ACLK : in STD_LOGIC;
    M05_AXIS_ARESETN : in STD_LOGIC;
    M05_AXIS_tdata : out STD_LOGIC;
    M05_AXIS_tready : in STD_LOGIC;
    M05_AXIS_tvalid : out STD_LOGIC;
    M06_AXIS_ACLK : in STD_LOGIC;
    M06_AXIS_ARESETN : in STD_LOGIC;
    M06_AXIS_tdata : out STD_LOGIC;
    M06_AXIS_tready : in STD_LOGIC;
    M06_AXIS_tvalid : out STD_LOGIC;
    M07_AXIS_ACLK : in STD_LOGIC;
    M07_AXIS_ARESETN : in STD_LOGIC;
    M07_AXIS_tdata : out STD_LOGIC;
    M07_AXIS_tready : in STD_LOGIC;
    M07_AXIS_tvalid : out STD_LOGIC;
    M08_AXIS_ACLK : in STD_LOGIC;
    M08_AXIS_ARESETN : in STD_LOGIC;
    M08_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M08_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXIS_tlast : out STD_LOGIC;
    M08_AXIS_tready : in STD_LOGIC;
    M08_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXIS_tvalid : out STD_LOGIC;
    M09_AXIS_ACLK : in STD_LOGIC;
    M09_AXIS_ARESETN : in STD_LOGIC;
    M09_AXIS_tdata : out STD_LOGIC;
    M09_AXIS_tdest : out STD_LOGIC;
    M09_AXIS_tready : in STD_LOGIC;
    M09_AXIS_tvalid : out STD_LOGIC;
    S00_AXIS_ACLK : in STD_LOGIC;
    S00_AXIS_ARESETN : in STD_LOGIC;
    S00_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S00_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_ACLK : in STD_LOGIC;
    S01_AXIS_ARESETN : in STD_LOGIC;
    S01_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S01_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_ACLK : in STD_LOGIC;
    S02_AXIS_ARESETN : in STD_LOGIC;
    S02_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S02_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXIS_ACLK : in STD_LOGIC;
    S03_AXIS_ARESETN : in STD_LOGIC;
    S03_AXIS_tdata : in STD_LOGIC;
    S03_AXIS_tdest : in STD_LOGIC;
    S03_AXIS_tready : out STD_LOGIC;
    S03_AXIS_tvalid : in STD_LOGIC;
    S04_AXIS_ACLK : in STD_LOGIC;
    S04_AXIS_ARESETN : in STD_LOGIC;
    S04_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S04_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXIS_ACLK : in STD_LOGIC;
    S05_AXIS_ARESETN : in STD_LOGIC;
    S05_AXIS_tdata : in STD_LOGIC;
    S05_AXIS_tdest : in STD_LOGIC;
    S05_AXIS_tready : out STD_LOGIC;
    S05_AXIS_tvalid : in STD_LOGIC;
    S06_AXIS_ACLK : in STD_LOGIC;
    S06_AXIS_ARESETN : in STD_LOGIC;
    S06_AXIS_tdata : in STD_LOGIC;
    S06_AXIS_tdest : in STD_LOGIC;
    S06_AXIS_tready : out STD_LOGIC;
    S06_AXIS_tvalid : in STD_LOGIC;
    S07_AXIS_ACLK : in STD_LOGIC;
    S07_AXIS_ARESETN : in STD_LOGIC;
    S07_AXIS_tdata : in STD_LOGIC;
    S07_AXIS_tdest : in STD_LOGIC;
    S07_AXIS_tready : out STD_LOGIC;
    S07_AXIS_tvalid : in STD_LOGIC;
    S08_AXIS_ACLK : in STD_LOGIC;
    S08_AXIS_ARESETN : in STD_LOGIC;
    S08_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S08_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S09_AXIS_ACLK : in STD_LOGIC;
    S09_AXIS_ARESETN : in STD_LOGIC;
    S09_AXIS_tdata : in STD_LOGIC;
    S09_AXIS_tdest : in STD_LOGIC;
    S09_AXIS_tready : out STD_LOGIC;
    S09_AXIS_tvalid : in STD_LOGIC;
    S_AXI_CTRL_ACLK : in STD_LOGIC;
    S_AXI_CTRL_ARESETN : in STD_LOGIC;
    S_AXI_CTRL_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_CTRL_arready : out STD_LOGIC;
    S_AXI_CTRL_arvalid : in STD_LOGIC;
    S_AXI_CTRL_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_CTRL_awready : out STD_LOGIC;
    S_AXI_CTRL_awvalid : in STD_LOGIC;
    S_AXI_CTRL_bready : in STD_LOGIC;
    S_AXI_CTRL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTRL_bvalid : out STD_LOGIC;
    S_AXI_CTRL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_rready : in STD_LOGIC;
    S_AXI_CTRL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CTRL_rvalid : out STD_LOGIC;
    S_AXI_CTRL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CTRL_wready : out STD_LOGIC;
    S_AXI_CTRL_wvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_video_router_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_video_router_0 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 239 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 239 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_xbar_0;
  signal s00_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s00_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_TID : STD_LOGIC;
  signal s00_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_TREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_TUSER : STD_LOGIC;
  signal s00_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s01_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_TID : STD_LOGIC;
  signal s01_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_TREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_TUSER : STD_LOGIC;
  signal s01_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s02_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_TID : STD_LOGIC;
  signal s02_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_TREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_TUSER : STD_LOGIC;
  signal s02_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s04_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_TID : STD_LOGIC;
  signal s04_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s04_couplers_to_xbar_TREADY : STD_LOGIC;
  signal s04_couplers_to_xbar_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_TUSER : STD_LOGIC;
  signal s04_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s08_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s08_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s08_couplers_to_xbar_TID : STD_LOGIC;
  signal s08_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_xbar_TLAST : STD_LOGIC;
  signal s08_couplers_to_xbar_TREADY : STD_LOGIC;
  signal s08_couplers_to_xbar_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_xbar_TUSER : STD_LOGIC;
  signal s08_couplers_to_xbar_TVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal xbar_to_m00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_TID : STD_LOGIC;
  signal xbar_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_TUSER : STD_LOGIC;
  signal xbar_to_m00_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_TDATA : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal xbar_to_m01_couplers_TDEST : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_TID : STD_LOGIC;
  signal xbar_to_m01_couplers_TKEEP : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_TSTRB : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_TUSER : STD_LOGIC;
  signal xbar_to_m01_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_TDATA : STD_LOGIC_VECTOR ( 71 downto 48 );
  signal xbar_to_m02_couplers_TDEST : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_TID : STD_LOGIC;
  signal xbar_to_m02_couplers_TKEEP : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m02_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_TSTRB : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_TUSER : STD_LOGIC;
  signal xbar_to_m02_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_TDATA : STD_LOGIC_VECTOR ( 119 downto 96 );
  signal xbar_to_m04_couplers_TDEST : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_TID : STD_LOGIC;
  signal xbar_to_m04_couplers_TKEEP : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m04_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_TSTRB : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_TUSER : STD_LOGIC;
  signal xbar_to_m04_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_TDATA : STD_LOGIC_VECTOR ( 143 downto 120 );
  signal xbar_to_m05_couplers_TDEST : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_TID : STD_LOGIC;
  signal xbar_to_m05_couplers_TKEEP : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m05_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_TSTRB : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_TUSER : STD_LOGIC;
  signal xbar_to_m05_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_TDATA : STD_LOGIC_VECTOR ( 167 downto 144 );
  signal xbar_to_m06_couplers_TDEST : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_TID : STD_LOGIC;
  signal xbar_to_m06_couplers_TKEEP : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m06_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_TSTRB : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_TUSER : STD_LOGIC;
  signal xbar_to_m06_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_TDATA : STD_LOGIC_VECTOR ( 191 downto 168 );
  signal xbar_to_m07_couplers_TDEST : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_TID : STD_LOGIC;
  signal xbar_to_m07_couplers_TKEEP : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m07_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_TSTRB : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_TUSER : STD_LOGIC;
  signal xbar_to_m07_couplers_TVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_TDATA : STD_LOGIC_VECTOR ( 215 downto 192 );
  signal xbar_to_m08_couplers_TDEST : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_TID : STD_LOGIC;
  signal xbar_to_m08_couplers_TKEEP : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_TLAST : STD_LOGIC;
  signal xbar_to_m08_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_TSTRB : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_TUSER : STD_LOGIC;
  signal xbar_to_m08_couplers_TVALID : STD_LOGIC;
  signal NLW_xbar_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 239 downto 73 );
  signal NLW_xbar_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 13 );
  signal NLW_xbar_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal NLW_xbar_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 9 );
  signal NLW_xbar_m_axis_tlast_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal NLW_xbar_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 9 );
  signal NLW_xbar_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 3 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axis_switch_v1_1_21_axis_switch,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of xbar : label is "TRUE";
begin
m00_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m00_couplers_imp_3A81M5
     port map (
      M00_AXIS_ACLK => M00_AXIS_ACLK,
      M00_AXIS_ARESETN => M00_AXIS_ARESETN,
      M00_AXIS_tdata(23 downto 0) => M00_AXIS_tdata(23 downto 0),
      M00_AXIS_tdest(3 downto 0) => M00_AXIS_tdest(3 downto 0),
      M00_AXIS_tid(0) => M00_AXIS_tid(0),
      M00_AXIS_tkeep(2 downto 0) => M00_AXIS_tkeep(2 downto 0),
      M00_AXIS_tlast => M00_AXIS_tlast,
      M00_AXIS_tready => M00_AXIS_tready,
      M00_AXIS_tstrb(2 downto 0) => M00_AXIS_tstrb(2 downto 0),
      M00_AXIS_tuser(0) => M00_AXIS_tuser(0),
      M00_AXIS_tvalid => M00_AXIS_tvalid,
      m_axis_tdata(23 downto 0) => xbar_to_m00_couplers_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => xbar_to_m00_couplers_TDEST(3 downto 0),
      m_axis_tid(0) => xbar_to_m00_couplers_TID,
      m_axis_tkeep(2 downto 0) => xbar_to_m00_couplers_TKEEP(2 downto 0),
      m_axis_tlast(0) => xbar_to_m00_couplers_TLAST,
      m_axis_tstrb(2 downto 0) => xbar_to_m00_couplers_TSTRB(2 downto 0),
      m_axis_tuser(0) => xbar_to_m00_couplers_TUSER,
      m_axis_tvalid(0) => xbar_to_m00_couplers_TVALID,
      s_axis_tready => xbar_to_m00_couplers_TREADY
    );
m01_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m01_couplers_imp_12YX0MM
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M01_AXIS_ACLK => M01_AXIS_ACLK,
      M01_AXIS_ARESETN => M01_AXIS_ARESETN,
      M01_AXIS_tdata(23 downto 0) => M01_AXIS_tdata(23 downto 0),
      M01_AXIS_tdest(0) => M01_AXIS_tdest(0),
      M01_AXIS_tid(0) => M01_AXIS_tid(0),
      M01_AXIS_tkeep(2 downto 0) => M01_AXIS_tkeep(2 downto 0),
      M01_AXIS_tlast => M01_AXIS_tlast,
      M01_AXIS_tready => M01_AXIS_tready,
      M01_AXIS_tstrb(2 downto 0) => M01_AXIS_tstrb(2 downto 0),
      M01_AXIS_tuser(0) => M01_AXIS_tuser(0),
      M01_AXIS_tvalid => M01_AXIS_tvalid,
      S_AXIS_tdata(23 downto 0) => xbar_to_m01_couplers_TDATA(47 downto 24),
      S_AXIS_tdest(3 downto 0) => xbar_to_m01_couplers_TDEST(7 downto 4),
      S_AXIS_tid(0) => xbar_to_m01_couplers_TID,
      S_AXIS_tkeep(2 downto 0) => xbar_to_m01_couplers_TKEEP(5 downto 3),
      S_AXIS_tlast => xbar_to_m01_couplers_TLAST,
      S_AXIS_tready => xbar_to_m01_couplers_TREADY,
      S_AXIS_tstrb(2 downto 0) => xbar_to_m01_couplers_TSTRB(5 downto 3),
      S_AXIS_tuser(0) => xbar_to_m01_couplers_TUSER,
      S_AXIS_tvalid => xbar_to_m01_couplers_TVALID
    );
m02_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m02_couplers_imp_1Q4L9T6
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M02_AXIS_ACLK => M02_AXIS_ACLK,
      M02_AXIS_ARESETN => M02_AXIS_ARESETN,
      M02_AXIS_tdata(23 downto 0) => M02_AXIS_tdata(23 downto 0),
      M02_AXIS_tdest(0) => M02_AXIS_tdest(0),
      M02_AXIS_tid(0) => M02_AXIS_tid(0),
      M02_AXIS_tkeep(2 downto 0) => M02_AXIS_tkeep(2 downto 0),
      M02_AXIS_tlast => M02_AXIS_tlast,
      M02_AXIS_tready => M02_AXIS_tready,
      M02_AXIS_tstrb(2 downto 0) => M02_AXIS_tstrb(2 downto 0),
      M02_AXIS_tuser(0) => M02_AXIS_tuser(0),
      M02_AXIS_tvalid => M02_AXIS_tvalid,
      S_AXIS_tdata(23 downto 0) => xbar_to_m02_couplers_TDATA(71 downto 48),
      S_AXIS_tdest(3 downto 0) => xbar_to_m02_couplers_TDEST(11 downto 8),
      S_AXIS_tid(0) => xbar_to_m02_couplers_TID,
      S_AXIS_tkeep(2 downto 0) => xbar_to_m02_couplers_TKEEP(8 downto 6),
      S_AXIS_tlast => xbar_to_m02_couplers_TLAST,
      S_AXIS_tready => xbar_to_m02_couplers_TREADY,
      S_AXIS_tstrb(2 downto 0) => xbar_to_m02_couplers_TSTRB(8 downto 6),
      S_AXIS_tuser(0) => xbar_to_m02_couplers_TUSER,
      S_AXIS_tvalid => xbar_to_m02_couplers_TVALID
    );
m04_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m04_couplers_imp_XJAW2Q
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M04_AXIS_ACLK => M04_AXIS_ACLK,
      M04_AXIS_ARESETN => M04_AXIS_ARESETN,
      M04_AXIS_tdata(23 downto 0) => M04_AXIS_tdata(23 downto 0),
      M04_AXIS_tdest(0) => M04_AXIS_tdest(0),
      M04_AXIS_tid(0) => M04_AXIS_tid(0),
      M04_AXIS_tkeep(2 downto 0) => M04_AXIS_tkeep(2 downto 0),
      M04_AXIS_tlast => M04_AXIS_tlast,
      M04_AXIS_tready => M04_AXIS_tready,
      M04_AXIS_tstrb(2 downto 0) => M04_AXIS_tstrb(2 downto 0),
      M04_AXIS_tuser(0) => M04_AXIS_tuser(0),
      M04_AXIS_tvalid => M04_AXIS_tvalid,
      S_AXIS_tdata(23 downto 0) => xbar_to_m04_couplers_TDATA(119 downto 96),
      S_AXIS_tdest(3 downto 0) => xbar_to_m04_couplers_TDEST(19 downto 16),
      S_AXIS_tid(0) => xbar_to_m04_couplers_TID,
      S_AXIS_tkeep(2 downto 0) => xbar_to_m04_couplers_TKEEP(14 downto 12),
      S_AXIS_tlast => xbar_to_m04_couplers_TLAST,
      S_AXIS_tready => xbar_to_m04_couplers_TREADY,
      S_AXIS_tstrb(2 downto 0) => xbar_to_m04_couplers_TSTRB(14 downto 12),
      S_AXIS_tuser(0) => xbar_to_m04_couplers_TUSER,
      S_AXIS_tvalid => xbar_to_m04_couplers_TVALID
    );
m05_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m05_couplers_imp_1YVXE3L
     port map (
      M05_AXIS_ACLK => M05_AXIS_ACLK,
      M05_AXIS_ARESETN => M05_AXIS_ARESETN,
      M05_AXIS_tdata => M05_AXIS_tdata,
      M05_AXIS_tready => M05_AXIS_tready,
      M05_AXIS_tvalid => M05_AXIS_tvalid,
      m_axis_tdata(23 downto 0) => xbar_to_m05_couplers_TDATA(143 downto 120),
      m_axis_tdest(3 downto 0) => xbar_to_m05_couplers_TDEST(23 downto 20),
      m_axis_tid(0) => xbar_to_m05_couplers_TID,
      m_axis_tkeep(2 downto 0) => xbar_to_m05_couplers_TKEEP(17 downto 15),
      m_axis_tlast(0) => xbar_to_m05_couplers_TLAST,
      m_axis_tstrb(2 downto 0) => xbar_to_m05_couplers_TSTRB(17 downto 15),
      m_axis_tuser(0) => xbar_to_m05_couplers_TUSER,
      m_axis_tvalid(0) => xbar_to_m05_couplers_TVALID,
      s_axis_tready => xbar_to_m05_couplers_TREADY
    );
m06_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m06_couplers_imp_1BYULNP
     port map (
      M06_AXIS_ACLK => M06_AXIS_ACLK,
      M06_AXIS_ARESETN => M06_AXIS_ARESETN,
      M06_AXIS_tdata => M06_AXIS_tdata,
      M06_AXIS_tready => M06_AXIS_tready,
      M06_AXIS_tvalid => M06_AXIS_tvalid,
      m_axis_tdata(23 downto 0) => xbar_to_m06_couplers_TDATA(167 downto 144),
      m_axis_tdest(3 downto 0) => xbar_to_m06_couplers_TDEST(27 downto 24),
      m_axis_tid(0) => xbar_to_m06_couplers_TID,
      m_axis_tkeep(2 downto 0) => xbar_to_m06_couplers_TKEEP(20 downto 18),
      m_axis_tlast(0) => xbar_to_m06_couplers_TLAST,
      m_axis_tstrb(2 downto 0) => xbar_to_m06_couplers_TSTRB(20 downto 18),
      m_axis_tuser(0) => xbar_to_m06_couplers_TUSER,
      m_axis_tvalid(0) => xbar_to_m06_couplers_TVALID,
      s_axis_tready => xbar_to_m06_couplers_TREADY
    );
m07_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m07_couplers_imp_C0B1IE
     port map (
      M07_AXIS_ACLK => M07_AXIS_ACLK,
      M07_AXIS_ARESETN => M07_AXIS_ARESETN,
      M07_AXIS_tdata => M07_AXIS_tdata,
      M07_AXIS_tready => M07_AXIS_tready,
      M07_AXIS_tvalid => M07_AXIS_tvalid,
      m_axis_tdata(23 downto 0) => xbar_to_m07_couplers_TDATA(191 downto 168),
      m_axis_tdest(3 downto 0) => xbar_to_m07_couplers_TDEST(31 downto 28),
      m_axis_tid(0) => xbar_to_m07_couplers_TID,
      m_axis_tkeep(2 downto 0) => xbar_to_m07_couplers_TKEEP(23 downto 21),
      m_axis_tlast(0) => xbar_to_m07_couplers_TLAST,
      m_axis_tstrb(2 downto 0) => xbar_to_m07_couplers_TSTRB(23 downto 21),
      m_axis_tuser(0) => xbar_to_m07_couplers_TUSER,
      m_axis_tvalid(0) => xbar_to_m07_couplers_TVALID,
      s_axis_tready => xbar_to_m07_couplers_TREADY
    );
m08_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_m08_couplers_imp_1TZ1JG3
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M08_AXIS_ACLK => M08_AXIS_ACLK,
      M08_AXIS_ARESETN => M08_AXIS_ARESETN,
      M08_AXIS_tdata(23 downto 0) => M08_AXIS_tdata(23 downto 0),
      M08_AXIS_tdest(0) => M08_AXIS_tdest(0),
      M08_AXIS_tid(0) => M08_AXIS_tid(0),
      M08_AXIS_tkeep(2 downto 0) => M08_AXIS_tkeep(2 downto 0),
      M08_AXIS_tlast => M08_AXIS_tlast,
      M08_AXIS_tready => M08_AXIS_tready,
      M08_AXIS_tstrb(2 downto 0) => M08_AXIS_tstrb(2 downto 0),
      M08_AXIS_tuser(0) => M08_AXIS_tuser(0),
      M08_AXIS_tvalid => M08_AXIS_tvalid,
      S_AXIS_tdata(23 downto 0) => xbar_to_m08_couplers_TDATA(215 downto 192),
      S_AXIS_tdest(3 downto 0) => xbar_to_m08_couplers_TDEST(35 downto 32),
      S_AXIS_tid(0) => xbar_to_m08_couplers_TID,
      S_AXIS_tkeep(2 downto 0) => xbar_to_m08_couplers_TKEEP(26 downto 24),
      S_AXIS_tlast => xbar_to_m08_couplers_TLAST,
      S_AXIS_tready => xbar_to_m08_couplers_TREADY,
      S_AXIS_tstrb(2 downto 0) => xbar_to_m08_couplers_TSTRB(26 downto 24),
      S_AXIS_tuser(0) => xbar_to_m08_couplers_TUSER,
      S_AXIS_tvalid => xbar_to_m08_couplers_TVALID
    );
s00_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s00_couplers_imp_133L29D
     port map (
      S00_AXIS_ACLK => S00_AXIS_ACLK,
      S00_AXIS_ARESETN => S00_AXIS_ARESETN,
      S00_AXIS_tdata(23 downto 0) => S00_AXIS_tdata(23 downto 0),
      S00_AXIS_tdest(0) => S00_AXIS_tdest(0),
      S00_AXIS_tid(0) => S00_AXIS_tid(0),
      S00_AXIS_tkeep(2 downto 0) => S00_AXIS_tkeep(2 downto 0),
      S00_AXIS_tlast(0) => S00_AXIS_tlast(0),
      S00_AXIS_tready(0) => S00_AXIS_tready(0),
      S00_AXIS_tstrb(2 downto 0) => S00_AXIS_tstrb(2 downto 0),
      S00_AXIS_tuser(0) => S00_AXIS_tuser(0),
      S00_AXIS_tvalid(0) => S00_AXIS_tvalid(0),
      m_axis_tdata(23 downto 0) => s00_couplers_to_xbar_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => s00_couplers_to_xbar_TDEST(3 downto 0),
      m_axis_tid(0) => s00_couplers_to_xbar_TID,
      m_axis_tkeep(2 downto 0) => s00_couplers_to_xbar_TKEEP(2 downto 0),
      m_axis_tlast => s00_couplers_to_xbar_TLAST,
      m_axis_tstrb(2 downto 0) => s00_couplers_to_xbar_TSTRB(2 downto 0),
      m_axis_tuser(0) => s00_couplers_to_xbar_TUSER,
      m_axis_tvalid => s00_couplers_to_xbar_TVALID,
      s_axis_tready(0) => s00_couplers_to_xbar_TREADY
    );
s01_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s01_couplers_imp_34UEWI
     port map (
      S01_AXIS_ACLK => S01_AXIS_ACLK,
      S01_AXIS_ARESETN => S01_AXIS_ARESETN,
      S01_AXIS_tdata(23 downto 0) => S01_AXIS_tdata(23 downto 0),
      S01_AXIS_tdest(0) => S01_AXIS_tdest(0),
      S01_AXIS_tid(0) => S01_AXIS_tid(0),
      S01_AXIS_tkeep(2 downto 0) => S01_AXIS_tkeep(2 downto 0),
      S01_AXIS_tlast(0) => S01_AXIS_tlast(0),
      S01_AXIS_tready(0) => S01_AXIS_tready(0),
      S01_AXIS_tstrb(2 downto 0) => S01_AXIS_tstrb(2 downto 0),
      S01_AXIS_tuser(0) => S01_AXIS_tuser(0),
      S01_AXIS_tvalid(0) => S01_AXIS_tvalid(0),
      m_axis_tdata(23 downto 0) => s01_couplers_to_xbar_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => s01_couplers_to_xbar_TDEST(3 downto 0),
      m_axis_tid(0) => s01_couplers_to_xbar_TID,
      m_axis_tkeep(2 downto 0) => s01_couplers_to_xbar_TKEEP(2 downto 0),
      m_axis_tlast => s01_couplers_to_xbar_TLAST,
      m_axis_tstrb(2 downto 0) => s01_couplers_to_xbar_TSTRB(2 downto 0),
      m_axis_tuser(0) => s01_couplers_to_xbar_TUSER,
      m_axis_tvalid => s01_couplers_to_xbar_TVALID,
      s_axis_tready(0) => s01_couplers_to_xbar_TREADY
    );
s02_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s02_couplers_imp_ONDAIE
     port map (
      S02_AXIS_ACLK => S02_AXIS_ACLK,
      S02_AXIS_ARESETN => S02_AXIS_ARESETN,
      S02_AXIS_tdata(23 downto 0) => S02_AXIS_tdata(23 downto 0),
      S02_AXIS_tdest(0) => S02_AXIS_tdest(0),
      S02_AXIS_tid(0) => S02_AXIS_tid(0),
      S02_AXIS_tkeep(2 downto 0) => S02_AXIS_tkeep(2 downto 0),
      S02_AXIS_tlast(0) => S02_AXIS_tlast(0),
      S02_AXIS_tready(0) => S02_AXIS_tready(0),
      S02_AXIS_tstrb(2 downto 0) => S02_AXIS_tstrb(2 downto 0),
      S02_AXIS_tuser(0) => S02_AXIS_tuser(0),
      S02_AXIS_tvalid(0) => S02_AXIS_tvalid(0),
      m_axis_tdata(23 downto 0) => s02_couplers_to_xbar_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => s02_couplers_to_xbar_TDEST(3 downto 0),
      m_axis_tid(0) => s02_couplers_to_xbar_TID,
      m_axis_tkeep(2 downto 0) => s02_couplers_to_xbar_TKEEP(2 downto 0),
      m_axis_tlast => s02_couplers_to_xbar_TLAST,
      m_axis_tstrb(2 downto 0) => s02_couplers_to_xbar_TSTRB(2 downto 0),
      m_axis_tuser(0) => s02_couplers_to_xbar_TUSER,
      m_axis_tvalid => s02_couplers_to_xbar_TVALID,
      s_axis_tready(0) => s02_couplers_to_xbar_TREADY
    );
s04_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s04_couplers_imp_1YZZAF2
     port map (
      S04_AXIS_ACLK => S04_AXIS_ACLK,
      S04_AXIS_ARESETN => S04_AXIS_ARESETN,
      S04_AXIS_tdata(23 downto 0) => S04_AXIS_tdata(23 downto 0),
      S04_AXIS_tdest(0) => S04_AXIS_tdest(0),
      S04_AXIS_tid(0) => S04_AXIS_tid(0),
      S04_AXIS_tkeep(2 downto 0) => S04_AXIS_tkeep(2 downto 0),
      S04_AXIS_tlast(0) => S04_AXIS_tlast(0),
      S04_AXIS_tready(0) => S04_AXIS_tready(0),
      S04_AXIS_tstrb(2 downto 0) => S04_AXIS_tstrb(2 downto 0),
      S04_AXIS_tuser(0) => S04_AXIS_tuser(0),
      S04_AXIS_tvalid(0) => S04_AXIS_tvalid(0),
      m_axis_tdata(23 downto 0) => s04_couplers_to_xbar_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => s04_couplers_to_xbar_TDEST(3 downto 0),
      m_axis_tid(0) => s04_couplers_to_xbar_TID,
      m_axis_tkeep(2 downto 0) => s04_couplers_to_xbar_TKEEP(2 downto 0),
      m_axis_tlast => s04_couplers_to_xbar_TLAST,
      m_axis_tstrb(2 downto 0) => s04_couplers_to_xbar_TSTRB(2 downto 0),
      m_axis_tuser(0) => s04_couplers_to_xbar_TUSER,
      m_axis_tvalid => s04_couplers_to_xbar_TVALID,
      s_axis_tready(0) => s04_couplers_to_xbar_TREADY
    );
s08_couplers: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_s08_couplers_imp_TOKXF3
     port map (
      S08_AXIS_ACLK => S08_AXIS_ACLK,
      S08_AXIS_ARESETN => S08_AXIS_ARESETN,
      S08_AXIS_tdata(23 downto 0) => S08_AXIS_tdata(23 downto 0),
      S08_AXIS_tdest(0) => S08_AXIS_tdest(0),
      S08_AXIS_tid(0) => S08_AXIS_tid(0),
      S08_AXIS_tkeep(2 downto 0) => S08_AXIS_tkeep(2 downto 0),
      S08_AXIS_tlast(0) => S08_AXIS_tlast(0),
      S08_AXIS_tready(0) => S08_AXIS_tready(0),
      S08_AXIS_tstrb(2 downto 0) => S08_AXIS_tstrb(2 downto 0),
      S08_AXIS_tuser(0) => S08_AXIS_tuser(0),
      S08_AXIS_tvalid(0) => S08_AXIS_tvalid(0),
      m_axis_tdata(23 downto 0) => s08_couplers_to_xbar_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => s08_couplers_to_xbar_TDEST(3 downto 0),
      m_axis_tid(0) => s08_couplers_to_xbar_TID,
      m_axis_tkeep(2 downto 0) => s08_couplers_to_xbar_TKEEP(2 downto 0),
      m_axis_tlast => s08_couplers_to_xbar_TLAST,
      m_axis_tstrb(2 downto 0) => s08_couplers_to_xbar_TSTRB(2 downto 0),
      m_axis_tuser(0) => s08_couplers_to_xbar_TUSER,
      m_axis_tvalid => s08_couplers_to_xbar_TVALID,
      s_axis_tready(0) => s08_couplers_to_xbar_TREADY
    );
xbar: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_xbar_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axis_tdata(239 downto 217) => NLW_xbar_m_axis_tdata_UNCONNECTED(239 downto 217),
      m_axis_tdata(216) => M09_AXIS_tdata,
      m_axis_tdata(215 downto 192) => xbar_to_m08_couplers_TDATA(215 downto 192),
      m_axis_tdata(191 downto 168) => xbar_to_m07_couplers_TDATA(191 downto 168),
      m_axis_tdata(167 downto 144) => xbar_to_m06_couplers_TDATA(167 downto 144),
      m_axis_tdata(143 downto 120) => xbar_to_m05_couplers_TDATA(143 downto 120),
      m_axis_tdata(119 downto 96) => xbar_to_m04_couplers_TDATA(119 downto 96),
      m_axis_tdata(95 downto 73) => NLW_xbar_m_axis_tdata_UNCONNECTED(95 downto 73),
      m_axis_tdata(72) => M03_AXIS_tdata,
      m_axis_tdata(71 downto 48) => xbar_to_m02_couplers_TDATA(71 downto 48),
      m_axis_tdata(47 downto 24) => xbar_to_m01_couplers_TDATA(47 downto 24),
      m_axis_tdata(23 downto 0) => xbar_to_m00_couplers_TDATA(23 downto 0),
      m_axis_tdest(39 downto 37) => NLW_xbar_m_axis_tdest_UNCONNECTED(39 downto 37),
      m_axis_tdest(36) => M09_AXIS_tdest,
      m_axis_tdest(35 downto 32) => xbar_to_m08_couplers_TDEST(35 downto 32),
      m_axis_tdest(31 downto 28) => xbar_to_m07_couplers_TDEST(31 downto 28),
      m_axis_tdest(27 downto 24) => xbar_to_m06_couplers_TDEST(27 downto 24),
      m_axis_tdest(23 downto 20) => xbar_to_m05_couplers_TDEST(23 downto 20),
      m_axis_tdest(19 downto 16) => xbar_to_m04_couplers_TDEST(19 downto 16),
      m_axis_tdest(15 downto 13) => NLW_xbar_m_axis_tdest_UNCONNECTED(15 downto 13),
      m_axis_tdest(12) => M03_AXIS_tdest,
      m_axis_tdest(11 downto 8) => xbar_to_m02_couplers_TDEST(11 downto 8),
      m_axis_tdest(7 downto 4) => xbar_to_m01_couplers_TDEST(7 downto 4),
      m_axis_tdest(3 downto 0) => xbar_to_m00_couplers_TDEST(3 downto 0),
      m_axis_tid(9) => NLW_xbar_m_axis_tid_UNCONNECTED(9),
      m_axis_tid(8) => xbar_to_m08_couplers_TID,
      m_axis_tid(7) => xbar_to_m07_couplers_TID,
      m_axis_tid(6) => xbar_to_m06_couplers_TID,
      m_axis_tid(5) => xbar_to_m05_couplers_TID,
      m_axis_tid(4) => xbar_to_m04_couplers_TID,
      m_axis_tid(3) => NLW_xbar_m_axis_tid_UNCONNECTED(3),
      m_axis_tid(2) => xbar_to_m02_couplers_TID,
      m_axis_tid(1) => xbar_to_m01_couplers_TID,
      m_axis_tid(0) => xbar_to_m00_couplers_TID,
      m_axis_tkeep(29 downto 27) => NLW_xbar_m_axis_tkeep_UNCONNECTED(29 downto 27),
      m_axis_tkeep(26 downto 24) => xbar_to_m08_couplers_TKEEP(26 downto 24),
      m_axis_tkeep(23 downto 21) => xbar_to_m07_couplers_TKEEP(23 downto 21),
      m_axis_tkeep(20 downto 18) => xbar_to_m06_couplers_TKEEP(20 downto 18),
      m_axis_tkeep(17 downto 15) => xbar_to_m05_couplers_TKEEP(17 downto 15),
      m_axis_tkeep(14 downto 12) => xbar_to_m04_couplers_TKEEP(14 downto 12),
      m_axis_tkeep(11 downto 9) => NLW_xbar_m_axis_tkeep_UNCONNECTED(11 downto 9),
      m_axis_tkeep(8 downto 6) => xbar_to_m02_couplers_TKEEP(8 downto 6),
      m_axis_tkeep(5 downto 3) => xbar_to_m01_couplers_TKEEP(5 downto 3),
      m_axis_tkeep(2 downto 0) => xbar_to_m00_couplers_TKEEP(2 downto 0),
      m_axis_tlast(9) => NLW_xbar_m_axis_tlast_UNCONNECTED(9),
      m_axis_tlast(8) => xbar_to_m08_couplers_TLAST,
      m_axis_tlast(7) => xbar_to_m07_couplers_TLAST,
      m_axis_tlast(6) => xbar_to_m06_couplers_TLAST,
      m_axis_tlast(5) => xbar_to_m05_couplers_TLAST,
      m_axis_tlast(4) => xbar_to_m04_couplers_TLAST,
      m_axis_tlast(3) => NLW_xbar_m_axis_tlast_UNCONNECTED(3),
      m_axis_tlast(2) => xbar_to_m02_couplers_TLAST,
      m_axis_tlast(1) => xbar_to_m01_couplers_TLAST,
      m_axis_tlast(0) => xbar_to_m00_couplers_TLAST,
      m_axis_tready(9) => M09_AXIS_tready,
      m_axis_tready(8) => xbar_to_m08_couplers_TREADY,
      m_axis_tready(7) => xbar_to_m07_couplers_TREADY,
      m_axis_tready(6) => xbar_to_m06_couplers_TREADY,
      m_axis_tready(5) => xbar_to_m05_couplers_TREADY,
      m_axis_tready(4) => xbar_to_m04_couplers_TREADY,
      m_axis_tready(3) => M03_AXIS_tready,
      m_axis_tready(2) => xbar_to_m02_couplers_TREADY,
      m_axis_tready(1) => xbar_to_m01_couplers_TREADY,
      m_axis_tready(0) => xbar_to_m00_couplers_TREADY,
      m_axis_tstrb(29 downto 27) => NLW_xbar_m_axis_tstrb_UNCONNECTED(29 downto 27),
      m_axis_tstrb(26 downto 24) => xbar_to_m08_couplers_TSTRB(26 downto 24),
      m_axis_tstrb(23 downto 21) => xbar_to_m07_couplers_TSTRB(23 downto 21),
      m_axis_tstrb(20 downto 18) => xbar_to_m06_couplers_TSTRB(20 downto 18),
      m_axis_tstrb(17 downto 15) => xbar_to_m05_couplers_TSTRB(17 downto 15),
      m_axis_tstrb(14 downto 12) => xbar_to_m04_couplers_TSTRB(14 downto 12),
      m_axis_tstrb(11 downto 9) => NLW_xbar_m_axis_tstrb_UNCONNECTED(11 downto 9),
      m_axis_tstrb(8 downto 6) => xbar_to_m02_couplers_TSTRB(8 downto 6),
      m_axis_tstrb(5 downto 3) => xbar_to_m01_couplers_TSTRB(5 downto 3),
      m_axis_tstrb(2 downto 0) => xbar_to_m00_couplers_TSTRB(2 downto 0),
      m_axis_tuser(9) => NLW_xbar_m_axis_tuser_UNCONNECTED(9),
      m_axis_tuser(8) => xbar_to_m08_couplers_TUSER,
      m_axis_tuser(7) => xbar_to_m07_couplers_TUSER,
      m_axis_tuser(6) => xbar_to_m06_couplers_TUSER,
      m_axis_tuser(5) => xbar_to_m05_couplers_TUSER,
      m_axis_tuser(4) => xbar_to_m04_couplers_TUSER,
      m_axis_tuser(3) => NLW_xbar_m_axis_tuser_UNCONNECTED(3),
      m_axis_tuser(2) => xbar_to_m02_couplers_TUSER,
      m_axis_tuser(1) => xbar_to_m01_couplers_TUSER,
      m_axis_tuser(0) => xbar_to_m00_couplers_TUSER,
      m_axis_tvalid(9) => M09_AXIS_tvalid,
      m_axis_tvalid(8) => xbar_to_m08_couplers_TVALID,
      m_axis_tvalid(7) => xbar_to_m07_couplers_TVALID,
      m_axis_tvalid(6) => xbar_to_m06_couplers_TVALID,
      m_axis_tvalid(5) => xbar_to_m05_couplers_TVALID,
      m_axis_tvalid(4) => xbar_to_m04_couplers_TVALID,
      m_axis_tvalid(3) => M03_AXIS_tvalid,
      m_axis_tvalid(2) => xbar_to_m02_couplers_TVALID,
      m_axis_tvalid(1) => xbar_to_m01_couplers_TVALID,
      m_axis_tvalid(0) => xbar_to_m00_couplers_TVALID,
      s_axi_ctrl_aclk => S_AXI_CTRL_ACLK,
      s_axi_ctrl_araddr(6 downto 0) => S_AXI_CTRL_araddr(6 downto 0),
      s_axi_ctrl_aresetn => S_AXI_CTRL_ARESETN,
      s_axi_ctrl_arready => S_AXI_CTRL_arready,
      s_axi_ctrl_arvalid => S_AXI_CTRL_arvalid,
      s_axi_ctrl_awaddr(6 downto 0) => S_AXI_CTRL_awaddr(6 downto 0),
      s_axi_ctrl_awready => S_AXI_CTRL_awready,
      s_axi_ctrl_awvalid => S_AXI_CTRL_awvalid,
      s_axi_ctrl_bready => S_AXI_CTRL_bready,
      s_axi_ctrl_bresp(1 downto 0) => S_AXI_CTRL_bresp(1 downto 0),
      s_axi_ctrl_bvalid => S_AXI_CTRL_bvalid,
      s_axi_ctrl_rdata(31 downto 0) => S_AXI_CTRL_rdata(31 downto 0),
      s_axi_ctrl_rready => S_AXI_CTRL_rready,
      s_axi_ctrl_rresp(1 downto 0) => S_AXI_CTRL_rresp(1 downto 0),
      s_axi_ctrl_rvalid => S_AXI_CTRL_rvalid,
      s_axi_ctrl_wdata(31 downto 0) => S_AXI_CTRL_wdata(31 downto 0),
      s_axi_ctrl_wready => S_AXI_CTRL_wready,
      s_axi_ctrl_wvalid => S_AXI_CTRL_wvalid,
      s_axis_tdata(239) => S09_AXIS_tdata,
      s_axis_tdata(238) => S09_AXIS_tdata,
      s_axis_tdata(237) => S09_AXIS_tdata,
      s_axis_tdata(236) => S09_AXIS_tdata,
      s_axis_tdata(235) => S09_AXIS_tdata,
      s_axis_tdata(234) => S09_AXIS_tdata,
      s_axis_tdata(233) => S09_AXIS_tdata,
      s_axis_tdata(232) => S09_AXIS_tdata,
      s_axis_tdata(231) => S09_AXIS_tdata,
      s_axis_tdata(230) => S09_AXIS_tdata,
      s_axis_tdata(229) => S09_AXIS_tdata,
      s_axis_tdata(228) => S09_AXIS_tdata,
      s_axis_tdata(227) => S09_AXIS_tdata,
      s_axis_tdata(226) => S09_AXIS_tdata,
      s_axis_tdata(225) => S09_AXIS_tdata,
      s_axis_tdata(224) => S09_AXIS_tdata,
      s_axis_tdata(223) => S09_AXIS_tdata,
      s_axis_tdata(222) => S09_AXIS_tdata,
      s_axis_tdata(221) => S09_AXIS_tdata,
      s_axis_tdata(220) => S09_AXIS_tdata,
      s_axis_tdata(219) => S09_AXIS_tdata,
      s_axis_tdata(218) => S09_AXIS_tdata,
      s_axis_tdata(217) => S09_AXIS_tdata,
      s_axis_tdata(216) => S09_AXIS_tdata,
      s_axis_tdata(215 downto 192) => s08_couplers_to_xbar_TDATA(23 downto 0),
      s_axis_tdata(191) => S07_AXIS_tdata,
      s_axis_tdata(190) => S07_AXIS_tdata,
      s_axis_tdata(189) => S07_AXIS_tdata,
      s_axis_tdata(188) => S07_AXIS_tdata,
      s_axis_tdata(187) => S07_AXIS_tdata,
      s_axis_tdata(186) => S07_AXIS_tdata,
      s_axis_tdata(185) => S07_AXIS_tdata,
      s_axis_tdata(184) => S07_AXIS_tdata,
      s_axis_tdata(183) => S07_AXIS_tdata,
      s_axis_tdata(182) => S07_AXIS_tdata,
      s_axis_tdata(181) => S07_AXIS_tdata,
      s_axis_tdata(180) => S07_AXIS_tdata,
      s_axis_tdata(179) => S07_AXIS_tdata,
      s_axis_tdata(178) => S07_AXIS_tdata,
      s_axis_tdata(177) => S07_AXIS_tdata,
      s_axis_tdata(176) => S07_AXIS_tdata,
      s_axis_tdata(175) => S07_AXIS_tdata,
      s_axis_tdata(174) => S07_AXIS_tdata,
      s_axis_tdata(173) => S07_AXIS_tdata,
      s_axis_tdata(172) => S07_AXIS_tdata,
      s_axis_tdata(171) => S07_AXIS_tdata,
      s_axis_tdata(170) => S07_AXIS_tdata,
      s_axis_tdata(169) => S07_AXIS_tdata,
      s_axis_tdata(168) => S07_AXIS_tdata,
      s_axis_tdata(167) => S06_AXIS_tdata,
      s_axis_tdata(166) => S06_AXIS_tdata,
      s_axis_tdata(165) => S06_AXIS_tdata,
      s_axis_tdata(164) => S06_AXIS_tdata,
      s_axis_tdata(163) => S06_AXIS_tdata,
      s_axis_tdata(162) => S06_AXIS_tdata,
      s_axis_tdata(161) => S06_AXIS_tdata,
      s_axis_tdata(160) => S06_AXIS_tdata,
      s_axis_tdata(159) => S06_AXIS_tdata,
      s_axis_tdata(158) => S06_AXIS_tdata,
      s_axis_tdata(157) => S06_AXIS_tdata,
      s_axis_tdata(156) => S06_AXIS_tdata,
      s_axis_tdata(155) => S06_AXIS_tdata,
      s_axis_tdata(154) => S06_AXIS_tdata,
      s_axis_tdata(153) => S06_AXIS_tdata,
      s_axis_tdata(152) => S06_AXIS_tdata,
      s_axis_tdata(151) => S06_AXIS_tdata,
      s_axis_tdata(150) => S06_AXIS_tdata,
      s_axis_tdata(149) => S06_AXIS_tdata,
      s_axis_tdata(148) => S06_AXIS_tdata,
      s_axis_tdata(147) => S06_AXIS_tdata,
      s_axis_tdata(146) => S06_AXIS_tdata,
      s_axis_tdata(145) => S06_AXIS_tdata,
      s_axis_tdata(144) => S06_AXIS_tdata,
      s_axis_tdata(143) => S05_AXIS_tdata,
      s_axis_tdata(142) => S05_AXIS_tdata,
      s_axis_tdata(141) => S05_AXIS_tdata,
      s_axis_tdata(140) => S05_AXIS_tdata,
      s_axis_tdata(139) => S05_AXIS_tdata,
      s_axis_tdata(138) => S05_AXIS_tdata,
      s_axis_tdata(137) => S05_AXIS_tdata,
      s_axis_tdata(136) => S05_AXIS_tdata,
      s_axis_tdata(135) => S05_AXIS_tdata,
      s_axis_tdata(134) => S05_AXIS_tdata,
      s_axis_tdata(133) => S05_AXIS_tdata,
      s_axis_tdata(132) => S05_AXIS_tdata,
      s_axis_tdata(131) => S05_AXIS_tdata,
      s_axis_tdata(130) => S05_AXIS_tdata,
      s_axis_tdata(129) => S05_AXIS_tdata,
      s_axis_tdata(128) => S05_AXIS_tdata,
      s_axis_tdata(127) => S05_AXIS_tdata,
      s_axis_tdata(126) => S05_AXIS_tdata,
      s_axis_tdata(125) => S05_AXIS_tdata,
      s_axis_tdata(124) => S05_AXIS_tdata,
      s_axis_tdata(123) => S05_AXIS_tdata,
      s_axis_tdata(122) => S05_AXIS_tdata,
      s_axis_tdata(121) => S05_AXIS_tdata,
      s_axis_tdata(120) => S05_AXIS_tdata,
      s_axis_tdata(119 downto 96) => s04_couplers_to_xbar_TDATA(23 downto 0),
      s_axis_tdata(95) => S03_AXIS_tdata,
      s_axis_tdata(94) => S03_AXIS_tdata,
      s_axis_tdata(93) => S03_AXIS_tdata,
      s_axis_tdata(92) => S03_AXIS_tdata,
      s_axis_tdata(91) => S03_AXIS_tdata,
      s_axis_tdata(90) => S03_AXIS_tdata,
      s_axis_tdata(89) => S03_AXIS_tdata,
      s_axis_tdata(88) => S03_AXIS_tdata,
      s_axis_tdata(87) => S03_AXIS_tdata,
      s_axis_tdata(86) => S03_AXIS_tdata,
      s_axis_tdata(85) => S03_AXIS_tdata,
      s_axis_tdata(84) => S03_AXIS_tdata,
      s_axis_tdata(83) => S03_AXIS_tdata,
      s_axis_tdata(82) => S03_AXIS_tdata,
      s_axis_tdata(81) => S03_AXIS_tdata,
      s_axis_tdata(80) => S03_AXIS_tdata,
      s_axis_tdata(79) => S03_AXIS_tdata,
      s_axis_tdata(78) => S03_AXIS_tdata,
      s_axis_tdata(77) => S03_AXIS_tdata,
      s_axis_tdata(76) => S03_AXIS_tdata,
      s_axis_tdata(75) => S03_AXIS_tdata,
      s_axis_tdata(74) => S03_AXIS_tdata,
      s_axis_tdata(73) => S03_AXIS_tdata,
      s_axis_tdata(72) => S03_AXIS_tdata,
      s_axis_tdata(71 downto 48) => s02_couplers_to_xbar_TDATA(23 downto 0),
      s_axis_tdata(47 downto 24) => s01_couplers_to_xbar_TDATA(23 downto 0),
      s_axis_tdata(23 downto 0) => s00_couplers_to_xbar_TDATA(23 downto 0),
      s_axis_tdest(39) => S09_AXIS_tdest,
      s_axis_tdest(38) => S09_AXIS_tdest,
      s_axis_tdest(37) => S09_AXIS_tdest,
      s_axis_tdest(36) => S09_AXIS_tdest,
      s_axis_tdest(35 downto 32) => s08_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(31) => S07_AXIS_tdest,
      s_axis_tdest(30) => S07_AXIS_tdest,
      s_axis_tdest(29) => S07_AXIS_tdest,
      s_axis_tdest(28) => S07_AXIS_tdest,
      s_axis_tdest(27) => S06_AXIS_tdest,
      s_axis_tdest(26) => S06_AXIS_tdest,
      s_axis_tdest(25) => S06_AXIS_tdest,
      s_axis_tdest(24) => S06_AXIS_tdest,
      s_axis_tdest(23) => S05_AXIS_tdest,
      s_axis_tdest(22) => S05_AXIS_tdest,
      s_axis_tdest(21) => S05_AXIS_tdest,
      s_axis_tdest(20) => S05_AXIS_tdest,
      s_axis_tdest(19 downto 16) => s04_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(15) => S03_AXIS_tdest,
      s_axis_tdest(14) => S03_AXIS_tdest,
      s_axis_tdest(13) => S03_AXIS_tdest,
      s_axis_tdest(12) => S03_AXIS_tdest,
      s_axis_tdest(11 downto 8) => s02_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(7 downto 4) => s01_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(3 downto 0) => s00_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tid(9) => '0',
      s_axis_tid(8) => s08_couplers_to_xbar_TID,
      s_axis_tid(7 downto 5) => B"000",
      s_axis_tid(4) => s04_couplers_to_xbar_TID,
      s_axis_tid(3) => '0',
      s_axis_tid(2) => s02_couplers_to_xbar_TID,
      s_axis_tid(1) => s01_couplers_to_xbar_TID,
      s_axis_tid(0) => s00_couplers_to_xbar_TID,
      s_axis_tkeep(29 downto 27) => B"111",
      s_axis_tkeep(26 downto 24) => s08_couplers_to_xbar_TKEEP(2 downto 0),
      s_axis_tkeep(23 downto 15) => B"111111111",
      s_axis_tkeep(14 downto 12) => s04_couplers_to_xbar_TKEEP(2 downto 0),
      s_axis_tkeep(11 downto 9) => B"111",
      s_axis_tkeep(8 downto 6) => s02_couplers_to_xbar_TKEEP(2 downto 0),
      s_axis_tkeep(5 downto 3) => s01_couplers_to_xbar_TKEEP(2 downto 0),
      s_axis_tkeep(2 downto 0) => s00_couplers_to_xbar_TKEEP(2 downto 0),
      s_axis_tlast(9) => '0',
      s_axis_tlast(8) => s08_couplers_to_xbar_TLAST,
      s_axis_tlast(7 downto 5) => B"000",
      s_axis_tlast(4) => s04_couplers_to_xbar_TLAST,
      s_axis_tlast(3) => '0',
      s_axis_tlast(2) => s02_couplers_to_xbar_TLAST,
      s_axis_tlast(1) => s01_couplers_to_xbar_TLAST,
      s_axis_tlast(0) => s00_couplers_to_xbar_TLAST,
      s_axis_tready(9) => S09_AXIS_tready,
      s_axis_tready(8) => s08_couplers_to_xbar_TREADY,
      s_axis_tready(7) => S07_AXIS_tready,
      s_axis_tready(6) => S06_AXIS_tready,
      s_axis_tready(5) => S05_AXIS_tready,
      s_axis_tready(4) => s04_couplers_to_xbar_TREADY,
      s_axis_tready(3) => S03_AXIS_tready,
      s_axis_tready(2) => s02_couplers_to_xbar_TREADY,
      s_axis_tready(1) => s01_couplers_to_xbar_TREADY,
      s_axis_tready(0) => s00_couplers_to_xbar_TREADY,
      s_axis_tstrb(29 downto 27) => B"111",
      s_axis_tstrb(26 downto 24) => s08_couplers_to_xbar_TSTRB(2 downto 0),
      s_axis_tstrb(23 downto 15) => B"111111111",
      s_axis_tstrb(14 downto 12) => s04_couplers_to_xbar_TSTRB(2 downto 0),
      s_axis_tstrb(11 downto 9) => B"111",
      s_axis_tstrb(8 downto 6) => s02_couplers_to_xbar_TSTRB(2 downto 0),
      s_axis_tstrb(5 downto 3) => s01_couplers_to_xbar_TSTRB(2 downto 0),
      s_axis_tstrb(2 downto 0) => s00_couplers_to_xbar_TSTRB(2 downto 0),
      s_axis_tuser(9) => '0',
      s_axis_tuser(8) => s08_couplers_to_xbar_TUSER,
      s_axis_tuser(7 downto 5) => B"000",
      s_axis_tuser(4) => s04_couplers_to_xbar_TUSER,
      s_axis_tuser(3) => '0',
      s_axis_tuser(2) => s02_couplers_to_xbar_TUSER,
      s_axis_tuser(1) => s01_couplers_to_xbar_TUSER,
      s_axis_tuser(0) => s00_couplers_to_xbar_TUSER,
      s_axis_tvalid(9) => S09_AXIS_tvalid,
      s_axis_tvalid(8) => s08_couplers_to_xbar_TVALID,
      s_axis_tvalid(7) => S07_AXIS_tvalid,
      s_axis_tvalid(6) => S06_AXIS_tvalid,
      s_axis_tvalid(5) => S05_AXIS_tvalid,
      s_axis_tvalid(4) => s04_couplers_to_xbar_TVALID,
      s_axis_tvalid(3) => S03_AXIS_tvalid,
      s_axis_tvalid(2) => s02_couplers_to_xbar_TVALID,
      s_axis_tvalid(1) => s01_couplers_to_xbar_TVALID,
      s_axis_tvalid(0) => s00_couplers_to_xbar_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b is
  port (
    aclk_axis : in STD_LOGIC;
    aclk_ctrl : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    aresetn_io_axis : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_axi_ctrl_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_axi_ctrl_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC
  );
  attribute hw_handoff : string;
  attribute hw_handoff of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b : entity is "design_1_v_proc_ss_0_3.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_csc_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_csc_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_hsc_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_hsc_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_input_size_set_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_input_size_set_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_ltr_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_ltr_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_reset_sel_axis_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_reset_sel_axis_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_rst_axis_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_rst_axis_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_smartconnect_0_0 is
  port (
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aclk2 : in STD_LOGIC;
    aclk3 : in STD_LOGIC;
    aclk4 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    M05_AXI_awid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC;
    M05_AXI_awlen : out STD_LOGIC;
    M05_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_awlock : out STD_LOGIC;
    M05_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awuser : out STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wid : out STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC;
    M05_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wuser : out STD_LOGIC;
    M05_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bid : in STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_buser : in STD_LOGIC;
    M05_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arid : out STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC;
    M05_AXI_arlen : out STD_LOGIC;
    M05_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_arlock : out STD_LOGIC;
    M05_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_aruser : out STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_ruser : in STD_LOGIC;
    M05_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC;
    M06_AXI_awlen : out STD_LOGIC;
    M06_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_awlock : out STD_LOGIC;
    M06_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_awuser : out STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wid : out STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC;
    M06_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wuser : out STD_LOGIC;
    M06_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bid : in STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_buser : in STD_LOGIC;
    M06_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_arid : out STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC;
    M06_AXI_arlen : out STD_LOGIC;
    M06_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_arlock : out STD_LOGIC;
    M06_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_aruser : out STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_ruser : in STD_LOGIC;
    M06_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC;
    M07_AXI_awlen : out STD_LOGIC;
    M07_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_awlock : out STD_LOGIC;
    M07_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_awuser : out STD_LOGIC;
    M07_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wid : out STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC;
    M07_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wuser : out STD_LOGIC;
    M07_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bid : in STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_buser : in STD_LOGIC;
    M07_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_arid : out STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC;
    M07_AXI_arlen : out STD_LOGIC;
    M07_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_arlock : out STD_LOGIC;
    M07_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_aruser : out STD_LOGIC;
    M07_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_ruser : in STD_LOGIC;
    M07_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M08_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M08_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_rready : out STD_LOGIC;
    M09_AXI_awid : out STD_LOGIC;
    M09_AXI_awaddr : out STD_LOGIC;
    M09_AXI_awlen : out STD_LOGIC;
    M09_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_awlock : out STD_LOGIC;
    M09_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_awuser : out STD_LOGIC;
    M09_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_wid : out STD_LOGIC;
    M09_AXI_wdata : out STD_LOGIC;
    M09_AXI_wstrb : out STD_LOGIC;
    M09_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_wuser : out STD_LOGIC;
    M09_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_bid : in STD_LOGIC;
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_buser : in STD_LOGIC;
    M09_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_arid : out STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC;
    M09_AXI_arlen : out STD_LOGIC;
    M09_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_arlock : out STD_LOGIC;
    M09_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M09_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_aruser : out STD_LOGIC;
    M09_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_rid : in STD_LOGIC;
    M09_AXI_rdata : in STD_LOGIC;
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_ruser : in STD_LOGIC;
    M09_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_awid : out STD_LOGIC;
    M10_AXI_awaddr : out STD_LOGIC;
    M10_AXI_awlen : out STD_LOGIC;
    M10_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M10_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_awlock : out STD_LOGIC;
    M10_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M10_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_awuser : out STD_LOGIC;
    M10_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_wid : out STD_LOGIC;
    M10_AXI_wdata : out STD_LOGIC;
    M10_AXI_wstrb : out STD_LOGIC;
    M10_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_wuser : out STD_LOGIC;
    M10_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_bid : in STD_LOGIC;
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_buser : in STD_LOGIC;
    M10_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_arid : out STD_LOGIC;
    M10_AXI_araddr : out STD_LOGIC;
    M10_AXI_arlen : out STD_LOGIC;
    M10_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M10_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_arlock : out STD_LOGIC;
    M10_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M10_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_aruser : out STD_LOGIC;
    M10_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_rid : in STD_LOGIC;
    M10_AXI_rdata : in STD_LOGIC;
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_ruser : in STD_LOGIC;
    M10_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_awid : out STD_LOGIC;
    M11_AXI_awaddr : out STD_LOGIC;
    M11_AXI_awlen : out STD_LOGIC;
    M11_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M11_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_awlock : out STD_LOGIC;
    M11_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M11_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_awuser : out STD_LOGIC;
    M11_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_wid : out STD_LOGIC;
    M11_AXI_wdata : out STD_LOGIC;
    M11_AXI_wstrb : out STD_LOGIC;
    M11_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_wuser : out STD_LOGIC;
    M11_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_bid : in STD_LOGIC;
    M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_buser : in STD_LOGIC;
    M11_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_arid : out STD_LOGIC;
    M11_AXI_araddr : out STD_LOGIC;
    M11_AXI_arlen : out STD_LOGIC;
    M11_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M11_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_arlock : out STD_LOGIC;
    M11_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M11_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_aruser : out STD_LOGIC;
    M11_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_rid : in STD_LOGIC;
    M11_AXI_rdata : in STD_LOGIC;
    M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_ruser : in STD_LOGIC;
    M11_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_smartconnect_0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_vsc_0 is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TVALID : out STD_LOGIC;
    m_axis_video_TREADY : in STD_LOGIC;
    m_axis_video_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_video_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_vsc_0;
  signal intf_net_csc_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_csc_m_axis_video_TDEST : STD_LOGIC;
  signal intf_net_csc_m_axis_video_TID : STD_LOGIC;
  signal intf_net_csc_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_csc_m_axis_video_TLAST : STD_LOGIC;
  signal intf_net_csc_m_axis_video_TREADY : STD_LOGIC;
  signal intf_net_csc_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_csc_m_axis_video_TUSER : STD_LOGIC;
  signal intf_net_csc_m_axis_video_TVALID : STD_LOGIC;
  signal intf_net_hsc_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_hsc_m_axis_video_TDEST : STD_LOGIC;
  signal intf_net_hsc_m_axis_video_TID : STD_LOGIC;
  signal intf_net_hsc_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_hsc_m_axis_video_TLAST : STD_LOGIC;
  signal intf_net_hsc_m_axis_video_TREADY : STD_LOGIC;
  signal intf_net_hsc_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_hsc_m_axis_video_TUSER : STD_LOGIC;
  signal intf_net_hsc_m_axis_video_TVALID : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_input_size_set_M_AXIS_TDEST : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TID : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_input_size_set_M_AXIS_TLAST : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TREADY : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_input_size_set_M_AXIS_TUSER : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TVALID : STD_LOGIC;
  signal intf_net_ltr_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_ltr_m_axis_video_TDEST : STD_LOGIC;
  signal intf_net_ltr_m_axis_video_TID : STD_LOGIC;
  signal intf_net_ltr_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_ltr_m_axis_video_TLAST : STD_LOGIC;
  signal intf_net_ltr_m_axis_video_TREADY : STD_LOGIC;
  signal intf_net_ltr_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_ltr_m_axis_video_TUSER : STD_LOGIC;
  signal intf_net_ltr_m_axis_video_TVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal intf_net_smartconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal intf_net_smartconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_smartconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_smartconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_smartconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_smartconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_smartconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_smartconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_smartconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_smartconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_smartconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_smartconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_smartconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal intf_net_smartconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M02_AXI_ARVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal intf_net_smartconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M02_AXI_AWVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M02_AXI_BREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_smartconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_smartconnect_0_M02_AXI_RREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_smartconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_smartconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_smartconnect_0_M02_AXI_WVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal intf_net_smartconnect_0_M03_AXI_ARREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M03_AXI_ARVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal intf_net_smartconnect_0_M03_AXI_AWREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M03_AXI_AWVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M03_AXI_BREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_smartconnect_0_M03_AXI_BVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_smartconnect_0_M03_AXI_RREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_smartconnect_0_M03_AXI_RVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_smartconnect_0_M03_AXI_WREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_smartconnect_0_M03_AXI_WVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal intf_net_smartconnect_0_M04_AXI_ARREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M04_AXI_ARVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal intf_net_smartconnect_0_M04_AXI_AWREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M04_AXI_AWVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M04_AXI_BREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_smartconnect_0_M04_AXI_BVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_smartconnect_0_M04_AXI_RREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_smartconnect_0_M04_AXI_RVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_smartconnect_0_M04_AXI_WREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_smartconnect_0_M04_AXI_WVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal intf_net_smartconnect_0_M08_AXI_ARREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M08_AXI_ARVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal intf_net_smartconnect_0_M08_AXI_AWREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M08_AXI_AWVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M08_AXI_BREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_smartconnect_0_M08_AXI_BVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_smartconnect_0_M08_AXI_RREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_smartconnect_0_M08_AXI_RVALID : STD_LOGIC;
  signal intf_net_smartconnect_0_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_smartconnect_0_M08_AXI_WREADY : STD_LOGIC;
  signal intf_net_smartconnect_0_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_smartconnect_0_M08_AXI_WVALID : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M01_AXIS_TDEST : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TID : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M01_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M01_AXIS_TUSER : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M02_AXIS_TDEST : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TID : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M02_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M02_AXIS_TUSER : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M04_AXIS_TDEST : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TID : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M04_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M04_AXIS_TUSER : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M08_AXIS_TDEST : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TID : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M08_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M08_AXIS_TUSER : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TVALID : STD_LOGIC;
  signal intf_net_vsc_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_vsc_m_axis_video_TDEST : STD_LOGIC;
  signal intf_net_vsc_m_axis_video_TID : STD_LOGIC;
  signal intf_net_vsc_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_vsc_m_axis_video_TLAST : STD_LOGIC;
  signal intf_net_vsc_m_axis_video_TREADY : STD_LOGIC;
  signal intf_net_vsc_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_vsc_m_axis_video_TUSER : STD_LOGIC;
  signal intf_net_vsc_m_axis_video_TVALID : STD_LOGIC;
  signal net_proc_ss_ip_aresetn_Dout : STD_LOGIC;
  signal net_reset_sel_axis_gpio_io_o : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_rst_axis_peripheral_aresetn : STD_LOGIC;
  signal NLW_csc_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_hsc_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_ltr_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_reset_sel_axis_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rst_axis_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_axis_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_axis_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_axis_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M05_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M05_AXI_arid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M05_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M05_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M05_AXI_aruser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M05_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M05_AXI_awid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M05_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M05_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M05_AXI_awuser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M05_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M05_AXI_wid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M05_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M05_AXI_wuser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_arid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_aruser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_awid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_awuser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_wid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M06_AXI_wuser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_arid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_aruser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_awid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_awuser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_wid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M07_AXI_wuser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_arid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_aruser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_awid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_awuser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_wid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M09_AXI_wuser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_arid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_aruser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_awid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_awuser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_wid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M10_AXI_wuser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_arid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_aruser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_awid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_awuser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_wid_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M11_AXI_wuser_UNCONNECTED : STD_LOGIC;
  signal NLW_smartconnect_0_M00_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M00_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M00_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M01_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M01_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M02_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M02_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M03_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M03_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M04_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M04_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_arvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M05_AXI_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_awvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M05_AXI_bready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M05_AXI_rready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M05_AXI_wlast_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M05_AXI_wvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M06_AXI_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_smartconnect_0_M06_AXI_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M06_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M06_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M06_AXI_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M06_AXI_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M06_AXI_arvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M06_AXI_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_smartconnect_0_M06_AXI_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M06_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M06_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M06_AXI_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M06_AXI_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M06_AXI_awvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M06_AXI_bready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M06_AXI_rready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M06_AXI_wlast_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M06_AXI_wvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M07_AXI_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_smartconnect_0_M07_AXI_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M07_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M07_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M07_AXI_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M07_AXI_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M07_AXI_arvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M07_AXI_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_smartconnect_0_M07_AXI_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M07_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M07_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M07_AXI_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M07_AXI_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M07_AXI_awvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M07_AXI_bready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M07_AXI_rready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M07_AXI_wlast_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M07_AXI_wvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M08_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M08_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M09_AXI_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_smartconnect_0_M09_AXI_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M09_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M09_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M09_AXI_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M09_AXI_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M09_AXI_arvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M09_AXI_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_smartconnect_0_M09_AXI_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M09_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M09_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M09_AXI_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M09_AXI_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M09_AXI_awvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M09_AXI_bready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M09_AXI_rready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M09_AXI_wlast_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M09_AXI_wvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M10_AXI_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_smartconnect_0_M10_AXI_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M10_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M10_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M10_AXI_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M10_AXI_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M10_AXI_arvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M10_AXI_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_smartconnect_0_M10_AXI_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M10_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M10_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M10_AXI_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M10_AXI_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M10_AXI_awvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M10_AXI_bready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M10_AXI_rready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M10_AXI_wlast_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M10_AXI_wvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M11_AXI_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_smartconnect_0_M11_AXI_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M11_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M11_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M11_AXI_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M11_AXI_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M11_AXI_arvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M11_AXI_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_smartconnect_0_M11_AXI_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M11_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M11_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M11_AXI_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M11_AXI_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M11_AXI_awvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M11_AXI_bready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M11_AXI_rready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M11_AXI_wlast_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M11_AXI_wvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_video_router_M03_AXIS_tdata_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_M03_AXIS_tdest_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_M03_AXIS_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_M05_AXIS_tdata_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_M05_AXIS_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_M06_AXIS_tdata_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_M06_AXIS_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_M07_AXIS_tdata_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_M07_AXIS_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_M09_AXIS_tdata_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_M09_AXIS_tdest_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_M09_AXIS_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_S03_AXIS_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_S05_AXIS_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_S06_AXIS_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_S07_AXIS_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_video_router_S09_AXIS_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_vsc_interrupt_UNCONNECTED : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of csc : label is "bd_d86b_csc_0_v_csc,Vivado 2020.1";
  attribute syn_black_box : string;
  attribute syn_black_box of csc : label is "TRUE";
  attribute X_CORE_INFO of hsc : label is "bd_d86b_hsc_0_v_hscaler,Vivado 2020.1";
  attribute syn_black_box of hsc : label is "TRUE";
  attribute X_CORE_INFO of input_size_set : label is "top_bd_d86b_input_size_set_0,Vivado 2020.1";
  attribute syn_black_box of input_size_set : label is "TRUE";
  attribute X_CORE_INFO of ltr : label is "bd_d86b_ltr_0_v_letterbox,Vivado 2020.1";
  attribute syn_black_box of ltr : label is "TRUE";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of proc_ss_ip_aresetn : label is "bd_d86b_proc_ss_ip_aresetn_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of proc_ss_ip_aresetn : label is "yes";
  attribute X_CORE_INFO of proc_ss_ip_aresetn : label is "xlslice_v1_0_2_xlslice,Vivado 2020.1";
  attribute X_CORE_INFO of reset_sel_axis : label is "axi_gpio,Vivado 2020.1";
  attribute syn_black_box of reset_sel_axis : label is "TRUE";
  attribute X_CORE_INFO of rst_axis : label is "proc_sys_reset,Vivado 2020.1";
  attribute syn_black_box of rst_axis : label is "TRUE";
  attribute X_CORE_INFO of smartconnect_0 : label is "bd_71bb,Vivado 2020.1";
  attribute syn_black_box of smartconnect_0 : label is "TRUE";
  attribute CHECK_LICENSE_TYPE of vid_in_aresetn : label is "bd_d86b_vid_in_aresetn_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of vid_in_aresetn : label is "yes";
  attribute X_CORE_INFO of vid_in_aresetn : label is "xlslice_v1_0_2_xlslice,Vivado 2020.1";
  attribute X_CORE_INFO of vsc : label is "bd_d86b_vsc_0_v_vscaler,Vivado 2020.1";
  attribute syn_black_box of vsc : label is "TRUE";
  attribute x_interface_info : string;
  attribute x_interface_info of aclk_axis : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_AXIS CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk_axis : signal is "XIL_INTERFACENAME CLK.ACLK_AXIS, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_CLKEN aclken, ASSOCIATED_RESET aresetn_io_axis, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of aclk_ctrl : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK";
  attribute x_interface_parameter of aclk_ctrl : signal is "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_CLKEN s_sc_aclken, ASSOCIATED_RESET aresetn_ctrl, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of aresetn_ctrl : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST";
  attribute x_interface_parameter of aresetn_ctrl : signal is "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of aresetn_io_axis : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_IO_AXIS RST";
  attribute x_interface_parameter of aresetn_io_axis : signal is "XIL_INTERFACENAME RST.ARESETN_IO_AXIS, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 148500000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1";
  attribute x_interface_info of m_axis_tdest : signal is "xilinx.com:interface:axis:1.0 m_axis TDEST";
  attribute x_interface_info of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 m_axis TID";
  attribute x_interface_info of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  attribute x_interface_info of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 m_axis TSTRB";
  attribute x_interface_info of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute x_interface_info of s_axi_ctrl_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR";
  attribute x_interface_parameter of s_axi_ctrl_araddr : signal is "XIL_INTERFACENAME s_axi_ctrl, ADDR_WIDTH 19, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN /clk_wiz_0_clk_out1, DATA_WIDTH 32, FREQ_HZ 148500000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute x_interface_info of s_axi_ctrl_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT";
  attribute x_interface_info of s_axi_ctrl_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY";
  attribute x_interface_info of s_axi_ctrl_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID";
  attribute x_interface_info of s_axi_ctrl_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR";
  attribute x_interface_info of s_axi_ctrl_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT";
  attribute x_interface_info of s_axi_ctrl_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY";
  attribute x_interface_info of s_axi_ctrl_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID";
  attribute x_interface_info of s_axi_ctrl_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY";
  attribute x_interface_info of s_axi_ctrl_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP";
  attribute x_interface_info of s_axi_ctrl_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID";
  attribute x_interface_info of s_axi_ctrl_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA";
  attribute x_interface_info of s_axi_ctrl_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY";
  attribute x_interface_info of s_axi_ctrl_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP";
  attribute x_interface_info of s_axi_ctrl_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID";
  attribute x_interface_info of s_axi_ctrl_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA";
  attribute x_interface_info of s_axi_ctrl_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY";
  attribute x_interface_info of s_axi_ctrl_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB";
  attribute x_interface_info of s_axi_ctrl_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 148500000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1";
  attribute x_interface_info of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 s_axis TDEST";
  attribute x_interface_info of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 s_axis TID";
  attribute x_interface_info of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
  attribute x_interface_info of s_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 s_axis TSTRB";
  attribute x_interface_info of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
csc: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_csc_0
     port map (
      ap_clk => aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout,
      interrupt => NLW_csc_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_csc_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_csc_m_axis_video_TDEST,
      m_axis_video_TID(0) => intf_net_csc_m_axis_video_TID,
      m_axis_video_TKEEP(2 downto 0) => intf_net_csc_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_csc_m_axis_video_TLAST,
      m_axis_video_TREADY => intf_net_csc_m_axis_video_TREADY,
      m_axis_video_TSTRB(2 downto 0) => intf_net_csc_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_csc_m_axis_video_TUSER,
      m_axis_video_TVALID => intf_net_csc_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(7 downto 0) => intf_net_smartconnect_0_M08_AXI_ARADDR(7 downto 0),
      s_axi_CTRL_ARREADY => intf_net_smartconnect_0_M08_AXI_ARREADY,
      s_axi_CTRL_ARVALID => intf_net_smartconnect_0_M08_AXI_ARVALID,
      s_axi_CTRL_AWADDR(7 downto 0) => intf_net_smartconnect_0_M08_AXI_AWADDR(7 downto 0),
      s_axi_CTRL_AWREADY => intf_net_smartconnect_0_M08_AXI_AWREADY,
      s_axi_CTRL_AWVALID => intf_net_smartconnect_0_M08_AXI_AWVALID,
      s_axi_CTRL_BREADY => intf_net_smartconnect_0_M08_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => intf_net_smartconnect_0_M08_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => intf_net_smartconnect_0_M08_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => intf_net_smartconnect_0_M08_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => intf_net_smartconnect_0_M08_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => intf_net_smartconnect_0_M08_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => intf_net_smartconnect_0_M08_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => intf_net_smartconnect_0_M08_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => intf_net_smartconnect_0_M08_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => intf_net_smartconnect_0_M08_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => intf_net_smartconnect_0_M08_AXI_WVALID,
      s_axis_video_TDATA(23 downto 0) => intf_net_video_router_M08_AXIS_TDATA(23 downto 0),
      s_axis_video_TDEST(0) => intf_net_video_router_M08_AXIS_TDEST,
      s_axis_video_TID(0) => intf_net_video_router_M08_AXIS_TID,
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M08_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M08_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M08_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M08_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M08_AXIS_TUSER,
      s_axis_video_TVALID => intf_net_video_router_M08_AXIS_TVALID
    );
hsc: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_hsc_0
     port map (
      ap_clk => aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout,
      interrupt => NLW_hsc_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_hsc_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_hsc_m_axis_video_TDEST,
      m_axis_video_TID(0) => intf_net_hsc_m_axis_video_TID,
      m_axis_video_TKEEP(2 downto 0) => intf_net_hsc_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_hsc_m_axis_video_TLAST,
      m_axis_video_TREADY => intf_net_hsc_m_axis_video_TREADY,
      m_axis_video_TSTRB(2 downto 0) => intf_net_hsc_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_hsc_m_axis_video_TUSER,
      m_axis_video_TVALID => intf_net_hsc_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(15 downto 0) => intf_net_smartconnect_0_M03_AXI_ARADDR(15 downto 0),
      s_axi_CTRL_ARREADY => intf_net_smartconnect_0_M03_AXI_ARREADY,
      s_axi_CTRL_ARVALID => intf_net_smartconnect_0_M03_AXI_ARVALID,
      s_axi_CTRL_AWADDR(15 downto 0) => intf_net_smartconnect_0_M03_AXI_AWADDR(15 downto 0),
      s_axi_CTRL_AWREADY => intf_net_smartconnect_0_M03_AXI_AWREADY,
      s_axi_CTRL_AWVALID => intf_net_smartconnect_0_M03_AXI_AWVALID,
      s_axi_CTRL_BREADY => intf_net_smartconnect_0_M03_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => intf_net_smartconnect_0_M03_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => intf_net_smartconnect_0_M03_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => intf_net_smartconnect_0_M03_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => intf_net_smartconnect_0_M03_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => intf_net_smartconnect_0_M03_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => intf_net_smartconnect_0_M03_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => intf_net_smartconnect_0_M03_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => intf_net_smartconnect_0_M03_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => intf_net_smartconnect_0_M03_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => intf_net_smartconnect_0_M03_AXI_WVALID,
      s_axis_video_TDATA(23 downto 0) => intf_net_video_router_M02_AXIS_TDATA(23 downto 0),
      s_axis_video_TDEST(0) => intf_net_video_router_M02_AXIS_TDEST,
      s_axis_video_TID(0) => intf_net_video_router_M02_AXIS_TID,
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M02_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M02_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M02_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M02_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M02_AXIS_TUSER,
      s_axis_video_TVALID => intf_net_video_router_M02_AXIS_TVALID
    );
input_size_set: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_input_size_set_0
     port map (
      aclk => aclk_axis,
      aresetn => net_proc_ss_ip_aresetn_Dout,
      m_axis_tdata(23 downto 0) => intf_net_input_size_set_M_AXIS_TDATA(23 downto 0),
      m_axis_tdest(0) => intf_net_input_size_set_M_AXIS_TDEST,
      m_axis_tid(0) => intf_net_input_size_set_M_AXIS_TID,
      m_axis_tkeep(2 downto 0) => intf_net_input_size_set_M_AXIS_TKEEP(2 downto 0),
      m_axis_tlast => intf_net_input_size_set_M_AXIS_TLAST,
      m_axis_tready => intf_net_input_size_set_M_AXIS_TREADY,
      m_axis_tstrb(2 downto 0) => intf_net_input_size_set_M_AXIS_TSTRB(2 downto 0),
      m_axis_tuser(0) => intf_net_input_size_set_M_AXIS_TUSER,
      m_axis_tvalid => intf_net_input_size_set_M_AXIS_TVALID,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tdest(0) => s_axis_tdest(0),
      s_axis_tid(0) => s_axis_tid(0),
      s_axis_tkeep(2 downto 0) => s_axis_tkeep(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => s_axis_tstrb(2 downto 0),
      s_axis_tuser(0) => s_axis_tuser(0),
      s_axis_tvalid => s_axis_tvalid
    );
ltr: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_ltr_0
     port map (
      ap_clk => aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout,
      interrupt => NLW_ltr_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_ltr_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_ltr_m_axis_video_TDEST,
      m_axis_video_TID(0) => intf_net_ltr_m_axis_video_TID,
      m_axis_video_TKEEP(2 downto 0) => intf_net_ltr_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_ltr_m_axis_video_TLAST,
      m_axis_video_TREADY => intf_net_ltr_m_axis_video_TREADY,
      m_axis_video_TSTRB(2 downto 0) => intf_net_ltr_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_ltr_m_axis_video_TUSER,
      m_axis_video_TVALID => intf_net_ltr_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(6 downto 0) => intf_net_smartconnect_0_M04_AXI_ARADDR(6 downto 0),
      s_axi_CTRL_ARREADY => intf_net_smartconnect_0_M04_AXI_ARREADY,
      s_axi_CTRL_ARVALID => intf_net_smartconnect_0_M04_AXI_ARVALID,
      s_axi_CTRL_AWADDR(6 downto 0) => intf_net_smartconnect_0_M04_AXI_AWADDR(6 downto 0),
      s_axi_CTRL_AWREADY => intf_net_smartconnect_0_M04_AXI_AWREADY,
      s_axi_CTRL_AWVALID => intf_net_smartconnect_0_M04_AXI_AWVALID,
      s_axi_CTRL_BREADY => intf_net_smartconnect_0_M04_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => intf_net_smartconnect_0_M04_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => intf_net_smartconnect_0_M04_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => intf_net_smartconnect_0_M04_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => intf_net_smartconnect_0_M04_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => intf_net_smartconnect_0_M04_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => intf_net_smartconnect_0_M04_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => intf_net_smartconnect_0_M04_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => intf_net_smartconnect_0_M04_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => intf_net_smartconnect_0_M04_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => intf_net_smartconnect_0_M04_AXI_WVALID,
      s_axis_video_TDATA(23 downto 0) => intf_net_video_router_M04_AXIS_TDATA(23 downto 0),
      s_axis_video_TDEST(0) => intf_net_video_router_M04_AXIS_TDEST,
      s_axis_video_TID(0) => intf_net_video_router_M04_AXIS_TID,
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M04_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M04_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M04_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M04_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M04_AXIS_TUSER,
      s_axis_video_TVALID => intf_net_video_router_M04_AXIS_TVALID
    );
proc_ss_ip_aresetn: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_proc_ss_ip_aresetn_0
     port map (
      Din(1 downto 0) => net_reset_sel_axis_gpio_io_o(1 downto 0),
      Dout(0) => net_proc_ss_ip_aresetn_Dout
    );
reset_sel_axis: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_reset_sel_axis_0
     port map (
      gpio_io_i(1 downto 0) => net_reset_sel_axis_gpio_io_o(1 downto 0),
      gpio_io_o(1 downto 0) => net_reset_sel_axis_gpio_io_o(1 downto 0),
      gpio_io_t(1 downto 0) => NLW_reset_sel_axis_gpio_io_t_UNCONNECTED(1 downto 0),
      s_axi_aclk => aclk_axis,
      s_axi_araddr(8 downto 0) => intf_net_smartconnect_0_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => net_rst_axis_peripheral_aresetn,
      s_axi_arready => intf_net_smartconnect_0_M01_AXI_ARREADY,
      s_axi_arvalid => intf_net_smartconnect_0_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => intf_net_smartconnect_0_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => intf_net_smartconnect_0_M01_AXI_AWREADY,
      s_axi_awvalid => intf_net_smartconnect_0_M01_AXI_AWVALID,
      s_axi_bready => intf_net_smartconnect_0_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => intf_net_smartconnect_0_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => intf_net_smartconnect_0_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => intf_net_smartconnect_0_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => intf_net_smartconnect_0_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => intf_net_smartconnect_0_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => intf_net_smartconnect_0_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => intf_net_smartconnect_0_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => intf_net_smartconnect_0_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => intf_net_smartconnect_0_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => intf_net_smartconnect_0_M01_AXI_WVALID
    );
rst_axis: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_rst_axis_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_axis_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => aresetn_ctrl,
      interconnect_aresetn(0) => NLW_rst_axis_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_axis_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => net_rst_axis_peripheral_aresetn,
      peripheral_reset(0) => NLW_rst_axis_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => aclk_axis
    );
smartconnect_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_smartconnect_0_0
     port map (
      M00_AXI_araddr(6 downto 0) => intf_net_smartconnect_0_M00_AXI_ARADDR(6 downto 0),
      M00_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M00_AXI_arprot_UNCONNECTED(2 downto 0),
      M00_AXI_arready => intf_net_smartconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => intf_net_smartconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(6 downto 0) => intf_net_smartconnect_0_M00_AXI_AWADDR(6 downto 0),
      M00_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M00_AXI_awprot_UNCONNECTED(2 downto 0),
      M00_AXI_awready => intf_net_smartconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => intf_net_smartconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => intf_net_smartconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => intf_net_smartconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => intf_net_smartconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => intf_net_smartconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => intf_net_smartconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => intf_net_smartconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => intf_net_smartconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => intf_net_smartconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => intf_net_smartconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => NLW_smartconnect_0_M00_AXI_wstrb_UNCONNECTED(3 downto 0),
      M00_AXI_wvalid => intf_net_smartconnect_0_M00_AXI_WVALID,
      M01_AXI_araddr(8 downto 0) => intf_net_smartconnect_0_M01_AXI_ARADDR(8 downto 0),
      M01_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M01_AXI_arprot_UNCONNECTED(2 downto 0),
      M01_AXI_arready => intf_net_smartconnect_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => intf_net_smartconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(8 downto 0) => intf_net_smartconnect_0_M01_AXI_AWADDR(8 downto 0),
      M01_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M01_AXI_awprot_UNCONNECTED(2 downto 0),
      M01_AXI_awready => intf_net_smartconnect_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => intf_net_smartconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => intf_net_smartconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => intf_net_smartconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => intf_net_smartconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => intf_net_smartconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => intf_net_smartconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => intf_net_smartconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => intf_net_smartconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => intf_net_smartconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => intf_net_smartconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => intf_net_smartconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => intf_net_smartconnect_0_M01_AXI_WVALID,
      M02_AXI_araddr(11 downto 0) => intf_net_smartconnect_0_M02_AXI_ARADDR(11 downto 0),
      M02_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M02_AXI_arprot_UNCONNECTED(2 downto 0),
      M02_AXI_arready => intf_net_smartconnect_0_M02_AXI_ARREADY,
      M02_AXI_arvalid => intf_net_smartconnect_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(11 downto 0) => intf_net_smartconnect_0_M02_AXI_AWADDR(11 downto 0),
      M02_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M02_AXI_awprot_UNCONNECTED(2 downto 0),
      M02_AXI_awready => intf_net_smartconnect_0_M02_AXI_AWREADY,
      M02_AXI_awvalid => intf_net_smartconnect_0_M02_AXI_AWVALID,
      M02_AXI_bready => intf_net_smartconnect_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => intf_net_smartconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => intf_net_smartconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => intf_net_smartconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => intf_net_smartconnect_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => intf_net_smartconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => intf_net_smartconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => intf_net_smartconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => intf_net_smartconnect_0_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => intf_net_smartconnect_0_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => intf_net_smartconnect_0_M02_AXI_WVALID,
      M03_AXI_araddr(15 downto 0) => intf_net_smartconnect_0_M03_AXI_ARADDR(15 downto 0),
      M03_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M03_AXI_arprot_UNCONNECTED(2 downto 0),
      M03_AXI_arready => intf_net_smartconnect_0_M03_AXI_ARREADY,
      M03_AXI_arvalid => intf_net_smartconnect_0_M03_AXI_ARVALID,
      M03_AXI_awaddr(15 downto 0) => intf_net_smartconnect_0_M03_AXI_AWADDR(15 downto 0),
      M03_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M03_AXI_awprot_UNCONNECTED(2 downto 0),
      M03_AXI_awready => intf_net_smartconnect_0_M03_AXI_AWREADY,
      M03_AXI_awvalid => intf_net_smartconnect_0_M03_AXI_AWVALID,
      M03_AXI_bready => intf_net_smartconnect_0_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => intf_net_smartconnect_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => intf_net_smartconnect_0_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => intf_net_smartconnect_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => intf_net_smartconnect_0_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => intf_net_smartconnect_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => intf_net_smartconnect_0_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => intf_net_smartconnect_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => intf_net_smartconnect_0_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => intf_net_smartconnect_0_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => intf_net_smartconnect_0_M03_AXI_WVALID,
      M04_AXI_araddr(6 downto 0) => intf_net_smartconnect_0_M04_AXI_ARADDR(6 downto 0),
      M04_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M04_AXI_arprot_UNCONNECTED(2 downto 0),
      M04_AXI_arready => intf_net_smartconnect_0_M04_AXI_ARREADY,
      M04_AXI_arvalid => intf_net_smartconnect_0_M04_AXI_ARVALID,
      M04_AXI_awaddr(6 downto 0) => intf_net_smartconnect_0_M04_AXI_AWADDR(6 downto 0),
      M04_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M04_AXI_awprot_UNCONNECTED(2 downto 0),
      M04_AXI_awready => intf_net_smartconnect_0_M04_AXI_AWREADY,
      M04_AXI_awvalid => intf_net_smartconnect_0_M04_AXI_AWVALID,
      M04_AXI_bready => intf_net_smartconnect_0_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => intf_net_smartconnect_0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => intf_net_smartconnect_0_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => intf_net_smartconnect_0_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => intf_net_smartconnect_0_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => intf_net_smartconnect_0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => intf_net_smartconnect_0_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => intf_net_smartconnect_0_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => intf_net_smartconnect_0_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => intf_net_smartconnect_0_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => intf_net_smartconnect_0_M04_AXI_WVALID,
      M05_AXI_araddr => NLW_smartconnect_0_M05_AXI_araddr_UNCONNECTED,
      M05_AXI_arburst(1 downto 0) => NLW_smartconnect_0_M05_AXI_arburst_UNCONNECTED(1 downto 0),
      M05_AXI_arcache(3 downto 0) => NLW_smartconnect_0_M05_AXI_arcache_UNCONNECTED(3 downto 0),
      M05_AXI_arid => NLW_smartconnect_0_M05_AXI_arid_UNCONNECTED,
      M05_AXI_arlen => NLW_smartconnect_0_M05_AXI_arlen_UNCONNECTED,
      M05_AXI_arlock => NLW_smartconnect_0_M05_AXI_arlock_UNCONNECTED,
      M05_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M05_AXI_arprot_UNCONNECTED(2 downto 0),
      M05_AXI_arqos(3 downto 0) => NLW_smartconnect_0_M05_AXI_arqos_UNCONNECTED(3 downto 0),
      M05_AXI_arready(0) => '0',
      M05_AXI_arregion(3 downto 0) => NLW_smartconnect_0_M05_AXI_arregion_UNCONNECTED(3 downto 0),
      M05_AXI_arsize(2 downto 0) => NLW_smartconnect_0_M05_AXI_arsize_UNCONNECTED(2 downto 0),
      M05_AXI_aruser => NLW_smartconnect_0_M05_AXI_aruser_UNCONNECTED,
      M05_AXI_arvalid(0) => NLW_smartconnect_0_M05_AXI_arvalid_UNCONNECTED(0),
      M05_AXI_awaddr => NLW_smartconnect_0_M05_AXI_awaddr_UNCONNECTED,
      M05_AXI_awburst(1 downto 0) => NLW_smartconnect_0_M05_AXI_awburst_UNCONNECTED(1 downto 0),
      M05_AXI_awcache(3 downto 0) => NLW_smartconnect_0_M05_AXI_awcache_UNCONNECTED(3 downto 0),
      M05_AXI_awid => NLW_smartconnect_0_M05_AXI_awid_UNCONNECTED,
      M05_AXI_awlen => NLW_smartconnect_0_M05_AXI_awlen_UNCONNECTED,
      M05_AXI_awlock => NLW_smartconnect_0_M05_AXI_awlock_UNCONNECTED,
      M05_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M05_AXI_awprot_UNCONNECTED(2 downto 0),
      M05_AXI_awqos(3 downto 0) => NLW_smartconnect_0_M05_AXI_awqos_UNCONNECTED(3 downto 0),
      M05_AXI_awready(0) => '0',
      M05_AXI_awregion(3 downto 0) => NLW_smartconnect_0_M05_AXI_awregion_UNCONNECTED(3 downto 0),
      M05_AXI_awsize(2 downto 0) => NLW_smartconnect_0_M05_AXI_awsize_UNCONNECTED(2 downto 0),
      M05_AXI_awuser => NLW_smartconnect_0_M05_AXI_awuser_UNCONNECTED,
      M05_AXI_awvalid(0) => NLW_smartconnect_0_M05_AXI_awvalid_UNCONNECTED(0),
      M05_AXI_bid => '0',
      M05_AXI_bready(0) => NLW_smartconnect_0_M05_AXI_bready_UNCONNECTED(0),
      M05_AXI_bresp(1 downto 0) => B"00",
      M05_AXI_buser => '0',
      M05_AXI_bvalid(0) => '0',
      M05_AXI_rdata => '0',
      M05_AXI_rid => '0',
      M05_AXI_rlast(0) => '0',
      M05_AXI_rready(0) => NLW_smartconnect_0_M05_AXI_rready_UNCONNECTED(0),
      M05_AXI_rresp(1 downto 0) => B"00",
      M05_AXI_ruser => '0',
      M05_AXI_rvalid(0) => '0',
      M05_AXI_wdata => NLW_smartconnect_0_M05_AXI_wdata_UNCONNECTED,
      M05_AXI_wid => NLW_smartconnect_0_M05_AXI_wid_UNCONNECTED,
      M05_AXI_wlast(0) => NLW_smartconnect_0_M05_AXI_wlast_UNCONNECTED(0),
      M05_AXI_wready(0) => '0',
      M05_AXI_wstrb => NLW_smartconnect_0_M05_AXI_wstrb_UNCONNECTED,
      M05_AXI_wuser => NLW_smartconnect_0_M05_AXI_wuser_UNCONNECTED,
      M05_AXI_wvalid(0) => NLW_smartconnect_0_M05_AXI_wvalid_UNCONNECTED(0),
      M06_AXI_araddr => NLW_smartconnect_0_M06_AXI_araddr_UNCONNECTED,
      M06_AXI_arburst(1 downto 0) => NLW_smartconnect_0_M06_AXI_arburst_UNCONNECTED(1 downto 0),
      M06_AXI_arcache(3 downto 0) => NLW_smartconnect_0_M06_AXI_arcache_UNCONNECTED(3 downto 0),
      M06_AXI_arid => NLW_smartconnect_0_M06_AXI_arid_UNCONNECTED,
      M06_AXI_arlen => NLW_smartconnect_0_M06_AXI_arlen_UNCONNECTED,
      M06_AXI_arlock => NLW_smartconnect_0_M06_AXI_arlock_UNCONNECTED,
      M06_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M06_AXI_arprot_UNCONNECTED(2 downto 0),
      M06_AXI_arqos(3 downto 0) => NLW_smartconnect_0_M06_AXI_arqos_UNCONNECTED(3 downto 0),
      M06_AXI_arready(0) => '0',
      M06_AXI_arregion(3 downto 0) => NLW_smartconnect_0_M06_AXI_arregion_UNCONNECTED(3 downto 0),
      M06_AXI_arsize(2 downto 0) => NLW_smartconnect_0_M06_AXI_arsize_UNCONNECTED(2 downto 0),
      M06_AXI_aruser => NLW_smartconnect_0_M06_AXI_aruser_UNCONNECTED,
      M06_AXI_arvalid(0) => NLW_smartconnect_0_M06_AXI_arvalid_UNCONNECTED(0),
      M06_AXI_awaddr => NLW_smartconnect_0_M06_AXI_awaddr_UNCONNECTED,
      M06_AXI_awburst(1 downto 0) => NLW_smartconnect_0_M06_AXI_awburst_UNCONNECTED(1 downto 0),
      M06_AXI_awcache(3 downto 0) => NLW_smartconnect_0_M06_AXI_awcache_UNCONNECTED(3 downto 0),
      M06_AXI_awid => NLW_smartconnect_0_M06_AXI_awid_UNCONNECTED,
      M06_AXI_awlen => NLW_smartconnect_0_M06_AXI_awlen_UNCONNECTED,
      M06_AXI_awlock => NLW_smartconnect_0_M06_AXI_awlock_UNCONNECTED,
      M06_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M06_AXI_awprot_UNCONNECTED(2 downto 0),
      M06_AXI_awqos(3 downto 0) => NLW_smartconnect_0_M06_AXI_awqos_UNCONNECTED(3 downto 0),
      M06_AXI_awready(0) => '0',
      M06_AXI_awregion(3 downto 0) => NLW_smartconnect_0_M06_AXI_awregion_UNCONNECTED(3 downto 0),
      M06_AXI_awsize(2 downto 0) => NLW_smartconnect_0_M06_AXI_awsize_UNCONNECTED(2 downto 0),
      M06_AXI_awuser => NLW_smartconnect_0_M06_AXI_awuser_UNCONNECTED,
      M06_AXI_awvalid(0) => NLW_smartconnect_0_M06_AXI_awvalid_UNCONNECTED(0),
      M06_AXI_bid => '0',
      M06_AXI_bready(0) => NLW_smartconnect_0_M06_AXI_bready_UNCONNECTED(0),
      M06_AXI_bresp(1 downto 0) => B"00",
      M06_AXI_buser => '0',
      M06_AXI_bvalid(0) => '0',
      M06_AXI_rdata => '0',
      M06_AXI_rid => '0',
      M06_AXI_rlast(0) => '0',
      M06_AXI_rready(0) => NLW_smartconnect_0_M06_AXI_rready_UNCONNECTED(0),
      M06_AXI_rresp(1 downto 0) => B"00",
      M06_AXI_ruser => '0',
      M06_AXI_rvalid(0) => '0',
      M06_AXI_wdata => NLW_smartconnect_0_M06_AXI_wdata_UNCONNECTED,
      M06_AXI_wid => NLW_smartconnect_0_M06_AXI_wid_UNCONNECTED,
      M06_AXI_wlast(0) => NLW_smartconnect_0_M06_AXI_wlast_UNCONNECTED(0),
      M06_AXI_wready(0) => '0',
      M06_AXI_wstrb => NLW_smartconnect_0_M06_AXI_wstrb_UNCONNECTED,
      M06_AXI_wuser => NLW_smartconnect_0_M06_AXI_wuser_UNCONNECTED,
      M06_AXI_wvalid(0) => NLW_smartconnect_0_M06_AXI_wvalid_UNCONNECTED(0),
      M07_AXI_araddr => NLW_smartconnect_0_M07_AXI_araddr_UNCONNECTED,
      M07_AXI_arburst(1 downto 0) => NLW_smartconnect_0_M07_AXI_arburst_UNCONNECTED(1 downto 0),
      M07_AXI_arcache(3 downto 0) => NLW_smartconnect_0_M07_AXI_arcache_UNCONNECTED(3 downto 0),
      M07_AXI_arid => NLW_smartconnect_0_M07_AXI_arid_UNCONNECTED,
      M07_AXI_arlen => NLW_smartconnect_0_M07_AXI_arlen_UNCONNECTED,
      M07_AXI_arlock => NLW_smartconnect_0_M07_AXI_arlock_UNCONNECTED,
      M07_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M07_AXI_arprot_UNCONNECTED(2 downto 0),
      M07_AXI_arqos(3 downto 0) => NLW_smartconnect_0_M07_AXI_arqos_UNCONNECTED(3 downto 0),
      M07_AXI_arready(0) => '0',
      M07_AXI_arregion(3 downto 0) => NLW_smartconnect_0_M07_AXI_arregion_UNCONNECTED(3 downto 0),
      M07_AXI_arsize(2 downto 0) => NLW_smartconnect_0_M07_AXI_arsize_UNCONNECTED(2 downto 0),
      M07_AXI_aruser => NLW_smartconnect_0_M07_AXI_aruser_UNCONNECTED,
      M07_AXI_arvalid(0) => NLW_smartconnect_0_M07_AXI_arvalid_UNCONNECTED(0),
      M07_AXI_awaddr => NLW_smartconnect_0_M07_AXI_awaddr_UNCONNECTED,
      M07_AXI_awburst(1 downto 0) => NLW_smartconnect_0_M07_AXI_awburst_UNCONNECTED(1 downto 0),
      M07_AXI_awcache(3 downto 0) => NLW_smartconnect_0_M07_AXI_awcache_UNCONNECTED(3 downto 0),
      M07_AXI_awid => NLW_smartconnect_0_M07_AXI_awid_UNCONNECTED,
      M07_AXI_awlen => NLW_smartconnect_0_M07_AXI_awlen_UNCONNECTED,
      M07_AXI_awlock => NLW_smartconnect_0_M07_AXI_awlock_UNCONNECTED,
      M07_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M07_AXI_awprot_UNCONNECTED(2 downto 0),
      M07_AXI_awqos(3 downto 0) => NLW_smartconnect_0_M07_AXI_awqos_UNCONNECTED(3 downto 0),
      M07_AXI_awready(0) => '0',
      M07_AXI_awregion(3 downto 0) => NLW_smartconnect_0_M07_AXI_awregion_UNCONNECTED(3 downto 0),
      M07_AXI_awsize(2 downto 0) => NLW_smartconnect_0_M07_AXI_awsize_UNCONNECTED(2 downto 0),
      M07_AXI_awuser => NLW_smartconnect_0_M07_AXI_awuser_UNCONNECTED,
      M07_AXI_awvalid(0) => NLW_smartconnect_0_M07_AXI_awvalid_UNCONNECTED(0),
      M07_AXI_bid => '0',
      M07_AXI_bready(0) => NLW_smartconnect_0_M07_AXI_bready_UNCONNECTED(0),
      M07_AXI_bresp(1 downto 0) => B"00",
      M07_AXI_buser => '0',
      M07_AXI_bvalid(0) => '0',
      M07_AXI_rdata => '0',
      M07_AXI_rid => '0',
      M07_AXI_rlast(0) => '0',
      M07_AXI_rready(0) => NLW_smartconnect_0_M07_AXI_rready_UNCONNECTED(0),
      M07_AXI_rresp(1 downto 0) => B"00",
      M07_AXI_ruser => '0',
      M07_AXI_rvalid(0) => '0',
      M07_AXI_wdata => NLW_smartconnect_0_M07_AXI_wdata_UNCONNECTED,
      M07_AXI_wid => NLW_smartconnect_0_M07_AXI_wid_UNCONNECTED,
      M07_AXI_wlast(0) => NLW_smartconnect_0_M07_AXI_wlast_UNCONNECTED(0),
      M07_AXI_wready(0) => '0',
      M07_AXI_wstrb => NLW_smartconnect_0_M07_AXI_wstrb_UNCONNECTED,
      M07_AXI_wuser => NLW_smartconnect_0_M07_AXI_wuser_UNCONNECTED,
      M07_AXI_wvalid(0) => NLW_smartconnect_0_M07_AXI_wvalid_UNCONNECTED(0),
      M08_AXI_araddr(7 downto 0) => intf_net_smartconnect_0_M08_AXI_ARADDR(7 downto 0),
      M08_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M08_AXI_arprot_UNCONNECTED(2 downto 0),
      M08_AXI_arready => intf_net_smartconnect_0_M08_AXI_ARREADY,
      M08_AXI_arvalid => intf_net_smartconnect_0_M08_AXI_ARVALID,
      M08_AXI_awaddr(7 downto 0) => intf_net_smartconnect_0_M08_AXI_AWADDR(7 downto 0),
      M08_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M08_AXI_awprot_UNCONNECTED(2 downto 0),
      M08_AXI_awready => intf_net_smartconnect_0_M08_AXI_AWREADY,
      M08_AXI_awvalid => intf_net_smartconnect_0_M08_AXI_AWVALID,
      M08_AXI_bready => intf_net_smartconnect_0_M08_AXI_BREADY,
      M08_AXI_bresp(1 downto 0) => intf_net_smartconnect_0_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid => intf_net_smartconnect_0_M08_AXI_BVALID,
      M08_AXI_rdata(31 downto 0) => intf_net_smartconnect_0_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rready => intf_net_smartconnect_0_M08_AXI_RREADY,
      M08_AXI_rresp(1 downto 0) => intf_net_smartconnect_0_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid => intf_net_smartconnect_0_M08_AXI_RVALID,
      M08_AXI_wdata(31 downto 0) => intf_net_smartconnect_0_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wready => intf_net_smartconnect_0_M08_AXI_WREADY,
      M08_AXI_wstrb(3 downto 0) => intf_net_smartconnect_0_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid => intf_net_smartconnect_0_M08_AXI_WVALID,
      M09_AXI_araddr => NLW_smartconnect_0_M09_AXI_araddr_UNCONNECTED,
      M09_AXI_arburst(1 downto 0) => NLW_smartconnect_0_M09_AXI_arburst_UNCONNECTED(1 downto 0),
      M09_AXI_arcache(3 downto 0) => NLW_smartconnect_0_M09_AXI_arcache_UNCONNECTED(3 downto 0),
      M09_AXI_arid => NLW_smartconnect_0_M09_AXI_arid_UNCONNECTED,
      M09_AXI_arlen => NLW_smartconnect_0_M09_AXI_arlen_UNCONNECTED,
      M09_AXI_arlock => NLW_smartconnect_0_M09_AXI_arlock_UNCONNECTED,
      M09_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M09_AXI_arprot_UNCONNECTED(2 downto 0),
      M09_AXI_arqos(3 downto 0) => NLW_smartconnect_0_M09_AXI_arqos_UNCONNECTED(3 downto 0),
      M09_AXI_arready(0) => '0',
      M09_AXI_arregion(3 downto 0) => NLW_smartconnect_0_M09_AXI_arregion_UNCONNECTED(3 downto 0),
      M09_AXI_arsize(2 downto 0) => NLW_smartconnect_0_M09_AXI_arsize_UNCONNECTED(2 downto 0),
      M09_AXI_aruser => NLW_smartconnect_0_M09_AXI_aruser_UNCONNECTED,
      M09_AXI_arvalid(0) => NLW_smartconnect_0_M09_AXI_arvalid_UNCONNECTED(0),
      M09_AXI_awaddr => NLW_smartconnect_0_M09_AXI_awaddr_UNCONNECTED,
      M09_AXI_awburst(1 downto 0) => NLW_smartconnect_0_M09_AXI_awburst_UNCONNECTED(1 downto 0),
      M09_AXI_awcache(3 downto 0) => NLW_smartconnect_0_M09_AXI_awcache_UNCONNECTED(3 downto 0),
      M09_AXI_awid => NLW_smartconnect_0_M09_AXI_awid_UNCONNECTED,
      M09_AXI_awlen => NLW_smartconnect_0_M09_AXI_awlen_UNCONNECTED,
      M09_AXI_awlock => NLW_smartconnect_0_M09_AXI_awlock_UNCONNECTED,
      M09_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M09_AXI_awprot_UNCONNECTED(2 downto 0),
      M09_AXI_awqos(3 downto 0) => NLW_smartconnect_0_M09_AXI_awqos_UNCONNECTED(3 downto 0),
      M09_AXI_awready(0) => '0',
      M09_AXI_awregion(3 downto 0) => NLW_smartconnect_0_M09_AXI_awregion_UNCONNECTED(3 downto 0),
      M09_AXI_awsize(2 downto 0) => NLW_smartconnect_0_M09_AXI_awsize_UNCONNECTED(2 downto 0),
      M09_AXI_awuser => NLW_smartconnect_0_M09_AXI_awuser_UNCONNECTED,
      M09_AXI_awvalid(0) => NLW_smartconnect_0_M09_AXI_awvalid_UNCONNECTED(0),
      M09_AXI_bid => '0',
      M09_AXI_bready(0) => NLW_smartconnect_0_M09_AXI_bready_UNCONNECTED(0),
      M09_AXI_bresp(1 downto 0) => B"00",
      M09_AXI_buser => '0',
      M09_AXI_bvalid(0) => '0',
      M09_AXI_rdata => '0',
      M09_AXI_rid => '0',
      M09_AXI_rlast(0) => '0',
      M09_AXI_rready(0) => NLW_smartconnect_0_M09_AXI_rready_UNCONNECTED(0),
      M09_AXI_rresp(1 downto 0) => B"00",
      M09_AXI_ruser => '0',
      M09_AXI_rvalid(0) => '0',
      M09_AXI_wdata => NLW_smartconnect_0_M09_AXI_wdata_UNCONNECTED,
      M09_AXI_wid => NLW_smartconnect_0_M09_AXI_wid_UNCONNECTED,
      M09_AXI_wlast(0) => NLW_smartconnect_0_M09_AXI_wlast_UNCONNECTED(0),
      M09_AXI_wready(0) => '0',
      M09_AXI_wstrb => NLW_smartconnect_0_M09_AXI_wstrb_UNCONNECTED,
      M09_AXI_wuser => NLW_smartconnect_0_M09_AXI_wuser_UNCONNECTED,
      M09_AXI_wvalid(0) => NLW_smartconnect_0_M09_AXI_wvalid_UNCONNECTED(0),
      M10_AXI_araddr => NLW_smartconnect_0_M10_AXI_araddr_UNCONNECTED,
      M10_AXI_arburst(1 downto 0) => NLW_smartconnect_0_M10_AXI_arburst_UNCONNECTED(1 downto 0),
      M10_AXI_arcache(3 downto 0) => NLW_smartconnect_0_M10_AXI_arcache_UNCONNECTED(3 downto 0),
      M10_AXI_arid => NLW_smartconnect_0_M10_AXI_arid_UNCONNECTED,
      M10_AXI_arlen => NLW_smartconnect_0_M10_AXI_arlen_UNCONNECTED,
      M10_AXI_arlock => NLW_smartconnect_0_M10_AXI_arlock_UNCONNECTED,
      M10_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M10_AXI_arprot_UNCONNECTED(2 downto 0),
      M10_AXI_arqos(3 downto 0) => NLW_smartconnect_0_M10_AXI_arqos_UNCONNECTED(3 downto 0),
      M10_AXI_arready(0) => '0',
      M10_AXI_arregion(3 downto 0) => NLW_smartconnect_0_M10_AXI_arregion_UNCONNECTED(3 downto 0),
      M10_AXI_arsize(2 downto 0) => NLW_smartconnect_0_M10_AXI_arsize_UNCONNECTED(2 downto 0),
      M10_AXI_aruser => NLW_smartconnect_0_M10_AXI_aruser_UNCONNECTED,
      M10_AXI_arvalid(0) => NLW_smartconnect_0_M10_AXI_arvalid_UNCONNECTED(0),
      M10_AXI_awaddr => NLW_smartconnect_0_M10_AXI_awaddr_UNCONNECTED,
      M10_AXI_awburst(1 downto 0) => NLW_smartconnect_0_M10_AXI_awburst_UNCONNECTED(1 downto 0),
      M10_AXI_awcache(3 downto 0) => NLW_smartconnect_0_M10_AXI_awcache_UNCONNECTED(3 downto 0),
      M10_AXI_awid => NLW_smartconnect_0_M10_AXI_awid_UNCONNECTED,
      M10_AXI_awlen => NLW_smartconnect_0_M10_AXI_awlen_UNCONNECTED,
      M10_AXI_awlock => NLW_smartconnect_0_M10_AXI_awlock_UNCONNECTED,
      M10_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M10_AXI_awprot_UNCONNECTED(2 downto 0),
      M10_AXI_awqos(3 downto 0) => NLW_smartconnect_0_M10_AXI_awqos_UNCONNECTED(3 downto 0),
      M10_AXI_awready(0) => '0',
      M10_AXI_awregion(3 downto 0) => NLW_smartconnect_0_M10_AXI_awregion_UNCONNECTED(3 downto 0),
      M10_AXI_awsize(2 downto 0) => NLW_smartconnect_0_M10_AXI_awsize_UNCONNECTED(2 downto 0),
      M10_AXI_awuser => NLW_smartconnect_0_M10_AXI_awuser_UNCONNECTED,
      M10_AXI_awvalid(0) => NLW_smartconnect_0_M10_AXI_awvalid_UNCONNECTED(0),
      M10_AXI_bid => '0',
      M10_AXI_bready(0) => NLW_smartconnect_0_M10_AXI_bready_UNCONNECTED(0),
      M10_AXI_bresp(1 downto 0) => B"00",
      M10_AXI_buser => '0',
      M10_AXI_bvalid(0) => '0',
      M10_AXI_rdata => '0',
      M10_AXI_rid => '0',
      M10_AXI_rlast(0) => '0',
      M10_AXI_rready(0) => NLW_smartconnect_0_M10_AXI_rready_UNCONNECTED(0),
      M10_AXI_rresp(1 downto 0) => B"00",
      M10_AXI_ruser => '0',
      M10_AXI_rvalid(0) => '0',
      M10_AXI_wdata => NLW_smartconnect_0_M10_AXI_wdata_UNCONNECTED,
      M10_AXI_wid => NLW_smartconnect_0_M10_AXI_wid_UNCONNECTED,
      M10_AXI_wlast(0) => NLW_smartconnect_0_M10_AXI_wlast_UNCONNECTED(0),
      M10_AXI_wready(0) => '0',
      M10_AXI_wstrb => NLW_smartconnect_0_M10_AXI_wstrb_UNCONNECTED,
      M10_AXI_wuser => NLW_smartconnect_0_M10_AXI_wuser_UNCONNECTED,
      M10_AXI_wvalid(0) => NLW_smartconnect_0_M10_AXI_wvalid_UNCONNECTED(0),
      M11_AXI_araddr => NLW_smartconnect_0_M11_AXI_araddr_UNCONNECTED,
      M11_AXI_arburst(1 downto 0) => NLW_smartconnect_0_M11_AXI_arburst_UNCONNECTED(1 downto 0),
      M11_AXI_arcache(3 downto 0) => NLW_smartconnect_0_M11_AXI_arcache_UNCONNECTED(3 downto 0),
      M11_AXI_arid => NLW_smartconnect_0_M11_AXI_arid_UNCONNECTED,
      M11_AXI_arlen => NLW_smartconnect_0_M11_AXI_arlen_UNCONNECTED,
      M11_AXI_arlock => NLW_smartconnect_0_M11_AXI_arlock_UNCONNECTED,
      M11_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M11_AXI_arprot_UNCONNECTED(2 downto 0),
      M11_AXI_arqos(3 downto 0) => NLW_smartconnect_0_M11_AXI_arqos_UNCONNECTED(3 downto 0),
      M11_AXI_arready(0) => '0',
      M11_AXI_arregion(3 downto 0) => NLW_smartconnect_0_M11_AXI_arregion_UNCONNECTED(3 downto 0),
      M11_AXI_arsize(2 downto 0) => NLW_smartconnect_0_M11_AXI_arsize_UNCONNECTED(2 downto 0),
      M11_AXI_aruser => NLW_smartconnect_0_M11_AXI_aruser_UNCONNECTED,
      M11_AXI_arvalid(0) => NLW_smartconnect_0_M11_AXI_arvalid_UNCONNECTED(0),
      M11_AXI_awaddr => NLW_smartconnect_0_M11_AXI_awaddr_UNCONNECTED,
      M11_AXI_awburst(1 downto 0) => NLW_smartconnect_0_M11_AXI_awburst_UNCONNECTED(1 downto 0),
      M11_AXI_awcache(3 downto 0) => NLW_smartconnect_0_M11_AXI_awcache_UNCONNECTED(3 downto 0),
      M11_AXI_awid => NLW_smartconnect_0_M11_AXI_awid_UNCONNECTED,
      M11_AXI_awlen => NLW_smartconnect_0_M11_AXI_awlen_UNCONNECTED,
      M11_AXI_awlock => NLW_smartconnect_0_M11_AXI_awlock_UNCONNECTED,
      M11_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M11_AXI_awprot_UNCONNECTED(2 downto 0),
      M11_AXI_awqos(3 downto 0) => NLW_smartconnect_0_M11_AXI_awqos_UNCONNECTED(3 downto 0),
      M11_AXI_awready(0) => '0',
      M11_AXI_awregion(3 downto 0) => NLW_smartconnect_0_M11_AXI_awregion_UNCONNECTED(3 downto 0),
      M11_AXI_awsize(2 downto 0) => NLW_smartconnect_0_M11_AXI_awsize_UNCONNECTED(2 downto 0),
      M11_AXI_awuser => NLW_smartconnect_0_M11_AXI_awuser_UNCONNECTED,
      M11_AXI_awvalid(0) => NLW_smartconnect_0_M11_AXI_awvalid_UNCONNECTED(0),
      M11_AXI_bid => '0',
      M11_AXI_bready(0) => NLW_smartconnect_0_M11_AXI_bready_UNCONNECTED(0),
      M11_AXI_bresp(1 downto 0) => B"00",
      M11_AXI_buser => '0',
      M11_AXI_bvalid(0) => '0',
      M11_AXI_rdata => '0',
      M11_AXI_rid => '0',
      M11_AXI_rlast(0) => '0',
      M11_AXI_rready(0) => NLW_smartconnect_0_M11_AXI_rready_UNCONNECTED(0),
      M11_AXI_rresp(1 downto 0) => B"00",
      M11_AXI_ruser => '0',
      M11_AXI_rvalid(0) => '0',
      M11_AXI_wdata => NLW_smartconnect_0_M11_AXI_wdata_UNCONNECTED,
      M11_AXI_wid => NLW_smartconnect_0_M11_AXI_wid_UNCONNECTED,
      M11_AXI_wlast(0) => NLW_smartconnect_0_M11_AXI_wlast_UNCONNECTED(0),
      M11_AXI_wready(0) => '0',
      M11_AXI_wstrb => NLW_smartconnect_0_M11_AXI_wstrb_UNCONNECTED,
      M11_AXI_wuser => NLW_smartconnect_0_M11_AXI_wuser_UNCONNECTED,
      M11_AXI_wvalid(0) => NLW_smartconnect_0_M11_AXI_wvalid_UNCONNECTED(0),
      S00_AXI_araddr(18 downto 0) => s_axi_ctrl_araddr(18 downto 0),
      S00_AXI_arprot(2 downto 0) => s_axi_ctrl_arprot(2 downto 0),
      S00_AXI_arready => s_axi_ctrl_arready(0),
      S00_AXI_arvalid => s_axi_ctrl_arvalid(0),
      S00_AXI_awaddr(18 downto 0) => s_axi_ctrl_awaddr(18 downto 0),
      S00_AXI_awprot(2 downto 0) => s_axi_ctrl_awprot(2 downto 0),
      S00_AXI_awready => s_axi_ctrl_awready(0),
      S00_AXI_awvalid => s_axi_ctrl_awvalid(0),
      S00_AXI_bready => s_axi_ctrl_bready(0),
      S00_AXI_bresp(1 downto 0) => s_axi_ctrl_bresp(1 downto 0),
      S00_AXI_bvalid => s_axi_ctrl_bvalid(0),
      S00_AXI_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      S00_AXI_rready => s_axi_ctrl_rready(0),
      S00_AXI_rresp(1 downto 0) => s_axi_ctrl_rresp(1 downto 0),
      S00_AXI_rvalid => s_axi_ctrl_rvalid(0),
      S00_AXI_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      S00_AXI_wready => s_axi_ctrl_wready(0),
      S00_AXI_wstrb(3 downto 0) => s_axi_ctrl_wstrb(3 downto 0),
      S00_AXI_wvalid => s_axi_ctrl_wvalid(0),
      aclk => aclk_ctrl,
      aclk1 => aclk_axis,
      aclk2 => aclk_ctrl,
      aclk3 => aclk_ctrl,
      aclk4 => aclk_ctrl,
      aresetn => aresetn_ctrl
    );
vid_in_aresetn: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_vid_in_aresetn_0
     port map (
      Din(1 downto 0) => net_reset_sel_axis_gpio_io_o(1 downto 0),
      Dout(0) => aresetn_io_axis(0)
    );
video_router: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_video_router_0
     port map (
      ACLK => aclk_axis,
      ARESETN => net_proc_ss_ip_aresetn_Dout,
      M00_AXIS_ACLK => aclk_axis,
      M00_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M00_AXIS_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      M00_AXIS_tdest(3 downto 0) => m_axis_tdest(3 downto 0),
      M00_AXIS_tid(0) => m_axis_tid(0),
      M00_AXIS_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      M00_AXIS_tlast => m_axis_tlast,
      M00_AXIS_tready => m_axis_tready,
      M00_AXIS_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      M00_AXIS_tuser(0) => m_axis_tuser(0),
      M00_AXIS_tvalid => m_axis_tvalid,
      M01_AXIS_ACLK => aclk_axis,
      M01_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M01_AXIS_tdata(23 downto 0) => intf_net_video_router_M01_AXIS_TDATA(23 downto 0),
      M01_AXIS_tdest(0) => intf_net_video_router_M01_AXIS_TDEST,
      M01_AXIS_tid(0) => intf_net_video_router_M01_AXIS_TID,
      M01_AXIS_tkeep(2 downto 0) => intf_net_video_router_M01_AXIS_TKEEP(2 downto 0),
      M01_AXIS_tlast => intf_net_video_router_M01_AXIS_TLAST,
      M01_AXIS_tready => intf_net_video_router_M01_AXIS_TREADY,
      M01_AXIS_tstrb(2 downto 0) => intf_net_video_router_M01_AXIS_TSTRB(2 downto 0),
      M01_AXIS_tuser(0) => intf_net_video_router_M01_AXIS_TUSER,
      M01_AXIS_tvalid => intf_net_video_router_M01_AXIS_TVALID,
      M02_AXIS_ACLK => aclk_axis,
      M02_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M02_AXIS_tdata(23 downto 0) => intf_net_video_router_M02_AXIS_TDATA(23 downto 0),
      M02_AXIS_tdest(0) => intf_net_video_router_M02_AXIS_TDEST,
      M02_AXIS_tid(0) => intf_net_video_router_M02_AXIS_TID,
      M02_AXIS_tkeep(2 downto 0) => intf_net_video_router_M02_AXIS_TKEEP(2 downto 0),
      M02_AXIS_tlast => intf_net_video_router_M02_AXIS_TLAST,
      M02_AXIS_tready => intf_net_video_router_M02_AXIS_TREADY,
      M02_AXIS_tstrb(2 downto 0) => intf_net_video_router_M02_AXIS_TSTRB(2 downto 0),
      M02_AXIS_tuser(0) => intf_net_video_router_M02_AXIS_TUSER,
      M02_AXIS_tvalid => intf_net_video_router_M02_AXIS_TVALID,
      M03_AXIS_ACLK => aclk_axis,
      M03_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M03_AXIS_tdata => NLW_video_router_M03_AXIS_tdata_UNCONNECTED,
      M03_AXIS_tdest => NLW_video_router_M03_AXIS_tdest_UNCONNECTED,
      M03_AXIS_tready => '0',
      M03_AXIS_tvalid => NLW_video_router_M03_AXIS_tvalid_UNCONNECTED,
      M04_AXIS_ACLK => aclk_axis,
      M04_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M04_AXIS_tdata(23 downto 0) => intf_net_video_router_M04_AXIS_TDATA(23 downto 0),
      M04_AXIS_tdest(0) => intf_net_video_router_M04_AXIS_TDEST,
      M04_AXIS_tid(0) => intf_net_video_router_M04_AXIS_TID,
      M04_AXIS_tkeep(2 downto 0) => intf_net_video_router_M04_AXIS_TKEEP(2 downto 0),
      M04_AXIS_tlast => intf_net_video_router_M04_AXIS_TLAST,
      M04_AXIS_tready => intf_net_video_router_M04_AXIS_TREADY,
      M04_AXIS_tstrb(2 downto 0) => intf_net_video_router_M04_AXIS_TSTRB(2 downto 0),
      M04_AXIS_tuser(0) => intf_net_video_router_M04_AXIS_TUSER,
      M04_AXIS_tvalid => intf_net_video_router_M04_AXIS_TVALID,
      M05_AXIS_ACLK => aclk_axis,
      M05_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M05_AXIS_tdata => NLW_video_router_M05_AXIS_tdata_UNCONNECTED,
      M05_AXIS_tready => '1',
      M05_AXIS_tvalid => NLW_video_router_M05_AXIS_tvalid_UNCONNECTED,
      M06_AXIS_ACLK => aclk_axis,
      M06_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M06_AXIS_tdata => NLW_video_router_M06_AXIS_tdata_UNCONNECTED,
      M06_AXIS_tready => '1',
      M06_AXIS_tvalid => NLW_video_router_M06_AXIS_tvalid_UNCONNECTED,
      M07_AXIS_ACLK => aclk_axis,
      M07_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M07_AXIS_tdata => NLW_video_router_M07_AXIS_tdata_UNCONNECTED,
      M07_AXIS_tready => '1',
      M07_AXIS_tvalid => NLW_video_router_M07_AXIS_tvalid_UNCONNECTED,
      M08_AXIS_ACLK => aclk_axis,
      M08_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M08_AXIS_tdata(23 downto 0) => intf_net_video_router_M08_AXIS_TDATA(23 downto 0),
      M08_AXIS_tdest(0) => intf_net_video_router_M08_AXIS_TDEST,
      M08_AXIS_tid(0) => intf_net_video_router_M08_AXIS_TID,
      M08_AXIS_tkeep(2 downto 0) => intf_net_video_router_M08_AXIS_TKEEP(2 downto 0),
      M08_AXIS_tlast => intf_net_video_router_M08_AXIS_TLAST,
      M08_AXIS_tready => intf_net_video_router_M08_AXIS_TREADY,
      M08_AXIS_tstrb(2 downto 0) => intf_net_video_router_M08_AXIS_TSTRB(2 downto 0),
      M08_AXIS_tuser(0) => intf_net_video_router_M08_AXIS_TUSER,
      M08_AXIS_tvalid => intf_net_video_router_M08_AXIS_TVALID,
      M09_AXIS_ACLK => aclk_axis,
      M09_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      M09_AXIS_tdata => NLW_video_router_M09_AXIS_tdata_UNCONNECTED,
      M09_AXIS_tdest => NLW_video_router_M09_AXIS_tdest_UNCONNECTED,
      M09_AXIS_tready => '0',
      M09_AXIS_tvalid => NLW_video_router_M09_AXIS_tvalid_UNCONNECTED,
      S00_AXIS_ACLK => aclk_axis,
      S00_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S00_AXIS_tdata(23 downto 0) => intf_net_input_size_set_M_AXIS_TDATA(23 downto 0),
      S00_AXIS_tdest(0) => intf_net_input_size_set_M_AXIS_TDEST,
      S00_AXIS_tid(0) => intf_net_input_size_set_M_AXIS_TID,
      S00_AXIS_tkeep(2 downto 0) => intf_net_input_size_set_M_AXIS_TKEEP(2 downto 0),
      S00_AXIS_tlast(0) => intf_net_input_size_set_M_AXIS_TLAST,
      S00_AXIS_tready(0) => intf_net_input_size_set_M_AXIS_TREADY,
      S00_AXIS_tstrb(2 downto 0) => intf_net_input_size_set_M_AXIS_TSTRB(2 downto 0),
      S00_AXIS_tuser(0) => intf_net_input_size_set_M_AXIS_TUSER,
      S00_AXIS_tvalid(0) => intf_net_input_size_set_M_AXIS_TVALID,
      S01_AXIS_ACLK => aclk_axis,
      S01_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S01_AXIS_tdata(23 downto 0) => intf_net_vsc_m_axis_video_TDATA(23 downto 0),
      S01_AXIS_tdest(0) => intf_net_vsc_m_axis_video_TDEST,
      S01_AXIS_tid(0) => intf_net_vsc_m_axis_video_TID,
      S01_AXIS_tkeep(2 downto 0) => intf_net_vsc_m_axis_video_TKEEP(2 downto 0),
      S01_AXIS_tlast(0) => intf_net_vsc_m_axis_video_TLAST,
      S01_AXIS_tready(0) => intf_net_vsc_m_axis_video_TREADY,
      S01_AXIS_tstrb(2 downto 0) => intf_net_vsc_m_axis_video_TSTRB(2 downto 0),
      S01_AXIS_tuser(0) => intf_net_vsc_m_axis_video_TUSER,
      S01_AXIS_tvalid(0) => intf_net_vsc_m_axis_video_TVALID,
      S02_AXIS_ACLK => aclk_axis,
      S02_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S02_AXIS_tdata(23 downto 0) => intf_net_hsc_m_axis_video_TDATA(23 downto 0),
      S02_AXIS_tdest(0) => intf_net_hsc_m_axis_video_TDEST,
      S02_AXIS_tid(0) => intf_net_hsc_m_axis_video_TID,
      S02_AXIS_tkeep(2 downto 0) => intf_net_hsc_m_axis_video_TKEEP(2 downto 0),
      S02_AXIS_tlast(0) => intf_net_hsc_m_axis_video_TLAST,
      S02_AXIS_tready(0) => intf_net_hsc_m_axis_video_TREADY,
      S02_AXIS_tstrb(2 downto 0) => intf_net_hsc_m_axis_video_TSTRB(2 downto 0),
      S02_AXIS_tuser(0) => intf_net_hsc_m_axis_video_TUSER,
      S02_AXIS_tvalid(0) => intf_net_hsc_m_axis_video_TVALID,
      S03_AXIS_ACLK => aclk_axis,
      S03_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S03_AXIS_tdata => '0',
      S03_AXIS_tdest => '0',
      S03_AXIS_tready => NLW_video_router_S03_AXIS_tready_UNCONNECTED,
      S03_AXIS_tvalid => '0',
      S04_AXIS_ACLK => aclk_axis,
      S04_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S04_AXIS_tdata(23 downto 0) => intf_net_ltr_m_axis_video_TDATA(23 downto 0),
      S04_AXIS_tdest(0) => intf_net_ltr_m_axis_video_TDEST,
      S04_AXIS_tid(0) => intf_net_ltr_m_axis_video_TID,
      S04_AXIS_tkeep(2 downto 0) => intf_net_ltr_m_axis_video_TKEEP(2 downto 0),
      S04_AXIS_tlast(0) => intf_net_ltr_m_axis_video_TLAST,
      S04_AXIS_tready(0) => intf_net_ltr_m_axis_video_TREADY,
      S04_AXIS_tstrb(2 downto 0) => intf_net_ltr_m_axis_video_TSTRB(2 downto 0),
      S04_AXIS_tuser(0) => intf_net_ltr_m_axis_video_TUSER,
      S04_AXIS_tvalid(0) => intf_net_ltr_m_axis_video_TVALID,
      S05_AXIS_ACLK => aclk_axis,
      S05_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S05_AXIS_tdata => '0',
      S05_AXIS_tdest => '0',
      S05_AXIS_tready => NLW_video_router_S05_AXIS_tready_UNCONNECTED,
      S05_AXIS_tvalid => '0',
      S06_AXIS_ACLK => aclk_axis,
      S06_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S06_AXIS_tdata => '0',
      S06_AXIS_tdest => '0',
      S06_AXIS_tready => NLW_video_router_S06_AXIS_tready_UNCONNECTED,
      S06_AXIS_tvalid => '0',
      S07_AXIS_ACLK => aclk_axis,
      S07_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S07_AXIS_tdata => '0',
      S07_AXIS_tdest => '0',
      S07_AXIS_tready => NLW_video_router_S07_AXIS_tready_UNCONNECTED,
      S07_AXIS_tvalid => '0',
      S08_AXIS_ACLK => aclk_axis,
      S08_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S08_AXIS_tdata(23 downto 0) => intf_net_csc_m_axis_video_TDATA(23 downto 0),
      S08_AXIS_tdest(0) => intf_net_csc_m_axis_video_TDEST,
      S08_AXIS_tid(0) => intf_net_csc_m_axis_video_TID,
      S08_AXIS_tkeep(2 downto 0) => intf_net_csc_m_axis_video_TKEEP(2 downto 0),
      S08_AXIS_tlast(0) => intf_net_csc_m_axis_video_TLAST,
      S08_AXIS_tready(0) => intf_net_csc_m_axis_video_TREADY,
      S08_AXIS_tstrb(2 downto 0) => intf_net_csc_m_axis_video_TSTRB(2 downto 0),
      S08_AXIS_tuser(0) => intf_net_csc_m_axis_video_TUSER,
      S08_AXIS_tvalid(0) => intf_net_csc_m_axis_video_TVALID,
      S09_AXIS_ACLK => aclk_axis,
      S09_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout,
      S09_AXIS_tdata => '0',
      S09_AXIS_tdest => '0',
      S09_AXIS_tready => NLW_video_router_S09_AXIS_tready_UNCONNECTED,
      S09_AXIS_tvalid => '0',
      S_AXI_CTRL_ACLK => aclk_ctrl,
      S_AXI_CTRL_ARESETN => aresetn_ctrl,
      S_AXI_CTRL_araddr(6 downto 0) => intf_net_smartconnect_0_M00_AXI_ARADDR(6 downto 0),
      S_AXI_CTRL_arready => intf_net_smartconnect_0_M00_AXI_ARREADY,
      S_AXI_CTRL_arvalid => intf_net_smartconnect_0_M00_AXI_ARVALID,
      S_AXI_CTRL_awaddr(6 downto 0) => intf_net_smartconnect_0_M00_AXI_AWADDR(6 downto 0),
      S_AXI_CTRL_awready => intf_net_smartconnect_0_M00_AXI_AWREADY,
      S_AXI_CTRL_awvalid => intf_net_smartconnect_0_M00_AXI_AWVALID,
      S_AXI_CTRL_bready => intf_net_smartconnect_0_M00_AXI_BREADY,
      S_AXI_CTRL_bresp(1 downto 0) => intf_net_smartconnect_0_M00_AXI_BRESP(1 downto 0),
      S_AXI_CTRL_bvalid => intf_net_smartconnect_0_M00_AXI_BVALID,
      S_AXI_CTRL_rdata(31 downto 0) => intf_net_smartconnect_0_M00_AXI_RDATA(31 downto 0),
      S_AXI_CTRL_rready => intf_net_smartconnect_0_M00_AXI_RREADY,
      S_AXI_CTRL_rresp(1 downto 0) => intf_net_smartconnect_0_M00_AXI_RRESP(1 downto 0),
      S_AXI_CTRL_rvalid => intf_net_smartconnect_0_M00_AXI_RVALID,
      S_AXI_CTRL_wdata(31 downto 0) => intf_net_smartconnect_0_M00_AXI_WDATA(31 downto 0),
      S_AXI_CTRL_wready => intf_net_smartconnect_0_M00_AXI_WREADY,
      S_AXI_CTRL_wvalid => intf_net_smartconnect_0_M00_AXI_WVALID
    );
vsc: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b_vsc_0
     port map (
      ap_clk => aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout,
      interrupt => NLW_vsc_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_vsc_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_vsc_m_axis_video_TDEST,
      m_axis_video_TID(0) => intf_net_vsc_m_axis_video_TID,
      m_axis_video_TKEEP(2 downto 0) => intf_net_vsc_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_vsc_m_axis_video_TLAST,
      m_axis_video_TREADY => intf_net_vsc_m_axis_video_TREADY,
      m_axis_video_TSTRB(2 downto 0) => intf_net_vsc_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_vsc_m_axis_video_TUSER,
      m_axis_video_TVALID => intf_net_vsc_m_axis_video_TVALID,
      s_axi_CTRL_ARADDR(11 downto 0) => intf_net_smartconnect_0_M02_AXI_ARADDR(11 downto 0),
      s_axi_CTRL_ARREADY => intf_net_smartconnect_0_M02_AXI_ARREADY,
      s_axi_CTRL_ARVALID => intf_net_smartconnect_0_M02_AXI_ARVALID,
      s_axi_CTRL_AWADDR(11 downto 0) => intf_net_smartconnect_0_M02_AXI_AWADDR(11 downto 0),
      s_axi_CTRL_AWREADY => intf_net_smartconnect_0_M02_AXI_AWREADY,
      s_axi_CTRL_AWVALID => intf_net_smartconnect_0_M02_AXI_AWVALID,
      s_axi_CTRL_BREADY => intf_net_smartconnect_0_M02_AXI_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => intf_net_smartconnect_0_M02_AXI_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => intf_net_smartconnect_0_M02_AXI_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => intf_net_smartconnect_0_M02_AXI_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => intf_net_smartconnect_0_M02_AXI_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => intf_net_smartconnect_0_M02_AXI_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => intf_net_smartconnect_0_M02_AXI_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => intf_net_smartconnect_0_M02_AXI_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => intf_net_smartconnect_0_M02_AXI_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => intf_net_smartconnect_0_M02_AXI_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => intf_net_smartconnect_0_M02_AXI_WVALID,
      s_axis_video_TDATA(23 downto 0) => intf_net_video_router_M01_AXIS_TDATA(23 downto 0),
      s_axis_video_TDEST(0) => intf_net_video_router_M01_AXIS_TDEST,
      s_axis_video_TID(0) => intf_net_video_router_M01_AXIS_TID,
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M01_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M01_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M01_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M01_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M01_AXIS_TUSER,
      s_axis_video_TVALID => intf_net_video_router_M01_AXIS_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk_axis : in STD_LOGIC;
    aclk_ctrl : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    aresetn_io_axis : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_axi_ctrl_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_axi_ctrl_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_v_proc_ss_0_3,bd_d86b,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_d86b,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute hw_handoff : string;
  attribute hw_handoff of U0 : label is "design_1_v_proc_ss_0_3.hwdef";
  attribute x_interface_info : string;
  attribute x_interface_info of aclk_axis : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_axis CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk_axis : signal is "XIL_INTERFACENAME CLK.aclk_axis, ASSOCIATED_RESET aresetn_io_axis, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF m_axis:s_axis, INSERT_VIP 0, ASSOCIATED_CLKEN aclken";
  attribute x_interface_info of aclk_ctrl : signal is "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK";
  attribute x_interface_parameter of aclk_ctrl : signal is "XIL_INTERFACENAME CLK.aclk_ctrl, ASSOCIATED_RESET aresetn_ctrl, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF s_axi_ctrl, INSERT_VIP 0, ASSOCIATED_CLKEN s_sc_aclken";
  attribute x_interface_info of aresetn_ctrl : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST";
  attribute x_interface_parameter of aresetn_ctrl : signal is "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of aresetn_io_axis : signal is "xilinx.com:signal:reset:1.0 RST.aresetn_io_axis RST";
  attribute x_interface_parameter of aresetn_io_axis : signal is "XIL_INTERFACENAME RST.aresetn_io_axis, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of m_axis_tdest : signal is "xilinx.com:interface:axis:1.0 m_axis TDEST";
  attribute x_interface_info of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 m_axis TID";
  attribute x_interface_info of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  attribute x_interface_info of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 m_axis TSTRB";
  attribute x_interface_info of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute x_interface_info of s_axi_ctrl_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR";
  attribute x_interface_info of s_axi_ctrl_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT";
  attribute x_interface_info of s_axi_ctrl_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY";
  attribute x_interface_info of s_axi_ctrl_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID";
  attribute x_interface_info of s_axi_ctrl_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR";
  attribute x_interface_parameter of s_axi_ctrl_awaddr : signal is "XIL_INTERFACENAME s_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 148500000, ID_WIDTH 0, ADDR_WIDTH 19, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_ctrl_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT";
  attribute x_interface_info of s_axi_ctrl_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY";
  attribute x_interface_info of s_axi_ctrl_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID";
  attribute x_interface_info of s_axi_ctrl_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY";
  attribute x_interface_info of s_axi_ctrl_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP";
  attribute x_interface_info of s_axi_ctrl_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID";
  attribute x_interface_info of s_axi_ctrl_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA";
  attribute x_interface_info of s_axi_ctrl_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY";
  attribute x_interface_info of s_axi_ctrl_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP";
  attribute x_interface_info of s_axi_ctrl_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID";
  attribute x_interface_info of s_axi_ctrl_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA";
  attribute x_interface_info of s_axi_ctrl_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY";
  attribute x_interface_info of s_axi_ctrl_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB";
  attribute x_interface_info of s_axi_ctrl_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 s_axis TDEST";
  attribute x_interface_info of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 s_axis TID";
  attribute x_interface_info of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
  attribute x_interface_info of s_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 s_axis TSTRB";
  attribute x_interface_info of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d86b
     port map (
      aclk_axis => aclk_axis,
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => aresetn_ctrl,
      aresetn_io_axis(0) => aresetn_io_axis(0),
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tdest(3 downto 0) => m_axis_tdest(3 downto 0),
      m_axis_tid(0) => m_axis_tid(0),
      m_axis_tkeep(2 downto 0) => m_axis_tkeep(2 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(2 downto 0) => m_axis_tstrb(2 downto 0),
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axi_ctrl_araddr(18 downto 0) => s_axi_ctrl_araddr(18 downto 0),
      s_axi_ctrl_arprot(2 downto 0) => s_axi_ctrl_arprot(2 downto 0),
      s_axi_ctrl_arready(0) => s_axi_ctrl_arready(0),
      s_axi_ctrl_arvalid(0) => s_axi_ctrl_arvalid(0),
      s_axi_ctrl_awaddr(18 downto 0) => s_axi_ctrl_awaddr(18 downto 0),
      s_axi_ctrl_awprot(2 downto 0) => s_axi_ctrl_awprot(2 downto 0),
      s_axi_ctrl_awready(0) => s_axi_ctrl_awready(0),
      s_axi_ctrl_awvalid(0) => s_axi_ctrl_awvalid(0),
      s_axi_ctrl_bready(0) => s_axi_ctrl_bready(0),
      s_axi_ctrl_bresp(1 downto 0) => s_axi_ctrl_bresp(1 downto 0),
      s_axi_ctrl_bvalid(0) => s_axi_ctrl_bvalid(0),
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready(0) => s_axi_ctrl_rready(0),
      s_axi_ctrl_rresp(1 downto 0) => s_axi_ctrl_rresp(1 downto 0),
      s_axi_ctrl_rvalid(0) => s_axi_ctrl_rvalid(0),
      s_axi_ctrl_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      s_axi_ctrl_wready(0) => s_axi_ctrl_wready(0),
      s_axi_ctrl_wstrb(3 downto 0) => s_axi_ctrl_wstrb(3 downto 0),
      s_axi_ctrl_wvalid(0) => s_axi_ctrl_wvalid(0),
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tdest(0) => s_axis_tdest(0),
      s_axis_tid(0) => s_axis_tid(0),
      s_axis_tkeep(2 downto 0) => s_axis_tkeep(2 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2 downto 0) => s_axis_tstrb(2 downto 0),
      s_axis_tuser(0) => s_axis_tuser(0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
