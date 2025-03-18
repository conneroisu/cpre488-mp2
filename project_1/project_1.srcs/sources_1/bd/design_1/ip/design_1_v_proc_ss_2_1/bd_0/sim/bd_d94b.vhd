--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_d94b.bd
--Design : bd_d94b
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_FKOZA0 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tvalid : in STD_LOGIC
  );
end m00_couplers_imp_FKOZA0;

architecture STRUCTURE of m00_couplers_imp_FKOZA0 is
  component bd_d94b_m00_regslice_0 is
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
  end component bd_d94b_m00_regslice_0;
  signal m00_couplers_to_m00_regslice_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m00_couplers_to_m00_regslice_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_regslice_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_regslice_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_regslice_TLAST : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_TREADY : STD_LOGIC;
  signal m00_couplers_to_m00_regslice_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_regslice_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_regslice_TVALID : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m00_regslice_to_m00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_regslice_to_m00_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_regslice_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_TLAST : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TREADY : STD_LOGIC;
  signal m00_regslice_to_m00_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_regslice_to_m00_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_regslice_to_m00_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(23 downto 0) <= m00_regslice_to_m00_couplers_TDATA(23 downto 0);
  M_AXIS_tdest(3 downto 0) <= m00_regslice_to_m00_couplers_TDEST(3 downto 0);
  M_AXIS_tid(0) <= m00_regslice_to_m00_couplers_TID(0);
  M_AXIS_tkeep(2 downto 0) <= m00_regslice_to_m00_couplers_TKEEP(2 downto 0);
  M_AXIS_tlast <= m00_regslice_to_m00_couplers_TLAST;
  M_AXIS_tstrb(2 downto 0) <= m00_regslice_to_m00_couplers_TSTRB(2 downto 0);
  M_AXIS_tuser(0) <= m00_regslice_to_m00_couplers_TUSER(0);
  M_AXIS_tvalid <= m00_regslice_to_m00_couplers_TVALID;
  S_AXIS_tready <= m00_couplers_to_m00_regslice_TREADY;
  m00_couplers_to_m00_regslice_TDATA(23 downto 0) <= S_AXIS_tdata(23 downto 0);
  m00_couplers_to_m00_regslice_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  m00_couplers_to_m00_regslice_TID(0) <= S_AXIS_tid(0);
  m00_couplers_to_m00_regslice_TKEEP(2 downto 0) <= S_AXIS_tkeep(2 downto 0);
  m00_couplers_to_m00_regslice_TLAST <= S_AXIS_tlast;
  m00_couplers_to_m00_regslice_TSTRB(2 downto 0) <= S_AXIS_tstrb(2 downto 0);
  m00_couplers_to_m00_regslice_TUSER(0) <= S_AXIS_tuser(0);
  m00_couplers_to_m00_regslice_TVALID <= S_AXIS_tvalid;
  m00_regslice_to_m00_couplers_TREADY <= M_AXIS_tready;
m00_regslice: component bd_d94b_m00_regslice_0
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => m00_regslice_to_m00_couplers_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => m00_regslice_to_m00_couplers_TDEST(3 downto 0),
      m_axis_tid(0) => m00_regslice_to_m00_couplers_TID(0),
      m_axis_tkeep(2 downto 0) => m00_regslice_to_m00_couplers_TKEEP(2 downto 0),
      m_axis_tlast => m00_regslice_to_m00_couplers_TLAST,
      m_axis_tready => m00_regslice_to_m00_couplers_TREADY,
      m_axis_tstrb(2 downto 0) => m00_regslice_to_m00_couplers_TSTRB(2 downto 0),
      m_axis_tuser(0) => m00_regslice_to_m00_couplers_TUSER(0),
      m_axis_tvalid => m00_regslice_to_m00_couplers_TVALID,
      s_axis_tdata(23 downto 0) => m00_couplers_to_m00_regslice_TDATA(23 downto 0),
      s_axis_tdest(3 downto 0) => m00_couplers_to_m00_regslice_TDEST(3 downto 0),
      s_axis_tid(0) => m00_couplers_to_m00_regslice_TID(0),
      s_axis_tkeep(2 downto 0) => m00_couplers_to_m00_regslice_TKEEP(2 downto 0),
      s_axis_tlast => m00_couplers_to_m00_regslice_TLAST,
      s_axis_tready => m00_couplers_to_m00_regslice_TREADY,
      s_axis_tstrb(2 downto 0) => m00_couplers_to_m00_regslice_TSTRB(2 downto 0),
      s_axis_tuser(0) => m00_couplers_to_m00_regslice_TUSER(0),
      s_axis_tvalid => m00_couplers_to_m00_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1H54D0B is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tvalid : in STD_LOGIC
  );
end m01_couplers_imp_1H54D0B;

architecture STRUCTURE of m01_couplers_imp_1H54D0B is
  component bd_d94b_m01_regslice_0 is
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
  end component bd_d94b_m01_regslice_0;
  component bd_d94b_auto_ss_slidr_0 is
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
  end component bd_d94b_auto_ss_slidr_0;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC;
  signal auto_ss_slidr_to_m01_regslice_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ss_slidr_to_m01_regslice_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slidr_to_m01_regslice_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slidr_to_m01_regslice_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m01_regslice_TLAST : STD_LOGIC;
  signal auto_ss_slidr_to_m01_regslice_TREADY : STD_LOGIC;
  signal auto_ss_slidr_to_m01_regslice_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m01_regslice_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slidr_to_m01_regslice_TVALID : STD_LOGIC;
  signal m01_couplers_to_auto_ss_slidr_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m01_couplers_to_auto_ss_slidr_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_ss_slidr_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_ss_slidr_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_ss_slidr_TLAST : STD_LOGIC;
  signal m01_couplers_to_auto_ss_slidr_TREADY : STD_LOGIC;
  signal m01_couplers_to_auto_ss_slidr_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_ss_slidr_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_ss_slidr_TVALID : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m01_regslice_to_m01_couplers_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_regslice_to_m01_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_regslice_to_m01_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_regslice_to_m01_couplers_TLAST : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_TREADY : STD_LOGIC;
  signal m01_regslice_to_m01_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_regslice_to_m01_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_regslice_to_m01_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(23 downto 0) <= m01_regslice_to_m01_couplers_TDATA(23 downto 0);
  M_AXIS_tdest(0) <= m01_regslice_to_m01_couplers_TDEST(0);
  M_AXIS_tid(0) <= m01_regslice_to_m01_couplers_TID(0);
  M_AXIS_tkeep(2 downto 0) <= m01_regslice_to_m01_couplers_TKEEP(2 downto 0);
  M_AXIS_tlast <= m01_regslice_to_m01_couplers_TLAST;
  M_AXIS_tstrb(2 downto 0) <= m01_regslice_to_m01_couplers_TSTRB(2 downto 0);
  M_AXIS_tuser(0) <= m01_regslice_to_m01_couplers_TUSER(0);
  M_AXIS_tvalid <= m01_regslice_to_m01_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1 <= S_AXIS_ARESETN;
  S_AXIS_tready <= m01_couplers_to_auto_ss_slidr_TREADY;
  m01_couplers_to_auto_ss_slidr_TDATA(23 downto 0) <= S_AXIS_tdata(23 downto 0);
  m01_couplers_to_auto_ss_slidr_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  m01_couplers_to_auto_ss_slidr_TID(0) <= S_AXIS_tid(0);
  m01_couplers_to_auto_ss_slidr_TKEEP(2 downto 0) <= S_AXIS_tkeep(2 downto 0);
  m01_couplers_to_auto_ss_slidr_TLAST <= S_AXIS_tlast;
  m01_couplers_to_auto_ss_slidr_TSTRB(2 downto 0) <= S_AXIS_tstrb(2 downto 0);
  m01_couplers_to_auto_ss_slidr_TUSER(0) <= S_AXIS_tuser(0);
  m01_couplers_to_auto_ss_slidr_TVALID <= S_AXIS_tvalid;
  m01_regslice_to_m01_couplers_TREADY <= M_AXIS_tready;
auto_ss_slidr: component bd_d94b_auto_ss_slidr_0
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1,
      m_axis_tdata(23 downto 0) => auto_ss_slidr_to_m01_regslice_TDATA(23 downto 0),
      m_axis_tdest(0) => auto_ss_slidr_to_m01_regslice_TDEST(0),
      m_axis_tid(0) => auto_ss_slidr_to_m01_regslice_TID(0),
      m_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m01_regslice_TKEEP(2 downto 0),
      m_axis_tlast => auto_ss_slidr_to_m01_regslice_TLAST,
      m_axis_tready => auto_ss_slidr_to_m01_regslice_TREADY,
      m_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m01_regslice_TSTRB(2 downto 0),
      m_axis_tuser(0) => auto_ss_slidr_to_m01_regslice_TUSER(0),
      m_axis_tvalid => auto_ss_slidr_to_m01_regslice_TVALID,
      s_axis_tdata(23 downto 0) => m01_couplers_to_auto_ss_slidr_TDATA(23 downto 0),
      s_axis_tdest(3 downto 0) => m01_couplers_to_auto_ss_slidr_TDEST(3 downto 0),
      s_axis_tid(0) => m01_couplers_to_auto_ss_slidr_TID(0),
      s_axis_tkeep(2 downto 0) => m01_couplers_to_auto_ss_slidr_TKEEP(2 downto 0),
      s_axis_tlast => m01_couplers_to_auto_ss_slidr_TLAST,
      s_axis_tready => m01_couplers_to_auto_ss_slidr_TREADY,
      s_axis_tstrb(2 downto 0) => m01_couplers_to_auto_ss_slidr_TSTRB(2 downto 0),
      s_axis_tuser(0) => m01_couplers_to_auto_ss_slidr_TUSER(0),
      s_axis_tvalid => m01_couplers_to_auto_ss_slidr_TVALID
    );
m01_regslice: component bd_d94b_m01_regslice_0
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => m01_regslice_to_m01_couplers_TDATA(23 downto 0),
      m_axis_tdest(0) => m01_regslice_to_m01_couplers_TDEST(0),
      m_axis_tid(0) => m01_regslice_to_m01_couplers_TID(0),
      m_axis_tkeep(2 downto 0) => m01_regslice_to_m01_couplers_TKEEP(2 downto 0),
      m_axis_tlast => m01_regslice_to_m01_couplers_TLAST,
      m_axis_tready => m01_regslice_to_m01_couplers_TREADY,
      m_axis_tstrb(2 downto 0) => m01_regslice_to_m01_couplers_TSTRB(2 downto 0),
      m_axis_tuser(0) => m01_regslice_to_m01_couplers_TUSER(0),
      m_axis_tvalid => m01_regslice_to_m01_couplers_TVALID,
      s_axis_tdata(23 downto 0) => auto_ss_slidr_to_m01_regslice_TDATA(23 downto 0),
      s_axis_tdest(0) => auto_ss_slidr_to_m01_regslice_TDEST(0),
      s_axis_tid(0) => auto_ss_slidr_to_m01_regslice_TID(0),
      s_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m01_regslice_TKEEP(2 downto 0),
      s_axis_tlast => auto_ss_slidr_to_m01_regslice_TLAST,
      s_axis_tready => auto_ss_slidr_to_m01_regslice_TREADY,
      s_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m01_regslice_TSTRB(2 downto 0),
      s_axis_tuser(0) => auto_ss_slidr_to_m01_regslice_TUSER(0),
      s_axis_tvalid => auto_ss_slidr_to_m01_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1TIHHEN is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tvalid : in STD_LOGIC
  );
end m02_couplers_imp_1TIHHEN;

architecture STRUCTURE of m02_couplers_imp_1TIHHEN is
  component bd_d94b_m02_regslice_0 is
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
  end component bd_d94b_m02_regslice_0;
  component bd_d94b_auto_ss_slidr_1 is
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
  end component bd_d94b_auto_ss_slidr_1;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC;
  signal auto_ss_slidr_to_m02_regslice_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ss_slidr_to_m02_regslice_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slidr_to_m02_regslice_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slidr_to_m02_regslice_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m02_regslice_TLAST : STD_LOGIC;
  signal auto_ss_slidr_to_m02_regslice_TREADY : STD_LOGIC;
  signal auto_ss_slidr_to_m02_regslice_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m02_regslice_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slidr_to_m02_regslice_TVALID : STD_LOGIC;
  signal m02_couplers_to_auto_ss_slidr_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m02_couplers_to_auto_ss_slidr_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_ss_slidr_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_ss_slidr_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_ss_slidr_TLAST : STD_LOGIC;
  signal m02_couplers_to_auto_ss_slidr_TREADY : STD_LOGIC;
  signal m02_couplers_to_auto_ss_slidr_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_ss_slidr_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_ss_slidr_TVALID : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m02_regslice_to_m02_couplers_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_regslice_to_m02_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_regslice_to_m02_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_regslice_to_m02_couplers_TLAST : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_TREADY : STD_LOGIC;
  signal m02_regslice_to_m02_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_regslice_to_m02_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_regslice_to_m02_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(23 downto 0) <= m02_regslice_to_m02_couplers_TDATA(23 downto 0);
  M_AXIS_tdest(0) <= m02_regslice_to_m02_couplers_TDEST(0);
  M_AXIS_tid(0) <= m02_regslice_to_m02_couplers_TID(0);
  M_AXIS_tkeep(2 downto 0) <= m02_regslice_to_m02_couplers_TKEEP(2 downto 0);
  M_AXIS_tlast <= m02_regslice_to_m02_couplers_TLAST;
  M_AXIS_tstrb(2 downto 0) <= m02_regslice_to_m02_couplers_TSTRB(2 downto 0);
  M_AXIS_tuser(0) <= m02_regslice_to_m02_couplers_TUSER(0);
  M_AXIS_tvalid <= m02_regslice_to_m02_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1 <= S_AXIS_ARESETN;
  S_AXIS_tready <= m02_couplers_to_auto_ss_slidr_TREADY;
  m02_couplers_to_auto_ss_slidr_TDATA(23 downto 0) <= S_AXIS_tdata(23 downto 0);
  m02_couplers_to_auto_ss_slidr_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  m02_couplers_to_auto_ss_slidr_TID(0) <= S_AXIS_tid(0);
  m02_couplers_to_auto_ss_slidr_TKEEP(2 downto 0) <= S_AXIS_tkeep(2 downto 0);
  m02_couplers_to_auto_ss_slidr_TLAST <= S_AXIS_tlast;
  m02_couplers_to_auto_ss_slidr_TSTRB(2 downto 0) <= S_AXIS_tstrb(2 downto 0);
  m02_couplers_to_auto_ss_slidr_TUSER(0) <= S_AXIS_tuser(0);
  m02_couplers_to_auto_ss_slidr_TVALID <= S_AXIS_tvalid;
  m02_regslice_to_m02_couplers_TREADY <= M_AXIS_tready;
auto_ss_slidr: component bd_d94b_auto_ss_slidr_1
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1,
      m_axis_tdata(23 downto 0) => auto_ss_slidr_to_m02_regslice_TDATA(23 downto 0),
      m_axis_tdest(0) => auto_ss_slidr_to_m02_regslice_TDEST(0),
      m_axis_tid(0) => auto_ss_slidr_to_m02_regslice_TID(0),
      m_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m02_regslice_TKEEP(2 downto 0),
      m_axis_tlast => auto_ss_slidr_to_m02_regslice_TLAST,
      m_axis_tready => auto_ss_slidr_to_m02_regslice_TREADY,
      m_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m02_regslice_TSTRB(2 downto 0),
      m_axis_tuser(0) => auto_ss_slidr_to_m02_regslice_TUSER(0),
      m_axis_tvalid => auto_ss_slidr_to_m02_regslice_TVALID,
      s_axis_tdata(23 downto 0) => m02_couplers_to_auto_ss_slidr_TDATA(23 downto 0),
      s_axis_tdest(3 downto 0) => m02_couplers_to_auto_ss_slidr_TDEST(3 downto 0),
      s_axis_tid(0) => m02_couplers_to_auto_ss_slidr_TID(0),
      s_axis_tkeep(2 downto 0) => m02_couplers_to_auto_ss_slidr_TKEEP(2 downto 0),
      s_axis_tlast => m02_couplers_to_auto_ss_slidr_TLAST,
      s_axis_tready => m02_couplers_to_auto_ss_slidr_TREADY,
      s_axis_tstrb(2 downto 0) => m02_couplers_to_auto_ss_slidr_TSTRB(2 downto 0),
      s_axis_tuser(0) => m02_couplers_to_auto_ss_slidr_TUSER(0),
      s_axis_tvalid => m02_couplers_to_auto_ss_slidr_TVALID
    );
m02_regslice: component bd_d94b_m02_regslice_0
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => m02_regslice_to_m02_couplers_TDATA(23 downto 0),
      m_axis_tdest(0) => m02_regslice_to_m02_couplers_TDEST(0),
      m_axis_tid(0) => m02_regslice_to_m02_couplers_TID(0),
      m_axis_tkeep(2 downto 0) => m02_regslice_to_m02_couplers_TKEEP(2 downto 0),
      m_axis_tlast => m02_regslice_to_m02_couplers_TLAST,
      m_axis_tready => m02_regslice_to_m02_couplers_TREADY,
      m_axis_tstrb(2 downto 0) => m02_regslice_to_m02_couplers_TSTRB(2 downto 0),
      m_axis_tuser(0) => m02_regslice_to_m02_couplers_TUSER(0),
      m_axis_tvalid => m02_regslice_to_m02_couplers_TVALID,
      s_axis_tdata(23 downto 0) => auto_ss_slidr_to_m02_regslice_TDATA(23 downto 0),
      s_axis_tdest(0) => auto_ss_slidr_to_m02_regslice_TDEST(0),
      s_axis_tid(0) => auto_ss_slidr_to_m02_regslice_TID(0),
      s_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m02_regslice_TKEEP(2 downto 0),
      s_axis_tlast => auto_ss_slidr_to_m02_regslice_TLAST,
      s_axis_tready => auto_ss_slidr_to_m02_regslice_TREADY,
      s_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m02_regslice_TSTRB(2 downto 0),
      s_axis_tuser(0) => auto_ss_slidr_to_m02_regslice_TUSER(0),
      s_axis_tvalid => auto_ss_slidr_to_m02_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_TW44D8 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC;
    M_AXIS_tdest : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC;
    S_AXIS_tdest : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m03_couplers_imp_TW44D8;

architecture STRUCTURE of m03_couplers_imp_TW44D8 is
  signal m03_couplers_to_m03_couplers_TDATA : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_TDEST : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_TREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata <= m03_couplers_to_m03_couplers_TDATA;
  M_AXIS_tdest <= m03_couplers_to_m03_couplers_TDEST;
  M_AXIS_tvalid <= m03_couplers_to_m03_couplers_TVALID;
  S_AXIS_tready <= m03_couplers_to_m03_couplers_TREADY;
  m03_couplers_to_m03_couplers_TDATA <= S_AXIS_tdata;
  m03_couplers_to_m03_couplers_TDEST <= S_AXIS_tdest;
  m03_couplers_to_m03_couplers_TREADY <= M_AXIS_tready;
  m03_couplers_to_m03_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_KUSD3R is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tvalid : in STD_LOGIC
  );
end m04_couplers_imp_KUSD3R;

architecture STRUCTURE of m04_couplers_imp_KUSD3R is
  component bd_d94b_m04_regslice_0 is
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
  end component bd_d94b_m04_regslice_0;
  component bd_d94b_auto_ss_slidr_2 is
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
  end component bd_d94b_auto_ss_slidr_2;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC;
  signal auto_ss_slidr_to_m04_regslice_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ss_slidr_to_m04_regslice_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slidr_to_m04_regslice_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slidr_to_m04_regslice_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m04_regslice_TLAST : STD_LOGIC;
  signal auto_ss_slidr_to_m04_regslice_TREADY : STD_LOGIC;
  signal auto_ss_slidr_to_m04_regslice_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m04_regslice_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slidr_to_m04_regslice_TVALID : STD_LOGIC;
  signal m04_couplers_to_auto_ss_slidr_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m04_couplers_to_auto_ss_slidr_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_ss_slidr_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_auto_ss_slidr_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_ss_slidr_TLAST : STD_LOGIC;
  signal m04_couplers_to_auto_ss_slidr_TREADY : STD_LOGIC;
  signal m04_couplers_to_auto_ss_slidr_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_ss_slidr_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_auto_ss_slidr_TVALID : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m04_regslice_to_m04_couplers_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_regslice_to_m04_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_regslice_to_m04_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_regslice_to_m04_couplers_TLAST : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_TREADY : STD_LOGIC;
  signal m04_regslice_to_m04_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_regslice_to_m04_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_regslice_to_m04_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(23 downto 0) <= m04_regslice_to_m04_couplers_TDATA(23 downto 0);
  M_AXIS_tdest(0) <= m04_regslice_to_m04_couplers_TDEST(0);
  M_AXIS_tid(0) <= m04_regslice_to_m04_couplers_TID(0);
  M_AXIS_tkeep(2 downto 0) <= m04_regslice_to_m04_couplers_TKEEP(2 downto 0);
  M_AXIS_tlast <= m04_regslice_to_m04_couplers_TLAST;
  M_AXIS_tstrb(2 downto 0) <= m04_regslice_to_m04_couplers_TSTRB(2 downto 0);
  M_AXIS_tuser(0) <= m04_regslice_to_m04_couplers_TUSER(0);
  M_AXIS_tvalid <= m04_regslice_to_m04_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1 <= S_AXIS_ARESETN;
  S_AXIS_tready <= m04_couplers_to_auto_ss_slidr_TREADY;
  m04_couplers_to_auto_ss_slidr_TDATA(23 downto 0) <= S_AXIS_tdata(23 downto 0);
  m04_couplers_to_auto_ss_slidr_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  m04_couplers_to_auto_ss_slidr_TID(0) <= S_AXIS_tid(0);
  m04_couplers_to_auto_ss_slidr_TKEEP(2 downto 0) <= S_AXIS_tkeep(2 downto 0);
  m04_couplers_to_auto_ss_slidr_TLAST <= S_AXIS_tlast;
  m04_couplers_to_auto_ss_slidr_TSTRB(2 downto 0) <= S_AXIS_tstrb(2 downto 0);
  m04_couplers_to_auto_ss_slidr_TUSER(0) <= S_AXIS_tuser(0);
  m04_couplers_to_auto_ss_slidr_TVALID <= S_AXIS_tvalid;
  m04_regslice_to_m04_couplers_TREADY <= M_AXIS_tready;
auto_ss_slidr: component bd_d94b_auto_ss_slidr_2
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1,
      m_axis_tdata(23 downto 0) => auto_ss_slidr_to_m04_regslice_TDATA(23 downto 0),
      m_axis_tdest(0) => auto_ss_slidr_to_m04_regslice_TDEST(0),
      m_axis_tid(0) => auto_ss_slidr_to_m04_regslice_TID(0),
      m_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m04_regslice_TKEEP(2 downto 0),
      m_axis_tlast => auto_ss_slidr_to_m04_regslice_TLAST,
      m_axis_tready => auto_ss_slidr_to_m04_regslice_TREADY,
      m_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m04_regslice_TSTRB(2 downto 0),
      m_axis_tuser(0) => auto_ss_slidr_to_m04_regslice_TUSER(0),
      m_axis_tvalid => auto_ss_slidr_to_m04_regslice_TVALID,
      s_axis_tdata(23 downto 0) => m04_couplers_to_auto_ss_slidr_TDATA(23 downto 0),
      s_axis_tdest(3 downto 0) => m04_couplers_to_auto_ss_slidr_TDEST(3 downto 0),
      s_axis_tid(0) => m04_couplers_to_auto_ss_slidr_TID(0),
      s_axis_tkeep(2 downto 0) => m04_couplers_to_auto_ss_slidr_TKEEP(2 downto 0),
      s_axis_tlast => m04_couplers_to_auto_ss_slidr_TLAST,
      s_axis_tready => m04_couplers_to_auto_ss_slidr_TREADY,
      s_axis_tstrb(2 downto 0) => m04_couplers_to_auto_ss_slidr_TSTRB(2 downto 0),
      s_axis_tuser(0) => m04_couplers_to_auto_ss_slidr_TUSER(0),
      s_axis_tvalid => m04_couplers_to_auto_ss_slidr_TVALID
    );
