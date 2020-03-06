-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct 29 14:12:29 2019
-- Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_I2C_driver_0_0/tester_I2C_driver_0_0_sim_netlist.vhdl
-- Design      : tester_I2C_driver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu2cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_I2C_driver_0_0_I2C_driver is
  port (
    SDAo : out STD_LOGIC;
    SCLo : out STD_LOGIC;
    SDA : inout STD_LOGIC;
    SCL : inout STD_LOGIC;
    SDAi : in STD_LOGIC;
    SDAt : in STD_LOGIC;
    SCLi : in STD_LOGIC;
    SCLt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_I2C_driver_0_0_I2C_driver : entity is "I2C_driver";
end tester_I2C_driver_0_0_I2C_driver;

architecture STRUCTURE of tester_I2C_driver_0_0_I2C_driver is
  signal SCLtmp : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of scl_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of sda_buf : label is "PRIMITIVE";
begin
scl_buf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => SCLtmp,
      IO => SCL,
      O => SCLo,
      T => '0'
    );
scl_buf_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => SCLi,
      I1 => SCLt,
      O => SCLtmp
    );
sda_buf: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => SDAi,
      IO => SDA,
      O => SDAo,
      T => SDAt
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_I2C_driver_0_0 is
  port (
    SDA : inout STD_LOGIC;
    SDAi : in STD_LOGIC;
    SDAt : in STD_LOGIC;
    SDAo : out STD_LOGIC;
    SCL : inout STD_LOGIC;
    SCLi : in STD_LOGIC;
    SCLt : in STD_LOGIC;
    SCLo : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of tester_I2C_driver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of tester_I2C_driver_0_0 : entity is "tester_I2C_driver_0_0,I2C_driver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of tester_I2C_driver_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of tester_I2C_driver_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of tester_I2C_driver_0_0 : entity is "I2C_driver,Vivado 2018.3";
end tester_I2C_driver_0_0;

architecture STRUCTURE of tester_I2C_driver_0_0 is
begin
inst: entity work.tester_I2C_driver_0_0_I2C_driver
     port map (
      SCL => SCL,
      SCLi => SCLi,
      SCLo => SCLo,
      SCLt => SCLt,
      SDA => SDA,
      SDAi => SDAi,
      SDAo => SDAo,
      SDAt => SDAt
    );
end STRUCTURE;
