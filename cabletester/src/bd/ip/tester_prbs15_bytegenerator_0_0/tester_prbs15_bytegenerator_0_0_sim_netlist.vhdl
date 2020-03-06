-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Nov  4 11:55:23 2019
-- Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_prbs15_bytegenerator_0_0/tester_prbs15_bytegenerator_0_0_sim_netlist.vhdl
-- Design      : tester_prbs15_bytegenerator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu2cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_prbs15_bytegenerator_0_0_prbs15_byte is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_div4 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_prbs15_bytegenerator_0_0_prbs15_byte : entity is "prbs15_byte";
end tester_prbs15_bytegenerator_0_0_prbs15_byte;

architecture STRUCTURE of tester_prbs15_bytegenerator_0_0_prbs15_byte is
  signal data_d : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal prbs_out_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \prbs_out[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \prbs_out[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \prbs_out[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \prbs_out[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \prbs_out[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \prbs_out[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \prbs_out[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \prbs_out[7]_i_1\ : label is "soft_lutpair0";
begin
\data_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => D(0),
      Q => data_d(0),
      R => '0'
    );
\data_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => D(1),
      Q => data_d(1),
      R => '0'
    );
\data_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => D(2),
      Q => data_d(2),
      R => '0'
    );
\data_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => D(3),
      Q => data_d(3),
      R => '0'
    );
\data_d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => D(4),
      Q => data_d(4),
      R => '0'
    );
\data_d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => D(5),
      Q => data_d(5),
      R => '0'
    );
\data_d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => D(6),
      Q => data_d(6),
      R => '0'
    );
\prbs_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D(6),
      I1 => D(7),
      O => prbs_out_i(0)
    );
\prbs_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => D(7),
      I1 => data_d(0),
      O => prbs_out_i(1)
    );
\prbs_out[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_d(0),
      I1 => data_d(1),
      O => prbs_out_i(2)
    );
\prbs_out[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_d(1),
      I1 => data_d(2),
      O => prbs_out_i(3)
    );
\prbs_out[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_d(2),
      I1 => data_d(3),
      O => prbs_out_i(4)
    );
\prbs_out[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_d(3),
      I1 => data_d(4),
      O => prbs_out_i(5)
    );
\prbs_out[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_d(4),
      I1 => data_d(5),
      O => prbs_out_i(6)
    );
\prbs_out[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data_d(5),
      I1 => data_d(6),
      O => prbs_out_i(7)
    );
\prbs_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => prbs_out_i(0),
      Q => Q(0),
      R => '0'
    );
\prbs_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => prbs_out_i(1),
      Q => Q(1),
      R => '0'
    );
\prbs_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => prbs_out_i(2),
      Q => Q(2),
      R => '0'
    );
\prbs_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => prbs_out_i(3),
      Q => Q(3),
      R => '0'
    );
\prbs_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => prbs_out_i(4),
      Q => Q(4),
      R => '0'
    );
\prbs_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => prbs_out_i(5),
      Q => Q(5),
      R => '0'
    );
\prbs_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => prbs_out_i(6),
      Q => Q(6),
      R => '0'
    );