m04_regslice: component bd_d94b_m04_regslice_0
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => m04_regslice_to_m04_couplers_TDATA(23 downto 0),
      m_axis_tdest(0) => m04_regslice_to_m04_couplers_TDEST(0),
      m_axis_tid(0) => m04_regslice_to_m04_couplers_TID(0),
      m_axis_tkeep(2 downto 0) => m04_regslice_to_m04_couplers_TKEEP(2 downto 0),
      m_axis_tlast => m04_regslice_to_m04_couplers_TLAST,
      m_axis_tready => m04_regslice_to_m04_couplers_TREADY,
      m_axis_tstrb(2 downto 0) => m04_regslice_to_m04_couplers_TSTRB(2 downto 0),
      m_axis_tuser(0) => m04_regslice_to_m04_couplers_TUSER(0),
      m_axis_tvalid => m04_regslice_to_m04_couplers_TVALID,
      s_axis_tdata(23 downto 0) => auto_ss_slidr_to_m04_regslice_TDATA(23 downto 0),
      s_axis_tdest(0) => auto_ss_slidr_to_m04_regslice_TDEST(0),
      s_axis_tid(0) => auto_ss_slidr_to_m04_regslice_TID(0),
      s_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m04_regslice_TKEEP(2 downto 0),
      s_axis_tlast => auto_ss_slidr_to_m04_regslice_TLAST,
      s_axis_tready => auto_ss_slidr_to_m04_regslice_TREADY,
      s_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m04_regslice_TSTRB(2 downto 0),
      s_axis_tuser(0) => auto_ss_slidr_to_m04_regslice_TUSER(0),
      s_axis_tvalid => auto_ss_slidr_to_m04_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_1KRA590 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tvalid : in STD_LOGIC
  );
end m05_couplers_imp_1KRA590;

architecture STRUCTURE of m05_couplers_imp_1KRA590 is
  component bd_d94b_m05_regslice_0 is
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
  end component bd_d94b_m05_regslice_0;
  signal m05_couplers_to_m05_regslice_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m05_couplers_to_m05_regslice_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_regslice_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_regslice_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_regslice_TLAST : STD_LOGIC;
  signal m05_couplers_to_m05_regslice_TREADY : STD_LOGIC;
  signal m05_couplers_to_m05_regslice_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_regslice_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_regslice_TVALID : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m05_regslice_to_m05_couplers_TREADY : STD_LOGIC;
  signal m05_regslice_to_m05_couplers_TVALID : STD_LOGIC;
  signal NLW_m05_regslice_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_m05_regslice_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m05_regslice_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_m05_regslice_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m05_regslice_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m05_regslice_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXIS_tdata <= m05_regslice_to_m05_couplers_TDATA(0);
  M_AXIS_tvalid <= m05_regslice_to_m05_couplers_TVALID;
  S_AXIS_tready <= m05_couplers_to_m05_regslice_TREADY;
  m05_couplers_to_m05_regslice_TDATA(23 downto 0) <= S_AXIS_tdata(23 downto 0);
  m05_couplers_to_m05_regslice_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  m05_couplers_to_m05_regslice_TID(0) <= S_AXIS_tid(0);
  m05_couplers_to_m05_regslice_TKEEP(2 downto 0) <= S_AXIS_tkeep(2 downto 0);
  m05_couplers_to_m05_regslice_TLAST <= S_AXIS_tlast;
  m05_couplers_to_m05_regslice_TSTRB(2 downto 0) <= S_AXIS_tstrb(2 downto 0);
  m05_couplers_to_m05_regslice_TUSER(0) <= S_AXIS_tuser(0);
  m05_couplers_to_m05_regslice_TVALID <= S_AXIS_tvalid;
  m05_regslice_to_m05_couplers_TREADY <= M_AXIS_tready;
m05_regslice: component bd_d94b_m05_regslice_0
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => m05_regslice_to_m05_couplers_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => NLW_m05_regslice_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(0) => NLW_m05_regslice_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(2 downto 0) => NLW_m05_regslice_m_axis_tkeep_UNCONNECTED(2 downto 0),
      m_axis_tlast => NLW_m05_regslice_m_axis_tlast_UNCONNECTED,
      m_axis_tready => m05_regslice_to_m05_couplers_TREADY,
      m_axis_tstrb(2 downto 0) => NLW_m05_regslice_m_axis_tstrb_UNCONNECTED(2 downto 0),
      m_axis_tuser(0) => NLW_m05_regslice_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m05_regslice_to_m05_couplers_TVALID,
      s_axis_tdata(23 downto 0) => m05_couplers_to_m05_regslice_TDATA(23 downto 0),
      s_axis_tdest(3 downto 0) => m05_couplers_to_m05_regslice_TDEST(3 downto 0),
      s_axis_tid(0) => m05_couplers_to_m05_regslice_TID(0),
      s_axis_tkeep(2 downto 0) => m05_couplers_to_m05_regslice_TKEEP(2 downto 0),
      s_axis_tlast => m05_couplers_to_m05_regslice_TLAST,
      s_axis_tready => m05_couplers_to_m05_regslice_TREADY,
      s_axis_tstrb(2 downto 0) => m05_couplers_to_m05_regslice_TSTRB(2 downto 0),
      s_axis_tuser(0) => m05_couplers_to_m05_regslice_TUSER(0),
      s_axis_tvalid => m05_couplers_to_m05_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_1851DHS is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tvalid : in STD_LOGIC
  );
end m06_couplers_imp_1851DHS;

architecture STRUCTURE of m06_couplers_imp_1851DHS is
  component bd_d94b_m06_regslice_0 is
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
  end component bd_d94b_m06_regslice_0;
  signal m06_couplers_to_m06_regslice_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m06_couplers_to_m06_regslice_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_m06_regslice_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_regslice_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_m06_regslice_TLAST : STD_LOGIC;
  signal m06_couplers_to_m06_regslice_TREADY : STD_LOGIC;
  signal m06_couplers_to_m06_regslice_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_m06_regslice_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_regslice_TVALID : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m06_regslice_to_m06_couplers_TREADY : STD_LOGIC;
  signal m06_regslice_to_m06_couplers_TVALID : STD_LOGIC;
  signal NLW_m06_regslice_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_m06_regslice_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m06_regslice_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_m06_regslice_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m06_regslice_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m06_regslice_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXIS_tdata <= m06_regslice_to_m06_couplers_TDATA(0);
  M_AXIS_tvalid <= m06_regslice_to_m06_couplers_TVALID;
  S_AXIS_tready <= m06_couplers_to_m06_regslice_TREADY;
  m06_couplers_to_m06_regslice_TDATA(23 downto 0) <= S_AXIS_tdata(23 downto 0);
  m06_couplers_to_m06_regslice_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  m06_couplers_to_m06_regslice_TID(0) <= S_AXIS_tid(0);
  m06_couplers_to_m06_regslice_TKEEP(2 downto 0) <= S_AXIS_tkeep(2 downto 0);
  m06_couplers_to_m06_regslice_TLAST <= S_AXIS_tlast;
  m06_couplers_to_m06_regslice_TSTRB(2 downto 0) <= S_AXIS_tstrb(2 downto 0);
  m06_couplers_to_m06_regslice_TUSER(0) <= S_AXIS_tuser(0);
  m06_couplers_to_m06_regslice_TVALID <= S_AXIS_tvalid;
  m06_regslice_to_m06_couplers_TREADY <= M_AXIS_tready;
m06_regslice: component bd_d94b_m06_regslice_0
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => m06_regslice_to_m06_couplers_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => NLW_m06_regslice_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(0) => NLW_m06_regslice_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(2 downto 0) => NLW_m06_regslice_m_axis_tkeep_UNCONNECTED(2 downto 0),
      m_axis_tlast => NLW_m06_regslice_m_axis_tlast_UNCONNECTED,
      m_axis_tready => m06_regslice_to_m06_couplers_TREADY,
      m_axis_tstrb(2 downto 0) => NLW_m06_regslice_m_axis_tstrb_UNCONNECTED(2 downto 0),
      m_axis_tuser(0) => NLW_m06_regslice_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m06_regslice_to_m06_couplers_TVALID,
      s_axis_tdata(23 downto 0) => m06_couplers_to_m06_regslice_TDATA(23 downto 0),
      s_axis_tdest(3 downto 0) => m06_couplers_to_m06_regslice_TDEST(3 downto 0),
      s_axis_tid(0) => m06_couplers_to_m06_regslice_TID(0),
      s_axis_tkeep(2 downto 0) => m06_couplers_to_m06_regslice_TKEEP(2 downto 0),
      s_axis_tlast => m06_couplers_to_m06_regslice_TLAST,
      s_axis_tready => m06_couplers_to_m06_regslice_TREADY,
      s_axis_tstrb(2 downto 0) => m06_couplers_to_m06_regslice_TSTRB(2 downto 0),
      s_axis_tuser(0) => m06_couplers_to_m06_regslice_TUSER(0),
      s_axis_tvalid => m06_couplers_to_m06_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_6UQF2R is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tvalid : in STD_LOGIC
  );
end m07_couplers_imp_6UQF2R;

architecture STRUCTURE of m07_couplers_imp_6UQF2R is
  component bd_d94b_m07_regslice_0 is
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
  end component bd_d94b_m07_regslice_0;
  signal m07_couplers_to_m07_regslice_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m07_couplers_to_m07_regslice_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_m07_regslice_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_regslice_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_m07_regslice_TLAST : STD_LOGIC;
  signal m07_couplers_to_m07_regslice_TREADY : STD_LOGIC;
  signal m07_couplers_to_m07_regslice_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_m07_regslice_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_regslice_TVALID : STD_LOGIC;
  signal m07_regslice_to_m07_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m07_regslice_to_m07_couplers_TREADY : STD_LOGIC;
  signal m07_regslice_to_m07_couplers_TVALID : STD_LOGIC;
  signal NLW_m07_regslice_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_m07_regslice_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m07_regslice_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_m07_regslice_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m07_regslice_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m07_regslice_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXIS_tdata <= m07_regslice_to_m07_couplers_TDATA(0);
  M_AXIS_tvalid <= m07_regslice_to_m07_couplers_TVALID;
  S_AXIS_tready <= m07_couplers_to_m07_regslice_TREADY;
  m07_couplers_to_m07_regslice_TDATA(23 downto 0) <= S_AXIS_tdata(23 downto 0);
  m07_couplers_to_m07_regslice_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  m07_couplers_to_m07_regslice_TID(0) <= S_AXIS_tid(0);
  m07_couplers_to_m07_regslice_TKEEP(2 downto 0) <= S_AXIS_tkeep(2 downto 0);
  m07_couplers_to_m07_regslice_TLAST <= S_AXIS_tlast;
  m07_couplers_to_m07_regslice_TSTRB(2 downto 0) <= S_AXIS_tstrb(2 downto 0);
  m07_couplers_to_m07_regslice_TUSER(0) <= S_AXIS_tuser(0);
  m07_couplers_to_m07_regslice_TVALID <= S_AXIS_tvalid;
  m07_regslice_to_m07_couplers_TREADY <= M_AXIS_tready;
m07_regslice: component bd_d94b_m07_regslice_0
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => m07_regslice_to_m07_couplers_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => NLW_m07_regslice_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(0) => NLW_m07_regslice_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(2 downto 0) => NLW_m07_regslice_m_axis_tkeep_UNCONNECTED(2 downto 0),
      m_axis_tlast => NLW_m07_regslice_m_axis_tlast_UNCONNECTED,
      m_axis_tready => m07_regslice_to_m07_couplers_TREADY,
      m_axis_tstrb(2 downto 0) => NLW_m07_regslice_m_axis_tstrb_UNCONNECTED(2 downto 0),
      m_axis_tuser(0) => NLW_m07_regslice_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m07_regslice_to_m07_couplers_TVALID,
      s_axis_tdata(23 downto 0) => m07_couplers_to_m07_regslice_TDATA(23 downto 0),
      s_axis_tdest(3 downto 0) => m07_couplers_to_m07_regslice_TDEST(3 downto 0),
      s_axis_tid(0) => m07_couplers_to_m07_regslice_TID(0),
      s_axis_tkeep(2 downto 0) => m07_couplers_to_m07_regslice_TKEEP(2 downto 0),
      s_axis_tlast => m07_couplers_to_m07_regslice_TLAST,
      s_axis_tready => m07_couplers_to_m07_regslice_TREADY,
      s_axis_tstrb(2 downto 0) => m07_couplers_to_m07_regslice_TSTRB(2 downto 0),
      s_axis_tuser(0) => m07_couplers_to_m07_regslice_TUSER(0),
      s_axis_tvalid => m07_couplers_to_m07_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_1PNFOXY is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tvalid : in STD_LOGIC
  );
end m08_couplers_imp_1PNFOXY;

architecture STRUCTURE of m08_couplers_imp_1PNFOXY is
  component bd_d94b_m08_regslice_0 is
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
  end component bd_d94b_m08_regslice_0;
  component bd_d94b_auto_ss_slidr_3 is
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
  end component bd_d94b_auto_ss_slidr_3;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC;
  signal auto_ss_slidr_to_m08_regslice_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ss_slidr_to_m08_regslice_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slidr_to_m08_regslice_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slidr_to_m08_regslice_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m08_regslice_TLAST : STD_LOGIC;
  signal auto_ss_slidr_to_m08_regslice_TREADY : STD_LOGIC;
  signal auto_ss_slidr_to_m08_regslice_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slidr_to_m08_regslice_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slidr_to_m08_regslice_TVALID : STD_LOGIC;
  signal m08_couplers_to_auto_ss_slidr_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m08_couplers_to_auto_ss_slidr_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_auto_ss_slidr_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_auto_ss_slidr_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_auto_ss_slidr_TLAST : STD_LOGIC;
  signal m08_couplers_to_auto_ss_slidr_TREADY : STD_LOGIC;
  signal m08_couplers_to_auto_ss_slidr_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_auto_ss_slidr_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_auto_ss_slidr_TVALID : STD_LOGIC;
  signal m08_regslice_to_m08_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m08_regslice_to_m08_couplers_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_regslice_to_m08_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_regslice_to_m08_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_regslice_to_m08_couplers_TLAST : STD_LOGIC;
  signal m08_regslice_to_m08_couplers_TREADY : STD_LOGIC;
  signal m08_regslice_to_m08_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_regslice_to_m08_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_regslice_to_m08_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata(23 downto 0) <= m08_regslice_to_m08_couplers_TDATA(23 downto 0);
  M_AXIS_tdest(0) <= m08_regslice_to_m08_couplers_TDEST(0);
  M_AXIS_tid(0) <= m08_regslice_to_m08_couplers_TID(0);
  M_AXIS_tkeep(2 downto 0) <= m08_regslice_to_m08_couplers_TKEEP(2 downto 0);
  M_AXIS_tlast <= m08_regslice_to_m08_couplers_TLAST;
  M_AXIS_tstrb(2 downto 0) <= m08_regslice_to_m08_couplers_TSTRB(2 downto 0);
  M_AXIS_tuser(0) <= m08_regslice_to_m08_couplers_TUSER(0);
  M_AXIS_tvalid <= m08_regslice_to_m08_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1 <= S_AXIS_ARESETN;
  S_AXIS_tready <= m08_couplers_to_auto_ss_slidr_TREADY;
  m08_couplers_to_auto_ss_slidr_TDATA(23 downto 0) <= S_AXIS_tdata(23 downto 0);
  m08_couplers_to_auto_ss_slidr_TDEST(3 downto 0) <= S_AXIS_tdest(3 downto 0);
  m08_couplers_to_auto_ss_slidr_TID(0) <= S_AXIS_tid(0);
  m08_couplers_to_auto_ss_slidr_TKEEP(2 downto 0) <= S_AXIS_tkeep(2 downto 0);
  m08_couplers_to_auto_ss_slidr_TLAST <= S_AXIS_tlast;
  m08_couplers_to_auto_ss_slidr_TSTRB(2 downto 0) <= S_AXIS_tstrb(2 downto 0);
  m08_couplers_to_auto_ss_slidr_TUSER(0) <= S_AXIS_tuser(0);
  m08_couplers_to_auto_ss_slidr_TVALID <= S_AXIS_tvalid;
  m08_regslice_to_m08_couplers_TREADY <= M_AXIS_tready;
auto_ss_slidr: component bd_d94b_auto_ss_slidr_3
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1,
      m_axis_tdata(23 downto 0) => auto_ss_slidr_to_m08_regslice_TDATA(23 downto 0),
      m_axis_tdest(0) => auto_ss_slidr_to_m08_regslice_TDEST(0),
      m_axis_tid(0) => auto_ss_slidr_to_m08_regslice_TID(0),
      m_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m08_regslice_TKEEP(2 downto 0),
      m_axis_tlast => auto_ss_slidr_to_m08_regslice_TLAST,
      m_axis_tready => auto_ss_slidr_to_m08_regslice_TREADY,
      m_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m08_regslice_TSTRB(2 downto 0),
      m_axis_tuser(0) => auto_ss_slidr_to_m08_regslice_TUSER(0),
      m_axis_tvalid => auto_ss_slidr_to_m08_regslice_TVALID,
      s_axis_tdata(23 downto 0) => m08_couplers_to_auto_ss_slidr_TDATA(23 downto 0),
      s_axis_tdest(3 downto 0) => m08_couplers_to_auto_ss_slidr_TDEST(3 downto 0),
      s_axis_tid(0) => m08_couplers_to_auto_ss_slidr_TID(0),
      s_axis_tkeep(2 downto 0) => m08_couplers_to_auto_ss_slidr_TKEEP(2 downto 0),
      s_axis_tlast => m08_couplers_to_auto_ss_slidr_TLAST,
      s_axis_tready => m08_couplers_to_auto_ss_slidr_TREADY,
      s_axis_tstrb(2 downto 0) => m08_couplers_to_auto_ss_slidr_TSTRB(2 downto 0),
      s_axis_tuser(0) => m08_couplers_to_auto_ss_slidr_TUSER(0),
      s_axis_tvalid => m08_couplers_to_auto_ss_slidr_TVALID
    );
