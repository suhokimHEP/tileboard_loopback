-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct 29 14:12:53 2019
-- Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_fast_control_drivers_0_0/tester_fast_control_drivers_0_0_stub.vhdl
-- Design      : tester_fast_control_drivers_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu2cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tester_fast_control_drivers_0_0 is
  Port ( 
    fc_clk_i : in STD_LOGIC;
    fc_sig_i : in STD_LOGIC;
    fc_clk_o_p : out STD_LOGIC;
    fc_clk_o_n : out STD_LOGIC;
    fc_sig_o_p : out STD_LOGIC;
    fc_sig_o_n : out STD_LOGIC
  );

end tester_fast_control_drivers_0_0;

architecture stub of tester_fast_control_drivers_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "fc_clk_i,fc_sig_i,fc_clk_o_p,fc_clk_o_n,fc_sig_o_p,fc_sig_o_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fast_control_drivers,Vivado 2018.3";
begin
end;
