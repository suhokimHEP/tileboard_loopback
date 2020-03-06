-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct 29 14:12:53 2019
-- Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_fast_control_drivers_0_0/tester_fast_control_drivers_0_0_sim_netlist.vhdl
-- Design      : tester_fast_control_drivers_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu2cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fast_control_drivers_0_0_fast_control_drivers is
  port (
    fc_clk_o_p : out STD_LOGIC;
    fc_clk_o_n : out STD_LOGIC;
    fc_sig_o_p : out STD_LOGIC;
    fc_sig_o_n : out STD_LOGIC;
    fc_clk_i : in STD_LOGIC;
    fc_sig_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fast_control_drivers_0_0_fast_control_drivers : entity is "fast_control_drivers";
end tester_fast_control_drivers_0_0_fast_control_drivers;

architecture STRUCTURE of tester_fast_control_drivers_0_0_fast_control_drivers is
  signal clk_i : STD_LOGIC;
  signal sig_i : STD_LOGIC;
  signal NLW_ODDRE1_clk_CLKDIV_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDRE1_clk_T_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDRE1_clk_D_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OBUFDS_clk : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_clk : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of OBUFDS_clk : label is "OBUFDS";
  attribute BOX_TYPE of OBUFDS_sig : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_sig : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_sig : label is "OBUFDS";
  attribute BOX_TYPE of ODDRE1_clk : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ODDRE1_clk : label is "ODDRE1";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of ODDRE1_clk : label is "C:CLK SR:RST Q:OQ D1:D[0] D2:D[4]";
begin
OBUFDS_clk: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_i,
      O => fc_clk_o_p,
      OB => fc_clk_o_n
    );
OBUFDS_sig: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sig_i,
      O => fc_sig_o_p,
      OB => fc_sig_o_n
    );
ODDRE1_clk: unisim.vcomponents.OSERDESE3
    generic map(
      INIT => '0',
      IS_CLK_INVERTED => '0',
      ODDR_MODE => "TRUE",
      OSERDES_T_BYPASS => "TRUE",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CLK => fc_clk_i,
      CLKDIV => NLW_ODDRE1_clk_CLKDIV_UNCONNECTED,
      D(7 downto 5) => NLW_ODDRE1_clk_D_UNCONNECTED(7 downto 5),
      D(4) => '0',
      D(3 downto 1) => NLW_ODDRE1_clk_D_UNCONNECTED(3 downto 1),
      D(0) => '1',
      OQ => clk_i,
      RST => '0',
      T => '0',
      T_OUT => NLW_ODDRE1_clk_T_OUT_UNCONNECTED
    );
sig_i_reg: unisim.vcomponents.FDRE
     port map (
      C => fc_clk_i,
      CE => '1',
      D => fc_sig_i,
      Q => sig_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fast_control_drivers_0_0 is
  port (
    fc_clk_i : in STD_LOGIC;
    fc_sig_i : in STD_LOGIC;
    fc_clk_o_p : out STD_LOGIC;
    fc_clk_o_n : out STD_LOGIC;
    fc_sig_o_p : out STD_LOGIC;
    fc_sig_o_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of tester_fast_control_drivers_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of tester_fast_control_drivers_0_0 : entity is "tester_fast_control_drivers_0_0,fast_control_drivers,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of tester_fast_control_drivers_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of tester_fast_control_drivers_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of tester_fast_control_drivers_0_0 : entity is "fast_control_drivers,Vivado 2018.3";
end tester_fast_control_drivers_0_0;

architecture STRUCTURE of tester_fast_control_drivers_0_0 is
begin
inst: entity work.tester_fast_control_drivers_0_0_fast_control_drivers
     port map (
      fc_clk_i => fc_clk_i,
      fc_clk_o_n => fc_clk_o_n,
      fc_clk_o_p => fc_clk_o_p,
      fc_sig_i => fc_sig_i,
      fc_sig_o_n => fc_sig_o_n,
      fc_sig_o_p => fc_sig_o_p
    );
end STRUCTURE;