m08_regslice: component bd_d94b_m08_regslice_0
     port map (
      aclk => M_AXIS_ACLK,
      aresetn => M_AXIS_ARESETN,
      m_axis_tdata(23 downto 0) => m08_regslice_to_m08_couplers_TDATA(23 downto 0),
      m_axis_tdest(0) => m08_regslice_to_m08_couplers_TDEST(0),
      m_axis_tid(0) => m08_regslice_to_m08_couplers_TID(0),
      m_axis_tkeep(2 downto 0) => m08_regslice_to_m08_couplers_TKEEP(2 downto 0),
      m_axis_tlast => m08_regslice_to_m08_couplers_TLAST,
      m_axis_tready => m08_regslice_to_m08_couplers_TREADY,
      m_axis_tstrb(2 downto 0) => m08_regslice_to_m08_couplers_TSTRB(2 downto 0),
      m_axis_tuser(0) => m08_regslice_to_m08_couplers_TUSER(0),
      m_axis_tvalid => m08_regslice_to_m08_couplers_TVALID,
      s_axis_tdata(23 downto 0) => auto_ss_slidr_to_m08_regslice_TDATA(23 downto 0),
      s_axis_tdest(0) => auto_ss_slidr_to_m08_regslice_TDEST(0),
      s_axis_tid(0) => auto_ss_slidr_to_m08_regslice_TID(0),
      s_axis_tkeep(2 downto 0) => auto_ss_slidr_to_m08_regslice_TKEEP(2 downto 0),
      s_axis_tlast => auto_ss_slidr_to_m08_regslice_TLAST,
      s_axis_tready => auto_ss_slidr_to_m08_regslice_TREADY,
      s_axis_tstrb(2 downto 0) => auto_ss_slidr_to_m08_regslice_TSTRB(2 downto 0),
      s_axis_tuser(0) => auto_ss_slidr_to_m08_regslice_TUSER(0),
      s_axis_tvalid => auto_ss_slidr_to_m08_regslice_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m09_couplers_imp_OUWND1 is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC;
    M_AXIS_tdest : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC;
    S_AXIS_tdest : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end m09_couplers_imp_OUWND1;

architecture STRUCTURE of m09_couplers_imp_OUWND1 is
  signal m09_couplers_to_m09_couplers_TDATA : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_TDEST : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_TREADY : STD_LOGIC;
  signal m09_couplers_to_m09_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata <= m09_couplers_to_m09_couplers_TDATA;
  M_AXIS_tdest <= m09_couplers_to_m09_couplers_TDEST;
  M_AXIS_tvalid <= m09_couplers_to_m09_couplers_TVALID;
  S_AXIS_tready <= m09_couplers_to_m09_couplers_TREADY;
  m09_couplers_to_m09_couplers_TDATA <= S_AXIS_tdata;
  m09_couplers_to_m09_couplers_TDEST <= S_AXIS_tdest;
  m09_couplers_to_m09_couplers_TREADY <= M_AXIS_tready;
  m09_couplers_to_m09_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1H11R7O is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_1H11R7O;

architecture STRUCTURE of s00_couplers_imp_1H11R7O is
  component bd_d94b_auto_ss_slid_0 is
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
  end component bd_d94b_auto_ss_slid_0;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC;
  signal auto_ss_slid_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ss_slid_to_s00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_slid_to_s00_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slid_to_s00_couplers_TLAST : STD_LOGIC;
  signal auto_ss_slid_to_s00_couplers_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s00_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slid_to_s00_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s00_couplers_TVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ss_slid_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s00_couplers_to_auto_ss_slid_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_ss_slid_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_ss_slid_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ss_slid_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_ss_slid_TREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ss_slid_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ss_slid_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_ss_slid_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXIS_tdata(23 downto 0) <= auto_ss_slid_to_s00_couplers_TDATA(23 downto 0);
  M_AXIS_tdest(3 downto 0) <= auto_ss_slid_to_s00_couplers_TDEST(3 downto 0);
  M_AXIS_tid(0) <= auto_ss_slid_to_s00_couplers_TID(0);
  M_AXIS_tkeep(2 downto 0) <= auto_ss_slid_to_s00_couplers_TKEEP(2 downto 0);
  M_AXIS_tlast(0) <= auto_ss_slid_to_s00_couplers_TLAST;
  M_AXIS_tstrb(2 downto 0) <= auto_ss_slid_to_s00_couplers_TSTRB(2 downto 0);
  M_AXIS_tuser(0) <= auto_ss_slid_to_s00_couplers_TUSER(0);
  M_AXIS_tvalid(0) <= auto_ss_slid_to_s00_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1 <= S_AXIS_ARESETN;
  S_AXIS_tready(0) <= s00_couplers_to_auto_ss_slid_TREADY;
  auto_ss_slid_to_s00_couplers_TREADY(0) <= M_AXIS_tready(0);
  s00_couplers_to_auto_ss_slid_TDATA(23 downto 0) <= S_AXIS_tdata(23 downto 0);
  s00_couplers_to_auto_ss_slid_TDEST(0) <= S_AXIS_tdest(0);
  s00_couplers_to_auto_ss_slid_TID(0) <= S_AXIS_tid(0);
  s00_couplers_to_auto_ss_slid_TKEEP(2 downto 0) <= S_AXIS_tkeep(2 downto 0);
  s00_couplers_to_auto_ss_slid_TLAST(0) <= S_AXIS_tlast(0);
  s00_couplers_to_auto_ss_slid_TSTRB(2 downto 0) <= S_AXIS_tstrb(2 downto 0);
  s00_couplers_to_auto_ss_slid_TUSER(0) <= S_AXIS_tuser(0);
  s00_couplers_to_auto_ss_slid_TVALID(0) <= S_AXIS_tvalid(0);
auto_ss_slid: component bd_d94b_auto_ss_slid_0
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1,
      m_axis_tdata(23 downto 0) => auto_ss_slid_to_s00_couplers_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => auto_ss_slid_to_s00_couplers_TDEST(3 downto 0),
      m_axis_tid(0) => auto_ss_slid_to_s00_couplers_TID(0),
      m_axis_tkeep(2 downto 0) => auto_ss_slid_to_s00_couplers_TKEEP(2 downto 0),
      m_axis_tlast => auto_ss_slid_to_s00_couplers_TLAST,
      m_axis_tready => auto_ss_slid_to_s00_couplers_TREADY(0),
      m_axis_tstrb(2 downto 0) => auto_ss_slid_to_s00_couplers_TSTRB(2 downto 0),
      m_axis_tuser(0) => auto_ss_slid_to_s00_couplers_TUSER(0),
      m_axis_tvalid => auto_ss_slid_to_s00_couplers_TVALID,
      s_axis_tdata(23 downto 0) => s00_couplers_to_auto_ss_slid_TDATA(23 downto 0),
      s_axis_tdest(0) => s00_couplers_to_auto_ss_slid_TDEST(0),
      s_axis_tid(0) => s00_couplers_to_auto_ss_slid_TID(0),
      s_axis_tkeep(2 downto 0) => s00_couplers_to_auto_ss_slid_TKEEP(2 downto 0),
      s_axis_tlast => s00_couplers_to_auto_ss_slid_TLAST(0),
      s_axis_tready => s00_couplers_to_auto_ss_slid_TREADY,
      s_axis_tstrb(2 downto 0) => s00_couplers_to_auto_ss_slid_TSTRB(2 downto 0),
      s_axis_tuser(0) => s00_couplers_to_auto_ss_slid_TUSER(0),
      s_axis_tvalid => s00_couplers_to_auto_ss_slid_TVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_FQJVWN is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s01_couplers_imp_FQJVWN;

architecture STRUCTURE of s01_couplers_imp_FQJVWN is
  component bd_d94b_auto_ss_slid_1 is
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
  end component bd_d94b_auto_ss_slid_1;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC;
  signal auto_ss_slid_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ss_slid_to_s01_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_slid_to_s01_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slid_to_s01_couplers_TLAST : STD_LOGIC;
  signal auto_ss_slid_to_s01_couplers_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s01_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slid_to_s01_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s01_couplers_TVALID : STD_LOGIC;
  signal s01_couplers_to_auto_ss_slid_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s01_couplers_to_auto_ss_slid_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_auto_ss_slid_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_auto_ss_slid_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_ss_slid_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_auto_ss_slid_TREADY : STD_LOGIC;
  signal s01_couplers_to_auto_ss_slid_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_ss_slid_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_auto_ss_slid_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXIS_tdata(23 downto 0) <= auto_ss_slid_to_s01_couplers_TDATA(23 downto 0);
  M_AXIS_tdest(3 downto 0) <= auto_ss_slid_to_s01_couplers_TDEST(3 downto 0);
  M_AXIS_tid(0) <= auto_ss_slid_to_s01_couplers_TID(0);
  M_AXIS_tkeep(2 downto 0) <= auto_ss_slid_to_s01_couplers_TKEEP(2 downto 0);
  M_AXIS_tlast(0) <= auto_ss_slid_to_s01_couplers_TLAST;
  M_AXIS_tstrb(2 downto 0) <= auto_ss_slid_to_s01_couplers_TSTRB(2 downto 0);
  M_AXIS_tuser(0) <= auto_ss_slid_to_s01_couplers_TUSER(0);
  M_AXIS_tvalid(0) <= auto_ss_slid_to_s01_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1 <= S_AXIS_ARESETN;
  S_AXIS_tready(0) <= s01_couplers_to_auto_ss_slid_TREADY;
  auto_ss_slid_to_s01_couplers_TREADY(0) <= M_AXIS_tready(0);
  s01_couplers_to_auto_ss_slid_TDATA(23 downto 0) <= S_AXIS_tdata(23 downto 0);
  s01_couplers_to_auto_ss_slid_TDEST(0) <= S_AXIS_tdest(0);
  s01_couplers_to_auto_ss_slid_TID(0) <= S_AXIS_tid(0);
  s01_couplers_to_auto_ss_slid_TKEEP(2 downto 0) <= S_AXIS_tkeep(2 downto 0);
  s01_couplers_to_auto_ss_slid_TLAST(0) <= S_AXIS_tlast(0);
  s01_couplers_to_auto_ss_slid_TSTRB(2 downto 0) <= S_AXIS_tstrb(2 downto 0);
  s01_couplers_to_auto_ss_slid_TUSER(0) <= S_AXIS_tuser(0);
  s01_couplers_to_auto_ss_slid_TVALID(0) <= S_AXIS_tvalid(0);
auto_ss_slid: component bd_d94b_auto_ss_slid_1
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1,
      m_axis_tdata(23 downto 0) => auto_ss_slid_to_s01_couplers_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => auto_ss_slid_to_s01_couplers_TDEST(3 downto 0),
      m_axis_tid(0) => auto_ss_slid_to_s01_couplers_TID(0),
      m_axis_tkeep(2 downto 0) => auto_ss_slid_to_s01_couplers_TKEEP(2 downto 0),
      m_axis_tlast => auto_ss_slid_to_s01_couplers_TLAST,
      m_axis_tready => auto_ss_slid_to_s01_couplers_TREADY(0),
      m_axis_tstrb(2 downto 0) => auto_ss_slid_to_s01_couplers_TSTRB(2 downto 0),
      m_axis_tuser(0) => auto_ss_slid_to_s01_couplers_TUSER(0),
      m_axis_tvalid => auto_ss_slid_to_s01_couplers_TVALID,
      s_axis_tdata(23 downto 0) => s01_couplers_to_auto_ss_slid_TDATA(23 downto 0),
      s_axis_tdest(0) => s01_couplers_to_auto_ss_slid_TDEST(0),
      s_axis_tid(0) => s01_couplers_to_auto_ss_slid_TID(0),
      s_axis_tkeep(2 downto 0) => s01_couplers_to_auto_ss_slid_TKEEP(2 downto 0),
      s_axis_tlast => s01_couplers_to_auto_ss_slid_TLAST(0),
      s_axis_tready => s01_couplers_to_auto_ss_slid_TREADY,
      s_axis_tstrb(2 downto 0) => s01_couplers_to_auto_ss_slid_TSTRB(2 downto 0),
      s_axis_tuser(0) => s01_couplers_to_auto_ss_slid_TUSER(0),
      s_axis_tvalid => s01_couplers_to_auto_ss_slid_TVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_TQ4P1F is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s02_couplers_imp_TQ4P1F;

architecture STRUCTURE of s02_couplers_imp_TQ4P1F is
  component bd_d94b_auto_ss_slid_2 is
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
  end component bd_d94b_auto_ss_slid_2;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC;
  signal auto_ss_slid_to_s02_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ss_slid_to_s02_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_slid_to_s02_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s02_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slid_to_s02_couplers_TLAST : STD_LOGIC;
  signal auto_ss_slid_to_s02_couplers_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s02_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slid_to_s02_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s02_couplers_TVALID : STD_LOGIC;
  signal s02_couplers_to_auto_ss_slid_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s02_couplers_to_auto_ss_slid_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_ss_slid_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_ss_slid_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_ss_slid_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_ss_slid_TREADY : STD_LOGIC;
  signal s02_couplers_to_auto_ss_slid_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_ss_slid_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_ss_slid_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXIS_tdata(23 downto 0) <= auto_ss_slid_to_s02_couplers_TDATA(23 downto 0);
  M_AXIS_tdest(3 downto 0) <= auto_ss_slid_to_s02_couplers_TDEST(3 downto 0);
  M_AXIS_tid(0) <= auto_ss_slid_to_s02_couplers_TID(0);
  M_AXIS_tkeep(2 downto 0) <= auto_ss_slid_to_s02_couplers_TKEEP(2 downto 0);
  M_AXIS_tlast(0) <= auto_ss_slid_to_s02_couplers_TLAST;
  M_AXIS_tstrb(2 downto 0) <= auto_ss_slid_to_s02_couplers_TSTRB(2 downto 0);
  M_AXIS_tuser(0) <= auto_ss_slid_to_s02_couplers_TUSER(0);
  M_AXIS_tvalid(0) <= auto_ss_slid_to_s02_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1 <= S_AXIS_ARESETN;
  S_AXIS_tready(0) <= s02_couplers_to_auto_ss_slid_TREADY;
  auto_ss_slid_to_s02_couplers_TREADY(0) <= M_AXIS_tready(0);
  s02_couplers_to_auto_ss_slid_TDATA(23 downto 0) <= S_AXIS_tdata(23 downto 0);
  s02_couplers_to_auto_ss_slid_TDEST(0) <= S_AXIS_tdest(0);
  s02_couplers_to_auto_ss_slid_TID(0) <= S_AXIS_tid(0);
  s02_couplers_to_auto_ss_slid_TKEEP(2 downto 0) <= S_AXIS_tkeep(2 downto 0);
  s02_couplers_to_auto_ss_slid_TLAST(0) <= S_AXIS_tlast(0);
  s02_couplers_to_auto_ss_slid_TSTRB(2 downto 0) <= S_AXIS_tstrb(2 downto 0);
  s02_couplers_to_auto_ss_slid_TUSER(0) <= S_AXIS_tuser(0);
  s02_couplers_to_auto_ss_slid_TVALID(0) <= S_AXIS_tvalid(0);
auto_ss_slid: component bd_d94b_auto_ss_slid_2
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1,
      m_axis_tdata(23 downto 0) => auto_ss_slid_to_s02_couplers_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => auto_ss_slid_to_s02_couplers_TDEST(3 downto 0),
      m_axis_tid(0) => auto_ss_slid_to_s02_couplers_TID(0),
      m_axis_tkeep(2 downto 0) => auto_ss_slid_to_s02_couplers_TKEEP(2 downto 0),
      m_axis_tlast => auto_ss_slid_to_s02_couplers_TLAST,
      m_axis_tready => auto_ss_slid_to_s02_couplers_TREADY(0),
      m_axis_tstrb(2 downto 0) => auto_ss_slid_to_s02_couplers_TSTRB(2 downto 0),
      m_axis_tuser(0) => auto_ss_slid_to_s02_couplers_TUSER(0),
      m_axis_tvalid => auto_ss_slid_to_s02_couplers_TVALID,
      s_axis_tdata(23 downto 0) => s02_couplers_to_auto_ss_slid_TDATA(23 downto 0),
      s_axis_tdest(0) => s02_couplers_to_auto_ss_slid_TDEST(0),
      s_axis_tid(0) => s02_couplers_to_auto_ss_slid_TID(0),
      s_axis_tkeep(2 downto 0) => s02_couplers_to_auto_ss_slid_TKEEP(2 downto 0),
      s_axis_tlast => s02_couplers_to_auto_ss_slid_TLAST(0),
      s_axis_tready => s02_couplers_to_auto_ss_slid_TREADY,
      s_axis_tstrb(2 downto 0) => s02_couplers_to_auto_ss_slid_TSTRB(2 downto 0),
      s_axis_tuser(0) => s02_couplers_to_auto_ss_slid_TUSER(0),
      s_axis_tvalid => s02_couplers_to_auto_ss_slid_TVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s03_couplers_imp_1TMIDFK is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC;
    M_AXIS_tdest : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC;
    S_AXIS_tdest : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s03_couplers_imp_1TMIDFK;

architecture STRUCTURE of s03_couplers_imp_1TMIDFK is
  signal s03_couplers_to_s03_couplers_TDATA : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_TDEST : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_TREADY : STD_LOGIC;
  signal s03_couplers_to_s03_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata <= s03_couplers_to_s03_couplers_TDATA;
  M_AXIS_tdest <= s03_couplers_to_s03_couplers_TDEST;
  M_AXIS_tvalid <= s03_couplers_to_s03_couplers_TVALID;
  S_AXIS_tready <= s03_couplers_to_s03_couplers_TREADY;
  s03_couplers_to_s03_couplers_TDATA <= S_AXIS_tdata;
  s03_couplers_to_s03_couplers_TDEST <= S_AXIS_tdest;
  s03_couplers_to_s03_couplers_TREADY <= M_AXIS_tready;
  s03_couplers_to_s03_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s04_couplers_imp_1KMLEIZ is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s04_couplers_imp_1KMLEIZ;

architecture STRUCTURE of s04_couplers_imp_1KMLEIZ is
  component bd_d94b_auto_ss_slid_3 is
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
  end component bd_d94b_auto_ss_slid_3;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC;
  signal auto_ss_slid_to_s04_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ss_slid_to_s04_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_slid_to_s04_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s04_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slid_to_s04_couplers_TLAST : STD_LOGIC;
  signal auto_ss_slid_to_s04_couplers_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s04_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slid_to_s04_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s04_couplers_TVALID : STD_LOGIC;
  signal s04_couplers_to_auto_ss_slid_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s04_couplers_to_auto_ss_slid_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_auto_ss_slid_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_auto_ss_slid_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_auto_ss_slid_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_auto_ss_slid_TREADY : STD_LOGIC;
  signal s04_couplers_to_auto_ss_slid_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_auto_ss_slid_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_auto_ss_slid_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXIS_tdata(23 downto 0) <= auto_ss_slid_to_s04_couplers_TDATA(23 downto 0);
  M_AXIS_tdest(3 downto 0) <= auto_ss_slid_to_s04_couplers_TDEST(3 downto 0);
  M_AXIS_tid(0) <= auto_ss_slid_to_s04_couplers_TID(0);
  M_AXIS_tkeep(2 downto 0) <= auto_ss_slid_to_s04_couplers_TKEEP(2 downto 0);
  M_AXIS_tlast(0) <= auto_ss_slid_to_s04_couplers_TLAST;
  M_AXIS_tstrb(2 downto 0) <= auto_ss_slid_to_s04_couplers_TSTRB(2 downto 0);
  M_AXIS_tuser(0) <= auto_ss_slid_to_s04_couplers_TUSER(0);
  M_AXIS_tvalid(0) <= auto_ss_slid_to_s04_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1 <= S_AXIS_ARESETN;
  S_AXIS_tready(0) <= s04_couplers_to_auto_ss_slid_TREADY;
  auto_ss_slid_to_s04_couplers_TREADY(0) <= M_AXIS_tready(0);
  s04_couplers_to_auto_ss_slid_TDATA(23 downto 0) <= S_AXIS_tdata(23 downto 0);
  s04_couplers_to_auto_ss_slid_TDEST(0) <= S_AXIS_tdest(0);
  s04_couplers_to_auto_ss_slid_TID(0) <= S_AXIS_tid(0);
  s04_couplers_to_auto_ss_slid_TKEEP(2 downto 0) <= S_AXIS_tkeep(2 downto 0);
  s04_couplers_to_auto_ss_slid_TLAST(0) <= S_AXIS_tlast(0);
  s04_couplers_to_auto_ss_slid_TSTRB(2 downto 0) <= S_AXIS_tstrb(2 downto 0);
  s04_couplers_to_auto_ss_slid_TUSER(0) <= S_AXIS_tuser(0);
  s04_couplers_to_auto_ss_slid_TVALID(0) <= S_AXIS_tvalid(0);
auto_ss_slid: component bd_d94b_auto_ss_slid_3
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1,
      m_axis_tdata(23 downto 0) => auto_ss_slid_to_s04_couplers_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => auto_ss_slid_to_s04_couplers_TDEST(3 downto 0),
      m_axis_tid(0) => auto_ss_slid_to_s04_couplers_TID(0),
      m_axis_tkeep(2 downto 0) => auto_ss_slid_to_s04_couplers_TKEEP(2 downto 0),
      m_axis_tlast => auto_ss_slid_to_s04_couplers_TLAST,
      m_axis_tready => auto_ss_slid_to_s04_couplers_TREADY(0),
      m_axis_tstrb(2 downto 0) => auto_ss_slid_to_s04_couplers_TSTRB(2 downto 0),
      m_axis_tuser(0) => auto_ss_slid_to_s04_couplers_TUSER(0),
      m_axis_tvalid => auto_ss_slid_to_s04_couplers_TVALID,
      s_axis_tdata(23 downto 0) => s04_couplers_to_auto_ss_slid_TDATA(23 downto 0),
      s_axis_tdest(0) => s04_couplers_to_auto_ss_slid_TDEST(0),
      s_axis_tid(0) => s04_couplers_to_auto_ss_slid_TID(0),
      s_axis_tkeep(2 downto 0) => s04_couplers_to_auto_ss_slid_TKEEP(2 downto 0),
      s_axis_tlast => s04_couplers_to_auto_ss_slid_TLAST(0),
      s_axis_tready => s04_couplers_to_auto_ss_slid_TREADY,
      s_axis_tstrb(2 downto 0) => s04_couplers_to_auto_ss_slid_TSTRB(2 downto 0),
      s_axis_tuser(0) => s04_couplers_to_auto_ss_slid_TUSER(0),
      s_axis_tvalid => s04_couplers_to_auto_ss_slid_TVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s05_couplers_imp_L0130O is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC;
    M_AXIS_tdest : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC;
    S_AXIS_tdest : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s05_couplers_imp_L0130O;

architecture STRUCTURE of s05_couplers_imp_L0130O is
  signal s05_couplers_to_s05_couplers_TDATA : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_TDEST : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_TREADY : STD_LOGIC;
  signal s05_couplers_to_s05_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata <= s05_couplers_to_s05_couplers_TDATA;
  M_AXIS_tdest <= s05_couplers_to_s05_couplers_TDEST;
  M_AXIS_tvalid <= s05_couplers_to_s05_couplers_TVALID;
  S_AXIS_tready <= s05_couplers_to_s05_couplers_TREADY;
  s05_couplers_to_s05_couplers_TDATA <= S_AXIS_tdata;
  s05_couplers_to_s05_couplers_TDEST <= S_AXIS_tdest;
  s05_couplers_to_s05_couplers_TREADY <= M_AXIS_tready;
  s05_couplers_to_s05_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s06_couplers_imp_6PDSEK is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC;
    M_AXIS_tdest : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC;
    S_AXIS_tdest : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s06_couplers_imp_6PDSEK;

architecture STRUCTURE of s06_couplers_imp_6PDSEK is
  signal s06_couplers_to_s06_couplers_TDATA : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_TDEST : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_TREADY : STD_LOGIC;
  signal s06_couplers_to_s06_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata <= s06_couplers_to_s06_couplers_TDATA;
  M_AXIS_tdest <= s06_couplers_to_s06_couplers_TDEST;
  M_AXIS_tvalid <= s06_couplers_to_s06_couplers_TVALID;
  S_AXIS_tready <= s06_couplers_to_s06_couplers_TREADY;
  s06_couplers_to_s06_couplers_TDATA <= S_AXIS_tdata;
  s06_couplers_to_s06_couplers_TDEST <= S_AXIS_tdest;
  s06_couplers_to_s06_couplers_TREADY <= M_AXIS_tready;
  s06_couplers_to_s06_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s07_couplers_imp_189P0SV is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC;
    M_AXIS_tdest : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC;
    S_AXIS_tdest : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s07_couplers_imp_189P0SV;

architecture STRUCTURE of s07_couplers_imp_189P0SV is
  signal s07_couplers_to_s07_couplers_TDATA : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_TDEST : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_TREADY : STD_LOGIC;
  signal s07_couplers_to_s07_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata <= s07_couplers_to_s07_couplers_TDATA;
  M_AXIS_tdest <= s07_couplers_to_s07_couplers_TDEST;
  M_AXIS_tvalid <= s07_couplers_to_s07_couplers_TVALID;
  S_AXIS_tready <= s07_couplers_to_s07_couplers_TREADY;
  s07_couplers_to_s07_couplers_TDATA <= S_AXIS_tdata;
  s07_couplers_to_s07_couplers_TDEST <= S_AXIS_tdest;
  s07_couplers_to_s07_couplers_TREADY <= M_AXIS_tready;
  s07_couplers_to_s07_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s08_couplers_imp_OPKDJU is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXIS_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    S_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s08_couplers_imp_OPKDJU;

architecture STRUCTURE of s08_couplers_imp_OPKDJU is
  component bd_d94b_auto_ss_slid_4 is
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
  end component bd_d94b_auto_ss_slid_4;
  signal S_AXIS_ACLK_1 : STD_LOGIC;
  signal S_AXIS_ARESETN_1 : STD_LOGIC;
  signal auto_ss_slid_to_s08_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal auto_ss_slid_to_s08_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ss_slid_to_s08_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s08_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slid_to_s08_couplers_TLAST : STD_LOGIC;
  signal auto_ss_slid_to_s08_couplers_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s08_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ss_slid_to_s08_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ss_slid_to_s08_couplers_TVALID : STD_LOGIC;
  signal s08_couplers_to_auto_ss_slid_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s08_couplers_to_auto_ss_slid_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s08_couplers_to_auto_ss_slid_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s08_couplers_to_auto_ss_slid_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_auto_ss_slid_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s08_couplers_to_auto_ss_slid_TREADY : STD_LOGIC;
  signal s08_couplers_to_auto_ss_slid_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_auto_ss_slid_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s08_couplers_to_auto_ss_slid_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXIS_tdata(23 downto 0) <= auto_ss_slid_to_s08_couplers_TDATA(23 downto 0);
  M_AXIS_tdest(3 downto 0) <= auto_ss_slid_to_s08_couplers_TDEST(3 downto 0);
  M_AXIS_tid(0) <= auto_ss_slid_to_s08_couplers_TID(0);
  M_AXIS_tkeep(2 downto 0) <= auto_ss_slid_to_s08_couplers_TKEEP(2 downto 0);
  M_AXIS_tlast(0) <= auto_ss_slid_to_s08_couplers_TLAST;
  M_AXIS_tstrb(2 downto 0) <= auto_ss_slid_to_s08_couplers_TSTRB(2 downto 0);
  M_AXIS_tuser(0) <= auto_ss_slid_to_s08_couplers_TUSER(0);
  M_AXIS_tvalid(0) <= auto_ss_slid_to_s08_couplers_TVALID;
  S_AXIS_ACLK_1 <= S_AXIS_ACLK;
  S_AXIS_ARESETN_1 <= S_AXIS_ARESETN;
  S_AXIS_tready(0) <= s08_couplers_to_auto_ss_slid_TREADY;
  auto_ss_slid_to_s08_couplers_TREADY(0) <= M_AXIS_tready(0);
  s08_couplers_to_auto_ss_slid_TDATA(23 downto 0) <= S_AXIS_tdata(23 downto 0);
  s08_couplers_to_auto_ss_slid_TDEST(0) <= S_AXIS_tdest(0);
  s08_couplers_to_auto_ss_slid_TID(0) <= S_AXIS_tid(0);
  s08_couplers_to_auto_ss_slid_TKEEP(2 downto 0) <= S_AXIS_tkeep(2 downto 0);
  s08_couplers_to_auto_ss_slid_TLAST(0) <= S_AXIS_tlast(0);
  s08_couplers_to_auto_ss_slid_TSTRB(2 downto 0) <= S_AXIS_tstrb(2 downto 0);
  s08_couplers_to_auto_ss_slid_TUSER(0) <= S_AXIS_tuser(0);
  s08_couplers_to_auto_ss_slid_TVALID(0) <= S_AXIS_tvalid(0);
auto_ss_slid: component bd_d94b_auto_ss_slid_4
     port map (
      aclk => S_AXIS_ACLK_1,
      aresetn => S_AXIS_ARESETN_1,
      m_axis_tdata(23 downto 0) => auto_ss_slid_to_s08_couplers_TDATA(23 downto 0),
      m_axis_tdest(3 downto 0) => auto_ss_slid_to_s08_couplers_TDEST(3 downto 0),
      m_axis_tid(0) => auto_ss_slid_to_s08_couplers_TID(0),
      m_axis_tkeep(2 downto 0) => auto_ss_slid_to_s08_couplers_TKEEP(2 downto 0),
      m_axis_tlast => auto_ss_slid_to_s08_couplers_TLAST,
      m_axis_tready => auto_ss_slid_to_s08_couplers_TREADY(0),
      m_axis_tstrb(2 downto 0) => auto_ss_slid_to_s08_couplers_TSTRB(2 downto 0),
      m_axis_tuser(0) => auto_ss_slid_to_s08_couplers_TUSER(0),
      m_axis_tvalid => auto_ss_slid_to_s08_couplers_TVALID,
      s_axis_tdata(23 downto 0) => s08_couplers_to_auto_ss_slid_TDATA(23 downto 0),
      s_axis_tdest(0) => s08_couplers_to_auto_ss_slid_TDEST(0),
      s_axis_tid(0) => s08_couplers_to_auto_ss_slid_TID(0),
      s_axis_tkeep(2 downto 0) => s08_couplers_to_auto_ss_slid_TKEEP(2 downto 0),
      s_axis_tlast => s08_couplers_to_auto_ss_slid_TLAST(0),
      s_axis_tready => s08_couplers_to_auto_ss_slid_TREADY,
      s_axis_tstrb(2 downto 0) => s08_couplers_to_auto_ss_slid_TSTRB(2 downto 0),
      s_axis_tuser(0) => s08_couplers_to_auto_ss_slid_TUSER(0),
      s_axis_tvalid => s08_couplers_to_auto_ss_slid_TVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s09_couplers_imp_1PS2AJD is
  port (
    M_AXIS_ACLK : in STD_LOGIC;
    M_AXIS_ARESETN : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC;
    M_AXIS_tdest : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_ACLK : in STD_LOGIC;
    S_AXIS_ARESETN : in STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC;
    S_AXIS_tdest : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC
  );
end s09_couplers_imp_1PS2AJD;

architecture STRUCTURE of s09_couplers_imp_1PS2AJD is
  signal s09_couplers_to_s09_couplers_TDATA : STD_LOGIC;
  signal s09_couplers_to_s09_couplers_TDEST : STD_LOGIC;
  signal s09_couplers_to_s09_couplers_TREADY : STD_LOGIC;
  signal s09_couplers_to_s09_couplers_TVALID : STD_LOGIC;
begin
  M_AXIS_tdata <= s09_couplers_to_s09_couplers_TDATA;
  M_AXIS_tdest <= s09_couplers_to_s09_couplers_TDEST;
  M_AXIS_tvalid <= s09_couplers_to_s09_couplers_TVALID;
  S_AXIS_tready <= s09_couplers_to_s09_couplers_TREADY;
  s09_couplers_to_s09_couplers_TDATA <= S_AXIS_tdata;
  s09_couplers_to_s09_couplers_TDEST <= S_AXIS_tdest;
  s09_couplers_to_s09_couplers_TREADY <= M_AXIS_tready;
  s09_couplers_to_s09_couplers_TVALID <= S_AXIS_tvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_d94b_video_router_0 is
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
end bd_d94b_video_router_0;

architecture STRUCTURE of bd_d94b_video_router_0 is
  component bd_d94b_xbar_0 is
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
  end component bd_d94b_xbar_0;
  signal M00_AXIS_ACLK_1 : STD_LOGIC;
  signal M00_AXIS_ARESETN_1 : STD_LOGIC;
  signal M01_AXIS_ACLK_1 : STD_LOGIC;
  signal M01_AXIS_ARESETN_1 : STD_LOGIC;
  signal M02_AXIS_ACLK_1 : STD_LOGIC;
  signal M02_AXIS_ARESETN_1 : STD_LOGIC;
  signal M03_AXIS_ACLK_1 : STD_LOGIC;
  signal M03_AXIS_ARESETN_1 : STD_LOGIC;
  signal M04_AXIS_ACLK_1 : STD_LOGIC;
  signal M04_AXIS_ARESETN_1 : STD_LOGIC;
  signal M05_AXIS_ACLK_1 : STD_LOGIC;
  signal M05_AXIS_ARESETN_1 : STD_LOGIC;
  signal M06_AXIS_ACLK_1 : STD_LOGIC;
  signal M06_AXIS_ARESETN_1 : STD_LOGIC;
  signal M07_AXIS_ACLK_1 : STD_LOGIC;
  signal M07_AXIS_ARESETN_1 : STD_LOGIC;
  signal M08_AXIS_ACLK_1 : STD_LOGIC;
  signal M08_AXIS_ARESETN_1 : STD_LOGIC;
  signal M09_AXIS_ACLK_1 : STD_LOGIC;
  signal M09_AXIS_ARESETN_1 : STD_LOGIC;
  signal S00_AXIS_ACLK_1 : STD_LOGIC;
  signal S00_AXIS_ARESETN_1 : STD_LOGIC;
  signal S01_AXIS_ACLK_1 : STD_LOGIC;
  signal S01_AXIS_ARESETN_1 : STD_LOGIC;
  signal S02_AXIS_ACLK_1 : STD_LOGIC;
  signal S02_AXIS_ARESETN_1 : STD_LOGIC;
  signal S03_AXIS_ACLK_1 : STD_LOGIC;
  signal S03_AXIS_ARESETN_1 : STD_LOGIC;
  signal S04_AXIS_ACLK_1 : STD_LOGIC;
  signal S04_AXIS_ARESETN_1 : STD_LOGIC;
  signal S05_AXIS_ACLK_1 : STD_LOGIC;
  signal S05_AXIS_ARESETN_1 : STD_LOGIC;
  signal S06_AXIS_ACLK_1 : STD_LOGIC;
  signal S06_AXIS_ARESETN_1 : STD_LOGIC;
  signal S07_AXIS_ACLK_1 : STD_LOGIC;
  signal S07_AXIS_ARESETN_1 : STD_LOGIC;
  signal S08_AXIS_ACLK_1 : STD_LOGIC;
  signal S08_AXIS_ARESETN_1 : STD_LOGIC;
  signal S09_AXIS_ACLK_1 : STD_LOGIC;
  signal S09_AXIS_ARESETN_1 : STD_LOGIC;
  signal S_AXI_CTRL_ACLK_1 : STD_LOGIC;
  signal S_AXI_CTRL_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_video_router_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m00_couplers_to_video_router_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_video_router_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_video_router_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_video_router_TLAST : STD_LOGIC;
  signal m00_couplers_to_video_router_TREADY : STD_LOGIC;
  signal m00_couplers_to_video_router_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_video_router_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_video_router_TVALID : STD_LOGIC;
  signal m01_couplers_to_video_router_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m01_couplers_to_video_router_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_video_router_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_video_router_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_video_router_TLAST : STD_LOGIC;
  signal m01_couplers_to_video_router_TREADY : STD_LOGIC;
  signal m01_couplers_to_video_router_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_video_router_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_video_router_TVALID : STD_LOGIC;
  signal m02_couplers_to_video_router_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m02_couplers_to_video_router_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_video_router_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_video_router_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_video_router_TLAST : STD_LOGIC;
  signal m02_couplers_to_video_router_TREADY : STD_LOGIC;
  signal m02_couplers_to_video_router_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_video_router_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_video_router_TVALID : STD_LOGIC;
  signal m03_couplers_to_video_router_TDATA : STD_LOGIC;
  signal m03_couplers_to_video_router_TDEST : STD_LOGIC;
  signal m03_couplers_to_video_router_TREADY : STD_LOGIC;
  signal m03_couplers_to_video_router_TVALID : STD_LOGIC;
  signal m04_couplers_to_video_router_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m04_couplers_to_video_router_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_video_router_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_video_router_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_video_router_TLAST : STD_LOGIC;
  signal m04_couplers_to_video_router_TREADY : STD_LOGIC;
  signal m04_couplers_to_video_router_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_video_router_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_video_router_TVALID : STD_LOGIC;
  signal m05_couplers_to_video_router_TDATA : STD_LOGIC;
  signal m05_couplers_to_video_router_TREADY : STD_LOGIC;
  signal m05_couplers_to_video_router_TVALID : STD_LOGIC;
  signal m06_couplers_to_video_router_TDATA : STD_LOGIC;
  signal m06_couplers_to_video_router_TREADY : STD_LOGIC;
  signal m06_couplers_to_video_router_TVALID : STD_LOGIC;
  signal m07_couplers_to_video_router_TDATA : STD_LOGIC;
  signal m07_couplers_to_video_router_TREADY : STD_LOGIC;
  signal m07_couplers_to_video_router_TVALID : STD_LOGIC;
  signal m08_couplers_to_video_router_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m08_couplers_to_video_router_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_video_router_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_video_router_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_video_router_TLAST : STD_LOGIC;
  signal m08_couplers_to_video_router_TREADY : STD_LOGIC;
  signal m08_couplers_to_video_router_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_video_router_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_video_router_TVALID : STD_LOGIC;
  signal m09_couplers_to_video_router_TDATA : STD_LOGIC;
  signal m09_couplers_to_video_router_TDEST : STD_LOGIC;
  signal m09_couplers_to_video_router_TREADY : STD_LOGIC;
  signal m09_couplers_to_video_router_TVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s00_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s01_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s02_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_xbar_TDATA : STD_LOGIC;
  signal s03_couplers_to_xbar_TDEST : STD_LOGIC;
  signal s03_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s04_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s04_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s05_couplers_to_xbar_TDATA : STD_LOGIC;
  signal s05_couplers_to_xbar_TDEST : STD_LOGIC;
  signal s05_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal s05_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s06_couplers_to_xbar_TDATA : STD_LOGIC;
  signal s06_couplers_to_xbar_TDEST : STD_LOGIC;
  signal s06_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal s06_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s07_couplers_to_xbar_TDATA : STD_LOGIC;
  signal s07_couplers_to_xbar_TDEST : STD_LOGIC;
  signal s07_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal s07_couplers_to_xbar_TVALID : STD_LOGIC;
  signal s08_couplers_to_xbar_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s08_couplers_to_xbar_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s08_couplers_to_xbar_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s08_couplers_to_xbar_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_xbar_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s08_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal s08_couplers_to_xbar_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s08_couplers_to_xbar_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s08_couplers_to_xbar_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s09_couplers_to_xbar_TDATA : STD_LOGIC;
  signal s09_couplers_to_xbar_TDEST : STD_LOGIC;
  signal s09_couplers_to_xbar_TREADY : STD_LOGIC_VECTOR ( 9 to 9 );
  signal s09_couplers_to_xbar_TVALID : STD_LOGIC;
  signal video_router_ACLK_net : STD_LOGIC;
  signal video_router_ARESETN_net : STD_LOGIC;
  signal video_router_to_s00_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal video_router_to_s00_couplers_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s00_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s00_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_router_to_s00_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s00_couplers_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s00_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_router_to_s00_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s00_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s01_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal video_router_to_s01_couplers_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s01_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s01_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_router_to_s01_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s01_couplers_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s01_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_router_to_s01_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s01_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s02_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal video_router_to_s02_couplers_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s02_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s02_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_router_to_s02_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s02_couplers_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s02_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_router_to_s02_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s02_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s03_couplers_TDATA : STD_LOGIC;
  signal video_router_to_s03_couplers_TDEST : STD_LOGIC;
  signal video_router_to_s03_couplers_TREADY : STD_LOGIC;
  signal video_router_to_s03_couplers_TVALID : STD_LOGIC;
  signal video_router_to_s04_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal video_router_to_s04_couplers_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s04_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s04_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_router_to_s04_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s04_couplers_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s04_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_router_to_s04_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s04_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s05_couplers_TDATA : STD_LOGIC;
  signal video_router_to_s05_couplers_TDEST : STD_LOGIC;
  signal video_router_to_s05_couplers_TREADY : STD_LOGIC;
  signal video_router_to_s05_couplers_TVALID : STD_LOGIC;
  signal video_router_to_s06_couplers_TDATA : STD_LOGIC;
  signal video_router_to_s06_couplers_TDEST : STD_LOGIC;
  signal video_router_to_s06_couplers_TREADY : STD_LOGIC;
  signal video_router_to_s06_couplers_TVALID : STD_LOGIC;
  signal video_router_to_s07_couplers_TDATA : STD_LOGIC;
  signal video_router_to_s07_couplers_TDEST : STD_LOGIC;
  signal video_router_to_s07_couplers_TREADY : STD_LOGIC;
  signal video_router_to_s07_couplers_TVALID : STD_LOGIC;
  signal video_router_to_s08_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal video_router_to_s08_couplers_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s08_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s08_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_router_to_s08_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s08_couplers_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s08_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal video_router_to_s08_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s08_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_router_to_s09_couplers_TDATA : STD_LOGIC;
  signal video_router_to_s09_couplers_TDEST : STD_LOGIC;
  signal video_router_to_s09_couplers_TREADY : STD_LOGIC;
  signal video_router_to_s09_couplers_TVALID : STD_LOGIC;
  signal video_router_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal video_router_to_xbar_ARREADY : STD_LOGIC;
  signal video_router_to_xbar_ARVALID : STD_LOGIC;
  signal video_router_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal video_router_to_xbar_AWREADY : STD_LOGIC;
  signal video_router_to_xbar_AWVALID : STD_LOGIC;
  signal video_router_to_xbar_BREADY : STD_LOGIC;
  signal video_router_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal video_router_to_xbar_BVALID : STD_LOGIC;
  signal video_router_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal video_router_to_xbar_RREADY : STD_LOGIC;
  signal video_router_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal video_router_to_xbar_RVALID : STD_LOGIC;
  signal video_router_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal video_router_to_xbar_WREADY : STD_LOGIC;
  signal video_router_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal xbar_to_m00_couplers_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_TDATA : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal xbar_to_m01_couplers_TDEST : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_TID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_TKEEP : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_TLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_TSTRB : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_TUSER : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_TVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_TDATA : STD_LOGIC_VECTOR ( 71 downto 48 );
  signal xbar_to_m02_couplers_TDEST : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_TID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_TKEEP : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_TLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_TSTRB : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_TUSER : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_TVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_TDATA : STD_LOGIC_VECTOR ( 95 downto 72 );
  signal xbar_to_m03_couplers_TDEST : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_TVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_TDATA : STD_LOGIC_VECTOR ( 119 downto 96 );
  signal xbar_to_m04_couplers_TDEST : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_TID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_TKEEP : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_TLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_TSTRB : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_TUSER : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_TVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_TDATA : STD_LOGIC_VECTOR ( 143 downto 120 );
  signal xbar_to_m05_couplers_TDEST : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_TID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_TKEEP : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_TLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_TSTRB : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_TUSER : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_TVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_TDATA : STD_LOGIC_VECTOR ( 167 downto 144 );
  signal xbar_to_m06_couplers_TDEST : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_TID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_TKEEP : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_TLAST : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_TSTRB : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_TUSER : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_TVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_TDATA : STD_LOGIC_VECTOR ( 191 downto 168 );
  signal xbar_to_m07_couplers_TDEST : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_TID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_TKEEP : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_TLAST : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_TSTRB : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_TUSER : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_TVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_TDATA : STD_LOGIC_VECTOR ( 215 downto 192 );
  signal xbar_to_m08_couplers_TDEST : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_TID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_TKEEP : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_TLAST : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_TSTRB : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_TUSER : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_TVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m09_couplers_TDATA : STD_LOGIC_VECTOR ( 239 downto 216 );
  signal xbar_to_m09_couplers_TDEST : STD_LOGIC_VECTOR ( 39 downto 36 );
  signal xbar_to_m09_couplers_TREADY : STD_LOGIC;
  signal xbar_to_m09_couplers_TVALID : STD_LOGIC_VECTOR ( 9 to 9 );
  signal NLW_xbar_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal NLW_xbar_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 9 );
  signal NLW_xbar_m_axis_tlast_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal NLW_xbar_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 9 );
  signal NLW_xbar_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 3 );
