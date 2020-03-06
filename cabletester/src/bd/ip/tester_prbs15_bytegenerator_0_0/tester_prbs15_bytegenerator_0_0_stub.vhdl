-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Nov  4 11:55:23 2019
-- Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_prbs15_bytegenerator_0_0/tester_prbs15_bytegenerator_0_0_stub.vhdl
-- Design      : tester_prbs15_bytegenerator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu2cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tester_prbs15_bytegenerator_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    clk_div4 : in STD_LOGIC;
    resetb : in STD_LOGIC;
    data_out_p : out STD_LOGIC;
    data_out_n : out STD_LOGIC
  );

end tester_prbs15_bytegenerator_0_0;

architecture stub of tester_prbs15_bytegenerator_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,clk_div4,resetb,data_out_p,data_out_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "prbs15_bytegenerator,Vivado 2018.3";
begin
end;
