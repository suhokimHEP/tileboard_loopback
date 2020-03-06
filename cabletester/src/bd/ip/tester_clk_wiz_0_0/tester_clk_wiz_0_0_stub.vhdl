-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct 29 14:12:29 2019
-- Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_clk_wiz_0_0/tester_clk_wiz_0_0_stub.vhdl
-- Design      : tester_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu2cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tester_clk_wiz_0_0 is
  Port ( 
    clk_320 : out STD_LOGIC;
    clk_40 : out STD_LOGIC;
    clk_80 : out STD_LOGIC;
    clk_160 : out STD_LOGIC;
    clk_640 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end tester_clk_wiz_0_0;

architecture stub of tester_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_320,clk_40,clk_80,clk_160,clk_640,reset,locked,clk_in1";
begin
end;