begin
  M00_AXIS_ACLK_1 <= M00_AXIS_ACLK;
  M00_AXIS_ARESETN_1 <= M00_AXIS_ARESETN;
  M00_AXIS_tdata(23 downto 0) <= m00_couplers_to_video_router_TDATA(23 downto 0);
  M00_AXIS_tdest(3 downto 0) <= m00_couplers_to_video_router_TDEST(3 downto 0);
  M00_AXIS_tid(0) <= m00_couplers_to_video_router_TID(0);
  M00_AXIS_tkeep(2 downto 0) <= m00_couplers_to_video_router_TKEEP(2 downto 0);
  M00_AXIS_tlast <= m00_couplers_to_video_router_TLAST;
  M00_AXIS_tstrb(2 downto 0) <= m00_couplers_to_video_router_TSTRB(2 downto 0);
  M00_AXIS_tuser(0) <= m00_couplers_to_video_router_TUSER(0);
  M00_AXIS_tvalid <= m00_couplers_to_video_router_TVALID;
  M01_AXIS_ACLK_1 <= M01_AXIS_ACLK;
  M01_AXIS_ARESETN_1 <= M01_AXIS_ARESETN;
  M01_AXIS_tdata(23 downto 0) <= m01_couplers_to_video_router_TDATA(23 downto 0);
  M01_AXIS_tdest(0) <= m01_couplers_to_video_router_TDEST(0);
  M01_AXIS_tid(0) <= m01_couplers_to_video_router_TID(0);
  M01_AXIS_tkeep(2 downto 0) <= m01_couplers_to_video_router_TKEEP(2 downto 0);
  M01_AXIS_tlast <= m01_couplers_to_video_router_TLAST;
  M01_AXIS_tstrb(2 downto 0) <= m01_couplers_to_video_router_TSTRB(2 downto 0);
  M01_AXIS_tuser(0) <= m01_couplers_to_video_router_TUSER(0);
  M01_AXIS_tvalid <= m01_couplers_to_video_router_TVALID;
  M02_AXIS_ACLK_1 <= M02_AXIS_ACLK;
  M02_AXIS_ARESETN_1 <= M02_AXIS_ARESETN;
  M02_AXIS_tdata(23 downto 0) <= m02_couplers_to_video_router_TDATA(23 downto 0);
  M02_AXIS_tdest(0) <= m02_couplers_to_video_router_TDEST(0);
  M02_AXIS_tid(0) <= m02_couplers_to_video_router_TID(0);
  M02_AXIS_tkeep(2 downto 0) <= m02_couplers_to_video_router_TKEEP(2 downto 0);
  M02_AXIS_tlast <= m02_couplers_to_video_router_TLAST;
  M02_AXIS_tstrb(2 downto 0) <= m02_couplers_to_video_router_TSTRB(2 downto 0);
  M02_AXIS_tuser(0) <= m02_couplers_to_video_router_TUSER(0);
  M02_AXIS_tvalid <= m02_couplers_to_video_router_TVALID;
  M03_AXIS_ACLK_1 <= M03_AXIS_ACLK;
  M03_AXIS_ARESETN_1 <= M03_AXIS_ARESETN;
  M03_AXIS_tdata <= m03_couplers_to_video_router_TDATA;
  M03_AXIS_tdest <= m03_couplers_to_video_router_TDEST;
  M03_AXIS_tvalid <= m03_couplers_to_video_router_TVALID;
  M04_AXIS_ACLK_1 <= M04_AXIS_ACLK;
  M04_AXIS_ARESETN_1 <= M04_AXIS_ARESETN;
  M04_AXIS_tdata(23 downto 0) <= m04_couplers_to_video_router_TDATA(23 downto 0);
  M04_AXIS_tdest(0) <= m04_couplers_to_video_router_TDEST(0);
  M04_AXIS_tid(0) <= m04_couplers_to_video_router_TID(0);
  M04_AXIS_tkeep(2 downto 0) <= m04_couplers_to_video_router_TKEEP(2 downto 0);
  M04_AXIS_tlast <= m04_couplers_to_video_router_TLAST;
  M04_AXIS_tstrb(2 downto 0) <= m04_couplers_to_video_router_TSTRB(2 downto 0);
  M04_AXIS_tuser(0) <= m04_couplers_to_video_router_TUSER(0);
  M04_AXIS_tvalid <= m04_couplers_to_video_router_TVALID;
  M05_AXIS_ACLK_1 <= M05_AXIS_ACLK;
  M05_AXIS_ARESETN_1 <= M05_AXIS_ARESETN;
  M05_AXIS_tdata <= m05_couplers_to_video_router_TDATA;
  M05_AXIS_tvalid <= m05_couplers_to_video_router_TVALID;
  M06_AXIS_ACLK_1 <= M06_AXIS_ACLK;
  M06_AXIS_ARESETN_1 <= M06_AXIS_ARESETN;
  M06_AXIS_tdata <= m06_couplers_to_video_router_TDATA;
  M06_AXIS_tvalid <= m06_couplers_to_video_router_TVALID;
  M07_AXIS_ACLK_1 <= M07_AXIS_ACLK;
  M07_AXIS_ARESETN_1 <= M07_AXIS_ARESETN;
  M07_AXIS_tdata <= m07_couplers_to_video_router_TDATA;
  M07_AXIS_tvalid <= m07_couplers_to_video_router_TVALID;
  M08_AXIS_ACLK_1 <= M08_AXIS_ACLK;
  M08_AXIS_ARESETN_1 <= M08_AXIS_ARESETN;
  M08_AXIS_tdata(23 downto 0) <= m08_couplers_to_video_router_TDATA(23 downto 0);
  M08_AXIS_tdest(0) <= m08_couplers_to_video_router_TDEST(0);
  M08_AXIS_tid(0) <= m08_couplers_to_video_router_TID(0);
  M08_AXIS_tkeep(2 downto 0) <= m08_couplers_to_video_router_TKEEP(2 downto 0);
  M08_AXIS_tlast <= m08_couplers_to_video_router_TLAST;
  M08_AXIS_tstrb(2 downto 0) <= m08_couplers_to_video_router_TSTRB(2 downto 0);
  M08_AXIS_tuser(0) <= m08_couplers_to_video_router_TUSER(0);
  M08_AXIS_tvalid <= m08_couplers_to_video_router_TVALID;
  M09_AXIS_ACLK_1 <= M09_AXIS_ACLK;
  M09_AXIS_ARESETN_1 <= M09_AXIS_ARESETN;
  M09_AXIS_tdata <= m09_couplers_to_video_router_TDATA;
  M09_AXIS_tdest <= m09_couplers_to_video_router_TDEST;
  M09_AXIS_tvalid <= m09_couplers_to_video_router_TVALID;
  S00_AXIS_ACLK_1 <= S00_AXIS_ACLK;
  S00_AXIS_ARESETN_1 <= S00_AXIS_ARESETN;
  S00_AXIS_tready(0) <= video_router_to_s00_couplers_TREADY(0);
  S01_AXIS_ACLK_1 <= S01_AXIS_ACLK;
  S01_AXIS_ARESETN_1 <= S01_AXIS_ARESETN;
  S01_AXIS_tready(0) <= video_router_to_s01_couplers_TREADY(0);
  S02_AXIS_ACLK_1 <= S02_AXIS_ACLK;
  S02_AXIS_ARESETN_1 <= S02_AXIS_ARESETN;
  S02_AXIS_tready(0) <= video_router_to_s02_couplers_TREADY(0);
  S03_AXIS_ACLK_1 <= S03_AXIS_ACLK;
  S03_AXIS_ARESETN_1 <= S03_AXIS_ARESETN;
  S03_AXIS_tready <= video_router_to_s03_couplers_TREADY;
  S04_AXIS_ACLK_1 <= S04_AXIS_ACLK;
  S04_AXIS_ARESETN_1 <= S04_AXIS_ARESETN;
  S04_AXIS_tready(0) <= video_router_to_s04_couplers_TREADY(0);
  S05_AXIS_ACLK_1 <= S05_AXIS_ACLK;
  S05_AXIS_ARESETN_1 <= S05_AXIS_ARESETN;
  S05_AXIS_tready <= video_router_to_s05_couplers_TREADY;
  S06_AXIS_ACLK_1 <= S06_AXIS_ACLK;
  S06_AXIS_ARESETN_1 <= S06_AXIS_ARESETN;
  S06_AXIS_tready <= video_router_to_s06_couplers_TREADY;
  S07_AXIS_ACLK_1 <= S07_AXIS_ACLK;
  S07_AXIS_ARESETN_1 <= S07_AXIS_ARESETN;
  S07_AXIS_tready <= video_router_to_s07_couplers_TREADY;
  S08_AXIS_ACLK_1 <= S08_AXIS_ACLK;
  S08_AXIS_ARESETN_1 <= S08_AXIS_ARESETN;
  S08_AXIS_tready(0) <= video_router_to_s08_couplers_TREADY(0);
  S09_AXIS_ACLK_1 <= S09_AXIS_ACLK;
  S09_AXIS_ARESETN_1 <= S09_AXIS_ARESETN;
  S09_AXIS_tready <= video_router_to_s09_couplers_TREADY;
  S_AXI_CTRL_ACLK_1 <= S_AXI_CTRL_ACLK;
  S_AXI_CTRL_ARESETN_1 <= S_AXI_CTRL_ARESETN;
  S_AXI_CTRL_arready <= video_router_to_xbar_ARREADY;
  S_AXI_CTRL_awready <= video_router_to_xbar_AWREADY;
  S_AXI_CTRL_bresp(1 downto 0) <= video_router_to_xbar_BRESP(1 downto 0);
  S_AXI_CTRL_bvalid <= video_router_to_xbar_BVALID;
  S_AXI_CTRL_rdata(31 downto 0) <= video_router_to_xbar_RDATA(31 downto 0);
  S_AXI_CTRL_rresp(1 downto 0) <= video_router_to_xbar_RRESP(1 downto 0);
  S_AXI_CTRL_rvalid <= video_router_to_xbar_RVALID;
  S_AXI_CTRL_wready <= video_router_to_xbar_WREADY;
  m00_couplers_to_video_router_TREADY <= M00_AXIS_tready;
  m01_couplers_to_video_router_TREADY <= M01_AXIS_tready;
  m02_couplers_to_video_router_TREADY <= M02_AXIS_tready;
  m03_couplers_to_video_router_TREADY <= M03_AXIS_tready;
  m04_couplers_to_video_router_TREADY <= M04_AXIS_tready;
  m05_couplers_to_video_router_TREADY <= M05_AXIS_tready;
  m06_couplers_to_video_router_TREADY <= M06_AXIS_tready;
  m07_couplers_to_video_router_TREADY <= M07_AXIS_tready;
  m08_couplers_to_video_router_TREADY <= M08_AXIS_tready;
  m09_couplers_to_video_router_TREADY <= M09_AXIS_tready;
  video_router_ACLK_net <= ACLK;
  video_router_ARESETN_net <= ARESETN;
  video_router_to_s00_couplers_TDATA(23 downto 0) <= S00_AXIS_tdata(23 downto 0);
  video_router_to_s00_couplers_TDEST(0) <= S00_AXIS_tdest(0);
  video_router_to_s00_couplers_TID(0) <= S00_AXIS_tid(0);
  video_router_to_s00_couplers_TKEEP(2 downto 0) <= S00_AXIS_tkeep(2 downto 0);
  video_router_to_s00_couplers_TLAST(0) <= S00_AXIS_tlast(0);
  video_router_to_s00_couplers_TSTRB(2 downto 0) <= S00_AXIS_tstrb(2 downto 0);
  video_router_to_s00_couplers_TUSER(0) <= S00_AXIS_tuser(0);
  video_router_to_s00_couplers_TVALID(0) <= S00_AXIS_tvalid(0);
  video_router_to_s01_couplers_TDATA(23 downto 0) <= S01_AXIS_tdata(23 downto 0);
  video_router_to_s01_couplers_TDEST(0) <= S01_AXIS_tdest(0);
  video_router_to_s01_couplers_TID(0) <= S01_AXIS_tid(0);
  video_router_to_s01_couplers_TKEEP(2 downto 0) <= S01_AXIS_tkeep(2 downto 0);
  video_router_to_s01_couplers_TLAST(0) <= S01_AXIS_tlast(0);
  video_router_to_s01_couplers_TSTRB(2 downto 0) <= S01_AXIS_tstrb(2 downto 0);
  video_router_to_s01_couplers_TUSER(0) <= S01_AXIS_tuser(0);
  video_router_to_s01_couplers_TVALID(0) <= S01_AXIS_tvalid(0);
  video_router_to_s02_couplers_TDATA(23 downto 0) <= S02_AXIS_tdata(23 downto 0);
  video_router_to_s02_couplers_TDEST(0) <= S02_AXIS_tdest(0);
  video_router_to_s02_couplers_TID(0) <= S02_AXIS_tid(0);
  video_router_to_s02_couplers_TKEEP(2 downto 0) <= S02_AXIS_tkeep(2 downto 0);
  video_router_to_s02_couplers_TLAST(0) <= S02_AXIS_tlast(0);
  video_router_to_s02_couplers_TSTRB(2 downto 0) <= S02_AXIS_tstrb(2 downto 0);
  video_router_to_s02_couplers_TUSER(0) <= S02_AXIS_tuser(0);
  video_router_to_s02_couplers_TVALID(0) <= S02_AXIS_tvalid(0);
  video_router_to_s03_couplers_TDATA <= S03_AXIS_tdata;
  video_router_to_s03_couplers_TDEST <= S03_AXIS_tdest;
  video_router_to_s03_couplers_TVALID <= S03_AXIS_tvalid;
  video_router_to_s04_couplers_TDATA(23 downto 0) <= S04_AXIS_tdata(23 downto 0);
  video_router_to_s04_couplers_TDEST(0) <= S04_AXIS_tdest(0);
  video_router_to_s04_couplers_TID(0) <= S04_AXIS_tid(0);
  video_router_to_s04_couplers_TKEEP(2 downto 0) <= S04_AXIS_tkeep(2 downto 0);
  video_router_to_s04_couplers_TLAST(0) <= S04_AXIS_tlast(0);
  video_router_to_s04_couplers_TSTRB(2 downto 0) <= S04_AXIS_tstrb(2 downto 0);
  video_router_to_s04_couplers_TUSER(0) <= S04_AXIS_tuser(0);
  video_router_to_s04_couplers_TVALID(0) <= S04_AXIS_tvalid(0);
  video_router_to_s05_couplers_TDATA <= S05_AXIS_tdata;
  video_router_to_s05_couplers_TDEST <= S05_AXIS_tdest;
  video_router_to_s05_couplers_TVALID <= S05_AXIS_tvalid;
  video_router_to_s06_couplers_TDATA <= S06_AXIS_tdata;
  video_router_to_s06_couplers_TDEST <= S06_AXIS_tdest;
  video_router_to_s06_couplers_TVALID <= S06_AXIS_tvalid;
  video_router_to_s07_couplers_TDATA <= S07_AXIS_tdata;
  video_router_to_s07_couplers_TDEST <= S07_AXIS_tdest;
  video_router_to_s07_couplers_TVALID <= S07_AXIS_tvalid;
  video_router_to_s08_couplers_TDATA(23 downto 0) <= S08_AXIS_tdata(23 downto 0);
  video_router_to_s08_couplers_TDEST(0) <= S08_AXIS_tdest(0);
  video_router_to_s08_couplers_TID(0) <= S08_AXIS_tid(0);
  video_router_to_s08_couplers_TKEEP(2 downto 0) <= S08_AXIS_tkeep(2 downto 0);
  video_router_to_s08_couplers_TLAST(0) <= S08_AXIS_tlast(0);
  video_router_to_s08_couplers_TSTRB(2 downto 0) <= S08_AXIS_tstrb(2 downto 0);
  video_router_to_s08_couplers_TUSER(0) <= S08_AXIS_tuser(0);
  video_router_to_s08_couplers_TVALID(0) <= S08_AXIS_tvalid(0);
  video_router_to_s09_couplers_TDATA <= S09_AXIS_tdata;
  video_router_to_s09_couplers_TDEST <= S09_AXIS_tdest;
  video_router_to_s09_couplers_TVALID <= S09_AXIS_tvalid;
  video_router_to_xbar_ARADDR(6 downto 0) <= S_AXI_CTRL_araddr(6 downto 0);
  video_router_to_xbar_ARVALID <= S_AXI_CTRL_arvalid;
  video_router_to_xbar_AWADDR(6 downto 0) <= S_AXI_CTRL_awaddr(6 downto 0);
  video_router_to_xbar_AWVALID <= S_AXI_CTRL_awvalid;
  video_router_to_xbar_BREADY <= S_AXI_CTRL_bready;
  video_router_to_xbar_RREADY <= S_AXI_CTRL_rready;
  video_router_to_xbar_WDATA(31 downto 0) <= S_AXI_CTRL_wdata(31 downto 0);
  video_router_to_xbar_WVALID <= S_AXI_CTRL_wvalid;