\prbs_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => prbs_out_i(7),
      Q => Q(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_prbs15_bytegenerator_0_0_prbs15_bytegenerator is
  port (
    data_out_p : out STD_LOGIC;
    data_out_n : out STD_LOGIC;
    clk : in STD_LOGIC;
    clk_div4 : in STD_LOGIC;
    resetb : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_prbs15_bytegenerator_0_0_prbs15_bytegenerator : entity is "prbs15_bytegenerator";
end tester_prbs15_bytegenerator_0_0_prbs15_bytegenerator;

architecture STRUCTURE of tester_prbs15_bytegenerator_0_0_prbs15_bytegenerator is
  signal data_out : STD_LOGIC;
  signal prbs_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal prbsbyte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \prbsbyte[0]_i_1_n_0\ : STD_LOGIC;
  signal \prbsbyte[1]_i_1_n_0\ : STD_LOGIC;
  signal \prbsbyte[2]_i_1_n_0\ : STD_LOGIC;
  signal \prbsbyte[3]_i_1_n_0\ : STD_LOGIC;
  signal \prbsbyte[4]_i_1_n_0\ : STD_LOGIC;
  signal \prbsbyte[5]_i_1_n_0\ : STD_LOGIC;
  signal \prbsbyte[6]_i_1_n_0\ : STD_LOGIC;
  signal \prbsbyte[7]_i_1_n_0\ : STD_LOGIC;
  signal \prbsbyte[7]_i_2_n_0\ : STD_LOGIC;
  signal was_resetb : STD_LOGIC;
  signal NLW_oserdes_inst_T_OUT_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of oserdes_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of outputbuf : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of outputbuf : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of outputbuf : label is "OBUFDS";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \prbsbyte[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \prbsbyte[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \prbsbyte[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \prbsbyte[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \prbsbyte[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \prbsbyte[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \prbsbyte[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \prbsbyte[7]_i_2\ : label is "soft_lutpair7";
begin
byteGen: entity work.tester_prbs15_bytegenerator_0_0_prbs15_byte
     port map (
      D(7 downto 0) => prbsbyte(7 downto 0),
      Q(7 downto 0) => prbs_out(7 downto 0),
      clk_div4 => clk_div4
    );
oserdes_inst: unisim.vcomponents.OSERDESE3
    generic map(
      DATA_WIDTH => 8,
      INIT => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_RST_INVERTED => '1',
      ODDR_MODE => "FALSE",
      OSERDES_D_BYPASS => "FALSE",
      OSERDES_T_BYPASS => "FALSE",
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_VERSION => 2.000000
    )
        port map (
      CLK => clk,
      CLKDIV => clk_div4,
      D(7 downto 0) => prbsbyte(7 downto 0),
      OQ => data_out,
      RST => resetb,
      T => '0',
      T_OUT => NLW_oserdes_inst_T_OUT_UNCONNECTED
    );
outputbuf: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => data_out,
      O => data_out_p,
      OB => data_out_n
    );
\prbsbyte[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => was_resetb,
      I1 => prbs_out(0),
      O => \prbsbyte[0]_i_1_n_0\
    );
\prbsbyte[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => prbs_out(1),
      I1 => was_resetb,
      O => \prbsbyte[1]_i_1_n_0\
    );
\prbsbyte[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => was_resetb,
      I1 => prbs_out(2),
      O => \prbsbyte[2]_i_1_n_0\
    );
\prbsbyte[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => was_resetb,
      I1 => prbs_out(3),
      O => \prbsbyte[3]_i_1_n_0\
    );
\prbsbyte[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => was_resetb,
      I1 => prbs_out(4),
      O => \prbsbyte[4]_i_1_n_0\
    );
\prbsbyte[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => was_resetb,
      I1 => prbs_out(5),
      O => \prbsbyte[5]_i_1_n_0\
    );
\prbsbyte[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => was_resetb,
      I1 => prbs_out(6),
      O => \prbsbyte[6]_i_1_n_0\
    );
\prbsbyte[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetb,
      O => \prbsbyte[7]_i_1_n_0\
    );
\prbsbyte[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => was_resetb,
      I1 => prbs_out(7),
      O => \prbsbyte[7]_i_2_n_0\
    );
\prbsbyte_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_div4,
      CE => '1',
      D => \prbsbyte[0]_i_1_n_0\,
      Q => prbsbyte(0),
      R => \prbsbyte[7]_i_1_n_0\
    );
\prbsbyte_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_div4,
      CE => '1',
      D => \prbsbyte[1]_i_1_n_0\,
      Q => prbsbyte(1),
      R => \prbsbyte[7]_i_1_n_0\
    );
\prbsbyte_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_div4,
      CE => '1',
      D => \prbsbyte[2]_i_1_n_0\,
      Q => prbsbyte(2),
      R => \prbsbyte[7]_i_1_n_0\
    );
\prbsbyte_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_div4,
      CE => '1',
      D => \prbsbyte[3]_i_1_n_0\,
      Q => prbsbyte(3),
      R => \prbsbyte[7]_i_1_n_0\
    );
\prbsbyte_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_div4,
      CE => '1',
      D => \prbsbyte[4]_i_1_n_0\,
      Q => prbsbyte(4),
      R => \prbsbyte[7]_i_1_n_0\
    );
\prbsbyte_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_div4,
      CE => '1',
      D => \prbsbyte[5]_i_1_n_0\,
      Q => prbsbyte(5),
      R => \prbsbyte[7]_i_1_n_0\
    );
\prbsbyte_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_div4,
      CE => '1',
      D => \prbsbyte[6]_i_1_n_0\,
      Q => prbsbyte(6),
      R => \prbsbyte[7]_i_1_n_0\
    );
\prbsbyte_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_div4,
      CE => '1',
      D => \prbsbyte[7]_i_2_n_0\,
      Q => prbsbyte(7),
      R => \prbsbyte[7]_i_1_n_0\
    );
was_resetb_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_div4,
      CE => '1',
      D => resetb,
      Q => was_resetb,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_prbs15_bytegenerator_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_div4 : in STD_LOGIC;
    resetb : in STD_LOGIC;
    data_out_p : out STD_LOGIC;
    data_out_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of tester_prbs15_bytegenerator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of tester_prbs15_bytegenerator_0_0 : entity is "tester_prbs15_bytegenerator_0_0,prbs15_bytegenerator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of tester_prbs15_bytegenerator_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of tester_prbs15_bytegenerator_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of tester_prbs15_bytegenerator_0_0 : entity is "prbs15_bytegenerator,Vivado 2018.3";
end tester_prbs15_bytegenerator_0_0;

architecture STRUCTURE of tester_prbs15_bytegenerator_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetb:reset, FREQ_HZ 160000000, PHASE 0.0, CLK_DOMAIN tester_clk_wiz_0_0_clk_320, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetb : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of resetb : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.tester_prbs15_bytegenerator_0_0_prbs15_bytegenerator
     port map (
      clk => clk,
      clk_div4 => clk_div4,
      data_out_n => data_out_n,
      data_out_p => data_out_p,
      resetb => resetb
    );
end STRUCTURE;
