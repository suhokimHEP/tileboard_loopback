-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct 29 14:12:29 2019
-- Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_I2C_driver_0_0/tester_I2C_driver_0_0_stub.vhdl
-- Design      : tester_I2C_driver_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu2cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tester_I2C_driver_0_0 is
  Port ( 
    SDA : inout STD_LOGIC;
    SDAi : in STD_LOGIC;
    SDAt : in STD_LOGIC;
    SDAo : out STD_LOGIC;
    SCL : inout STD_LOGIC;
    SCLi : in STD_LOGIC;
    SCLt : in STD_LOGIC;
    SCLo : out STD_LOGIC
  );

end tester_I2C_driver_0_0;

architecture stub of tester_I2C_driver_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SDA,SDAi,SDAt,SDAo,SCL,SCLi,SCLt,SCLo";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "I2C_driver,Vivado 2018.3";
begin
end;