m00_couplers: entity work.m00_couplers_imp_FKOZA0
     port map (
      M_AXIS_ACLK => M00_AXIS_ACLK_1,
      M_AXIS_ARESETN => M00_AXIS_ARESETN_1,
      M_AXIS_tdata(23 downto 0) => m00_couplers_to_video_router_TDATA(23 downto 0),
      M_AXIS_tdest(3 downto 0) => m00_couplers_to_video_router_TDEST(3 downto 0),
      M_AXIS_tid(0) => m00_couplers_to_video_router_TID(0),
      M_AXIS_tkeep(2 downto 0) => m00_couplers_to_video_router_TKEEP(2 downto 0),
      M_AXIS_tlast => m00_couplers_to_video_router_TLAST,
      M_AXIS_tready => m00_couplers_to_video_router_TREADY,
      M_AXIS_tstrb(2 downto 0) => m00_couplers_to_video_router_TSTRB(2 downto 0),
      M_AXIS_tuser(0) => m00_couplers_to_video_router_TUSER(0),
      M_AXIS_tvalid => m00_couplers_to_video_router_TVALID,
      S_AXIS_ACLK => video_router_ACLK_net,
      S_AXIS_ARESETN => video_router_ARESETN_net,
      S_AXIS_tdata(23 downto 0) => xbar_to_m00_couplers_TDATA(23 downto 0),
      S_AXIS_tdest(3 downto 0) => xbar_to_m00_couplers_TDEST(3 downto 0),
      S_AXIS_tid(0) => xbar_to_m00_couplers_TID(0),
      S_AXIS_tkeep(2 downto 0) => xbar_to_m00_couplers_TKEEP(2 downto 0),
      S_AXIS_tlast => xbar_to_m00_couplers_TLAST(0),
      S_AXIS_tready => xbar_to_m00_couplers_TREADY,
      S_AXIS_tstrb(2 downto 0) => xbar_to_m00_couplers_TSTRB(2 downto 0),
      S_AXIS_tuser(0) => xbar_to_m00_couplers_TUSER(0),
      S_AXIS_tvalid => xbar_to_m00_couplers_TVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1H54D0B
     port map (
      M_AXIS_ACLK => M01_AXIS_ACLK_1,
      M_AXIS_ARESETN => M01_AXIS_ARESETN_1,
      M_AXIS_tdata(23 downto 0) => m01_couplers_to_video_router_TDATA(23 downto 0),
      M_AXIS_tdest(0) => m01_couplers_to_video_router_TDEST(0),
      M_AXIS_tid(0) => m01_couplers_to_video_router_TID(0),
      M_AXIS_tkeep(2 downto 0) => m01_couplers_to_video_router_TKEEP(2 downto 0),
      M_AXIS_tlast => m01_couplers_to_video_router_TLAST,
      M_AXIS_tready => m01_couplers_to_video_router_TREADY,
      M_AXIS_tstrb(2 downto 0) => m01_couplers_to_video_router_TSTRB(2 downto 0),
      M_AXIS_tuser(0) => m01_couplers_to_video_router_TUSER(0),
      M_AXIS_tvalid => m01_couplers_to_video_router_TVALID,
      S_AXIS_ACLK => video_router_ACLK_net,
      S_AXIS_ARESETN => video_router_ARESETN_net,
      S_AXIS_tdata(23 downto 0) => xbar_to_m01_couplers_TDATA(47 downto 24),
      S_AXIS_tdest(3 downto 0) => xbar_to_m01_couplers_TDEST(7 downto 4),
      S_AXIS_tid(0) => xbar_to_m01_couplers_TID(1),
      S_AXIS_tkeep(2 downto 0) => xbar_to_m01_couplers_TKEEP(5 downto 3),
      S_AXIS_tlast => xbar_to_m01_couplers_TLAST(1),
      S_AXIS_tready => xbar_to_m01_couplers_TREADY,
      S_AXIS_tstrb(2 downto 0) => xbar_to_m01_couplers_TSTRB(5 downto 3),
      S_AXIS_tuser(0) => xbar_to_m01_couplers_TUSER(1),
      S_AXIS_tvalid => xbar_to_m01_couplers_TVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1TIHHEN
     port map (
      M_AXIS_ACLK => M02_AXIS_ACLK_1,
      M_AXIS_ARESETN => M02_AXIS_ARESETN_1,
      M_AXIS_tdata(23 downto 0) => m02_couplers_to_video_router_TDATA(23 downto 0),
      M_AXIS_tdest(0) => m02_couplers_to_video_router_TDEST(0),
      M_AXIS_tid(0) => m02_couplers_to_video_router_TID(0),
      M_AXIS_tkeep(2 downto 0) => m02_couplers_to_video_router_TKEEP(2 downto 0),
      M_AXIS_tlast => m02_couplers_to_video_router_TLAST,
      M_AXIS_tready => m02_couplers_to_video_router_TREADY,
      M_AXIS_tstrb(2 downto 0) => m02_couplers_to_video_router_TSTRB(2 downto 0),
      M_AXIS_tuser(0) => m02_couplers_to_video_router_TUSER(0),
      M_AXIS_tvalid => m02_couplers_to_video_router_TVALID,
      S_AXIS_ACLK => video_router_ACLK_net,
      S_AXIS_ARESETN => video_router_ARESETN_net,
      S_AXIS_tdata(23 downto 0) => xbar_to_m02_couplers_TDATA(71 downto 48),
      S_AXIS_tdest(3 downto 0) => xbar_to_m02_couplers_TDEST(11 downto 8),
      S_AXIS_tid(0) => xbar_to_m02_couplers_TID(2),
      S_AXIS_tkeep(2 downto 0) => xbar_to_m02_couplers_TKEEP(8 downto 6),
      S_AXIS_tlast => xbar_to_m02_couplers_TLAST(2),
      S_AXIS_tready => xbar_to_m02_couplers_TREADY,
      S_AXIS_tstrb(2 downto 0) => xbar_to_m02_couplers_TSTRB(8 downto 6),
      S_AXIS_tuser(0) => xbar_to_m02_couplers_TUSER(2),
      S_AXIS_tvalid => xbar_to_m02_couplers_TVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_TW44D8
     port map (
      M_AXIS_ACLK => M03_AXIS_ACLK_1,
      M_AXIS_ARESETN => M03_AXIS_ARESETN_1,
      M_AXIS_tdata => m03_couplers_to_video_router_TDATA,
      M_AXIS_tdest => m03_couplers_to_video_router_TDEST,
      M_AXIS_tready => m03_couplers_to_video_router_TREADY,
      M_AXIS_tvalid => m03_couplers_to_video_router_TVALID,
      S_AXIS_ACLK => video_router_ACLK_net,
      S_AXIS_ARESETN => video_router_ARESETN_net,
      S_AXIS_tdata => xbar_to_m03_couplers_TDATA(72),
      S_AXIS_tdest => xbar_to_m03_couplers_TDEST(12),
      S_AXIS_tready => xbar_to_m03_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m03_couplers_TVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_KUSD3R
     port map (
      M_AXIS_ACLK => M04_AXIS_ACLK_1,
      M_AXIS_ARESETN => M04_AXIS_ARESETN_1,
      M_AXIS_tdata(23 downto 0) => m04_couplers_to_video_router_TDATA(23 downto 0),
      M_AXIS_tdest(0) => m04_couplers_to_video_router_TDEST(0),
      M_AXIS_tid(0) => m04_couplers_to_video_router_TID(0),
      M_AXIS_tkeep(2 downto 0) => m04_couplers_to_video_router_TKEEP(2 downto 0),
      M_AXIS_tlast => m04_couplers_to_video_router_TLAST,
      M_AXIS_tready => m04_couplers_to_video_router_TREADY,
      M_AXIS_tstrb(2 downto 0) => m04_couplers_to_video_router_TSTRB(2 downto 0),
      M_AXIS_tuser(0) => m04_couplers_to_video_router_TUSER(0),
      M_AXIS_tvalid => m04_couplers_to_video_router_TVALID,
      S_AXIS_ACLK => video_router_ACLK_net,
      S_AXIS_ARESETN => video_router_ARESETN_net,
      S_AXIS_tdata(23 downto 0) => xbar_to_m04_couplers_TDATA(119 downto 96),
      S_AXIS_tdest(3 downto 0) => xbar_to_m04_couplers_TDEST(19 downto 16),
      S_AXIS_tid(0) => xbar_to_m04_couplers_TID(4),
      S_AXIS_tkeep(2 downto 0) => xbar_to_m04_couplers_TKEEP(14 downto 12),
      S_AXIS_tlast => xbar_to_m04_couplers_TLAST(4),
      S_AXIS_tready => xbar_to_m04_couplers_TREADY,
      S_AXIS_tstrb(2 downto 0) => xbar_to_m04_couplers_TSTRB(14 downto 12),
      S_AXIS_tuser(0) => xbar_to_m04_couplers_TUSER(4),
      S_AXIS_tvalid => xbar_to_m04_couplers_TVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_1KRA590
     port map (
      M_AXIS_ACLK => M05_AXIS_ACLK_1,
      M_AXIS_ARESETN => M05_AXIS_ARESETN_1,
      M_AXIS_tdata => m05_couplers_to_video_router_TDATA,
      M_AXIS_tready => m05_couplers_to_video_router_TREADY,
      M_AXIS_tvalid => m05_couplers_to_video_router_TVALID,
      S_AXIS_ACLK => video_router_ACLK_net,
      S_AXIS_ARESETN => video_router_ARESETN_net,
      S_AXIS_tdata(23 downto 0) => xbar_to_m05_couplers_TDATA(143 downto 120),
      S_AXIS_tdest(3 downto 0) => xbar_to_m05_couplers_TDEST(23 downto 20),
      S_AXIS_tid(0) => xbar_to_m05_couplers_TID(5),
      S_AXIS_tkeep(2 downto 0) => xbar_to_m05_couplers_TKEEP(17 downto 15),
      S_AXIS_tlast => xbar_to_m05_couplers_TLAST(5),
      S_AXIS_tready => xbar_to_m05_couplers_TREADY,
      S_AXIS_tstrb(2 downto 0) => xbar_to_m05_couplers_TSTRB(17 downto 15),
      S_AXIS_tuser(0) => xbar_to_m05_couplers_TUSER(5),
      S_AXIS_tvalid => xbar_to_m05_couplers_TVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_1851DHS
     port map (
      M_AXIS_ACLK => M06_AXIS_ACLK_1,
      M_AXIS_ARESETN => M06_AXIS_ARESETN_1,
      M_AXIS_tdata => m06_couplers_to_video_router_TDATA,
      M_AXIS_tready => m06_couplers_to_video_router_TREADY,
      M_AXIS_tvalid => m06_couplers_to_video_router_TVALID,
      S_AXIS_ACLK => video_router_ACLK_net,
      S_AXIS_ARESETN => video_router_ARESETN_net,
      S_AXIS_tdata(23 downto 0) => xbar_to_m06_couplers_TDATA(167 downto 144),
      S_AXIS_tdest(3 downto 0) => xbar_to_m06_couplers_TDEST(27 downto 24),
      S_AXIS_tid(0) => xbar_to_m06_couplers_TID(6),
      S_AXIS_tkeep(2 downto 0) => xbar_to_m06_couplers_TKEEP(20 downto 18),
      S_AXIS_tlast => xbar_to_m06_couplers_TLAST(6),
      S_AXIS_tready => xbar_to_m06_couplers_TREADY,
      S_AXIS_tstrb(2 downto 0) => xbar_to_m06_couplers_TSTRB(20 downto 18),
      S_AXIS_tuser(0) => xbar_to_m06_couplers_TUSER(6),
      S_AXIS_tvalid => xbar_to_m06_couplers_TVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_6UQF2R
     port map (
      M_AXIS_ACLK => M07_AXIS_ACLK_1,
      M_AXIS_ARESETN => M07_AXIS_ARESETN_1,
      M_AXIS_tdata => m07_couplers_to_video_router_TDATA,
      M_AXIS_tready => m07_couplers_to_video_router_TREADY,
      M_AXIS_tvalid => m07_couplers_to_video_router_TVALID,
      S_AXIS_ACLK => video_router_ACLK_net,
      S_AXIS_ARESETN => video_router_ARESETN_net,
      S_AXIS_tdata(23 downto 0) => xbar_to_m07_couplers_TDATA(191 downto 168),
      S_AXIS_tdest(3 downto 0) => xbar_to_m07_couplers_TDEST(31 downto 28),
      S_AXIS_tid(0) => xbar_to_m07_couplers_TID(7),
      S_AXIS_tkeep(2 downto 0) => xbar_to_m07_couplers_TKEEP(23 downto 21),
      S_AXIS_tlast => xbar_to_m07_couplers_TLAST(7),
      S_AXIS_tready => xbar_to_m07_couplers_TREADY,
      S_AXIS_tstrb(2 downto 0) => xbar_to_m07_couplers_TSTRB(23 downto 21),
      S_AXIS_tuser(0) => xbar_to_m07_couplers_TUSER(7),
      S_AXIS_tvalid => xbar_to_m07_couplers_TVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_1PNFOXY
     port map (
      M_AXIS_ACLK => M08_AXIS_ACLK_1,
      M_AXIS_ARESETN => M08_AXIS_ARESETN_1,
      M_AXIS_tdata(23 downto 0) => m08_couplers_to_video_router_TDATA(23 downto 0),
      M_AXIS_tdest(0) => m08_couplers_to_video_router_TDEST(0),
      M_AXIS_tid(0) => m08_couplers_to_video_router_TID(0),
      M_AXIS_tkeep(2 downto 0) => m08_couplers_to_video_router_TKEEP(2 downto 0),
      M_AXIS_tlast => m08_couplers_to_video_router_TLAST,
      M_AXIS_tready => m08_couplers_to_video_router_TREADY,
      M_AXIS_tstrb(2 downto 0) => m08_couplers_to_video_router_TSTRB(2 downto 0),
      M_AXIS_tuser(0) => m08_couplers_to_video_router_TUSER(0),
      M_AXIS_tvalid => m08_couplers_to_video_router_TVALID,
      S_AXIS_ACLK => video_router_ACLK_net,
      S_AXIS_ARESETN => video_router_ARESETN_net,
      S_AXIS_tdata(23 downto 0) => xbar_to_m08_couplers_TDATA(215 downto 192),
      S_AXIS_tdest(3 downto 0) => xbar_to_m08_couplers_TDEST(35 downto 32),
      S_AXIS_tid(0) => xbar_to_m08_couplers_TID(8),
      S_AXIS_tkeep(2 downto 0) => xbar_to_m08_couplers_TKEEP(26 downto 24),
      S_AXIS_tlast => xbar_to_m08_couplers_TLAST(8),
      S_AXIS_tready => xbar_to_m08_couplers_TREADY,
      S_AXIS_tstrb(2 downto 0) => xbar_to_m08_couplers_TSTRB(26 downto 24),
      S_AXIS_tuser(0) => xbar_to_m08_couplers_TUSER(8),
      S_AXIS_tvalid => xbar_to_m08_couplers_TVALID(8)
    );
m09_couplers: entity work.m09_couplers_imp_OUWND1
     port map (
      M_AXIS_ACLK => M09_AXIS_ACLK_1,
      M_AXIS_ARESETN => M09_AXIS_ARESETN_1,
      M_AXIS_tdata => m09_couplers_to_video_router_TDATA,
      M_AXIS_tdest => m09_couplers_to_video_router_TDEST,
      M_AXIS_tready => m09_couplers_to_video_router_TREADY,
      M_AXIS_tvalid => m09_couplers_to_video_router_TVALID,
      S_AXIS_ACLK => video_router_ACLK_net,
      S_AXIS_ARESETN => video_router_ARESETN_net,
      S_AXIS_tdata => xbar_to_m09_couplers_TDATA(216),
      S_AXIS_tdest => xbar_to_m09_couplers_TDEST(36),
      S_AXIS_tready => xbar_to_m09_couplers_TREADY,
      S_AXIS_tvalid => xbar_to_m09_couplers_TVALID(9)
    );
s00_couplers: entity work.s00_couplers_imp_1H11R7O
     port map (
      M_AXIS_ACLK => video_router_ACLK_net,
      M_AXIS_ARESETN => video_router_ARESETN_net,
      M_AXIS_tdata(23 downto 0) => s00_couplers_to_xbar_TDATA(23 downto 0),
      M_AXIS_tdest(3 downto 0) => s00_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tid(0) => s00_couplers_to_xbar_TID(0),
      M_AXIS_tkeep(2 downto 0) => s00_couplers_to_xbar_TKEEP(2 downto 0),
      M_AXIS_tlast(0) => s00_couplers_to_xbar_TLAST(0),
      M_AXIS_tready(0) => s00_couplers_to_xbar_TREADY(0),
      M_AXIS_tstrb(2 downto 0) => s00_couplers_to_xbar_TSTRB(2 downto 0),
      M_AXIS_tuser(0) => s00_couplers_to_xbar_TUSER(0),
      M_AXIS_tvalid(0) => s00_couplers_to_xbar_TVALID(0),
      S_AXIS_ACLK => S00_AXIS_ACLK_1,
      S_AXIS_ARESETN => S00_AXIS_ARESETN_1,
      S_AXIS_tdata(23 downto 0) => video_router_to_s00_couplers_TDATA(23 downto 0),
      S_AXIS_tdest(0) => video_router_to_s00_couplers_TDEST(0),
      S_AXIS_tid(0) => video_router_to_s00_couplers_TID(0),
      S_AXIS_tkeep(2 downto 0) => video_router_to_s00_couplers_TKEEP(2 downto 0),
      S_AXIS_tlast(0) => video_router_to_s00_couplers_TLAST(0),
      S_AXIS_tready(0) => video_router_to_s00_couplers_TREADY(0),
      S_AXIS_tstrb(2 downto 0) => video_router_to_s00_couplers_TSTRB(2 downto 0),
      S_AXIS_tuser(0) => video_router_to_s00_couplers_TUSER(0),
      S_AXIS_tvalid(0) => video_router_to_s00_couplers_TVALID(0)
    );
s01_couplers: entity work.s01_couplers_imp_FQJVWN
     port map (
      M_AXIS_ACLK => video_router_ACLK_net,
      M_AXIS_ARESETN => video_router_ARESETN_net,
      M_AXIS_tdata(23 downto 0) => s01_couplers_to_xbar_TDATA(23 downto 0),
      M_AXIS_tdest(3 downto 0) => s01_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tid(0) => s01_couplers_to_xbar_TID(0),
      M_AXIS_tkeep(2 downto 0) => s01_couplers_to_xbar_TKEEP(2 downto 0),
      M_AXIS_tlast(0) => s01_couplers_to_xbar_TLAST(0),
      M_AXIS_tready(0) => s01_couplers_to_xbar_TREADY(1),
      M_AXIS_tstrb(2 downto 0) => s01_couplers_to_xbar_TSTRB(2 downto 0),
      M_AXIS_tuser(0) => s01_couplers_to_xbar_TUSER(0),
      M_AXIS_tvalid(0) => s01_couplers_to_xbar_TVALID(0),
      S_AXIS_ACLK => S01_AXIS_ACLK_1,
      S_AXIS_ARESETN => S01_AXIS_ARESETN_1,
      S_AXIS_tdata(23 downto 0) => video_router_to_s01_couplers_TDATA(23 downto 0),
      S_AXIS_tdest(0) => video_router_to_s01_couplers_TDEST(0),
      S_AXIS_tid(0) => video_router_to_s01_couplers_TID(0),
      S_AXIS_tkeep(2 downto 0) => video_router_to_s01_couplers_TKEEP(2 downto 0),
      S_AXIS_tlast(0) => video_router_to_s01_couplers_TLAST(0),
      S_AXIS_tready(0) => video_router_to_s01_couplers_TREADY(0),
      S_AXIS_tstrb(2 downto 0) => video_router_to_s01_couplers_TSTRB(2 downto 0),
      S_AXIS_tuser(0) => video_router_to_s01_couplers_TUSER(0),
      S_AXIS_tvalid(0) => video_router_to_s01_couplers_TVALID(0)
    );
s02_couplers: entity work.s02_couplers_imp_TQ4P1F
     port map (
      M_AXIS_ACLK => video_router_ACLK_net,
      M_AXIS_ARESETN => video_router_ARESETN_net,
      M_AXIS_tdata(23 downto 0) => s02_couplers_to_xbar_TDATA(23 downto 0),
      M_AXIS_tdest(3 downto 0) => s02_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tid(0) => s02_couplers_to_xbar_TID(0),
      M_AXIS_tkeep(2 downto 0) => s02_couplers_to_xbar_TKEEP(2 downto 0),
      M_AXIS_tlast(0) => s02_couplers_to_xbar_TLAST(0),
      M_AXIS_tready(0) => s02_couplers_to_xbar_TREADY(2),
      M_AXIS_tstrb(2 downto 0) => s02_couplers_to_xbar_TSTRB(2 downto 0),
      M_AXIS_tuser(0) => s02_couplers_to_xbar_TUSER(0),
      M_AXIS_tvalid(0) => s02_couplers_to_xbar_TVALID(0),
      S_AXIS_ACLK => S02_AXIS_ACLK_1,
      S_AXIS_ARESETN => S02_AXIS_ARESETN_1,
      S_AXIS_tdata(23 downto 0) => video_router_to_s02_couplers_TDATA(23 downto 0),
      S_AXIS_tdest(0) => video_router_to_s02_couplers_TDEST(0),
      S_AXIS_tid(0) => video_router_to_s02_couplers_TID(0),
      S_AXIS_tkeep(2 downto 0) => video_router_to_s02_couplers_TKEEP(2 downto 0),
      S_AXIS_tlast(0) => video_router_to_s02_couplers_TLAST(0),
      S_AXIS_tready(0) => video_router_to_s02_couplers_TREADY(0),
      S_AXIS_tstrb(2 downto 0) => video_router_to_s02_couplers_TSTRB(2 downto 0),
      S_AXIS_tuser(0) => video_router_to_s02_couplers_TUSER(0),
      S_AXIS_tvalid(0) => video_router_to_s02_couplers_TVALID(0)
    );
s03_couplers: entity work.s03_couplers_imp_1TMIDFK
     port map (
      M_AXIS_ACLK => video_router_ACLK_net,
      M_AXIS_ARESETN => video_router_ARESETN_net,
      M_AXIS_tdata => s03_couplers_to_xbar_TDATA,
      M_AXIS_tdest => s03_couplers_to_xbar_TDEST,
      M_AXIS_tready => s03_couplers_to_xbar_TREADY(3),
      M_AXIS_tvalid => s03_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S03_AXIS_ACLK_1,
      S_AXIS_ARESETN => S03_AXIS_ARESETN_1,
      S_AXIS_tdata => video_router_to_s03_couplers_TDATA,
      S_AXIS_tdest => video_router_to_s03_couplers_TDEST,
      S_AXIS_tready => video_router_to_s03_couplers_TREADY,
      S_AXIS_tvalid => video_router_to_s03_couplers_TVALID
    );
s04_couplers: entity work.s04_couplers_imp_1KMLEIZ
     port map (
      M_AXIS_ACLK => video_router_ACLK_net,
      M_AXIS_ARESETN => video_router_ARESETN_net,
      M_AXIS_tdata(23 downto 0) => s04_couplers_to_xbar_TDATA(23 downto 0),
      M_AXIS_tdest(3 downto 0) => s04_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tid(0) => s04_couplers_to_xbar_TID(0),
      M_AXIS_tkeep(2 downto 0) => s04_couplers_to_xbar_TKEEP(2 downto 0),
      M_AXIS_tlast(0) => s04_couplers_to_xbar_TLAST(0),
      M_AXIS_tready(0) => s04_couplers_to_xbar_TREADY(4),
      M_AXIS_tstrb(2 downto 0) => s04_couplers_to_xbar_TSTRB(2 downto 0),
      M_AXIS_tuser(0) => s04_couplers_to_xbar_TUSER(0),
      M_AXIS_tvalid(0) => s04_couplers_to_xbar_TVALID(0),
      S_AXIS_ACLK => S04_AXIS_ACLK_1,
      S_AXIS_ARESETN => S04_AXIS_ARESETN_1,
      S_AXIS_tdata(23 downto 0) => video_router_to_s04_couplers_TDATA(23 downto 0),
      S_AXIS_tdest(0) => video_router_to_s04_couplers_TDEST(0),
      S_AXIS_tid(0) => video_router_to_s04_couplers_TID(0),
      S_AXIS_tkeep(2 downto 0) => video_router_to_s04_couplers_TKEEP(2 downto 0),
      S_AXIS_tlast(0) => video_router_to_s04_couplers_TLAST(0),
      S_AXIS_tready(0) => video_router_to_s04_couplers_TREADY(0),
      S_AXIS_tstrb(2 downto 0) => video_router_to_s04_couplers_TSTRB(2 downto 0),
      S_AXIS_tuser(0) => video_router_to_s04_couplers_TUSER(0),
      S_AXIS_tvalid(0) => video_router_to_s04_couplers_TVALID(0)
    );
s05_couplers: entity work.s05_couplers_imp_L0130O
     port map (
      M_AXIS_ACLK => video_router_ACLK_net,
      M_AXIS_ARESETN => video_router_ARESETN_net,
      M_AXIS_tdata => s05_couplers_to_xbar_TDATA,
      M_AXIS_tdest => s05_couplers_to_xbar_TDEST,
      M_AXIS_tready => s05_couplers_to_xbar_TREADY(5),
      M_AXIS_tvalid => s05_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S05_AXIS_ACLK_1,
      S_AXIS_ARESETN => S05_AXIS_ARESETN_1,
      S_AXIS_tdata => video_router_to_s05_couplers_TDATA,
      S_AXIS_tdest => video_router_to_s05_couplers_TDEST,
      S_AXIS_tready => video_router_to_s05_couplers_TREADY,
      S_AXIS_tvalid => video_router_to_s05_couplers_TVALID
    );
s06_couplers: entity work.s06_couplers_imp_6PDSEK
     port map (
      M_AXIS_ACLK => video_router_ACLK_net,
      M_AXIS_ARESETN => video_router_ARESETN_net,
      M_AXIS_tdata => s06_couplers_to_xbar_TDATA,
      M_AXIS_tdest => s06_couplers_to_xbar_TDEST,
      M_AXIS_tready => s06_couplers_to_xbar_TREADY(6),
      M_AXIS_tvalid => s06_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S06_AXIS_ACLK_1,
      S_AXIS_ARESETN => S06_AXIS_ARESETN_1,
      S_AXIS_tdata => video_router_to_s06_couplers_TDATA,
      S_AXIS_tdest => video_router_to_s06_couplers_TDEST,
      S_AXIS_tready => video_router_to_s06_couplers_TREADY,
      S_AXIS_tvalid => video_router_to_s06_couplers_TVALID
    );
s07_couplers: entity work.s07_couplers_imp_189P0SV
     port map (
      M_AXIS_ACLK => video_router_ACLK_net,
      M_AXIS_ARESETN => video_router_ARESETN_net,
      M_AXIS_tdata => s07_couplers_to_xbar_TDATA,
      M_AXIS_tdest => s07_couplers_to_xbar_TDEST,
      M_AXIS_tready => s07_couplers_to_xbar_TREADY(7),
      M_AXIS_tvalid => s07_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S07_AXIS_ACLK_1,
      S_AXIS_ARESETN => S07_AXIS_ARESETN_1,
      S_AXIS_tdata => video_router_to_s07_couplers_TDATA,
      S_AXIS_tdest => video_router_to_s07_couplers_TDEST,
      S_AXIS_tready => video_router_to_s07_couplers_TREADY,
      S_AXIS_tvalid => video_router_to_s07_couplers_TVALID
    );
s08_couplers: entity work.s08_couplers_imp_OPKDJU
     port map (
      M_AXIS_ACLK => video_router_ACLK_net,
      M_AXIS_ARESETN => video_router_ARESETN_net,
      M_AXIS_tdata(23 downto 0) => s08_couplers_to_xbar_TDATA(23 downto 0),
      M_AXIS_tdest(3 downto 0) => s08_couplers_to_xbar_TDEST(3 downto 0),
      M_AXIS_tid(0) => s08_couplers_to_xbar_TID(0),
      M_AXIS_tkeep(2 downto 0) => s08_couplers_to_xbar_TKEEP(2 downto 0),
      M_AXIS_tlast(0) => s08_couplers_to_xbar_TLAST(0),
      M_AXIS_tready(0) => s08_couplers_to_xbar_TREADY(8),
      M_AXIS_tstrb(2 downto 0) => s08_couplers_to_xbar_TSTRB(2 downto 0),
      M_AXIS_tuser(0) => s08_couplers_to_xbar_TUSER(0),
      M_AXIS_tvalid(0) => s08_couplers_to_xbar_TVALID(0),
      S_AXIS_ACLK => S08_AXIS_ACLK_1,
      S_AXIS_ARESETN => S08_AXIS_ARESETN_1,
      S_AXIS_tdata(23 downto 0) => video_router_to_s08_couplers_TDATA(23 downto 0),
      S_AXIS_tdest(0) => video_router_to_s08_couplers_TDEST(0),
      S_AXIS_tid(0) => video_router_to_s08_couplers_TID(0),
      S_AXIS_tkeep(2 downto 0) => video_router_to_s08_couplers_TKEEP(2 downto 0),
      S_AXIS_tlast(0) => video_router_to_s08_couplers_TLAST(0),
      S_AXIS_tready(0) => video_router_to_s08_couplers_TREADY(0),
      S_AXIS_tstrb(2 downto 0) => video_router_to_s08_couplers_TSTRB(2 downto 0),
      S_AXIS_tuser(0) => video_router_to_s08_couplers_TUSER(0),
      S_AXIS_tvalid(0) => video_router_to_s08_couplers_TVALID(0)
    );
s09_couplers: entity work.s09_couplers_imp_1PS2AJD
     port map (
      M_AXIS_ACLK => video_router_ACLK_net,
      M_AXIS_ARESETN => video_router_ARESETN_net,
      M_AXIS_tdata => s09_couplers_to_xbar_TDATA,
      M_AXIS_tdest => s09_couplers_to_xbar_TDEST,
      M_AXIS_tready => s09_couplers_to_xbar_TREADY(9),
      M_AXIS_tvalid => s09_couplers_to_xbar_TVALID,
      S_AXIS_ACLK => S09_AXIS_ACLK_1,
      S_AXIS_ARESETN => S09_AXIS_ARESETN_1,
      S_AXIS_tdata => video_router_to_s09_couplers_TDATA,
      S_AXIS_tdest => video_router_to_s09_couplers_TDEST,
      S_AXIS_tready => video_router_to_s09_couplers_TREADY,
      S_AXIS_tvalid => video_router_to_s09_couplers_TVALID
    );
xbar: component bd_d94b_xbar_0
     port map (
      aclk => video_router_ACLK_net,
      aresetn => video_router_ARESETN_net,
      m_axis_tdata(239 downto 216) => xbar_to_m09_couplers_TDATA(239 downto 216),
      m_axis_tdata(215 downto 192) => xbar_to_m08_couplers_TDATA(215 downto 192),
      m_axis_tdata(191 downto 168) => xbar_to_m07_couplers_TDATA(191 downto 168),
      m_axis_tdata(167 downto 144) => xbar_to_m06_couplers_TDATA(167 downto 144),
      m_axis_tdata(143 downto 120) => xbar_to_m05_couplers_TDATA(143 downto 120),
      m_axis_tdata(119 downto 96) => xbar_to_m04_couplers_TDATA(119 downto 96),
      m_axis_tdata(95 downto 72) => xbar_to_m03_couplers_TDATA(95 downto 72),
      m_axis_tdata(71 downto 48) => xbar_to_m02_couplers_TDATA(71 downto 48),
      m_axis_tdata(47 downto 24) => xbar_to_m01_couplers_TDATA(47 downto 24),
      m_axis_tdata(23 downto 0) => xbar_to_m00_couplers_TDATA(23 downto 0),
      m_axis_tdest(39 downto 36) => xbar_to_m09_couplers_TDEST(39 downto 36),
      m_axis_tdest(35 downto 32) => xbar_to_m08_couplers_TDEST(35 downto 32),
      m_axis_tdest(31 downto 28) => xbar_to_m07_couplers_TDEST(31 downto 28),
      m_axis_tdest(27 downto 24) => xbar_to_m06_couplers_TDEST(27 downto 24),
      m_axis_tdest(23 downto 20) => xbar_to_m05_couplers_TDEST(23 downto 20),
      m_axis_tdest(19 downto 16) => xbar_to_m04_couplers_TDEST(19 downto 16),
      m_axis_tdest(15 downto 12) => xbar_to_m03_couplers_TDEST(15 downto 12),
      m_axis_tdest(11 downto 8) => xbar_to_m02_couplers_TDEST(11 downto 8),
      m_axis_tdest(7 downto 4) => xbar_to_m01_couplers_TDEST(7 downto 4),
      m_axis_tdest(3 downto 0) => xbar_to_m00_couplers_TDEST(3 downto 0),
      m_axis_tid(9) => NLW_xbar_m_axis_tid_UNCONNECTED(9),
      m_axis_tid(8) => xbar_to_m08_couplers_TID(8),
      m_axis_tid(7) => xbar_to_m07_couplers_TID(7),
      m_axis_tid(6) => xbar_to_m06_couplers_TID(6),
      m_axis_tid(5) => xbar_to_m05_couplers_TID(5),
      m_axis_tid(4) => xbar_to_m04_couplers_TID(4),
      m_axis_tid(3) => NLW_xbar_m_axis_tid_UNCONNECTED(3),
      m_axis_tid(2) => xbar_to_m02_couplers_TID(2),
      m_axis_tid(1) => xbar_to_m01_couplers_TID(1),
      m_axis_tid(0) => xbar_to_m00_couplers_TID(0),
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
      m_axis_tlast(8) => xbar_to_m08_couplers_TLAST(8),
      m_axis_tlast(7) => xbar_to_m07_couplers_TLAST(7),
      m_axis_tlast(6) => xbar_to_m06_couplers_TLAST(6),
      m_axis_tlast(5) => xbar_to_m05_couplers_TLAST(5),
      m_axis_tlast(4) => xbar_to_m04_couplers_TLAST(4),
      m_axis_tlast(3) => NLW_xbar_m_axis_tlast_UNCONNECTED(3),
      m_axis_tlast(2) => xbar_to_m02_couplers_TLAST(2),
      m_axis_tlast(1) => xbar_to_m01_couplers_TLAST(1),
      m_axis_tlast(0) => xbar_to_m00_couplers_TLAST(0),
      m_axis_tready(9) => xbar_to_m09_couplers_TREADY,
      m_axis_tready(8) => xbar_to_m08_couplers_TREADY,
      m_axis_tready(7) => xbar_to_m07_couplers_TREADY,
      m_axis_tready(6) => xbar_to_m06_couplers_TREADY,
      m_axis_tready(5) => xbar_to_m05_couplers_TREADY,
      m_axis_tready(4) => xbar_to_m04_couplers_TREADY,
      m_axis_tready(3) => xbar_to_m03_couplers_TREADY,
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
      m_axis_tuser(8) => xbar_to_m08_couplers_TUSER(8),
      m_axis_tuser(7) => xbar_to_m07_couplers_TUSER(7),
      m_axis_tuser(6) => xbar_to_m06_couplers_TUSER(6),
      m_axis_tuser(5) => xbar_to_m05_couplers_TUSER(5),
      m_axis_tuser(4) => xbar_to_m04_couplers_TUSER(4),
      m_axis_tuser(3) => NLW_xbar_m_axis_tuser_UNCONNECTED(3),
      m_axis_tuser(2) => xbar_to_m02_couplers_TUSER(2),
      m_axis_tuser(1) => xbar_to_m01_couplers_TUSER(1),
      m_axis_tuser(0) => xbar_to_m00_couplers_TUSER(0),
      m_axis_tvalid(9) => xbar_to_m09_couplers_TVALID(9),
      m_axis_tvalid(8) => xbar_to_m08_couplers_TVALID(8),
      m_axis_tvalid(7) => xbar_to_m07_couplers_TVALID(7),
      m_axis_tvalid(6) => xbar_to_m06_couplers_TVALID(6),
      m_axis_tvalid(5) => xbar_to_m05_couplers_TVALID(5),
      m_axis_tvalid(4) => xbar_to_m04_couplers_TVALID(4),
      m_axis_tvalid(3) => xbar_to_m03_couplers_TVALID(3),
      m_axis_tvalid(2) => xbar_to_m02_couplers_TVALID(2),
      m_axis_tvalid(1) => xbar_to_m01_couplers_TVALID(1),
      m_axis_tvalid(0) => xbar_to_m00_couplers_TVALID(0),
      s_axi_ctrl_aclk => S_AXI_CTRL_ACLK_1,
      s_axi_ctrl_araddr(6 downto 0) => video_router_to_xbar_ARADDR(6 downto 0),
      s_axi_ctrl_aresetn => S_AXI_CTRL_ARESETN_1,
      s_axi_ctrl_arready => video_router_to_xbar_ARREADY,
      s_axi_ctrl_arvalid => video_router_to_xbar_ARVALID,
      s_axi_ctrl_awaddr(6 downto 0) => video_router_to_xbar_AWADDR(6 downto 0),
      s_axi_ctrl_awready => video_router_to_xbar_AWREADY,
      s_axi_ctrl_awvalid => video_router_to_xbar_AWVALID,
      s_axi_ctrl_bready => video_router_to_xbar_BREADY,
      s_axi_ctrl_bresp(1 downto 0) => video_router_to_xbar_BRESP(1 downto 0),
      s_axi_ctrl_bvalid => video_router_to_xbar_BVALID,
      s_axi_ctrl_rdata(31 downto 0) => video_router_to_xbar_RDATA(31 downto 0),
      s_axi_ctrl_rready => video_router_to_xbar_RREADY,
      s_axi_ctrl_rresp(1 downto 0) => video_router_to_xbar_RRESP(1 downto 0),
      s_axi_ctrl_rvalid => video_router_to_xbar_RVALID,
      s_axi_ctrl_wdata(31 downto 0) => video_router_to_xbar_WDATA(31 downto 0),
      s_axi_ctrl_wready => video_router_to_xbar_WREADY,
      s_axi_ctrl_wvalid => video_router_to_xbar_WVALID,
      s_axis_tdata(239) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(238) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(237) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(236) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(235) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(234) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(233) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(232) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(231) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(230) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(229) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(228) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(227) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(226) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(225) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(224) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(223) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(222) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(221) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(220) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(219) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(218) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(217) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(216) => s09_couplers_to_xbar_TDATA,
      s_axis_tdata(215 downto 192) => s08_couplers_to_xbar_TDATA(23 downto 0),
      s_axis_tdata(191) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(190) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(189) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(188) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(187) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(186) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(185) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(184) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(183) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(182) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(181) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(180) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(179) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(178) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(177) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(176) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(175) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(174) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(173) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(172) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(171) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(170) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(169) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(168) => s07_couplers_to_xbar_TDATA,
      s_axis_tdata(167) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(166) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(165) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(164) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(163) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(162) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(161) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(160) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(159) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(158) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(157) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(156) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(155) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(154) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(153) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(152) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(151) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(150) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(149) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(148) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(147) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(146) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(145) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(144) => s06_couplers_to_xbar_TDATA,
      s_axis_tdata(143) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(142) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(141) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(140) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(139) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(138) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(137) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(136) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(135) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(134) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(133) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(132) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(131) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(130) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(129) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(128) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(127) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(126) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(125) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(124) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(123) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(122) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(121) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(120) => s05_couplers_to_xbar_TDATA,
      s_axis_tdata(119 downto 96) => s04_couplers_to_xbar_TDATA(23 downto 0),
      s_axis_tdata(95) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(94) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(93) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(92) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(91) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(90) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(89) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(88) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(87) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(86) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(85) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(84) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(83) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(82) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(81) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(80) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(79) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(78) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(77) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(76) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(75) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(74) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(73) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(72) => s03_couplers_to_xbar_TDATA,
      s_axis_tdata(71 downto 48) => s02_couplers_to_xbar_TDATA(23 downto 0),
      s_axis_tdata(47 downto 24) => s01_couplers_to_xbar_TDATA(23 downto 0),
      s_axis_tdata(23 downto 0) => s00_couplers_to_xbar_TDATA(23 downto 0),
      s_axis_tdest(39) => s09_couplers_to_xbar_TDEST,
      s_axis_tdest(38) => s09_couplers_to_xbar_TDEST,
      s_axis_tdest(37) => s09_couplers_to_xbar_TDEST,
      s_axis_tdest(36) => s09_couplers_to_xbar_TDEST,
      s_axis_tdest(35 downto 32) => s08_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(31) => s07_couplers_to_xbar_TDEST,
      s_axis_tdest(30) => s07_couplers_to_xbar_TDEST,
      s_axis_tdest(29) => s07_couplers_to_xbar_TDEST,
      s_axis_tdest(28) => s07_couplers_to_xbar_TDEST,
      s_axis_tdest(27) => s06_couplers_to_xbar_TDEST,
      s_axis_tdest(26) => s06_couplers_to_xbar_TDEST,
      s_axis_tdest(25) => s06_couplers_to_xbar_TDEST,
      s_axis_tdest(24) => s06_couplers_to_xbar_TDEST,
      s_axis_tdest(23) => s05_couplers_to_xbar_TDEST,
      s_axis_tdest(22) => s05_couplers_to_xbar_TDEST,
      s_axis_tdest(21) => s05_couplers_to_xbar_TDEST,
      s_axis_tdest(20) => s05_couplers_to_xbar_TDEST,
      s_axis_tdest(19 downto 16) => s04_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(15) => s03_couplers_to_xbar_TDEST,
      s_axis_tdest(14) => s03_couplers_to_xbar_TDEST,
      s_axis_tdest(13) => s03_couplers_to_xbar_TDEST,
      s_axis_tdest(12) => s03_couplers_to_xbar_TDEST,
      s_axis_tdest(11 downto 8) => s02_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(7 downto 4) => s01_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tdest(3 downto 0) => s00_couplers_to_xbar_TDEST(3 downto 0),
      s_axis_tid(9) => '0',
      s_axis_tid(8) => s08_couplers_to_xbar_TID(0),
      s_axis_tid(7 downto 5) => B"000",
      s_axis_tid(4) => s04_couplers_to_xbar_TID(0),
      s_axis_tid(3) => '0',
      s_axis_tid(2) => s02_couplers_to_xbar_TID(0),
      s_axis_tid(1) => s01_couplers_to_xbar_TID(0),
      s_axis_tid(0) => s00_couplers_to_xbar_TID(0),
      s_axis_tkeep(29 downto 27) => B"111",
      s_axis_tkeep(26 downto 24) => s08_couplers_to_xbar_TKEEP(2 downto 0),
      s_axis_tkeep(23 downto 15) => B"111111111",
      s_axis_tkeep(14 downto 12) => s04_couplers_to_xbar_TKEEP(2 downto 0),
      s_axis_tkeep(11 downto 9) => B"111",
      s_axis_tkeep(8 downto 6) => s02_couplers_to_xbar_TKEEP(2 downto 0),
      s_axis_tkeep(5 downto 3) => s01_couplers_to_xbar_TKEEP(2 downto 0),
      s_axis_tkeep(2 downto 0) => s00_couplers_to_xbar_TKEEP(2 downto 0),
      s_axis_tlast(9) => '0',
      s_axis_tlast(8) => s08_couplers_to_xbar_TLAST(0),
      s_axis_tlast(7 downto 5) => B"000",
      s_axis_tlast(4) => s04_couplers_to_xbar_TLAST(0),
      s_axis_tlast(3) => '0',
      s_axis_tlast(2) => s02_couplers_to_xbar_TLAST(0),
      s_axis_tlast(1) => s01_couplers_to_xbar_TLAST(0),
      s_axis_tlast(0) => s00_couplers_to_xbar_TLAST(0),
      s_axis_tready(9) => s09_couplers_to_xbar_TREADY(9),
      s_axis_tready(8) => s08_couplers_to_xbar_TREADY(8),
      s_axis_tready(7) => s07_couplers_to_xbar_TREADY(7),
      s_axis_tready(6) => s06_couplers_to_xbar_TREADY(6),
      s_axis_tready(5) => s05_couplers_to_xbar_TREADY(5),
      s_axis_tready(4) => s04_couplers_to_xbar_TREADY(4),
      s_axis_tready(3) => s03_couplers_to_xbar_TREADY(3),
      s_axis_tready(2) => s02_couplers_to_xbar_TREADY(2),
      s_axis_tready(1) => s01_couplers_to_xbar_TREADY(1),
      s_axis_tready(0) => s00_couplers_to_xbar_TREADY(0),
      s_axis_tstrb(29 downto 27) => B"111",
      s_axis_tstrb(26 downto 24) => s08_couplers_to_xbar_TSTRB(2 downto 0),
      s_axis_tstrb(23 downto 15) => B"111111111",
      s_axis_tstrb(14 downto 12) => s04_couplers_to_xbar_TSTRB(2 downto 0),
      s_axis_tstrb(11 downto 9) => B"111",
      s_axis_tstrb(8 downto 6) => s02_couplers_to_xbar_TSTRB(2 downto 0),
      s_axis_tstrb(5 downto 3) => s01_couplers_to_xbar_TSTRB(2 downto 0),
      s_axis_tstrb(2 downto 0) => s00_couplers_to_xbar_TSTRB(2 downto 0),
      s_axis_tuser(9) => '0',
      s_axis_tuser(8) => s08_couplers_to_xbar_TUSER(0),
      s_axis_tuser(7 downto 5) => B"000",
      s_axis_tuser(4) => s04_couplers_to_xbar_TUSER(0),
      s_axis_tuser(3) => '0',
      s_axis_tuser(2) => s02_couplers_to_xbar_TUSER(0),
      s_axis_tuser(1) => s01_couplers_to_xbar_TUSER(0),
      s_axis_tuser(0) => s00_couplers_to_xbar_TUSER(0),
      s_axis_tvalid(9) => s09_couplers_to_xbar_TVALID,
      s_axis_tvalid(8) => s08_couplers_to_xbar_TVALID(0),
      s_axis_tvalid(7) => s07_couplers_to_xbar_TVALID,
      s_axis_tvalid(6) => s06_couplers_to_xbar_TVALID,
      s_axis_tvalid(5) => s05_couplers_to_xbar_TVALID,
      s_axis_tvalid(4) => s04_couplers_to_xbar_TVALID(0),
      s_axis_tvalid(3) => s03_couplers_to_xbar_TVALID,
      s_axis_tvalid(2) => s02_couplers_to_xbar_TVALID(0),
      s_axis_tvalid(1) => s01_couplers_to_xbar_TVALID(0),
      s_axis_tvalid(0) => s00_couplers_to_xbar_TVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_d94b is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_d94b : entity is "bd_d94b,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_d94b,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=49,numReposBlks=28,numNonXlnxBlks=0,numHierBlks=21,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_d94b : entity is "design_1_v_proc_ss_2_1.hwdef";
end bd_d94b;

architecture STRUCTURE of bd_d94b is
  component bd_d94b_smartconnect_0_0 is
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
  end component bd_d94b_smartconnect_0_0;
  component bd_d94b_vsc_0 is
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
  end component bd_d94b_vsc_0;
  component bd_d94b_hsc_0 is
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
  end component bd_d94b_hsc_0;
  component bd_d94b_input_size_set_0 is
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
  end component bd_d94b_input_size_set_0;
  component bd_d94b_ltr_0 is
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
  end component bd_d94b_ltr_0;
  component bd_d94b_csc_0 is
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
  end component bd_d94b_csc_0;
  component bd_d94b_proc_ss_ip_aresetn_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_d94b_proc_ss_ip_aresetn_0;
  component bd_d94b_vid_in_aresetn_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_d94b_vid_in_aresetn_0;
  component bd_d94b_reset_sel_axis_0 is
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
  end component bd_d94b_reset_sel_axis_0;
  component bd_d94b_rst_axis_0 is
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
  end component bd_d94b_rst_axis_0;
  signal intf_net_bdry_in_s_axi_ctrl_ARADDR : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal intf_net_bdry_in_s_axi_ctrl_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_bdry_in_s_axi_ctrl_ARREADY : STD_LOGIC;
  signal intf_net_bdry_in_s_axi_ctrl_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_bdry_in_s_axi_ctrl_AWADDR : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal intf_net_bdry_in_s_axi_ctrl_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_bdry_in_s_axi_ctrl_AWREADY : STD_LOGIC;
  signal intf_net_bdry_in_s_axi_ctrl_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_bdry_in_s_axi_ctrl_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_bdry_in_s_axi_ctrl_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_bdry_in_s_axi_ctrl_BVALID : STD_LOGIC;
  signal intf_net_bdry_in_s_axi_ctrl_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_bdry_in_s_axi_ctrl_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_bdry_in_s_axi_ctrl_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_bdry_in_s_axi_ctrl_RVALID : STD_LOGIC;
  signal intf_net_bdry_in_s_axi_ctrl_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_bdry_in_s_axi_ctrl_WREADY : STD_LOGIC;
  signal intf_net_bdry_in_s_axi_ctrl_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_bdry_in_s_axi_ctrl_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_bdry_in_s_axis_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_bdry_in_s_axis_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_bdry_in_s_axis_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_bdry_in_s_axis_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_bdry_in_s_axis_TLAST : STD_LOGIC;
  signal intf_net_bdry_in_s_axis_TREADY : STD_LOGIC;
  signal intf_net_bdry_in_s_axis_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_bdry_in_s_axis_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_bdry_in_s_axis_TVALID : STD_LOGIC;
  signal intf_net_csc_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_csc_m_axis_video_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_csc_m_axis_video_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_csc_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_csc_m_axis_video_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_csc_m_axis_video_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_csc_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_csc_m_axis_video_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_csc_m_axis_video_TVALID : STD_LOGIC;
  signal intf_net_hsc_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_hsc_m_axis_video_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_hsc_m_axis_video_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_hsc_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_hsc_m_axis_video_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_hsc_m_axis_video_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_hsc_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_hsc_m_axis_video_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_hsc_m_axis_video_TVALID : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_input_size_set_M_AXIS_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_input_size_set_M_AXIS_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_input_size_set_M_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_input_size_set_M_AXIS_TLAST : STD_LOGIC;
  signal intf_net_input_size_set_M_AXIS_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_input_size_set_M_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_input_size_set_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_input_size_set_M_AXIS_TVALID : STD_LOGIC;
  signal intf_net_ltr_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_ltr_m_axis_video_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_ltr_m_axis_video_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_ltr_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_ltr_m_axis_video_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_ltr_m_axis_video_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_ltr_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_ltr_m_axis_video_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal intf_net_video_router_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M00_AXIS_TDEST : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_video_router_M00_AXIS_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M00_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M00_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M00_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M00_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M00_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M00_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M01_AXIS_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M01_AXIS_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M01_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M01_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M01_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M01_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M01_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M02_AXIS_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M02_AXIS_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M02_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M02_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M02_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M02_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M02_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M04_AXIS_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M04_AXIS_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M04_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M04_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M04_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M04_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M04_AXIS_TVALID : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_video_router_M08_AXIS_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M08_AXIS_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M08_AXIS_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M08_AXIS_TLAST : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TREADY : STD_LOGIC;
  signal intf_net_video_router_M08_AXIS_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_video_router_M08_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_video_router_M08_AXIS_TVALID : STD_LOGIC;
  signal intf_net_vsc_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal intf_net_vsc_m_axis_video_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_vsc_m_axis_video_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_vsc_m_axis_video_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_vsc_m_axis_video_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_vsc_m_axis_video_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_vsc_m_axis_video_TSTRB : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_vsc_m_axis_video_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal intf_net_vsc_m_axis_video_TVALID : STD_LOGIC;
  signal net_bdry_in_aclk_axis : STD_LOGIC;
  signal net_bdry_in_aclk_ctrl : STD_LOGIC;
  signal net_bdry_in_aresetn_ctrl : STD_LOGIC;
  signal net_proc_ss_ip_aresetn_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_reset_sel_axis_gpio_io_o : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_rst_axis_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_vid_in_aresetn_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
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
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk_axis : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_AXIS CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_axis : signal is "XIL_INTERFACENAME CLK.ACLK_AXIS, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_CLKEN aclken, ASSOCIATED_RESET aresetn_io_axis, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of aclk_ctrl : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_CTRL CLK";
  attribute X_INTERFACE_PARAMETER of aclk_ctrl : signal is "XIL_INTERFACENAME CLK.ACLK_CTRL, ASSOCIATED_BUSIF s_axi_ctrl, ASSOCIATED_CLKEN s_sc_aclken, ASSOCIATED_RESET aresetn_ctrl, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of aresetn_ctrl : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_CTRL RST";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl : signal is "XIL_INTERFACENAME RST.ARESETN_CTRL, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of aresetn_io_axis : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_IO_AXIS RST";
  attribute X_INTERFACE_PARAMETER of aresetn_io_axis : signal is "XIL_INTERFACENAME RST.ARESETN_IO_AXIS, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 148500000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 3, TDEST_WIDTH 4, TID_WIDTH 1, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of m_axis_tdest : signal is "xilinx.com:interface:axis:1.0 m_axis TDEST";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 m_axis TID";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  attribute X_INTERFACE_INFO of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 m_axis TSTRB";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_INFO of s_axi_ctrl_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_araddr : signal is "XIL_INTERFACENAME s_axi_ctrl, ADDR_WIDTH 19, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN /clk_wiz_0_clk_out1, DATA_WIDTH 32, FREQ_HZ 148500000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB";
  attribute X_INTERFACE_INFO of s_axi_ctrl_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 148500000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 s_axis TDEST";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 s_axis TID";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 s_axis TSTRB";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
  aresetn_io_axis(0) <= net_vid_in_aresetn_Dout(0);
  intf_net_bdry_in_s_axi_ctrl_ARADDR(18 downto 0) <= s_axi_ctrl_araddr(18 downto 0);
  intf_net_bdry_in_s_axi_ctrl_ARPROT(2 downto 0) <= s_axi_ctrl_arprot(2 downto 0);
  intf_net_bdry_in_s_axi_ctrl_ARVALID(0) <= s_axi_ctrl_arvalid(0);
  intf_net_bdry_in_s_axi_ctrl_AWADDR(18 downto 0) <= s_axi_ctrl_awaddr(18 downto 0);
  intf_net_bdry_in_s_axi_ctrl_AWPROT(2 downto 0) <= s_axi_ctrl_awprot(2 downto 0);
  intf_net_bdry_in_s_axi_ctrl_AWVALID(0) <= s_axi_ctrl_awvalid(0);
  intf_net_bdry_in_s_axi_ctrl_BREADY(0) <= s_axi_ctrl_bready(0);
  intf_net_bdry_in_s_axi_ctrl_RREADY(0) <= s_axi_ctrl_rready(0);
  intf_net_bdry_in_s_axi_ctrl_WDATA(31 downto 0) <= s_axi_ctrl_wdata(31 downto 0);
  intf_net_bdry_in_s_axi_ctrl_WSTRB(3 downto 0) <= s_axi_ctrl_wstrb(3 downto 0);
  intf_net_bdry_in_s_axi_ctrl_WVALID(0) <= s_axi_ctrl_wvalid(0);
  intf_net_bdry_in_s_axis_TDATA(23 downto 0) <= s_axis_tdata(23 downto 0);
  intf_net_bdry_in_s_axis_TDEST(0) <= s_axis_tdest(0);
  intf_net_bdry_in_s_axis_TID(0) <= s_axis_tid(0);
  intf_net_bdry_in_s_axis_TKEEP(2 downto 0) <= s_axis_tkeep(2 downto 0);
  intf_net_bdry_in_s_axis_TLAST <= s_axis_tlast;
  intf_net_bdry_in_s_axis_TSTRB(2 downto 0) <= s_axis_tstrb(2 downto 0);
  intf_net_bdry_in_s_axis_TUSER(0) <= s_axis_tuser(0);
  intf_net_bdry_in_s_axis_TVALID <= s_axis_tvalid;
  intf_net_video_router_M00_AXIS_TREADY <= m_axis_tready;
  m_axis_tdata(23 downto 0) <= intf_net_video_router_M00_AXIS_TDATA(23 downto 0);
  m_axis_tdest(3 downto 0) <= intf_net_video_router_M00_AXIS_TDEST(3 downto 0);
  m_axis_tid(0) <= intf_net_video_router_M00_AXIS_TID(0);
  m_axis_tkeep(2 downto 0) <= intf_net_video_router_M00_AXIS_TKEEP(2 downto 0);
  m_axis_tlast <= intf_net_video_router_M00_AXIS_TLAST;
  m_axis_tstrb(2 downto 0) <= intf_net_video_router_M00_AXIS_TSTRB(2 downto 0);
  m_axis_tuser(0) <= intf_net_video_router_M00_AXIS_TUSER(0);
  m_axis_tvalid <= intf_net_video_router_M00_AXIS_TVALID;
  net_bdry_in_aclk_axis <= aclk_axis;
  net_bdry_in_aclk_ctrl <= aclk_ctrl;
  net_bdry_in_aresetn_ctrl <= aresetn_ctrl;
  s_axi_ctrl_arready(0) <= intf_net_bdry_in_s_axi_ctrl_ARREADY;
  s_axi_ctrl_awready(0) <= intf_net_bdry_in_s_axi_ctrl_AWREADY;
  s_axi_ctrl_bresp(1 downto 0) <= intf_net_bdry_in_s_axi_ctrl_BRESP(1 downto 0);
  s_axi_ctrl_bvalid(0) <= intf_net_bdry_in_s_axi_ctrl_BVALID;
  s_axi_ctrl_rdata(31 downto 0) <= intf_net_bdry_in_s_axi_ctrl_RDATA(31 downto 0);
  s_axi_ctrl_rresp(1 downto 0) <= intf_net_bdry_in_s_axi_ctrl_RRESP(1 downto 0);
  s_axi_ctrl_rvalid(0) <= intf_net_bdry_in_s_axi_ctrl_RVALID;
  s_axi_ctrl_wready(0) <= intf_net_bdry_in_s_axi_ctrl_WREADY;
  s_axis_tready <= intf_net_bdry_in_s_axis_TREADY;
csc: component bd_d94b_csc_0
     port map (
      ap_clk => net_bdry_in_aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout(0),
      interrupt => NLW_csc_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_csc_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_csc_m_axis_video_TDEST(0),
      m_axis_video_TID(0) => intf_net_csc_m_axis_video_TID(0),
      m_axis_video_TKEEP(2 downto 0) => intf_net_csc_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_csc_m_axis_video_TLAST(0),
      m_axis_video_TREADY => intf_net_csc_m_axis_video_TREADY(0),
      m_axis_video_TSTRB(2 downto 0) => intf_net_csc_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_csc_m_axis_video_TUSER(0),
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
      s_axis_video_TDEST(0) => intf_net_video_router_M08_AXIS_TDEST(0),
      s_axis_video_TID(0) => intf_net_video_router_M08_AXIS_TID(0),
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M08_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M08_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M08_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M08_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M08_AXIS_TUSER(0),
      s_axis_video_TVALID => intf_net_video_router_M08_AXIS_TVALID
    );
hsc: component bd_d94b_hsc_0
     port map (
      ap_clk => net_bdry_in_aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout(0),
      interrupt => NLW_hsc_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_hsc_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_hsc_m_axis_video_TDEST(0),
      m_axis_video_TID(0) => intf_net_hsc_m_axis_video_TID(0),
      m_axis_video_TKEEP(2 downto 0) => intf_net_hsc_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_hsc_m_axis_video_TLAST(0),
      m_axis_video_TREADY => intf_net_hsc_m_axis_video_TREADY(0),
      m_axis_video_TSTRB(2 downto 0) => intf_net_hsc_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_hsc_m_axis_video_TUSER(0),
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
      s_axis_video_TDEST(0) => intf_net_video_router_M02_AXIS_TDEST(0),
      s_axis_video_TID(0) => intf_net_video_router_M02_AXIS_TID(0),
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M02_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M02_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M02_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M02_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M02_AXIS_TUSER(0),
      s_axis_video_TVALID => intf_net_video_router_M02_AXIS_TVALID
    );
input_size_set: component bd_d94b_input_size_set_0
     port map (
      aclk => net_bdry_in_aclk_axis,
      aresetn => net_proc_ss_ip_aresetn_Dout(0),
      m_axis_tdata(23 downto 0) => intf_net_input_size_set_M_AXIS_TDATA(23 downto 0),
      m_axis_tdest(0) => intf_net_input_size_set_M_AXIS_TDEST(0),
      m_axis_tid(0) => intf_net_input_size_set_M_AXIS_TID(0),
      m_axis_tkeep(2 downto 0) => intf_net_input_size_set_M_AXIS_TKEEP(2 downto 0),
      m_axis_tlast => intf_net_input_size_set_M_AXIS_TLAST,
      m_axis_tready => intf_net_input_size_set_M_AXIS_TREADY(0),
      m_axis_tstrb(2 downto 0) => intf_net_input_size_set_M_AXIS_TSTRB(2 downto 0),
      m_axis_tuser(0) => intf_net_input_size_set_M_AXIS_TUSER(0),
      m_axis_tvalid => intf_net_input_size_set_M_AXIS_TVALID,
      s_axis_tdata(23 downto 0) => intf_net_bdry_in_s_axis_TDATA(23 downto 0),
      s_axis_tdest(0) => intf_net_bdry_in_s_axis_TDEST(0),
      s_axis_tid(0) => intf_net_bdry_in_s_axis_TID(0),
      s_axis_tkeep(2 downto 0) => intf_net_bdry_in_s_axis_TKEEP(2 downto 0),
      s_axis_tlast => intf_net_bdry_in_s_axis_TLAST,
      s_axis_tready => intf_net_bdry_in_s_axis_TREADY,
      s_axis_tstrb(2 downto 0) => intf_net_bdry_in_s_axis_TSTRB(2 downto 0),
      s_axis_tuser(0) => intf_net_bdry_in_s_axis_TUSER(0),
      s_axis_tvalid => intf_net_bdry_in_s_axis_TVALID
    );
ltr: component bd_d94b_ltr_0
     port map (
      ap_clk => net_bdry_in_aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout(0),
      interrupt => NLW_ltr_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_ltr_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_ltr_m_axis_video_TDEST(0),
      m_axis_video_TID(0) => intf_net_ltr_m_axis_video_TID(0),
      m_axis_video_TKEEP(2 downto 0) => intf_net_ltr_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_ltr_m_axis_video_TLAST(0),
      m_axis_video_TREADY => intf_net_ltr_m_axis_video_TREADY(0),
      m_axis_video_TSTRB(2 downto 0) => intf_net_ltr_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_ltr_m_axis_video_TUSER(0),
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
      s_axis_video_TDEST(0) => intf_net_video_router_M04_AXIS_TDEST(0),
      s_axis_video_TID(0) => intf_net_video_router_M04_AXIS_TID(0),
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M04_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M04_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M04_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M04_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M04_AXIS_TUSER(0),
      s_axis_video_TVALID => intf_net_video_router_M04_AXIS_TVALID
    );
proc_ss_ip_aresetn: component bd_d94b_proc_ss_ip_aresetn_0
     port map (
      Din(1 downto 0) => net_reset_sel_axis_gpio_io_o(1 downto 0),
      Dout(0) => net_proc_ss_ip_aresetn_Dout(0)
    );
reset_sel_axis: component bd_d94b_reset_sel_axis_0
     port map (
      gpio_io_i(1 downto 0) => net_reset_sel_axis_gpio_io_o(1 downto 0),
      gpio_io_o(1 downto 0) => net_reset_sel_axis_gpio_io_o(1 downto 0),
      gpio_io_t(1 downto 0) => NLW_reset_sel_axis_gpio_io_t_UNCONNECTED(1 downto 0),
      s_axi_aclk => net_bdry_in_aclk_axis,
      s_axi_araddr(8 downto 0) => intf_net_smartconnect_0_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => net_rst_axis_peripheral_aresetn(0),
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
rst_axis: component bd_d94b_rst_axis_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_axis_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => net_bdry_in_aresetn_ctrl,
      interconnect_aresetn(0) => NLW_rst_axis_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_axis_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => net_rst_axis_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_axis_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => net_bdry_in_aclk_axis
    );
smartconnect_0: component bd_d94b_smartconnect_0_0
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
      S00_AXI_araddr(18 downto 0) => intf_net_bdry_in_s_axi_ctrl_ARADDR(18 downto 0),
      S00_AXI_arprot(2 downto 0) => intf_net_bdry_in_s_axi_ctrl_ARPROT(2 downto 0),
      S00_AXI_arready => intf_net_bdry_in_s_axi_ctrl_ARREADY,
      S00_AXI_arvalid => intf_net_bdry_in_s_axi_ctrl_ARVALID(0),
      S00_AXI_awaddr(18 downto 0) => intf_net_bdry_in_s_axi_ctrl_AWADDR(18 downto 0),
      S00_AXI_awprot(2 downto 0) => intf_net_bdry_in_s_axi_ctrl_AWPROT(2 downto 0),
      S00_AXI_awready => intf_net_bdry_in_s_axi_ctrl_AWREADY,
      S00_AXI_awvalid => intf_net_bdry_in_s_axi_ctrl_AWVALID(0),
      S00_AXI_bready => intf_net_bdry_in_s_axi_ctrl_BREADY(0),
      S00_AXI_bresp(1 downto 0) => intf_net_bdry_in_s_axi_ctrl_BRESP(1 downto 0),
      S00_AXI_bvalid => intf_net_bdry_in_s_axi_ctrl_BVALID,
      S00_AXI_rdata(31 downto 0) => intf_net_bdry_in_s_axi_ctrl_RDATA(31 downto 0),
      S00_AXI_rready => intf_net_bdry_in_s_axi_ctrl_RREADY(0),
      S00_AXI_rresp(1 downto 0) => intf_net_bdry_in_s_axi_ctrl_RRESP(1 downto 0),
      S00_AXI_rvalid => intf_net_bdry_in_s_axi_ctrl_RVALID,
      S00_AXI_wdata(31 downto 0) => intf_net_bdry_in_s_axi_ctrl_WDATA(31 downto 0),
      S00_AXI_wready => intf_net_bdry_in_s_axi_ctrl_WREADY,
      S00_AXI_wstrb(3 downto 0) => intf_net_bdry_in_s_axi_ctrl_WSTRB(3 downto 0),
      S00_AXI_wvalid => intf_net_bdry_in_s_axi_ctrl_WVALID(0),
      aclk => net_bdry_in_aclk_ctrl,
      aclk1 => net_bdry_in_aclk_axis,
      aclk2 => net_bdry_in_aclk_ctrl,
      aclk3 => net_bdry_in_aclk_ctrl,
      aclk4 => net_bdry_in_aclk_ctrl,
      aresetn => net_bdry_in_aresetn_ctrl
    );
vid_in_aresetn: component bd_d94b_vid_in_aresetn_0
     port map (
      Din(1 downto 0) => net_reset_sel_axis_gpio_io_o(1 downto 0),
      Dout(0) => net_vid_in_aresetn_Dout(0)
    );
video_router: entity work.bd_d94b_video_router_0
     port map (
      ACLK => net_bdry_in_aclk_axis,
      ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      M00_AXIS_ACLK => net_bdry_in_aclk_axis,
      M00_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      M00_AXIS_tdata(23 downto 0) => intf_net_video_router_M00_AXIS_TDATA(23 downto 0),
      M00_AXIS_tdest(3 downto 0) => intf_net_video_router_M00_AXIS_TDEST(3 downto 0),
      M00_AXIS_tid(0) => intf_net_video_router_M00_AXIS_TID(0),
      M00_AXIS_tkeep(2 downto 0) => intf_net_video_router_M00_AXIS_TKEEP(2 downto 0),
      M00_AXIS_tlast => intf_net_video_router_M00_AXIS_TLAST,
      M00_AXIS_tready => intf_net_video_router_M00_AXIS_TREADY,
      M00_AXIS_tstrb(2 downto 0) => intf_net_video_router_M00_AXIS_TSTRB(2 downto 0),
      M00_AXIS_tuser(0) => intf_net_video_router_M00_AXIS_TUSER(0),
      M00_AXIS_tvalid => intf_net_video_router_M00_AXIS_TVALID,
      M01_AXIS_ACLK => net_bdry_in_aclk_axis,
      M01_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      M01_AXIS_tdata(23 downto 0) => intf_net_video_router_M01_AXIS_TDATA(23 downto 0),
      M01_AXIS_tdest(0) => intf_net_video_router_M01_AXIS_TDEST(0),
      M01_AXIS_tid(0) => intf_net_video_router_M01_AXIS_TID(0),
      M01_AXIS_tkeep(2 downto 0) => intf_net_video_router_M01_AXIS_TKEEP(2 downto 0),
      M01_AXIS_tlast => intf_net_video_router_M01_AXIS_TLAST,
      M01_AXIS_tready => intf_net_video_router_M01_AXIS_TREADY,
      M01_AXIS_tstrb(2 downto 0) => intf_net_video_router_M01_AXIS_TSTRB(2 downto 0),
      M01_AXIS_tuser(0) => intf_net_video_router_M01_AXIS_TUSER(0),
      M01_AXIS_tvalid => intf_net_video_router_M01_AXIS_TVALID,
      M02_AXIS_ACLK => net_bdry_in_aclk_axis,
      M02_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      M02_AXIS_tdata(23 downto 0) => intf_net_video_router_M02_AXIS_TDATA(23 downto 0),
      M02_AXIS_tdest(0) => intf_net_video_router_M02_AXIS_TDEST(0),
      M02_AXIS_tid(0) => intf_net_video_router_M02_AXIS_TID(0),
      M02_AXIS_tkeep(2 downto 0) => intf_net_video_router_M02_AXIS_TKEEP(2 downto 0),
      M02_AXIS_tlast => intf_net_video_router_M02_AXIS_TLAST,
      M02_AXIS_tready => intf_net_video_router_M02_AXIS_TREADY,
      M02_AXIS_tstrb(2 downto 0) => intf_net_video_router_M02_AXIS_TSTRB(2 downto 0),
      M02_AXIS_tuser(0) => intf_net_video_router_M02_AXIS_TUSER(0),
      M02_AXIS_tvalid => intf_net_video_router_M02_AXIS_TVALID,
      M03_AXIS_ACLK => net_bdry_in_aclk_axis,
      M03_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      M03_AXIS_tdata => NLW_video_router_M03_AXIS_tdata_UNCONNECTED,
      M03_AXIS_tdest => NLW_video_router_M03_AXIS_tdest_UNCONNECTED,
      M03_AXIS_tready => '0',
      M03_AXIS_tvalid => NLW_video_router_M03_AXIS_tvalid_UNCONNECTED,
      M04_AXIS_ACLK => net_bdry_in_aclk_axis,
      M04_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      M04_AXIS_tdata(23 downto 0) => intf_net_video_router_M04_AXIS_TDATA(23 downto 0),
      M04_AXIS_tdest(0) => intf_net_video_router_M04_AXIS_TDEST(0),
      M04_AXIS_tid(0) => intf_net_video_router_M04_AXIS_TID(0),
      M04_AXIS_tkeep(2 downto 0) => intf_net_video_router_M04_AXIS_TKEEP(2 downto 0),
      M04_AXIS_tlast => intf_net_video_router_M04_AXIS_TLAST,
      M04_AXIS_tready => intf_net_video_router_M04_AXIS_TREADY,
      M04_AXIS_tstrb(2 downto 0) => intf_net_video_router_M04_AXIS_TSTRB(2 downto 0),
      M04_AXIS_tuser(0) => intf_net_video_router_M04_AXIS_TUSER(0),
      M04_AXIS_tvalid => intf_net_video_router_M04_AXIS_TVALID,
      M05_AXIS_ACLK => net_bdry_in_aclk_axis,
      M05_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      M05_AXIS_tdata => NLW_video_router_M05_AXIS_tdata_UNCONNECTED,
      M05_AXIS_tready => '1',
      M05_AXIS_tvalid => NLW_video_router_M05_AXIS_tvalid_UNCONNECTED,
      M06_AXIS_ACLK => net_bdry_in_aclk_axis,
      M06_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      M06_AXIS_tdata => NLW_video_router_M06_AXIS_tdata_UNCONNECTED,
      M06_AXIS_tready => '1',
      M06_AXIS_tvalid => NLW_video_router_M06_AXIS_tvalid_UNCONNECTED,
      M07_AXIS_ACLK => net_bdry_in_aclk_axis,
      M07_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      M07_AXIS_tdata => NLW_video_router_M07_AXIS_tdata_UNCONNECTED,
      M07_AXIS_tready => '1',
      M07_AXIS_tvalid => NLW_video_router_M07_AXIS_tvalid_UNCONNECTED,
      M08_AXIS_ACLK => net_bdry_in_aclk_axis,
      M08_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      M08_AXIS_tdata(23 downto 0) => intf_net_video_router_M08_AXIS_TDATA(23 downto 0),
      M08_AXIS_tdest(0) => intf_net_video_router_M08_AXIS_TDEST(0),
      M08_AXIS_tid(0) => intf_net_video_router_M08_AXIS_TID(0),
      M08_AXIS_tkeep(2 downto 0) => intf_net_video_router_M08_AXIS_TKEEP(2 downto 0),
      M08_AXIS_tlast => intf_net_video_router_M08_AXIS_TLAST,
      M08_AXIS_tready => intf_net_video_router_M08_AXIS_TREADY,
      M08_AXIS_tstrb(2 downto 0) => intf_net_video_router_M08_AXIS_TSTRB(2 downto 0),
      M08_AXIS_tuser(0) => intf_net_video_router_M08_AXIS_TUSER(0),
      M08_AXIS_tvalid => intf_net_video_router_M08_AXIS_TVALID,
      M09_AXIS_ACLK => net_bdry_in_aclk_axis,
      M09_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      M09_AXIS_tdata => NLW_video_router_M09_AXIS_tdata_UNCONNECTED,
      M09_AXIS_tdest => NLW_video_router_M09_AXIS_tdest_UNCONNECTED,
      M09_AXIS_tready => '0',
      M09_AXIS_tvalid => NLW_video_router_M09_AXIS_tvalid_UNCONNECTED,
      S00_AXIS_ACLK => net_bdry_in_aclk_axis,
      S00_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      S00_AXIS_tdata(23 downto 0) => intf_net_input_size_set_M_AXIS_TDATA(23 downto 0),
      S00_AXIS_tdest(0) => intf_net_input_size_set_M_AXIS_TDEST(0),
      S00_AXIS_tid(0) => intf_net_input_size_set_M_AXIS_TID(0),
      S00_AXIS_tkeep(2 downto 0) => intf_net_input_size_set_M_AXIS_TKEEP(2 downto 0),
      S00_AXIS_tlast(0) => intf_net_input_size_set_M_AXIS_TLAST,
      S00_AXIS_tready(0) => intf_net_input_size_set_M_AXIS_TREADY(0),
      S00_AXIS_tstrb(2 downto 0) => intf_net_input_size_set_M_AXIS_TSTRB(2 downto 0),
      S00_AXIS_tuser(0) => intf_net_input_size_set_M_AXIS_TUSER(0),
      S00_AXIS_tvalid(0) => intf_net_input_size_set_M_AXIS_TVALID,
      S01_AXIS_ACLK => net_bdry_in_aclk_axis,
      S01_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      S01_AXIS_tdata(23 downto 0) => intf_net_vsc_m_axis_video_TDATA(23 downto 0),
      S01_AXIS_tdest(0) => intf_net_vsc_m_axis_video_TDEST(0),
      S01_AXIS_tid(0) => intf_net_vsc_m_axis_video_TID(0),
      S01_AXIS_tkeep(2 downto 0) => intf_net_vsc_m_axis_video_TKEEP(2 downto 0),
      S01_AXIS_tlast(0) => intf_net_vsc_m_axis_video_TLAST(0),
      S01_AXIS_tready(0) => intf_net_vsc_m_axis_video_TREADY(0),
      S01_AXIS_tstrb(2 downto 0) => intf_net_vsc_m_axis_video_TSTRB(2 downto 0),
      S01_AXIS_tuser(0) => intf_net_vsc_m_axis_video_TUSER(0),
      S01_AXIS_tvalid(0) => intf_net_vsc_m_axis_video_TVALID,
      S02_AXIS_ACLK => net_bdry_in_aclk_axis,
      S02_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      S02_AXIS_tdata(23 downto 0) => intf_net_hsc_m_axis_video_TDATA(23 downto 0),
      S02_AXIS_tdest(0) => intf_net_hsc_m_axis_video_TDEST(0),
      S02_AXIS_tid(0) => intf_net_hsc_m_axis_video_TID(0),
      S02_AXIS_tkeep(2 downto 0) => intf_net_hsc_m_axis_video_TKEEP(2 downto 0),
      S02_AXIS_tlast(0) => intf_net_hsc_m_axis_video_TLAST(0),
      S02_AXIS_tready(0) => intf_net_hsc_m_axis_video_TREADY(0),
      S02_AXIS_tstrb(2 downto 0) => intf_net_hsc_m_axis_video_TSTRB(2 downto 0),
      S02_AXIS_tuser(0) => intf_net_hsc_m_axis_video_TUSER(0),
      S02_AXIS_tvalid(0) => intf_net_hsc_m_axis_video_TVALID,
      S03_AXIS_ACLK => net_bdry_in_aclk_axis,
      S03_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      S03_AXIS_tdata => '0',
      S03_AXIS_tdest => '0',
      S03_AXIS_tready => NLW_video_router_S03_AXIS_tready_UNCONNECTED,
      S03_AXIS_tvalid => '0',
      S04_AXIS_ACLK => net_bdry_in_aclk_axis,
      S04_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      S04_AXIS_tdata(23 downto 0) => intf_net_ltr_m_axis_video_TDATA(23 downto 0),
      S04_AXIS_tdest(0) => intf_net_ltr_m_axis_video_TDEST(0),
      S04_AXIS_tid(0) => intf_net_ltr_m_axis_video_TID(0),
      S04_AXIS_tkeep(2 downto 0) => intf_net_ltr_m_axis_video_TKEEP(2 downto 0),
      S04_AXIS_tlast(0) => intf_net_ltr_m_axis_video_TLAST(0),
      S04_AXIS_tready(0) => intf_net_ltr_m_axis_video_TREADY(0),
      S04_AXIS_tstrb(2 downto 0) => intf_net_ltr_m_axis_video_TSTRB(2 downto 0),
      S04_AXIS_tuser(0) => intf_net_ltr_m_axis_video_TUSER(0),
      S04_AXIS_tvalid(0) => intf_net_ltr_m_axis_video_TVALID,
      S05_AXIS_ACLK => net_bdry_in_aclk_axis,
      S05_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      S05_AXIS_tdata => '0',
      S05_AXIS_tdest => '0',
      S05_AXIS_tready => NLW_video_router_S05_AXIS_tready_UNCONNECTED,
      S05_AXIS_tvalid => '0',
      S06_AXIS_ACLK => net_bdry_in_aclk_axis,
      S06_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      S06_AXIS_tdata => '0',
      S06_AXIS_tdest => '0',
      S06_AXIS_tready => NLW_video_router_S06_AXIS_tready_UNCONNECTED,
      S06_AXIS_tvalid => '0',
      S07_AXIS_ACLK => net_bdry_in_aclk_axis,
      S07_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      S07_AXIS_tdata => '0',
      S07_AXIS_tdest => '0',
      S07_AXIS_tready => NLW_video_router_S07_AXIS_tready_UNCONNECTED,
      S07_AXIS_tvalid => '0',
      S08_AXIS_ACLK => net_bdry_in_aclk_axis,
      S08_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      S08_AXIS_tdata(23 downto 0) => intf_net_csc_m_axis_video_TDATA(23 downto 0),
      S08_AXIS_tdest(0) => intf_net_csc_m_axis_video_TDEST(0),
      S08_AXIS_tid(0) => intf_net_csc_m_axis_video_TID(0),
      S08_AXIS_tkeep(2 downto 0) => intf_net_csc_m_axis_video_TKEEP(2 downto 0),
      S08_AXIS_tlast(0) => intf_net_csc_m_axis_video_TLAST(0),
      S08_AXIS_tready(0) => intf_net_csc_m_axis_video_TREADY(0),
      S08_AXIS_tstrb(2 downto 0) => intf_net_csc_m_axis_video_TSTRB(2 downto 0),
      S08_AXIS_tuser(0) => intf_net_csc_m_axis_video_TUSER(0),
      S08_AXIS_tvalid(0) => intf_net_csc_m_axis_video_TVALID,
      S09_AXIS_ACLK => net_bdry_in_aclk_axis,
      S09_AXIS_ARESETN => net_proc_ss_ip_aresetn_Dout(0),
      S09_AXIS_tdata => '0',
      S09_AXIS_tdest => '0',
      S09_AXIS_tready => NLW_video_router_S09_AXIS_tready_UNCONNECTED,
      S09_AXIS_tvalid => '0',
      S_AXI_CTRL_ACLK => net_bdry_in_aclk_ctrl,
      S_AXI_CTRL_ARESETN => net_bdry_in_aresetn_ctrl,
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
vsc: component bd_d94b_vsc_0
     port map (
      ap_clk => net_bdry_in_aclk_axis,
      ap_rst_n => net_proc_ss_ip_aresetn_Dout(0),
      interrupt => NLW_vsc_interrupt_UNCONNECTED,
      m_axis_video_TDATA(23 downto 0) => intf_net_vsc_m_axis_video_TDATA(23 downto 0),
      m_axis_video_TDEST(0) => intf_net_vsc_m_axis_video_TDEST(0),
      m_axis_video_TID(0) => intf_net_vsc_m_axis_video_TID(0),
      m_axis_video_TKEEP(2 downto 0) => intf_net_vsc_m_axis_video_TKEEP(2 downto 0),
      m_axis_video_TLAST(0) => intf_net_vsc_m_axis_video_TLAST(0),
      m_axis_video_TREADY => intf_net_vsc_m_axis_video_TREADY(0),
      m_axis_video_TSTRB(2 downto 0) => intf_net_vsc_m_axis_video_TSTRB(2 downto 0),
      m_axis_video_TUSER(0) => intf_net_vsc_m_axis_video_TUSER(0),
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
      s_axis_video_TDEST(0) => intf_net_video_router_M01_AXIS_TDEST(0),
      s_axis_video_TID(0) => intf_net_video_router_M01_AXIS_TID(0),
      s_axis_video_TKEEP(2 downto 0) => intf_net_video_router_M01_AXIS_TKEEP(2 downto 0),
      s_axis_video_TLAST(0) => intf_net_video_router_M01_AXIS_TLAST,
      s_axis_video_TREADY => intf_net_video_router_M01_AXIS_TREADY,
      s_axis_video_TSTRB(2 downto 0) => intf_net_video_router_M01_AXIS_TSTRB(2 downto 0),
      s_axis_video_TUSER(0) => intf_net_video_router_M01_AXIS_TUSER(0),
      s_axis_video_TVALID => intf_net_video_router_M01_AXIS_TVALID
    );
end STRUCTURE;
