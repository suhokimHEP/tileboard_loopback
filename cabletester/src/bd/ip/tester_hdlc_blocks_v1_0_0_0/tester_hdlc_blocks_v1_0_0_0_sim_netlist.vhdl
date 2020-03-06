-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct 29 14:12:53 2019
-- Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_hdlc_blocks_v1_0_0_0/tester_hdlc_blocks_v1_0_0_0_sim_netlist.vhdl
-- Design      : tester_hdlc_blocks_v1_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu2cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_hdlc_blocks_v1_0_0_0_hdlc_crc is
  port (
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    crc_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[7]\ : out STD_LOGIC;
    \lfsr_q_reg[7]_0\ : out STD_LOGIC;
    \srOutWord_reg[10]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    DOUTBDOUT : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \srOutWord_reg[9]\ : in STD_LOGIC;
    \srOutWord_reg[12]\ : in STD_LOGIC;
    \srOutWord_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    link_clk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lfsr_q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_hdlc_blocks_v1_0_0_0_hdlc_crc : entity is "hdlc_crc";
end tester_hdlc_blocks_v1_0_0_0_hdlc_crc;

architecture STRUCTURE of tester_hdlc_blocks_v1_0_0_0_hdlc_crc is
  signal crc_fcs : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \^crc_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lfsr_c : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lfsr_q[10]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[11]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[12]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[13]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[13]_i_3_n_0\ : STD_LOGIC;
  signal \lfsr_q[14]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[14]_i_3_n_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \lfsr_q[8]_i_4_n_0\ : STD_LOGIC;
  signal \lfsr_q[8]_i_5_n_0\ : STD_LOGIC;
  signal \lfsr_q[9]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[9]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lfsr_q[10]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \lfsr_q[11]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \lfsr_q[14]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \lfsr_q[14]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \lfsr_q[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \lfsr_q[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \lfsr_q[8]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \lfsr_q[8]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \lfsr_q[9]_i_2\ : label is "soft_lutpair30";
begin
  crc_out(0) <= \^crc_out\(0);
\lfsr_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => crc_fcs(4),
      I1 => \lfsr_q_reg[0]_0\(4),
      I2 => crc_fcs(15),
      I3 => \lfsr_q_reg[0]_0\(15),
      I4 => \lfsr_q[9]_i_3_n_0\,
      O => lfsr_c(0)
    );
\lfsr_q[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \lfsr_q[10]_i_2_n_0\,
      I1 => \lfsr_q_reg[0]_0\(5),
      I2 => crc_fcs(5),
      I3 => crc_fcs(1),
      I4 => \lfsr_q_reg[0]_0\(1),
      O => lfsr_c(10)
    );
\lfsr_q[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => crc_fcs(2),
      I1 => \lfsr_q_reg[0]_0\(2),
      I2 => crc_fcs(6),
      I3 => \lfsr_q_reg[0]_0\(6),
      I4 => \lfsr_q_reg[0]_0\(10),
      I5 => crc_fcs(10),
      O => \lfsr_q[10]_i_2_n_0\
    );
\lfsr_q[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => crc_fcs(4),
      I1 => \lfsr_q_reg[0]_0\(4),
      I2 => \^crc_out\(0),
      I3 => \lfsr_q_reg[0]_0\(0),
      I4 => \lfsr_q[11]_i_2_n_0\,
      O => lfsr_c(11)
    );
\lfsr_q[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q_reg[0]_0\(5),
      I1 => crc_fcs(5),
      I2 => crc_fcs(1),
      I3 => \lfsr_q_reg[0]_0\(1),
      I4 => crc_fcs(9),
      I5 => \lfsr_q_reg[0]_0\(9),
      O => \lfsr_q[11]_i_2_n_0\
    );
\lfsr_q[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \lfsr_q[12]_i_2_n_0\,
      I1 => \lfsr_q_reg[0]_0\(8),
      I2 => crc_fcs(8),
      I3 => \lfsr_q_reg[0]_0\(11),
      I4 => crc_fcs(11),
      O => lfsr_c(12)
    );
\lfsr_q[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q_reg[0]_0\(15),
      I1 => crc_fcs(15),
      I2 => \^crc_out\(0),
      I3 => \lfsr_q_reg[0]_0\(0),
      I4 => crc_fcs(7),
      I5 => \lfsr_q_reg[0]_0\(7),
      O => \lfsr_q[12]_i_2_n_0\
    );
\lfsr_q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[13]_i_2_n_0\,
      I1 => crc_fcs(7),
      I2 => \lfsr_q_reg[0]_0\(7),
      I3 => crc_fcs(10),
      I4 => \lfsr_q_reg[0]_0\(10),
      I5 => \lfsr_q[13]_i_3_n_0\,
      O => lfsr_c(13)
    );
\lfsr_q[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => crc_fcs(6),
      I1 => \lfsr_q_reg[0]_0\(6),
      O => \lfsr_q[13]_i_2_n_0\
    );
\lfsr_q[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => crc_fcs(14),
      I1 => \lfsr_q_reg[0]_0\(14),
      O => \lfsr_q[13]_i_3_n_0\
    );
\lfsr_q[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[14]_i_2_n_0\,
      I1 => crc_fcs(6),
      I2 => \lfsr_q_reg[0]_0\(6),
      I3 => \lfsr_q_reg[0]_0\(9),
      I4 => crc_fcs(9),
      I5 => \lfsr_q[14]_i_3_n_0\,
      O => lfsr_c(14)
    );
\lfsr_q[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lfsr_q_reg[0]_0\(5),
      I1 => crc_fcs(5),
      O => \lfsr_q[14]_i_2_n_0\
    );
\lfsr_q[14]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => crc_fcs(13),
      I1 => \lfsr_q_reg[0]_0\(13),
      O => \lfsr_q[14]_i_3_n_0\
    );
\lfsr_q[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \lfsr_q_reg[0]_0\(5),
      I1 => crc_fcs(5),
      I2 => \lfsr_q_reg[0]_0\(12),
      I3 => crc_fcs(12),
      I4 => \lfsr_q[15]_i_2_n_0\,
      O => lfsr_c(15)
    );
\lfsr_q[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => crc_fcs(8),
      I1 => \lfsr_q_reg[0]_0\(8),
      I2 => \lfsr_q_reg[0]_0\(4),
      I3 => crc_fcs(4),
      O => \lfsr_q[15]_i_2_n_0\
    );
\lfsr_q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => crc_fcs(3),
      I1 => \lfsr_q_reg[0]_0\(3),
      I2 => crc_fcs(14),
      I3 => \lfsr_q_reg[0]_0\(14),
      I4 => \lfsr_q[10]_i_2_n_0\,
      O => lfsr_c(1)
    );
\lfsr_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => crc_fcs(2),
      I1 => \lfsr_q_reg[0]_0\(2),
      I2 => crc_fcs(13),
      I3 => \lfsr_q_reg[0]_0\(13),
      I4 => \lfsr_q[11]_i_2_n_0\,
      O => lfsr_c(2)
    );
\lfsr_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \lfsr_q_reg[0]_0\(12),
      I1 => crc_fcs(12),
      I2 => crc_fcs(1),
      I3 => \lfsr_q_reg[0]_0\(1),
      I4 => \lfsr_q[8]_i_5_n_0\,
      O => lfsr_c(3)
    );
\lfsr_q[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \lfsr_q[9]_i_3_n_0\,
      I1 => \lfsr_q_reg[0]_0\(0),
      I2 => \^crc_out\(0),
      O => lfsr_c(4)
    );
\lfsr_q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => crc_fcs(4),
      I1 => \lfsr_q_reg[0]_0\(4),
      I2 => \lfsr_q[10]_i_2_n_0\,
      I3 => \lfsr_q[9]_i_3_n_0\,
      I4 => crc_fcs(15),
      I5 => \lfsr_q_reg[0]_0\(15),
      O => lfsr_c(5)
    );
\lfsr_q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => crc_fcs(3),
      I1 => \lfsr_q_reg[0]_0\(3),
      I2 => \lfsr_q[10]_i_2_n_0\,
      I3 => \lfsr_q[11]_i_2_n_0\,
      I4 => crc_fcs(14),
      I5 => \lfsr_q_reg[0]_0\(14),
      O => lfsr_c(6)
    );
\lfsr_q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => crc_fcs(2),
      I1 => \lfsr_q_reg[0]_0\(2),
      I2 => \lfsr_q[11]_i_2_n_0\,
      I3 => crc_fcs(13),
      I4 => \lfsr_q_reg[0]_0\(13),
      I5 => \lfsr_q[8]_i_5_n_0\,
      O => lfsr_c(7)
    );
\lfsr_q[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[8]_i_2_n_0\,
      I1 => \lfsr_q_reg[0]_0\(7),
      I2 => crc_fcs(7),
      I3 => \lfsr_q[8]_i_3_n_0\,
      I4 => \lfsr_q[8]_i_4_n_0\,
      I5 => \lfsr_q[8]_i_5_n_0\,
      O => lfsr_c(8)
    );
\lfsr_q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => crc_fcs(1),
      I1 => \lfsr_q_reg[0]_0\(1),
      O => \lfsr_q[8]_i_2_n_0\
    );
\lfsr_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => crc_fcs(3),
      I1 => \lfsr_q_reg[0]_0\(3),
      O => \lfsr_q[8]_i_3_n_0\
    );
\lfsr_q[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lfsr_q_reg[0]_0\(12),
      I1 => crc_fcs(12),
      O => \lfsr_q[8]_i_4_n_0\
    );
\lfsr_q[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => crc_fcs(4),
      I1 => \lfsr_q_reg[0]_0\(4),
      I2 => \lfsr_q_reg[0]_0\(8),
      I3 => crc_fcs(8),
      I4 => \lfsr_q_reg[0]_0\(0),
      I5 => \^crc_out\(0),
      O => \lfsr_q[8]_i_5_n_0\
    );
\lfsr_q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[9]_i_2_n_0\,
      I1 => \lfsr_q_reg[0]_0\(6),
      I2 => crc_fcs(6),
      I3 => \lfsr_q_reg[0]_0\(2),
      I4 => crc_fcs(2),
      I5 => \lfsr_q[9]_i_3_n_0\,
      O => lfsr_c(9)
    );
\lfsr_q[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^crc_out\(0),
      I1 => \lfsr_q_reg[0]_0\(0),
      O => \lfsr_q[9]_i_2_n_0\
    );
\lfsr_q[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => crc_fcs(3),
      I1 => \lfsr_q_reg[0]_0\(3),
      I2 => crc_fcs(7),
      I3 => \lfsr_q_reg[0]_0\(7),
      I4 => crc_fcs(11),
      I5 => \lfsr_q_reg[0]_0\(11),
      O => \lfsr_q[9]_i_3_n_0\
    );
\lfsr_q_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(0),
      PRE => AS(0),
      Q => crc_fcs(15)
    );
\lfsr_q_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(10),
      PRE => AS(0),
      Q => crc_fcs(5)
    );
\lfsr_q_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(11),
      PRE => AS(0),
      Q => crc_fcs(4)
    );
\lfsr_q_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(12),
      PRE => AS(0),
      Q => crc_fcs(3)
    );
\lfsr_q_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(13),
      PRE => AS(0),
      Q => crc_fcs(2)
    );
\lfsr_q_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(14),
      PRE => AS(0),
      Q => crc_fcs(1)
    );
\lfsr_q_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(15),
      PRE => AS(0),
      Q => \^crc_out\(0)
    );
\lfsr_q_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(1),
      PRE => AS(0),
      Q => crc_fcs(14)
    );
\lfsr_q_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(2),
      PRE => AS(0),
      Q => crc_fcs(13)
    );
\lfsr_q_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(3),
      PRE => AS(0),
      Q => crc_fcs(12)
    );
\lfsr_q_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(4),
      PRE => AS(0),
      Q => crc_fcs(11)
    );
\lfsr_q_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(5),
      PRE => AS(0),
      Q => crc_fcs(10)
    );
\lfsr_q_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(6),
      PRE => AS(0),
      Q => crc_fcs(9)
    );
\lfsr_q_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(7),
      PRE => AS(0),
      Q => crc_fcs(8)
    );
\lfsr_q_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(8),
      PRE => AS(0),
      Q => crc_fcs(7)
    );
\lfsr_q_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(9),
      PRE => AS(0),
      Q => crc_fcs(6)
    );
\srOutWord[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \srOutWord_reg[10]\,
      I1 => crc_fcs(10),
      I2 => Q(5),
      I3 => Q(1),
      I4 => DOUTBDOUT(8),
      O => D(8)
    );
\srOutWord[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => Q(5),
      I1 => crc_fcs(11),
      I2 => Q(6),
      I3 => Q(4),
      I4 => Q(0),
      O => \FSM_onehot_state_reg[7]\
    );
\srOutWord[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \srOutWord_reg[12]\,
      I1 => crc_fcs(12),
      I2 => Q(5),
      I3 => Q(1),
      I4 => DOUTBDOUT(9),
      O => D(9)
    );
\srOutWord[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \srOutWord_reg[9]\,
      I1 => crc_fcs(13),
      I2 => Q(5),
      I3 => Q(1),
      I4 => DOUTBDOUT(10),
      O => D(10)
    );
\srOutWord[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \srOutWord_reg[10]\,
      I1 => crc_fcs(14),
      I2 => Q(5),
      I3 => DOUTBDOUT(11),
      I4 => Q(1),
      O => D(11)
    );
\srOutWord[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => Q(2),
      I1 => \srOutWord_reg[15]\(0),
      I2 => Q(5),
      I3 => crc_fcs(15),
      I4 => DOUTBDOUT(12),
      I5 => Q(1),
      O => D(12)
    );
\srOutWord[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \srOutWord_reg[12]\,
      I1 => crc_fcs(1),
      I2 => Q(5),
      I3 => Q(1),
      I4 => DOUTBDOUT(0),
      O => D(0)
    );
\srOutWord[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \srOutWord_reg[12]\,
      I1 => crc_fcs(2),
      I2 => Q(5),
      I3 => Q(1),
      I4 => DOUTBDOUT(1),
      O => D(1)
    );
\srOutWord[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \srOutWord_reg[12]\,
      I1 => crc_fcs(3),
      I2 => Q(5),
      I3 => Q(1),
      I4 => DOUTBDOUT(2),
      O => D(2)
    );
\srOutWord[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \srOutWord_reg[12]\,
      I1 => crc_fcs(4),
      I2 => Q(5),
      I3 => Q(1),
      I4 => DOUTBDOUT(3),
      O => D(3)
    );
\srOutWord[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \srOutWord_reg[12]\,
      I1 => crc_fcs(5),
      I2 => Q(5),
      I3 => Q(1),
      I4 => DOUTBDOUT(4),
      O => D(4)
    );
\srOutWord[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \srOutWord_reg[12]\,
      I1 => crc_fcs(6),
      I2 => Q(5),
      I3 => Q(1),
      I4 => DOUTBDOUT(5),
      O => D(5)
    );
\srOutWord[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => crc_fcs(7),
      I1 => Q(5),
      I2 => DOUTBDOUT(6),
      I3 => Q(1),
      O => D(6)
    );
\srOutWord[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => crc_fcs(8),
      I1 => Q(5),
      I2 => Q(3),
      O => \lfsr_q_reg[7]_0\
    );
\srOutWord[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \srOutWord_reg[9]\,
      I1 => crc_fcs(9),
      I2 => Q(5),
      I3 => Q(1),
      I4 => DOUTBDOUT(7),
      O => D(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_hdlc_blocks_v1_0_0_0_hdlc_crc_1 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lfsr_q_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \lfsr_q_reg[2]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \lfsr_q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \lfsr_q_reg[7]_0\ : in STD_LOGIC;
    \lfsr_q_reg[8]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    link_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_hdlc_blocks_v1_0_0_0_hdlc_crc_1 : entity is "hdlc_crc";
end tester_hdlc_blocks_v1_0_0_0_hdlc_crc_1;

architecture STRUCTURE of tester_hdlc_blocks_v1_0_0_0_hdlc_crc_1 is
  signal \^as\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lfsr_c : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lfsr_q[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[13]_i_2__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[13]_i_3__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_3_n_0\ : STD_LOGIC;
  signal \lfsr_q[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[8]_i_5__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \^lfsr_q_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lfsr_q[3]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lfsr_q[4]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \lfsr_q[8]_i_2__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lfsr_q[8]_i_3__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lfsr_q[9]_i_2__0\ : label is "soft_lutpair10";
begin
  AS(0) <= \^as\(0);
  \lfsr_q_reg[15]_0\(15 downto 0) <= \^lfsr_q_reg[15]_0\(15 downto 0);
\lfsr_q[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(11),
      I1 => \lfsr_q_reg[0]_0\(4),
      I2 => \^lfsr_q_reg[15]_0\(0),
      I3 => \lfsr_q_reg[0]_0\(14),
      I4 => \lfsr_q[9]_i_3__0_n_0\,
      O => lfsr_c(0)
    );
\lfsr_q[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \lfsr_q[10]_i_2__0_n_0\,
      I1 => \lfsr_q_reg[0]_0\(5),
      I2 => \^lfsr_q_reg[15]_0\(10),
      I3 => \^lfsr_q_reg[15]_0\(14),
      I4 => \lfsr_q_reg[0]_0\(1),
      O => lfsr_c(10)
    );
\lfsr_q[10]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(13),
      I1 => \lfsr_q_reg[0]_0\(2),
      I2 => \^lfsr_q_reg[15]_0\(9),
      I3 => \lfsr_q_reg[0]_0\(6),
      I4 => \lfsr_q_reg[0]_0\(9),
      I5 => \^lfsr_q_reg[15]_0\(5),
      O => \lfsr_q[10]_i_2__0_n_0\
    );
\lfsr_q[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[13]_i_2__0_n_0\,
      I1 => \^lfsr_q_reg[15]_0\(8),
      I2 => \lfsr_q_reg[0]_0\(7),
      I3 => \^lfsr_q_reg[15]_0\(5),
      I4 => \lfsr_q_reg[0]_0\(9),
      I5 => \lfsr_q[13]_i_3__0_n_0\,
      O => lfsr_c(13)
    );
\lfsr_q[13]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(9),
      I1 => \lfsr_q_reg[0]_0\(6),
      O => \lfsr_q[13]_i_2__0_n_0\
    );
\lfsr_q[13]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(1),
      I1 => \lfsr_q_reg[0]_0\(13),
      O => \lfsr_q[13]_i_3__0_n_0\
    );
\lfsr_q[14]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(2),
      I1 => \lfsr_q_reg[0]_0\(12),
      O => \lfsr_q_reg[2]_0\
    );
\lfsr_q[15]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \lfsr_q_reg[0]_0\(5),
      I1 => \^lfsr_q_reg[15]_0\(10),
      I2 => \lfsr_q_reg[0]_0\(11),
      I3 => \^lfsr_q_reg[15]_0\(3),
      I4 => \lfsr_q[15]_i_3_n_0\,
      O => lfsr_c(15)
    );
\lfsr_q[15]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      O => \^as\(0)
    );
\lfsr_q[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(7),
      I1 => \lfsr_q_reg[0]_0\(8),
      I2 => \lfsr_q_reg[0]_0\(4),
      I3 => \^lfsr_q_reg[15]_0\(11),
      O => \lfsr_q[15]_i_3_n_0\
    );
\lfsr_q[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(12),
      I1 => \lfsr_q_reg[0]_0\(3),
      I2 => \^lfsr_q_reg[15]_0\(1),
      I3 => \lfsr_q_reg[0]_0\(13),
      I4 => \lfsr_q[10]_i_2__0_n_0\,
      O => lfsr_c(1)
    );
\lfsr_q[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \lfsr_q_reg[0]_0\(11),
      I1 => \^lfsr_q_reg[15]_0\(3),
      I2 => \^lfsr_q_reg[15]_0\(14),
      I3 => \lfsr_q_reg[0]_0\(1),
      I4 => \lfsr_q[8]_i_5__0_n_0\,
      O => lfsr_c(3)
    );
\lfsr_q[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \lfsr_q[9]_i_3__0_n_0\,
      I1 => \lfsr_q_reg[0]_0\(0),
      I2 => \^lfsr_q_reg[15]_0\(15),
      O => lfsr_c(4)
    );
\lfsr_q[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(11),
      I1 => \lfsr_q_reg[0]_0\(4),
      I2 => \lfsr_q[10]_i_2__0_n_0\,
      I3 => \lfsr_q[9]_i_3__0_n_0\,
      I4 => \^lfsr_q_reg[15]_0\(0),
      I5 => \lfsr_q_reg[0]_0\(14),
      O => lfsr_c(5)
    );
\lfsr_q[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(12),
      I1 => \lfsr_q_reg[0]_0\(3),
      I2 => \lfsr_q[10]_i_2__0_n_0\,
      I3 => \lfsr_q_reg[7]_0\,
      I4 => \^lfsr_q_reg[15]_0\(1),
      I5 => \lfsr_q_reg[0]_0\(13),
      O => lfsr_c(6)
    );
\lfsr_q[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(13),
      I1 => \lfsr_q_reg[0]_0\(2),
      I2 => \lfsr_q_reg[7]_0\,
      I3 => \^lfsr_q_reg[15]_0\(2),
      I4 => \lfsr_q_reg[0]_0\(12),
      I5 => \lfsr_q[8]_i_5__0_n_0\,
      O => lfsr_c(7)
    );
\lfsr_q[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[8]_i_2__0_n_0\,
      I1 => \lfsr_q_reg[0]_0\(7),
      I2 => \^lfsr_q_reg[15]_0\(8),
      I3 => \lfsr_q[8]_i_3__0_n_0\,
      I4 => \lfsr_q_reg[8]_0\,
      I5 => \lfsr_q[8]_i_5__0_n_0\,
      O => lfsr_c(8)
    );
\lfsr_q[8]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(14),
      I1 => \lfsr_q_reg[0]_0\(1),
      O => \lfsr_q[8]_i_2__0_n_0\
    );
\lfsr_q[8]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(12),
      I1 => \lfsr_q_reg[0]_0\(3),
      O => \lfsr_q[8]_i_3__0_n_0\
    );
\lfsr_q[8]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(11),
      I1 => \lfsr_q_reg[0]_0\(4),
      I2 => \lfsr_q_reg[0]_0\(8),
      I3 => \^lfsr_q_reg[15]_0\(7),
      I4 => \lfsr_q_reg[0]_0\(0),
      I5 => \^lfsr_q_reg[15]_0\(15),
      O => \lfsr_q[8]_i_5__0_n_0\
    );
\lfsr_q[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[9]_i_2__0_n_0\,
      I1 => \lfsr_q_reg[0]_0\(6),
      I2 => \^lfsr_q_reg[15]_0\(9),
      I3 => \lfsr_q_reg[0]_0\(2),
      I4 => \^lfsr_q_reg[15]_0\(13),
      I5 => \lfsr_q[9]_i_3__0_n_0\,
      O => lfsr_c(9)
    );
\lfsr_q[9]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(15),
      I1 => \lfsr_q_reg[0]_0\(0),
      O => \lfsr_q[9]_i_2__0_n_0\
    );
\lfsr_q[9]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(12),
      I1 => \lfsr_q_reg[0]_0\(3),
      I2 => \^lfsr_q_reg[15]_0\(8),
      I3 => \lfsr_q_reg[0]_0\(7),
      I4 => \^lfsr_q_reg[15]_0\(4),
      I5 => \lfsr_q_reg[0]_0\(10),
      O => \lfsr_q[9]_i_3__0_n_0\
    );
\lfsr_q_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(0),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(0)
    );
\lfsr_q_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(10),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(10)
    );
\lfsr_q_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => D(1),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(11)
    );
\lfsr_q_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => D(2),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(12)
    );
\lfsr_q_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(13),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(13)
    );
\lfsr_q_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => D(3),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(14)
    );
\lfsr_q_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(15),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(15)
    );
\lfsr_q_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(1),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(1)
    );
\lfsr_q_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => D(0),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(2)
    );
\lfsr_q_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(3),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(3)
    );
\lfsr_q_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(4),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(4)
    );
\lfsr_q_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(5),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(5)
    );
\lfsr_q_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(6),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(6)
    );
\lfsr_q_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(7),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(7)
    );
\lfsr_q_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(8),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(8)
    );
\lfsr_q_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => link_clk,
      CE => E(0),
      D => lfsr_c(9),
      PRE => \^as\(0),
      Q => \^lfsr_q_reg[15]_0\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_hdlc_blocks_v1_0_0_0_hdlc_fifo is
  port (
    DOUTADOUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DOUTBDOUT : out STD_LOGIC_VECTOR ( 13 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetW_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_empty : out STD_LOGIC;
    full : out STD_LOGIC;
    reset_ns : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_state_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    buffer_reg_bram_0_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_r : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    buffer_reg_bram_0_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \srOutWord_reg[8]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \srOutWord_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \srOutWord_reg[11]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \srOutWord_reg[11]_0\ : in STD_LOGIC;
    \srOutWord_reg[8]_0\ : in STD_LOGIC;
    req_tx : in STD_LOGIC;
    \state2__4\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wptr_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_hdlc_blocks_v1_0_0_0_hdlc_fifo : entity is "hdlc_fifo";
end tester_hdlc_blocks_v1_0_0_0_hdlc_fifo;

architecture STRUCTURE of tester_hdlc_blocks_v1_0_0_0_hdlc_fifo is
  signal \^doutbdout\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal buf_to_tx : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal \empty0__0\ : STD_LOGIC;
  signal \^fifo_empty\ : STD_LOGIC;
  signal \full0__0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal p_1_in : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \^resetw_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \rptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \rptr[2]_i_1_n_0\ : STD_LOGIC;
  signal we_tx : STD_LOGIC;
  signal wptr_next : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_buffer_reg_bram_0_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_buffer_reg_bram_0_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_buffer_reg_bram_0_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_buffer_reg_bram_0_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_buffer_reg_bram_0_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_buffer_reg_bram_0_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of buffer_reg_bram_0 : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of buffer_reg_bram_0 : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of buffer_reg_bram_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of buffer_reg_bram_0 : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of buffer_reg_bram_0 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of buffer_reg_bram_0 : label is "buffer";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of buffer_reg_bram_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of buffer_reg_bram_0 : label is 63;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of buffer_reg_bram_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of buffer_reg_bram_0 : label is 15;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of buffer_reg_bram_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of buffer_reg_bram_0 : label is 63;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of buffer_reg_bram_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of buffer_reg_bram_0 : label is 15;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rptr[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rptr[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \wptr[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \wptr[2]_i_1\ : label is "soft_lutpair28";
begin
  DOUTBDOUT(13 downto 0) <= \^doutbdout\(13 downto 0);
  SR(0) <= \^sr\(0);
  fifo_empty <= \^fifo_empty\;
  resetW_reg_0(0) <= \^resetw_reg_0\(0);
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \srOutWord_reg[8]\(4),
      I1 => \^fifo_empty\,
      I2 => req_tx,
      I3 => \state2__4\,
      O => \FSM_onehot_state_reg[6]\(0)
    );
buffer_reg_bram_0: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 10) => B"1111",
      ADDRARDADDR(9 downto 7) => p_0_in(5 downto 3),
      ADDRARDADDR(6 downto 4) => Q(2 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 10) => B"1111",
      ADDRBWRADDR(9 downto 7) => p_1_in(5 downto 3),
      ADDRBWRADDR(6 downto 4) => buffer_reg_bram_0_0(2 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(15 downto 0) => NLW_buffer_reg_bram_0_CASDOUTA_UNCONNECTED(15 downto 0),
      CASDOUTB(15 downto 0) => NLW_buffer_reg_bram_0_CASDOUTB_UNCONNECTED(15 downto 0),
      CASDOUTPA(1 downto 0) => NLW_buffer_reg_bram_0_CASDOUTPA_UNCONNECTED(1 downto 0),
      CASDOUTPB(1 downto 0) => NLW_buffer_reg_bram_0_CASDOUTPB_UNCONNECTED(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => link_clk,
      DINADIN(15 downto 0) => s00_axi_wdata(15 downto 0),
      DINBDIN(15 downto 0) => B"1111111111111111",
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"00",
      DOUTADOUT(15 downto 0) => DOUTADOUT(15 downto 0),
      DOUTBDOUT(15 downto 12) => \^doutbdout\(13 downto 10),
      DOUTBDOUT(11) => buf_to_tx(11),
      DOUTBDOUT(10 downto 9) => \^doutbdout\(9 downto 8),
      DOUTBDOUT(8) => buf_to_tx(8),
      DOUTBDOUT(7 downto 0) => \^doutbdout\(7 downto 0),
      DOUTPADOUTP(1 downto 0) => NLW_buffer_reg_bram_0_DOUTPADOUTP_UNCONNECTED(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => NLW_buffer_reg_bram_0_DOUTPBDOUTP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1) => we_tx,
      WEA(0) => we_tx,
      WEBWE(3 downto 0) => B"0000"
    );
buffer_reg_bram_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => buffer_reg_bram_0_1(0),
      I2 => s00_axi_wstrb(0),
      I3 => Q(3),
      O => we_tx
    );
empty0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_1_in(3),
      I2 => p_1_in(5),
      I3 => p_0_in(5),
      I4 => p_1_in(4),
      I5 => p_0_in(4),
      O => \empty0__0\
    );
empty_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => \empty0__0\,
      Q => \^fifo_empty\,
      R => '0'
    );
full0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0041820014000082"
    )
        port map (
      I0 => p_1_in(3),
      I1 => p_1_in(5),
      I2 => p_0_in(5),
      I3 => p_0_in(4),
      I4 => p_0_in(3),
      I5 => p_1_in(4),
      O => \full0__0\
    );
full_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \full0__0\,
      Q => full,
      R => '0'
    );
resetR_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => reset_r,
      Q => \^sr\(0),
      R => '0'
    );
resetW_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => reset_r,
      Q => \^resetw_reg_0\(0),
      R => '0'
    );
reset_ns_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \srOutWord_reg[8]\(3),
      I1 => \^doutbdout\(12),
      O => reset_ns
    );
\rptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in(3),
      O => \rptr[0]_i_1_n_0\
    );
\rptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(3),
      I1 => p_1_in(4),
      O => \rptr[1]_i_1_n_0\
    );
\rptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_1_in(3),
      I1 => p_1_in(4),
      I2 => p_1_in(5),
      O => \rptr[2]_i_1_n_0\
    );
\rptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => E(0),
      D => \rptr[0]_i_1_n_0\,
      Q => p_1_in(3),
      R => \^sr\(0)
    );
\rptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => E(0),
      D => \rptr[1]_i_1_n_0\,
      Q => p_1_in(4),
      R => \^sr\(0)
    );
\rptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => E(0),
      D => \rptr[2]_i_1_n_0\,
      Q => p_1_in(5),
      R => \^sr\(0)
    );
\srOutWord[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \srOutWord_reg[8]\(4),
      I1 => \srOutWord_reg[8]\(0),
      I2 => \^doutbdout\(0),
      I3 => \srOutWord_reg[8]\(1),
      I4 => \srOutWord_reg[8]\(5),
      I5 => \srOutWord_reg[0]\(0),
      O => D(0)
    );
\srOutWord[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => buf_to_tx(11),
      I1 => \srOutWord_reg[8]\(1),
      I2 => \srOutWord_reg[11]\(0),
      I3 => \srOutWord_reg[8]\(2),
      I4 => \srOutWord_reg[11]_0\,
      O => D(2)
    );
\srOutWord[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => \srOutWord_reg[8]\(1),
      I1 => buf_to_tx(8),
      I2 => \srOutWord_reg[8]\(4),
      I3 => \srOutWord_reg[8]\(6),
      I4 => \srOutWord_reg[8]_0\,
      O => D(1)
    );
\wptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(3),
      O => wptr_next(0)
    );
\wptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(4),
      O => wptr_next(1)
    );
\wptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(4),
      I2 => p_0_in(5),
      O => wptr_next(2)
    );
\wptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wptr_reg[2]_0\(0),
      D => wptr_next(0),
      Q => p_0_in(3),
      R => \^resetw_reg_0\(0)
    );
\wptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wptr_reg[2]_0\(0),
      D => wptr_next(1),
      Q => p_0_in(4),
      R => \^resetw_reg_0\(0)
    );
\wptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \wptr_reg[2]_0\(0),
      D => wptr_next(2),
      Q => p_0_in(5),
      R => \^resetw_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_hdlc_blocks_v1_0_0_0_hdlc_fifo_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    link_clk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[12]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DINADIN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[14]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DOUTADOUT : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \axi_rdata_reg[14]_0\ : in STD_LOGIC;
    full : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wptr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wptr_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_hdlc_blocks_v1_0_0_0_hdlc_fifo_0 : entity is "hdlc_fifo";
end tester_hdlc_blocks_v1_0_0_0_hdlc_fifo_0;

architecture STRUCTURE of tester_hdlc_blocks_v1_0_0_0_hdlc_fifo_0 is
  signal buffer_reg_bram_0_n_32 : STD_LOGIC;
  signal buffer_reg_bram_0_n_33 : STD_LOGIC;
  signal buffer_reg_bram_0_n_34 : STD_LOGIC;
  signal buffer_reg_bram_0_n_35 : STD_LOGIC;
  signal buffer_reg_bram_0_n_36 : STD_LOGIC;
  signal buffer_reg_bram_0_n_37 : STD_LOGIC;
  signal buffer_reg_bram_0_n_38 : STD_LOGIC;
  signal buffer_reg_bram_0_n_39 : STD_LOGIC;
  signal buffer_reg_bram_0_n_40 : STD_LOGIC;
  signal buffer_reg_bram_0_n_41 : STD_LOGIC;
  signal buffer_reg_bram_0_n_42 : STD_LOGIC;
  signal buffer_reg_bram_0_n_43 : STD_LOGIC;
  signal buffer_reg_bram_0_n_44 : STD_LOGIC;
  signal buffer_reg_bram_0_n_45 : STD_LOGIC;
  signal buffer_reg_bram_0_n_46 : STD_LOGIC;
  signal buffer_reg_bram_0_n_47 : STD_LOGIC;
  signal dout_fifo : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal empty : STD_LOGIC;
  signal empty0_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal p_1_in : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \rptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \rptr[2]_i_1_n_0\ : STD_LOGIC;
  signal \wptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \wptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \wptr[2]_i_1_n_0\ : STD_LOGIC;
  signal NLW_buffer_reg_bram_0_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_buffer_reg_bram_0_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_buffer_reg_bram_0_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_buffer_reg_bram_0_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_buffer_reg_bram_0_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_buffer_reg_bram_0_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_rdata[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_1\ : label is "soft_lutpair1";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of buffer_reg_bram_0 : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of buffer_reg_bram_0 : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of buffer_reg_bram_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of buffer_reg_bram_0 : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of buffer_reg_bram_0 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of buffer_reg_bram_0 : label is "buffer";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of buffer_reg_bram_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of buffer_reg_bram_0 : label is 63;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of buffer_reg_bram_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of buffer_reg_bram_0 : label is 15;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of buffer_reg_bram_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of buffer_reg_bram_0 : label is 63;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of buffer_reg_bram_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of buffer_reg_bram_0 : label is 15;
  attribute SOFT_HLUTNM of \rptr[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rptr[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wptr[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wptr[2]_i_1\ : label is "soft_lutpair6";
begin
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout_fifo(0),
      I1 => \axi_rdata_reg[12]\(3),
      I2 => DOUTADOUT(0),
      O => D(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout_fifo(10),
      I1 => \axi_rdata_reg[12]\(3),
      I2 => DOUTADOUT(10),
      O => D(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout_fifo(11),
      I1 => \axi_rdata_reg[12]\(3),
      I2 => DOUTADOUT(11),
      O => D(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFAFA0C0C0AFA0"
    )
        port map (
      I0 => dout_fifo(12),
      I1 => \axi_rdata_reg[14]\(0),
      I2 => \axi_rdata_reg[12]\(3),
      I3 => DOUTADOUT(12),
      I4 => \axi_rdata_reg[14]_0\,
      I5 => full,
      O => D(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFAFA0C0C0AFA0"
    )
        port map (
      I0 => dout_fifo(13),
      I1 => \axi_rdata_reg[14]\(1),
      I2 => \axi_rdata_reg[12]\(3),
      I3 => DOUTADOUT(13),
      I4 => \axi_rdata_reg[14]_0\,
      I5 => fifo_empty,
      O => D(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => DOUTADOUT(14),
      I1 => dout_fifo(14),
      I2 => \axi_rdata_reg[14]\(2),
      I3 => \axi_rdata_reg[14]_0\,
      I4 => \axi_rdata_reg[12]\(3),
      O => D(14)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCC00AA"
    )
        port map (
      I0 => DOUTADOUT(15),
      I1 => dout_fifo(15),
      I2 => empty,
      I3 => \axi_rdata_reg[14]_0\,
      I4 => \axi_rdata_reg[12]\(3),
      O => D(15)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout_fifo(1),
      I1 => \axi_rdata_reg[12]\(3),
      I2 => DOUTADOUT(1),
      O => D(1)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout_fifo(2),
      I1 => \axi_rdata_reg[12]\(3),
      I2 => DOUTADOUT(2),
      O => D(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout_fifo(3),
      I1 => \axi_rdata_reg[12]\(3),
      I2 => DOUTADOUT(3),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout_fifo(4),
      I1 => \axi_rdata_reg[12]\(3),
      I2 => DOUTADOUT(4),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout_fifo(5),
      I1 => \axi_rdata_reg[12]\(3),
      I2 => DOUTADOUT(5),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout_fifo(6),
      I1 => \axi_rdata_reg[12]\(3),
      I2 => DOUTADOUT(6),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout_fifo(7),
      I1 => \axi_rdata_reg[12]\(3),
      I2 => DOUTADOUT(7),
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout_fifo(8),
      I1 => \axi_rdata_reg[12]\(3),
      I2 => DOUTADOUT(8),
      O => D(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout_fifo(9),
      I1 => \axi_rdata_reg[12]\(3),
      I2 => DOUTADOUT(9),
      O => D(9)
    );
buffer_reg_bram_0: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 10) => B"1111",
      ADDRARDADDR(9 downto 7) => p_0_in(5 downto 3),
      ADDRARDADDR(6 downto 4) => Q(2 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 10) => B"1111",
      ADDRBWRADDR(9 downto 7) => p_1_in(5 downto 3),
      ADDRBWRADDR(6 downto 4) => \axi_rdata_reg[12]\(2 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(15 downto 0) => NLW_buffer_reg_bram_0_CASDOUTA_UNCONNECTED(15 downto 0),
      CASDOUTB(15 downto 0) => NLW_buffer_reg_bram_0_CASDOUTB_UNCONNECTED(15 downto 0),
      CASDOUTPA(1 downto 0) => NLW_buffer_reg_bram_0_CASDOUTPA_UNCONNECTED(1 downto 0),
      CASDOUTPB(1 downto 0) => NLW_buffer_reg_bram_0_CASDOUTPB_UNCONNECTED(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CLKARDCLK => link_clk,
      CLKBWRCLK => s00_axi_aclk,
      DINADIN(15 downto 0) => DINADIN(15 downto 0),
      DINBDIN(15 downto 0) => B"1111111111111111",
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"00",
      DOUTADOUT(15) => buffer_reg_bram_0_n_32,
      DOUTADOUT(14) => buffer_reg_bram_0_n_33,
      DOUTADOUT(13) => buffer_reg_bram_0_n_34,
      DOUTADOUT(12) => buffer_reg_bram_0_n_35,
      DOUTADOUT(11) => buffer_reg_bram_0_n_36,
      DOUTADOUT(10) => buffer_reg_bram_0_n_37,
      DOUTADOUT(9) => buffer_reg_bram_0_n_38,
      DOUTADOUT(8) => buffer_reg_bram_0_n_39,
      DOUTADOUT(7) => buffer_reg_bram_0_n_40,
      DOUTADOUT(6) => buffer_reg_bram_0_n_41,
      DOUTADOUT(5) => buffer_reg_bram_0_n_42,
      DOUTADOUT(4) => buffer_reg_bram_0_n_43,
      DOUTADOUT(3) => buffer_reg_bram_0_n_44,
      DOUTADOUT(2) => buffer_reg_bram_0_n_45,
      DOUTADOUT(1) => buffer_reg_bram_0_n_46,
      DOUTADOUT(0) => buffer_reg_bram_0_n_47,
      DOUTBDOUT(15 downto 0) => dout_fifo(15 downto 0),
      DOUTPADOUTP(1 downto 0) => NLW_buffer_reg_bram_0_DOUTPADOUTP_UNCONNECTED(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => NLW_buffer_reg_bram_0_DOUTPBDOUTP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 0) => B"0000"
    );
empty0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_1_in(3),
      I2 => p_1_in(5),
      I3 => p_0_in(5),
      I4 => p_1_in(4),
      I5 => p_0_in(4),
      O => empty0_n_0
    );
empty_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => empty0_n_0,
      Q => empty,
      R => '0'
    );
\rptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in(3),
      O => \rptr[0]_i_1_n_0\
    );
\rptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(3),
      I1 => p_1_in(4),
      O => \rptr[1]_i_1_n_0\
    );
\rptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_1_in(3),
      I1 => p_1_in(4),
      I2 => p_1_in(5),
      O => \rptr[2]_i_1_n_0\
    );
\rptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rptr[0]_i_1_n_0\,
      Q => p_1_in(3),
      R => SR(0)
    );
\rptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rptr[1]_i_1_n_0\,
      Q => p_1_in(4),
      R => SR(0)
    );
\rptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \rptr[2]_i_1_n_0\,
      Q => p_1_in(5),
      R => SR(0)
    );
\wptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(3),
      O => \wptr[0]_i_1_n_0\
    );
\wptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(4),
      O => \wptr[1]_i_1_n_0\
    );
\wptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(4),
      I2 => p_0_in(5),
      O => \wptr[2]_i_1_n_0\
    );
\wptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => \wptr_reg[2]_0\(0),
      D => \wptr[0]_i_1_n_0\,
      Q => p_0_in(3),
      R => \wptr_reg[0]_0\(0)
    );
\wptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => \wptr_reg[2]_0\(0),
      D => \wptr[1]_i_1_n_0\,
      Q => p_0_in(4),
      R => \wptr_reg[0]_0\(0)
    );
\wptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => \wptr_reg[2]_0\(0),
      D => \wptr[2]_i_1_n_0\,
      Q => p_0_in(5),
      R => \wptr_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_hdlc_blocks_v1_0_0_0_hdlc_inputregister is
  port (
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lfsr_q_reg[9]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \outputRegister_reg[15]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \outputRegister_reg[5]_0\ : out STD_LOGIC;
    \outputRegister_reg[12]_0\ : out STD_LOGIC;
    DINADIN : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_r : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    crc_valid : in STD_LOGIC;
    data_is_valid_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lfsr_q_reg[12]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \lfsr_q_reg[14]\ : in STD_LOGIC;
    \sr_in_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    crc_valid_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    buffer_reg_bram_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sendlen : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_hdlc_blocks_v1_0_0_0_hdlc_inputregister : entity is "hdlc_inputregister";
end tester_hdlc_blocks_v1_0_0_0_hdlc_inputregister;

architecture STRUCTURE of tester_hdlc_blocks_v1_0_0_0_hdlc_inputregister is
  signal EOF : STD_LOGIC;
  signal EOF_i_1_n_0 : STD_LOGIC;
  signal EOF_i_2_n_0 : STD_LOGIC;
  signal FRAME_ACTIVE : STD_LOGIC;
  signal FRAME_ACTIVE_i_1_n_0 : STD_LOGIC;
  signal FRAME_ACTIVE_reg_n_0 : STD_LOGIC;
  signal abort : STD_LOGIC;
  signal abort0 : STD_LOGIC;
  signal abort_i_2_n_0 : STD_LOGIC;
  signal clean16 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal crc_valid_i_2_n_0 : STD_LOGIC;
  signal crc_valid_i_3_n_0 : STD_LOGIC;
  signal crc_valid_i_4_n_0 : STD_LOGIC;
  signal crc_valid_i_5_n_0 : STD_LOGIC;
  signal crc_valid_i_6_n_0 : STD_LOGIC;
  signal crc_valid_i_7_n_0 : STD_LOGIC;
  signal data_is_valid : STD_LOGIC;
  signal data_is_valid_i_1_n_0 : STD_LOGIC;
  signal inputCounter : STD_LOGIC_VECTOR ( 4 to 4 );
  signal inputCounter0 : STD_LOGIC;
  signal inputCounter10_out : STD_LOGIC;
  signal \inputCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \inputCounter[0]_i_2_n_0\ : STD_LOGIC;
  signal \inputCounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \inputCounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \inputCounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \inputCounter[4]_i_3_n_0\ : STD_LOGIC;
  signal \inputCounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \inputCounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \inputCounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \inputCounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \inputCounter_reg_n_0_[4]\ : STD_LOGIC;
  signal \lfsr_q[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[14]_i_2__0_n_0\ : STD_LOGIC;
  signal \^outputregister_reg[15]_0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^outputregister_reg[5]_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sr_in_reg_n_0_[0]\ : STD_LOGIC;
  signal sr_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal stuffed : STD_LOGIC;
  signal stuffed_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of EOF_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of FRAME_ACTIVE_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of abort_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_10 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_11 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_12 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_13 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_14 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_15 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_16 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \buffer_reg_bram_0_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_2 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_3 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_4 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_5 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_6 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_7 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_8 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of buffer_reg_bram_0_i_9 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \inputCounter[0]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \inputCounter[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \inputCounter[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \inputCounter[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \inputCounter[4]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lfsr_q[14]_i_2__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \lfsr_q[8]_i_4__0\ : label is "soft_lutpair18";
begin
  \outputRegister_reg[15]_0\(14 downto 0) <= \^outputregister_reg[15]_0\(14 downto 0);
  \outputRegister_reg[5]_0\ <= \^outputregister_reg[5]_0\;
EOF_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400FFFF04000000"
    )
        port map (
      I0 => p_0_in(7),
      I1 => EOF_i_2_n_0,
      I2 => p_0_in(0),
      I3 => abort_i_2_n_0,
      I4 => FRAME_ACTIVE_reg_n_0,
      I5 => EOF,
      O => EOF_i_1_n_0
    );
EOF_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(6),
      O => EOF_i_2_n_0
    );
EOF_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => EOF_i_1_n_0,
      Q => EOF,
      R => reset_r
    );
FRAME_ACTIVE_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000054"
    )
        port map (
      I0 => reset_r,
      I1 => FRAME_ACTIVE,
      I2 => FRAME_ACTIVE_reg_n_0,
      I3 => abort,
      I4 => EOF,
      O => FRAME_ACTIVE_i_1_n_0
    );
FRAME_ACTIVE_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => FRAME_ACTIVE_i_1_n_0,
      Q => FRAME_ACTIVE_reg_n_0,
      R => '0'
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"304C"
    )
        port map (
      I0 => data_is_valid,
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => D(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F02"
    )
        port map (
      I0 => data_is_valid,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      O => D(1)
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0EFFFFFFFFFFFF"
    )
        port map (
      I0 => abort,
      I1 => EOF,
      I2 => Q(1),
      I3 => data_is_valid,
      I4 => Q(0),
      I5 => Q(2),
      O => E(0)
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data_is_valid,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      O => D(2)
    );
abort_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_0_in(7),
      I1 => FRAME_ACTIVE_reg_n_0,
      I2 => p_0_in(1),
      I3 => p_0_in(6),
      I4 => abort_i_2_n_0,
      O => abort0
    );
abort_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      I3 => p_0_in(5),
      O => abort_i_2_n_0
    );
abort_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => abort0,
      Q => abort,
      R => reset_r
    );
buffer_reg_bram_0_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(6),
      I1 => sendlen,
      O => DINADIN(6)
    );
buffer_reg_bram_0_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(5),
      I1 => sendlen,
      O => DINADIN(5)
    );
buffer_reg_bram_0_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => crc_valid,
      I1 => sendlen,
      I2 => \^outputregister_reg[15]_0\(4),
      O => DINADIN(4)
    );
buffer_reg_bram_0_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(3),
      I1 => sendlen,
      O => DINADIN(3)
    );
buffer_reg_bram_0_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => buffer_reg_bram_0(2),
      I1 => sendlen,
      I2 => \^outputregister_reg[15]_0\(2),
      O => DINADIN(2)
    );
buffer_reg_bram_0_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => buffer_reg_bram_0(1),
      I1 => sendlen,
      I2 => \^outputregister_reg[15]_0\(1),
      O => DINADIN(1)
    );
buffer_reg_bram_0_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => buffer_reg_bram_0(0),
      I1 => sendlen,
      I2 => \^outputregister_reg[15]_0\(0),
      O => DINADIN(0)
    );
\buffer_reg_bram_0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(14),
      I1 => sendlen,
      O => DINADIN(15)
    );
buffer_reg_bram_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(13),
      I1 => sendlen,
      O => DINADIN(14)
    );
buffer_reg_bram_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(12),
      I1 => sendlen,
      O => DINADIN(13)
    );
buffer_reg_bram_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(11),
      I1 => sendlen,
      O => DINADIN(12)
    );
buffer_reg_bram_0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(10),
      I1 => sendlen,
      O => DINADIN(11)
    );
buffer_reg_bram_0_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(9),
      I1 => sendlen,
      O => DINADIN(10)
    );
buffer_reg_bram_0_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => clean16(9),
      I1 => sendlen,
      O => DINADIN(9)
    );
buffer_reg_bram_0_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(8),
      I1 => sendlen,
      O => DINADIN(8)
    );
buffer_reg_bram_0_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(7),
      I1 => sendlen,
      O => DINADIN(7)
    );
crc_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55D5FF00008000"
    )
        port map (
      I0 => Q(0),
      I1 => crc_valid_i_2_n_0,
      I2 => crc_valid_i_3_n_0,
      I3 => Q(1),
      I4 => Q(2),
      I5 => crc_valid,
      O => \FSM_sequential_state_reg[0]\
    );
crc_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => crc_valid_reg(12),
      I1 => \^outputregister_reg[15]_0\(11),
      I2 => \^outputregister_reg[15]_0\(13),
      I3 => crc_valid_reg(14),
      I4 => \^outputregister_reg[15]_0\(12),
      I5 => crc_valid_reg(13),
      O => crc_valid_i_2_n_0
    );
crc_valid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000000000000000"
    )
        port map (
      I0 => crc_valid_reg(15),
      I1 => \^outputregister_reg[15]_0\(14),
      I2 => crc_valid_i_4_n_0,
      I3 => crc_valid_i_5_n_0,
      I4 => crc_valid_i_6_n_0,
      I5 => crc_valid_i_7_n_0,
      O => crc_valid_i_3_n_0
    );
crc_valid_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => crc_valid_reg(6),
      I1 => \^outputregister_reg[15]_0\(6),
      I2 => \^outputregister_reg[15]_0\(8),
      I3 => crc_valid_reg(8),
      I4 => \^outputregister_reg[15]_0\(7),
      I5 => crc_valid_reg(7),
      O => crc_valid_i_4_n_0
    );
crc_valid_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => crc_valid_reg(9),
      I1 => clean16(9),
      I2 => \^outputregister_reg[15]_0\(10),
      I3 => crc_valid_reg(11),
      I4 => \^outputregister_reg[15]_0\(9),
      I5 => crc_valid_reg(10),
      O => crc_valid_i_5_n_0
    );
crc_valid_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => crc_valid_reg(0),
      I1 => \^outputregister_reg[15]_0\(0),
      I2 => \^outputregister_reg[15]_0\(2),
      I3 => crc_valid_reg(2),
      I4 => \^outputregister_reg[15]_0\(1),
      I5 => crc_valid_reg(1),
      O => crc_valid_i_6_n_0
    );
crc_valid_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => crc_valid_reg(3),
      I1 => \^outputregister_reg[15]_0\(3),
      I2 => \^outputregister_reg[15]_0\(5),
      I3 => crc_valid_reg(5),
      I4 => \^outputregister_reg[15]_0\(4),
      I5 => crc_valid_reg(4),
      O => crc_valid_i_7_n_0
    );
data_is_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0F2"
    )
        port map (
      I0 => data_is_valid,
      I1 => abort,
      I2 => inputCounter10_out,
      I3 => reset_r,
      I4 => data_is_valid_reg_0(0),
      O => data_is_valid_i_1_n_0
    );
data_is_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => data_is_valid_i_1_n_0,
      Q => data_is_valid,
      R => '0'
    );
\inputCounter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005154"
    )
        port map (
      I0 => \inputCounter[0]_i_2_n_0\,
      I1 => \inputCounter_reg_n_0_[0]\,
      I2 => inputCounter10_out,
      I3 => inputCounter0,
      I4 => reset_r,
      I5 => FRAME_ACTIVE,
      O => \inputCounter[0]_i_1_n_0\
    );
\inputCounter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => EOF,
      I1 => abort,
      O => \inputCounter[0]_i_2_n_0\
    );
\inputCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \inputCounter_reg_n_0_[0]\,
      I1 => \inputCounter_reg_n_0_[1]\,
      O => \inputCounter[1]_i_1_n_0\
    );
\inputCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \inputCounter_reg_n_0_[0]\,
      I1 => \inputCounter_reg_n_0_[1]\,
      I2 => \inputCounter_reg_n_0_[2]\,
      O => \inputCounter[2]_i_1_n_0\
    );
\inputCounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \inputCounter_reg_n_0_[2]\,
      I1 => \inputCounter_reg_n_0_[1]\,
      I2 => \inputCounter_reg_n_0_[0]\,
      I3 => \inputCounter_reg_n_0_[3]\,
      O => \inputCounter[3]_i_1_n_0\
    );
\inputCounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => inputCounter10_out,
      I1 => reset_r,
      I2 => EOF,
      I3 => abort,
      I4 => FRAME_ACTIVE,
      O => inputCounter(4)
    );
\inputCounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => FRAME_ACTIVE_reg_n_0,
      I1 => stuffed,
      O => inputCounter0
    );
\inputCounter[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \inputCounter_reg_n_0_[3]\,
      I1 => \inputCounter_reg_n_0_[0]\,
      I2 => \inputCounter_reg_n_0_[1]\,
      I3 => \inputCounter_reg_n_0_[2]\,
      I4 => \inputCounter_reg_n_0_[4]\,
      O => \inputCounter[4]_i_3_n_0\
    );
\inputCounter[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(6),
      I2 => p_0_in(0),
      I3 => \sr_in_reg_n_0_[0]\,
      I4 => abort_i_2_n_0,
      O => FRAME_ACTIVE
    );
\inputCounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => \inputCounter[0]_i_1_n_0\,
      Q => \inputCounter_reg_n_0_[0]\,
      R => '0'
    );
\inputCounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => \inputCounter[1]_i_1_n_0\,
      Q => \inputCounter_reg_n_0_[1]\,
      R => inputCounter(4)
    );
\inputCounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => \inputCounter[2]_i_1_n_0\,
      Q => \inputCounter_reg_n_0_[2]\,
      R => inputCounter(4)
    );
\inputCounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => \inputCounter[3]_i_1_n_0\,
      Q => \inputCounter_reg_n_0_[3]\,
      R => inputCounter(4)
    );
\inputCounter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => \inputCounter[4]_i_3_n_0\,
      Q => \inputCounter_reg_n_0_[4]\,
      R => inputCounter(4)
    );
\lfsr_q[11]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \lfsr_q_reg[12]\(3),
      I1 => \^outputregister_reg[15]_0\(4),
      I2 => \lfsr_q_reg[12]\(0),
      I3 => \^outputregister_reg[15]_0\(0),
      I4 => \^outputregister_reg[5]_0\,
      O => \lfsr_q_reg[9]\(1)
    );
\lfsr_q[11]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(5),
      I1 => \lfsr_q_reg[12]\(4),
      I2 => \lfsr_q_reg[12]\(1),
      I3 => \^outputregister_reg[15]_0\(1),
      I4 => \lfsr_q_reg[12]\(8),
      I5 => clean16(9),
      O => \^outputregister_reg[5]_0\
    );
\lfsr_q[12]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \lfsr_q[12]_i_2__0_n_0\,
      I1 => \^outputregister_reg[15]_0\(8),
      I2 => \lfsr_q_reg[12]\(7),
      I3 => \^outputregister_reg[15]_0\(10),
      I4 => \lfsr_q_reg[12]\(9),
      O => \lfsr_q_reg[9]\(2)
    );
\lfsr_q[12]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(14),
      I1 => \lfsr_q_reg[12]\(12),
      I2 => \lfsr_q_reg[12]\(0),
      I3 => \^outputregister_reg[15]_0\(0),
      I4 => \lfsr_q_reg[12]\(6),
      I5 => \^outputregister_reg[15]_0\(7),
      O => \lfsr_q[12]_i_2__0_n_0\
    );
\lfsr_q[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[14]_i_2__0_n_0\,
      I1 => \lfsr_q_reg[12]\(5),
      I2 => \^outputregister_reg[15]_0\(6),
      I3 => clean16(9),
      I4 => \lfsr_q_reg[12]\(8),
      I5 => \lfsr_q_reg[14]\,
      O => \lfsr_q_reg[9]\(3)
    );
\lfsr_q[14]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(5),
      I1 => \lfsr_q_reg[12]\(4),
      O => \lfsr_q[14]_i_2__0_n_0\
    );
\lfsr_q[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \lfsr_q_reg[12]\(2),
      I1 => \^outputregister_reg[15]_0\(2),
      I2 => \lfsr_q_reg[12]\(11),
      I3 => \^outputregister_reg[15]_0\(12),
      I4 => \^outputregister_reg[5]_0\,
      O => \lfsr_q_reg[9]\(0)
    );
\lfsr_q[8]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^outputregister_reg[15]_0\(11),
      I1 => \lfsr_q_reg[12]\(10),
      O => \outputRegister_reg[12]_0\
    );
\outputRegister[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \inputCounter_reg_n_0_[2]\,
      I1 => \inputCounter_reg_n_0_[3]\,
      I2 => \inputCounter_reg_n_0_[0]\,
      I3 => \inputCounter_reg_n_0_[1]\,
      I4 => stuffed,
      I5 => \inputCounter_reg_n_0_[4]\,
      O => inputCounter10_out
    );
\outputRegister_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(0),
      Q => \^outputregister_reg[15]_0\(0),
      R => '0'
    );
\outputRegister_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(10),
      Q => \^outputregister_reg[15]_0\(9),
      R => '0'
    );
\outputRegister_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(11),
      Q => \^outputregister_reg[15]_0\(10),
      R => '0'
    );
\outputRegister_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(12),
      Q => \^outputregister_reg[15]_0\(11),
      R => '0'
    );
\outputRegister_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(13),
      Q => \^outputregister_reg[15]_0\(12),
      R => '0'
    );
\outputRegister_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(14),
      Q => \^outputregister_reg[15]_0\(13),
      R => '0'
    );
\outputRegister_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(15),
      Q => \^outputregister_reg[15]_0\(14),
      R => '0'
    );
\outputRegister_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(1),
      Q => \^outputregister_reg[15]_0\(1),
      R => '0'
    );
\outputRegister_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(2),
      Q => \^outputregister_reg[15]_0\(2),
      R => '0'
    );
\outputRegister_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(3),
      Q => \^outputregister_reg[15]_0\(3),
      R => '0'
    );
\outputRegister_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(4),
      Q => \^outputregister_reg[15]_0\(4),
      R => '0'
    );
\outputRegister_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(5),
      Q => \^outputregister_reg[15]_0\(5),
      R => '0'
    );
\outputRegister_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(6),
      Q => \^outputregister_reg[15]_0\(6),
      R => '0'
    );
\outputRegister_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(7),
      Q => \^outputregister_reg[15]_0\(7),
      R => '0'
    );
\outputRegister_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(8),
      Q => \^outputregister_reg[15]_0\(8),
      R => '0'
    );
\outputRegister_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter10_out,
      D => sr_out(9),
      Q => clean16(9),
      R => '0'
    );
\sr_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => p_0_in(0),
      Q => \sr_in_reg_n_0_[0]\,
      R => '0'
    );
\sr_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => p_0_in(1),
      Q => p_0_in(0),
      R => '0'
    );
\sr_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => p_0_in(2),
      Q => p_0_in(1),
      R => '0'
    );
\sr_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => p_0_in(3),
      Q => p_0_in(2),
      R => '0'
    );
\sr_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => p_0_in(4),
      Q => p_0_in(3),
      R => '0'
    );
\sr_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => p_0_in(5),
      Q => p_0_in(4),
      R => '0'
    );
\sr_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => p_0_in(6),
      Q => p_0_in(5),
      R => '0'
    );
\sr_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => p_0_in(7),
      Q => p_0_in(6),
      R => '0'
    );
\sr_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => \sr_in_reg[8]_0\(0),
      Q => p_0_in(7),
      R => '0'
    );
\sr_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(1),
      Q => sr_out(0),
      R => '0'
    );
\sr_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(11),
      Q => sr_out(10),
      R => '0'
    );
\sr_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(12),
      Q => sr_out(11),
      R => '0'
    );
\sr_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(13),
      Q => sr_out(12),
      R => '0'
    );
\sr_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(14),
      Q => sr_out(13),
      R => '0'
    );
\sr_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(15),
      Q => sr_out(14),
      R => '0'
    );
\sr_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => p_0_in(6),
      Q => sr_out(15),
      R => '0'
    );
\sr_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(2),
      Q => sr_out(1),
      R => '0'
    );
\sr_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(3),
      Q => sr_out(2),
      R => '0'
    );
\sr_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(4),
      Q => sr_out(3),
      R => '0'
    );
\sr_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(5),
      Q => sr_out(4),
      R => '0'
    );
\sr_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(6),
      Q => sr_out(5),
      R => '0'
    );
\sr_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(7),
      Q => sr_out(6),
      R => '0'
    );
\sr_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(8),
      Q => sr_out(7),
      R => '0'
    );
\sr_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(9),
      Q => sr_out(8),
      R => '0'
    );
\sr_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => inputCounter0,
      D => sr_out(10),
      Q => sr_out(9),
      R => '0'
    );
stuffed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(6),
      I2 => p_0_in(7),
      I3 => abort_i_2_n_0,
      O => stuffed_i_1_n_0
    );
stuffed_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => stuffed_i_1_n_0,
      Q => stuffed,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_hdlc_blocks_v1_0_0_0_hdlc_outputregister is
  port (
    serout : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    link_clk : in STD_LOGIC;
    reset_r : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \sr_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in6 : in STD_LOGIC;
    autoheader : in STD_LOGIC;
    \state2__4\ : in STD_LOGIC;
    req_tx : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    srOutSuppressZeroing : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_hdlc_blocks_v1_0_0_0_hdlc_outputregister : entity is "hdlc_outputregister";
end tester_hdlc_blocks_v1_0_0_0_hdlc_outputregister;

architecture STRUCTURE of tester_hdlc_blocks_v1_0_0_0_hdlc_outputregister is
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data_in_isCTL_latch : STD_LOGIC;
  signal data_in_isCTL_latch_i_1_n_0 : STD_LOGIC;
  signal \inject_a_zero__1\ : STD_LOGIC;
  signal load : STD_LOGIC;
  signal load0 : STD_LOGIC;
  signal ones_in_a_row : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ones_in_a_row[0]_i_1_n_0\ : STD_LOGIC;
  signal \ones_in_a_row[1]_i_1_n_0\ : STD_LOGIC;
  signal \ones_in_a_row[2]_i_1_n_0\ : STD_LOGIC;
  signal \ones_in_a_row[2]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal serout_i_1_n_0 : STD_LOGIC;
  signal sr : STD_LOGIC;
  signal srOutStrobe : STD_LOGIC;
  signal \sr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sr[10]_i_1_n_0\ : STD_LOGIC;
  signal \sr[11]_i_1_n_0\ : STD_LOGIC;
  signal \sr[12]_i_1_n_0\ : STD_LOGIC;
  signal \sr[13]_i_1_n_0\ : STD_LOGIC;
  signal \sr[14]_i_1_n_0\ : STD_LOGIC;
  signal \sr[15]_i_2_n_0\ : STD_LOGIC;
  signal \sr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sr[3]_i_1_n_0\ : STD_LOGIC;
  signal \sr[4]_i_1_n_0\ : STD_LOGIC;
  signal \sr[5]_i_1_n_0\ : STD_LOGIC;
  signal \sr[6]_i_1_n_0\ : STD_LOGIC;
  signal \sr[7]_i_1_n_0\ : STD_LOGIC;
  signal \sr[8]_i_1_n_0\ : STD_LOGIC;
  signal \sr[9]_i_1_n_0\ : STD_LOGIC;
  signal \sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \sr_reg_n_0_[12]\ : STD_LOGIC;
  signal \sr_reg_n_0_[13]\ : STD_LOGIC;
  signal \sr_reg_n_0_[14]\ : STD_LOGIC;
  signal \sr_reg_n_0_[15]\ : STD_LOGIC;
  signal \sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \sr_reg_n_0_[7]\ : STD_LOGIC;
  signal \sr_reg_n_0_[8]\ : STD_LOGIC;
  signal \sr_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_onehot_state[8]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FSM_onehot_state[9]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of load_i_2 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ones_in_a_row[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \ones_in_a_row[2]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of serout_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sr[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sr[10]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sr[11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sr[12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \sr[13]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \sr[14]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sr[15]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sr[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sr[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \sr[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sr[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sr[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \sr[6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sr[7]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \sr[8]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sr[9]_i_1\ : label is "soft_lutpair43";
begin
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => srOutStrobe,
      I2 => Q(0),
      O => D(0)
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4040F040"
    )
        port map (
      I0 => in6,
      I1 => Q(3),
      I2 => srOutStrobe,
      I3 => Q(0),
      I4 => autoheader,
      O => D(1)
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => autoheader,
      I1 => srOutStrobe,
      I2 => Q(0),
      O => D(2)
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => srOutStrobe,
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      O => D(3)
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => srOutStrobe,
      I1 => Q(4),
      I2 => Q(5),
      O => D(4)
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F888F8F8F8"
    )
        port map (
      I0 => Q(9),
      I1 => srOutStrobe,
      I2 => Q(6),
      I3 => \state2__4\,
      I4 => req_tx,
      I5 => fifo_empty,
      O => D(5)
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => srOutStrobe,
      I1 => Q(3),
      I2 => in6,
      O => D(6)
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => srOutStrobe,
      I1 => Q(8),
      I2 => Q(7),
      O => D(7)
    );
\FSM_onehot_state[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(8),
      I1 => srOutStrobe,
      I2 => Q(9),
      O => D(8)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => p_0_in(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => p_0_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => p_0_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(0),
      I3 => \counter_reg__0\(3),
      O => p_0_in(3)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => p_0_in(0),
      Q => \counter_reg__0\(0),
      R => reset_r
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => p_0_in(1),
      Q => \counter_reg__0\(1),
      R => reset_r
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => p_0_in(2),
      Q => \counter_reg__0\(2),
      R => reset_r
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => p_0_in(3),
      Q => \counter_reg__0\(3),
      R => reset_r
    );
data_consumed_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => load,
      Q => srOutStrobe,
      R => '0'
    );
data_in_isCTL_latch_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => srOutSuppressZeroing,
      I1 => load,
      I2 => data_in_isCTL_latch,
      O => data_in_isCTL_latch_i_1_n_0
    );
data_in_isCTL_latch_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => data_in_isCTL_latch_i_1_n_0,
      Q => data_in_isCTL_latch,
      R => '0'
    );
load_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \inject_a_zero__1\,
      I1 => \counter_reg__0\(3),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(1),
      I4 => \counter_reg__0\(0),
      O => load0
    );
load_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => ones_in_a_row(1),
      I1 => ones_in_a_row(2),
      I2 => ones_in_a_row(0),
      O => \inject_a_zero__1\
    );
load_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => load0,
      Q => load,
      R => '0'
    );
\ones_in_a_row[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ones_in_a_row(0),
      O => \ones_in_a_row[0]_i_1_n_0\
    );
\ones_in_a_row[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ones_in_a_row(0),
      I1 => ones_in_a_row(1),
      O => \ones_in_a_row[1]_i_1_n_0\
    );
\ones_in_a_row[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDFDFDFFFDFDFD"
    )
        port map (
      I0 => \sr_reg_n_0_[0]\,
      I1 => data_in_isCTL_latch,
      I2 => reset_r,
      I3 => ones_in_a_row(0),
      I4 => ones_in_a_row(2),
      I5 => ones_in_a_row(1),
      O => \ones_in_a_row[2]_i_1_n_0\
    );
\ones_in_a_row[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ones_in_a_row(0),
      I1 => ones_in_a_row(1),
      I2 => ones_in_a_row(2),
      O => \ones_in_a_row[2]_i_2_n_0\
    );
\ones_in_a_row_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => \ones_in_a_row[0]_i_1_n_0\,
      Q => ones_in_a_row(0),
      R => \ones_in_a_row[2]_i_1_n_0\
    );
\ones_in_a_row_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => \ones_in_a_row[1]_i_1_n_0\,
      Q => ones_in_a_row(1),
      R => \ones_in_a_row[2]_i_1_n_0\
    );
\ones_in_a_row_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => \ones_in_a_row[2]_i_2_n_0\,
      Q => ones_in_a_row(2),
      R => \ones_in_a_row[2]_i_1_n_0\
    );
serout_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \sr_reg_n_0_[0]\,
      I1 => ones_in_a_row(0),
      I2 => ones_in_a_row(2),
      I3 => ones_in_a_row(1),
      O => serout_i_1_n_0
    );
serout_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => serout_i_1_n_0,
      Q => serout,
      R => '0'
    );
\sr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(0),
      I1 => load,
      I2 => \sr_reg_n_0_[1]\,
      O => \sr[0]_i_1_n_0\
    );
\sr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(10),
      I1 => load,
      I2 => \sr_reg_n_0_[11]\,
      O => \sr[10]_i_1_n_0\
    );
\sr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(11),
      I1 => load,
      I2 => \sr_reg_n_0_[12]\,
      O => \sr[11]_i_1_n_0\
    );
\sr[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(12),
      I1 => load,
      I2 => \sr_reg_n_0_[13]\,
      O => \sr[12]_i_1_n_0\
    );
\sr[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(13),
      I1 => load,
      I2 => \sr_reg_n_0_[14]\,
      O => \sr[13]_i_1_n_0\
    );
\sr[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(14),
      I1 => load,
      I2 => \sr_reg_n_0_[15]\,
      O => \sr[14]_i_1_n_0\
    );
\sr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => ones_in_a_row(0),
      I1 => ones_in_a_row(2),
      I2 => ones_in_a_row(1),
      O => sr
    );
\sr[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => load,
      I1 => \sr_reg[15]_0\(15),
      O => \sr[15]_i_2_n_0\
    );
\sr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(1),
      I1 => load,
      I2 => \sr_reg_n_0_[2]\,
      O => \sr[1]_i_1_n_0\
    );
\sr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(2),
      I1 => load,
      I2 => \sr_reg_n_0_[3]\,
      O => \sr[2]_i_1_n_0\
    );
\sr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(3),
      I1 => load,
      I2 => \sr_reg_n_0_[4]\,
      O => \sr[3]_i_1_n_0\
    );
\sr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(4),
      I1 => load,
      I2 => \sr_reg_n_0_[5]\,
      O => \sr[4]_i_1_n_0\
    );
\sr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(5),
      I1 => load,
      I2 => \sr_reg_n_0_[6]\,
      O => \sr[5]_i_1_n_0\
    );
\sr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(6),
      I1 => load,
      I2 => \sr_reg_n_0_[7]\,
      O => \sr[6]_i_1_n_0\
    );
\sr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(7),
      I1 => load,
      I2 => \sr_reg_n_0_[8]\,
      O => \sr[7]_i_1_n_0\
    );
\sr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(8),
      I1 => load,
      I2 => \sr_reg_n_0_[9]\,
      O => \sr[8]_i_1_n_0\
    );
\sr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sr_reg[15]_0\(9),
      I1 => load,
      I2 => \sr_reg_n_0_[10]\,
      O => \sr[9]_i_1_n_0\
    );
\sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[0]_i_1_n_0\,
      Q => \sr_reg_n_0_[0]\,
      R => '0'
    );
\sr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[10]_i_1_n_0\,
      Q => \sr_reg_n_0_[10]\,
      R => '0'
    );
\sr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[11]_i_1_n_0\,
      Q => \sr_reg_n_0_[11]\,
      R => '0'
    );
\sr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[12]_i_1_n_0\,
      Q => \sr_reg_n_0_[12]\,
      R => '0'
    );
\sr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[13]_i_1_n_0\,
      Q => \sr_reg_n_0_[13]\,
      R => '0'
    );
\sr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[14]_i_1_n_0\,
      Q => \sr_reg_n_0_[14]\,
      R => '0'
    );
\sr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[15]_i_2_n_0\,
      Q => \sr_reg_n_0_[15]\,
      R => '0'
    );
\sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[1]_i_1_n_0\,
      Q => \sr_reg_n_0_[1]\,
      R => '0'
    );
\sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[2]_i_1_n_0\,
      Q => \sr_reg_n_0_[2]\,
      R => '0'
    );
\sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[3]_i_1_n_0\,
      Q => \sr_reg_n_0_[3]\,
      R => '0'
    );
\sr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[4]_i_1_n_0\,
      Q => \sr_reg_n_0_[4]\,
      R => '0'
    );
\sr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[5]_i_1_n_0\,
      Q => \sr_reg_n_0_[5]\,
      R => '0'
    );
\sr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[6]_i_1_n_0\,
      Q => \sr_reg_n_0_[6]\,
      R => '0'
    );
\sr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[7]_i_1_n_0\,
      Q => \sr_reg_n_0_[7]\,
      R => '0'
    );
\sr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[8]_i_1_n_0\,
      Q => \sr_reg_n_0_[8]\,
      R => '0'
    );
\sr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => sr,
      D => \sr[9]_i_1_n_0\,
      Q => \sr_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_hdlc_blocks_v1_0_0_0_hdlc_rx is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \nr_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \state2__4\ : out STD_LOGIC;
    link_clk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_r : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \pulseFifo_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[14]\ : in STD_LOGIC;
    DOUTADOUT : in STD_LOGIC_VECTOR ( 15 downto 0 );
    full : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    \FSM_onehot_state_reg[6]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sr_in_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wptr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_hdlc_blocks_v1_0_0_0_hdlc_rx : entity is "hdlc_rx";
end tester_hdlc_blocks_v1_0_0_0_hdlc_rx;

architecture STRUCTURE of tester_hdlc_blocks_v1_0_0_0_hdlc_rx is
  signal adv_fifo : STD_LOGIC;
  signal adv_fifo0 : STD_LOGIC;
  signal clean16 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal crc_n_17 : STD_LOGIC;
  signal crc_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal crc_valid : STD_LOGIC;
  signal dataReceiver_n_0 : STD_LOGIC;
  signal dataReceiver_n_24 : STD_LOGIC;
  signal dataReceiver_n_25 : STD_LOGIC;
  signal dataReceiver_n_4 : STD_LOGIC;
  signal din_fifo : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal latch_crc : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal latch_crc_0 : STD_LOGIC;
  signal \len[2]_i_1_n_0\ : STD_LOGIC;
  signal \len_reg_n_0_[0]\ : STD_LOGIC;
  signal \len_reg_n_0_[1]\ : STD_LOGIC;
  signal \len_reg_n_0_[2]\ : STD_LOGIC;
  signal lfsr_c : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal \nr[0]_i_1_n_0\ : STD_LOGIC;
  signal \nr[1]_i_1_n_0\ : STD_LOGIC;
  signal \nr[2]_i_2_n_0\ : STD_LOGIC;
  signal \^nr_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \pulseFifo_reg_n_0_[0]\ : STD_LOGIC;
  signal \pulseFifo_reg_n_0_[1]\ : STD_LOGIC;
  signal sendlen : STD_LOGIC;
  signal sendlen0 : STD_LOGIC;
  signal state : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal we_buffer : STD_LOGIC;
  signal we_buffer0 : STD_LOGIC;
  signal we_fifo : STD_LOGIC;
  signal wptr : STD_LOGIC;
  signal \wptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \wptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \wptr[2]_i_1_n_0\ : STD_LOGIC;
  signal \wptr[2]_i_2_n_0\ : STD_LOGIC;
  signal \wptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \wptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \wptr_reg_n_0_[2]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "iSTATE:010,iSTATE0:101,iSTATE1:100,iSTATE2:001,iSTATE3:000,iSTATE4:011,iSTATE5:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "iSTATE:010,iSTATE0:101,iSTATE1:100,iSTATE2:001,iSTATE3:000,iSTATE4:011,iSTATE5:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "iSTATE:010,iSTATE0:101,iSTATE1:100,iSTATE2:001,iSTATE3:000,iSTATE4:011,iSTATE5:110";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \nr[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \nr[2]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of sendlen_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of we_buffer_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wptr[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \wptr[1]_i_1\ : label is "soft_lutpair25";
begin
  \nr_reg[2]_0\(2 downto 0) <= \^nr_reg[2]_0\(2 downto 0);
\FSM_onehot_state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^nr_reg[2]_0\(0),
      I1 => \FSM_onehot_state_reg[6]\(0),
      I2 => \^nr_reg[2]_0\(1),
      I3 => \FSM_onehot_state_reg[6]\(1),
      I4 => \FSM_onehot_state_reg[6]\(2),
      I5 => \^nr_reg[2]_0\(2),
      O => \state2__4\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => dataReceiver_n_4,
      D => p_0_out(0),
      Q => \state__0\(0),
      R => reset_r
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => dataReceiver_n_4,
      D => p_0_out(1),
      Q => \state__0\(1),
      R => reset_r
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => dataReceiver_n_4,
      D => p_0_out(2),
      Q => \state__0\(2),
      R => reset_r
    );
adv_fifo_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pulseFifo_reg_n_0_[0]\,
      I1 => \pulseFifo_reg_n_0_[1]\,
      O => adv_fifo0
    );
adv_fifo_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => adv_fifo0,
      Q => adv_fifo,
      R => '0'
    );
\buffer\: entity work.tester_hdlc_blocks_v1_0_0_0_hdlc_fifo_0
     port map (
      D(15 downto 0) => D(15 downto 0),
      DINADIN(15 downto 0) => din_fifo(15 downto 0),
      DOUTADOUT(15 downto 0) => DOUTADOUT(15 downto 0),
      E(0) => adv_fifo,
      Q(2) => \wptr_reg_n_0_[2]\,
      Q(1) => \wptr_reg_n_0_[1]\,
      Q(0) => \wptr_reg_n_0_[0]\,
      SR(0) => SR(0),
      WEA(0) => we_buffer,
      \axi_rdata_reg[12]\(3 downto 0) => Q(3 downto 0),
      \axi_rdata_reg[14]\(2 downto 0) => \^nr_reg[2]_0\(2 downto 0),
      \axi_rdata_reg[14]_0\ => \axi_rdata_reg[14]\,
      fifo_empty => fifo_empty,
      full => full,
      link_clk => link_clk,
      s00_axi_aclk => s00_axi_aclk,
      \wptr_reg[0]_0\(0) => \wptr_reg[0]_0\(0),
      \wptr_reg[2]_0\(0) => we_fifo
    );
crc: entity work.tester_hdlc_blocks_v1_0_0_0_hdlc_crc_1
     port map (
      AS(0) => wptr,
      D(3) => lfsr_c(14),
      D(2 downto 1) => lfsr_c(12 downto 11),
      D(0) => lfsr_c(2),
      E(0) => we_buffer,
      Q(2 downto 0) => \state__0\(2 downto 0),
      \lfsr_q_reg[0]_0\(14 downto 9) => clean16(15 downto 10),
      \lfsr_q_reg[0]_0\(8 downto 0) => clean16(8 downto 0),
      \lfsr_q_reg[15]_0\(15) => crc_out(0),
      \lfsr_q_reg[15]_0\(14) => crc_out(1),
      \lfsr_q_reg[15]_0\(13) => crc_out(2),
      \lfsr_q_reg[15]_0\(12) => crc_out(3),
      \lfsr_q_reg[15]_0\(11) => crc_out(4),
      \lfsr_q_reg[15]_0\(10) => crc_out(5),
      \lfsr_q_reg[15]_0\(9) => crc_out(6),
      \lfsr_q_reg[15]_0\(8) => crc_out(7),
      \lfsr_q_reg[15]_0\(7) => crc_out(8),
      \lfsr_q_reg[15]_0\(6) => crc_out(9),
      \lfsr_q_reg[15]_0\(5) => crc_out(10),
      \lfsr_q_reg[15]_0\(4) => crc_out(11),
      \lfsr_q_reg[15]_0\(3) => crc_out(12),
      \lfsr_q_reg[15]_0\(2) => crc_out(13),
      \lfsr_q_reg[15]_0\(1) => crc_out(14),
      \lfsr_q_reg[15]_0\(0) => crc_out(15),
      \lfsr_q_reg[2]_0\ => crc_n_17,
      \lfsr_q_reg[7]_0\ => dataReceiver_n_24,
      \lfsr_q_reg[8]_0\ => dataReceiver_n_25,
      link_clk => link_clk
    );
crc_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => dataReceiver_n_0,
      Q => crc_valid,
      R => '0'
    );
dataReceiver: entity work.tester_hdlc_blocks_v1_0_0_0_hdlc_inputregister
     port map (
      D(2 downto 0) => p_0_out(2 downto 0),
      DINADIN(15 downto 0) => din_fifo(15 downto 0),
      E(0) => dataReceiver_n_4,
      \FSM_sequential_state_reg[0]\ => dataReceiver_n_0,
      Q(2 downto 0) => \state__0\(2 downto 0),
      buffer_reg_bram_0(2) => \len_reg_n_0_[2]\,
      buffer_reg_bram_0(1) => \len_reg_n_0_[1]\,
      buffer_reg_bram_0(0) => \len_reg_n_0_[0]\,
      crc_valid => crc_valid,
      crc_valid_reg(15 downto 0) => latch_crc(15 downto 0),
      data_is_valid_reg_0(0) => we_buffer,
      \lfsr_q_reg[12]\(12) => crc_out(15),
      \lfsr_q_reg[12]\(11 downto 9) => crc_out(13 downto 11),
      \lfsr_q_reg[12]\(8 downto 3) => crc_out(9 downto 4),
      \lfsr_q_reg[12]\(2 downto 0) => crc_out(2 downto 0),
      \lfsr_q_reg[14]\ => crc_n_17,
      \lfsr_q_reg[9]\(3) => lfsr_c(14),
      \lfsr_q_reg[9]\(2 downto 1) => lfsr_c(12 downto 11),
      \lfsr_q_reg[9]\(0) => lfsr_c(2),
      link_clk => link_clk,
      \outputRegister_reg[12]_0\ => dataReceiver_n_25,
      \outputRegister_reg[15]_0\(14 downto 9) => clean16(15 downto 10),
      \outputRegister_reg[15]_0\(8 downto 0) => clean16(8 downto 0),
      \outputRegister_reg[5]_0\ => dataReceiver_n_24,
      reset_r => reset_r,
      sendlen => sendlen,
      \sr_in_reg[8]_0\(0) => \sr_in_reg[8]\(0)
    );
\latch_crc[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      O => latch_crc_0
    );
\latch_crc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(0),
      Q => latch_crc(0),
      R => '0'
    );
\latch_crc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(10),
      Q => latch_crc(10),
      R => '0'
    );
\latch_crc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(11),
      Q => latch_crc(11),
      R => '0'
    );
\latch_crc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(12),
      Q => latch_crc(12),
      R => '0'
    );
\latch_crc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(13),
      Q => latch_crc(13),
      R => '0'
    );
\latch_crc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(14),
      Q => latch_crc(14),
      R => '0'
    );
\latch_crc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(15),
      Q => latch_crc(15),
      R => '0'
    );
\latch_crc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(1),
      Q => latch_crc(1),
      R => '0'
    );
\latch_crc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(2),
      Q => latch_crc(2),
      R => '0'
    );
\latch_crc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(3),
      Q => latch_crc(3),
      R => '0'
    );
\latch_crc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(4),
      Q => latch_crc(4),
      R => '0'
    );
\latch_crc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(5),
      Q => latch_crc(5),
      R => '0'
    );
\latch_crc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(6),
      Q => latch_crc(6),
      R => '0'
    );
\latch_crc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(7),
      Q => latch_crc(7),
      R => '0'
    );
\latch_crc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(8),
      Q => latch_crc(8),
      R => '0'
    );
\latch_crc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => latch_crc_0,
      D => crc_out(9),
      Q => latch_crc(9),
      R => '0'
    );
\len[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      O => \len[2]_i_1_n_0\
    );
\len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => \len[2]_i_1_n_0\,
      D => \wptr_reg_n_0_[0]\,
      Q => \len_reg_n_0_[0]\,
      R => '0'
    );
\len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => \len[2]_i_1_n_0\,
      D => \wptr_reg_n_0_[1]\,
      Q => \len_reg_n_0_[1]\,
      R => '0'
    );
\len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => \len[2]_i_1_n_0\,
      D => \wptr_reg_n_0_[2]\,
      Q => \len_reg_n_0_[2]\,
      R => '0'
    );
\nr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^nr_reg[2]_0\(0),
      O => \nr[0]_i_1_n_0\
    );
\nr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^nr_reg[2]_0\(0),
      I1 => \^nr_reg[2]_0\(1),
      O => \nr[1]_i_1_n_0\
    );
\nr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => state
    );
\nr[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^nr_reg[2]_0\(0),
      I1 => \^nr_reg[2]_0\(1),
      I2 => \^nr_reg[2]_0\(2),
      O => \nr[2]_i_2_n_0\
    );
\nr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => state,
      D => \nr[0]_i_1_n_0\,
      Q => \^nr_reg[2]_0\(0),
      R => reset_r
    );
\nr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => state,
      D => \nr[1]_i_1_n_0\,
      Q => \^nr_reg[2]_0\(1),
      R => reset_r
    );
\nr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => state,
      D => \nr[2]_i_2_n_0\,
      Q => \^nr_reg[2]_0\(2),
      R => reset_r
    );
\pulseFifo[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => Q(3),
      I1 => s00_axi_wstrb(0),
      I2 => \pulseFifo_reg[0]_0\(0),
      I3 => s00_axi_wstrb(1),
      I4 => \axi_rdata_reg[14]\,
      O => p_1_out(0)
    );
\pulseFifo_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_out(0),
      Q => \pulseFifo_reg_n_0_[0]\,
      R => '0'
    );
\pulseFifo_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pulseFifo_reg_n_0_[0]\,
      Q => \pulseFifo_reg_n_0_[1]\,
      R => '0'
    );
sendlen_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      O => sendlen0
    );
sendlen_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => sendlen0,
      Q => sendlen,
      R => '0'
    );
we_buffer_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => we_buffer0
    );
we_buffer_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => we_buffer0,
      Q => we_buffer,
      R => '0'
    );
we_fifo_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => state,
      Q => we_fifo,
      R => '0'
    );
\wptr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \wptr_reg_n_0_[0]\,
      O => \wptr[0]_i_1_n_0\
    );
\wptr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F666666"
    )
        port map (
      I0 => \wptr_reg_n_0_[1]\,
      I1 => \wptr_reg_n_0_[0]\,
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => \wptr[1]_i_1_n_0\
    );
\wptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \wptr[2]_i_1_n_0\
    );
\wptr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AFF6A6A6A6A6A6A"
    )
        port map (
      I0 => \wptr_reg_n_0_[2]\,
      I1 => \wptr_reg_n_0_[1]\,
      I2 => \wptr_reg_n_0_[0]\,
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      I5 => \state__0\(1),
      O => \wptr[2]_i_2_n_0\
    );
\wptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => \wptr[2]_i_1_n_0\,
      D => \wptr[0]_i_1_n_0\,
      Q => \wptr_reg_n_0_[0]\,
      R => wptr
    );
\wptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => \wptr[2]_i_1_n_0\,
      D => \wptr[1]_i_1_n_0\,
      Q => \wptr_reg_n_0_[1]\,
      R => wptr
    );
\wptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => \wptr[2]_i_1_n_0\,
      D => \wptr[2]_i_2_n_0\,
      Q => \wptr_reg_n_0_[2]\,
      R => wptr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_hdlc_blocks_v1_0_0_0_hdlc_tx is
  port (
    DOUTADOUT : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetW_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_empty : out STD_LOGIC;
    full : out STD_LOGIC;
    serout : out STD_LOGIC;
    s00_axi_wstrb_0_sp_1 : out STD_LOGIC;
    \hdlc_addr_reg[0]\ : out STD_LOGIC;
    \nr_last_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_r : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    buffer_reg_bram_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state2__4\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_hdlc_blocks_v1_0_0_0_hdlc_tx : entity is "hdlc_tx";
end tester_hdlc_blocks_v1_0_0_0_hdlc_tx;

architecture STRUCTURE of tester_hdlc_blocks_v1_0_0_0_hdlc_tx is
  signal \FSM_onehot_state[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
  signal autoheader : STD_LOGIC;
  signal bufWrite_n_35 : STD_LOGIC;
  signal bufWrite_n_36 : STD_LOGIC;
  signal bufWrite_n_37 : STD_LOGIC;
  signal bufWrite_n_38 : STD_LOGIC;
  signal buf_to_tx : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal busy0 : STD_LOGIC;
  signal busy_reg_n_0 : STD_LOGIC;
  signal crc_enable : STD_LOGIC;
  signal crc_enable0 : STD_LOGIC;
  signal crc_fcs : STD_LOGIC_VECTOR ( 0 to 0 );
  signal crc_init : STD_LOGIC;
  signal crc_n_0 : STD_LOGIC;
  signal crc_n_1 : STD_LOGIC;
  signal crc_n_10 : STD_LOGIC;
  signal crc_n_11 : STD_LOGIC;
  signal crc_n_12 : STD_LOGIC;
  signal crc_n_14 : STD_LOGIC;
  signal crc_n_15 : STD_LOGIC;
  signal crc_n_2 : STD_LOGIC;
  signal crc_n_3 : STD_LOGIC;
  signal crc_n_4 : STD_LOGIC;
  signal crc_n_5 : STD_LOGIC;
  signal crc_n_6 : STD_LOGIC;
  signal crc_n_7 : STD_LOGIC;
  signal crc_n_8 : STD_LOGIC;
  signal crc_n_9 : STD_LOGIC;
  signal fifo_adv : STD_LOGIC;
  signal \^fifo_empty\ : STD_LOGIC;
  signal fifo_load : STD_LOGIC;
  signal fifo_load0 : STD_LOGIC;
  signal \fifo_load_fifo_reg_n_0_[0]\ : STD_LOGIC;
  signal \fifo_load_fifo_reg_n_0_[1]\ : STD_LOGIC;
  signal \^hdlc_addr_reg[0]\ : STD_LOGIC;
  signal in6 : STD_LOGIC;
  signal len : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal len_0 : STD_LOGIC;
  signal nr_last : STD_LOGIC;
  signal ns : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ns0 : STD_LOGIC;
  signal \ns[0]_i_1_n_0\ : STD_LOGIC;
  signal \ns[1]_i_1_n_0\ : STD_LOGIC;
  signal \ns[2]_i_2_n_0\ : STD_LOGIC;
  signal ns_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ptr : STD_LOGIC;
  signal \ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \ptr[2]_i_1_n_0\ : STD_LOGIC;
  signal \ptr[2]_i_2_n_0\ : STD_LOGIC;
  signal \ptr_reg_n_0_[0]\ : STD_LOGIC;
  signal \ptr_reg_n_0_[1]\ : STD_LOGIC;
  signal \ptr_reg_n_0_[2]\ : STD_LOGIC;
  signal req_tx : STD_LOGIC;
  signal req_tx_i_1_n_0 : STD_LOGIC;
  signal req_tx_i_2_n_0 : STD_LOGIC;
  signal reset_ns : STD_LOGIC;
  signal reset_ns_reg_n_0 : STD_LOGIC;
  signal s00_axi_wstrb_0_sn_1 : STD_LOGIC;
  signal srOutSuppressZeroing : STD_LOGIC;
  signal srOutSuppressZeroing_i_1_n_0 : STD_LOGIC;
  signal srOutWord : STD_LOGIC;
  signal \srOutWord[12]_i_2_n_0\ : STD_LOGIC;
  signal \srOutWord[13]_i_2_n_0\ : STD_LOGIC;
  signal \srOutWord[14]_i_2_n_0\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[0]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[10]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[11]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[12]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[13]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[14]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[15]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[1]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[2]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[3]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[4]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[5]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[6]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[7]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[8]\ : STD_LOGIC;
  signal \srOutWord_reg_n_0_[9]\ : STD_LOGIC;
  signal srOut_n_1 : STD_LOGIC;
  signal srOut_n_2 : STD_LOGIC;
  signal srOut_n_3 : STD_LOGIC;
  signal srOut_n_4 : STD_LOGIC;
  signal srOut_n_5 : STD_LOGIC;
  signal srOut_n_6 : STD_LOGIC;
  signal srOut_n_7 : STD_LOGIC;
  signal srOut_n_8 : STD_LOGIC;
  signal srOut_n_9 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_3\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \ns[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \ns[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ns[2]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ptr[1]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \ptr[2]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of req_tx_i_2 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \srOutWord[12]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \srOutWord[13]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \srOutWord[14]_i_2\ : label is "soft_lutpair50";
begin
  fifo_empty <= \^fifo_empty\;
  \hdlc_addr_reg[0]\ <= \^hdlc_addr_reg[0]\;
  s00_axi_wstrb_0_sp_1 <= s00_axi_wstrb_0_sn_1;
\FSM_onehot_state[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => len(0),
      I1 => \ptr_reg_n_0_[0]\,
      I2 => len(1),
      I3 => \ptr_reg_n_0_[1]\,
      I4 => \ptr_reg_n_0_[2]\,
      I5 => len(2),
      O => in6
    );
\FSM_onehot_state[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => len_0,
      I1 => \FSM_onehot_state_reg_n_0_[8]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => srOutWord,
      I4 => p_1_in,
      O => \FSM_onehot_state[9]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => link_clk,
      CE => \FSM_onehot_state[9]_i_1_n_0\,
      D => srOut_n_9,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => reset_r
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => link_clk,
      CE => \FSM_onehot_state[9]_i_1_n_0\,
      D => srOut_n_8,
      Q => ptr,
      R => reset_r
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => link_clk,
      CE => \FSM_onehot_state[9]_i_1_n_0\,
      D => srOut_n_7,
      Q => ns_1,
      R => reset_r
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => link_clk,
      CE => \FSM_onehot_state[9]_i_1_n_0\,
      D => srOut_n_6,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => reset_r
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => link_clk,
      CE => \FSM_onehot_state[9]_i_1_n_0\,
      D => srOut_n_5,
      Q => p_1_in,
      R => reset_r
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => link_clk,
      CE => \FSM_onehot_state[9]_i_1_n_0\,
      D => bufWrite_n_38,
      Q => len_0,
      R => reset_r
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => link_clk,
      CE => \FSM_onehot_state[9]_i_1_n_0\,
      D => srOut_n_4,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      S => reset_r
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => link_clk,
      CE => \FSM_onehot_state[9]_i_1_n_0\,
      D => srOut_n_3,
      Q => nr_last,
      R => reset_r
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => link_clk,
      CE => \FSM_onehot_state[9]_i_1_n_0\,
      D => srOut_n_2,
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => reset_r
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => link_clk,
      CE => \FSM_onehot_state[9]_i_1_n_0\,
      D => srOut_n_1,
      Q => \FSM_onehot_state_reg_n_0_[9]\,
      R => reset_r
    );
autoheader_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => len_0,
      D => buf_to_tx(4),
      Q => autoheader,
      R => '0'
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      O => \^hdlc_addr_reg[0]\
    );
bufWrite: entity work.tester_hdlc_blocks_v1_0_0_0_hdlc_fifo
     port map (
      D(2) => bufWrite_n_35,
      D(1) => bufWrite_n_36,
      D(0) => bufWrite_n_37,
      DOUTADOUT(15 downto 0) => DOUTADOUT(15 downto 0),
      DOUTBDOUT(13 downto 10) => buf_to_tx(15 downto 12),
      DOUTBDOUT(9 downto 8) => buf_to_tx(10 downto 9),
      DOUTBDOUT(7 downto 0) => buf_to_tx(7 downto 0),
      E(0) => fifo_adv,
      \FSM_onehot_state_reg[6]\(0) => bufWrite_n_38,
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => SR(0),
      buffer_reg_bram_0_0(2) => \ptr_reg_n_0_[2]\,
      buffer_reg_bram_0_0(1) => \ptr_reg_n_0_[1]\,
      buffer_reg_bram_0_0(0) => \ptr_reg_n_0_[0]\,
      buffer_reg_bram_0_1(0) => buffer_reg_bram_0(0),
      fifo_empty => \^fifo_empty\,
      full => full,
      link_clk => link_clk,
      req_tx => req_tx,
      resetW_reg_0(0) => resetW_reg(0),
      reset_ns => reset_ns,
      reset_r => reset_r,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0),
      \srOutWord_reg[0]\(0) => crc_fcs(0),
      \srOutWord_reg[11]\(0) => ns(2),
      \srOutWord_reg[11]_0\ => crc_n_14,
      \srOutWord_reg[8]\(6) => \FSM_onehot_state_reg_n_0_[9]\,
      \srOutWord_reg[8]\(5) => nr_last,
      \srOutWord_reg[8]\(4) => \FSM_onehot_state_reg_n_0_[6]\,
      \srOutWord_reg[8]\(3) => len_0,
      \srOutWord_reg[8]\(2) => ns_1,
      \srOutWord_reg[8]\(1) => ptr,
      \srOutWord_reg[8]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \srOutWord_reg[8]_0\ => crc_n_15,
      \state2__4\ => \state2__4\,
      \wptr_reg[2]_0\(0) => fifo_load
    );
busy_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => len_0,
      I2 => p_1_in,
      O => busy0
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => busy0,
      Q => busy_reg_n_0,
      R => '0'
    );
crc: entity work.tester_hdlc_blocks_v1_0_0_0_hdlc_crc
     port map (
      AS(0) => crc_init,
      D(12) => crc_n_0,
      D(11) => crc_n_1,
      D(10) => crc_n_2,
      D(9) => crc_n_3,
      D(8) => crc_n_4,
      D(7) => crc_n_5,
      D(6) => crc_n_6,
      D(5) => crc_n_7,
      D(4) => crc_n_8,
      D(3) => crc_n_9,
      D(2) => crc_n_10,
      D(1) => crc_n_11,
      D(0) => crc_n_12,
      DOUTBDOUT(12 downto 9) => buf_to_tx(15 downto 12),
      DOUTBDOUT(8 downto 7) => buf_to_tx(10 downto 9),
      DOUTBDOUT(6 downto 0) => buf_to_tx(7 downto 1),
      E(0) => crc_enable,
      \FSM_onehot_state_reg[7]\ => crc_n_14,
      Q(6) => \FSM_onehot_state_reg_n_0_[9]\,
      Q(5) => nr_last,
      Q(4) => \FSM_onehot_state_reg_n_0_[6]\,
      Q(3) => \FSM_onehot_state_reg_n_0_[3]\,
      Q(2) => ns_1,
      Q(1) => ptr,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      crc_out(0) => crc_fcs(0),
      \lfsr_q_reg[0]_0\(15) => \srOutWord_reg_n_0_[15]\,
      \lfsr_q_reg[0]_0\(14) => \srOutWord_reg_n_0_[14]\,
      \lfsr_q_reg[0]_0\(13) => \srOutWord_reg_n_0_[13]\,
      \lfsr_q_reg[0]_0\(12) => \srOutWord_reg_n_0_[12]\,
      \lfsr_q_reg[0]_0\(11) => \srOutWord_reg_n_0_[11]\,
      \lfsr_q_reg[0]_0\(10) => \srOutWord_reg_n_0_[10]\,
      \lfsr_q_reg[0]_0\(9) => \srOutWord_reg_n_0_[9]\,
      \lfsr_q_reg[0]_0\(8) => \srOutWord_reg_n_0_[8]\,
      \lfsr_q_reg[0]_0\(7) => \srOutWord_reg_n_0_[7]\,
      \lfsr_q_reg[0]_0\(6) => \srOutWord_reg_n_0_[6]\,
      \lfsr_q_reg[0]_0\(5) => \srOutWord_reg_n_0_[5]\,
      \lfsr_q_reg[0]_0\(4) => \srOutWord_reg_n_0_[4]\,
      \lfsr_q_reg[0]_0\(3) => \srOutWord_reg_n_0_[3]\,
      \lfsr_q_reg[0]_0\(2) => \srOutWord_reg_n_0_[2]\,
      \lfsr_q_reg[0]_0\(1) => \srOutWord_reg_n_0_[1]\,
      \lfsr_q_reg[0]_0\(0) => \srOutWord_reg_n_0_[0]\,
      \lfsr_q_reg[7]_0\ => crc_n_15,
      link_clk => link_clk,
      \srOutWord_reg[10]\ => \srOutWord[14]_i_2_n_0\,
      \srOutWord_reg[12]\ => \srOutWord[12]_i_2_n_0\,
      \srOutWord_reg[15]\(0) => ns(2),
      \srOutWord_reg[9]\ => \srOutWord[13]_i_2_n_0\
    );
crc_enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ns_1,
      I1 => ptr,
      I2 => p_1_in,
      O => crc_enable0
    );
crc_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => crc_enable0,
      Q => crc_enable,
      R => '0'
    );
crc_init_reg: unisim.vcomponents.FDSE
     port map (
      C => link_clk,
      CE => '1',
      D => p_1_in,
      Q => crc_init,
      S => reset_r
    );
fifo_adv_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => nr_last,
      Q => fifo_adv,
      R => '0'
    );
\fifo_load_fifo[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => s00_axi_wdata(15),
      I1 => s00_axi_wstrb(0),
      I2 => buffer_reg_bram_0(0),
      I3 => s00_axi_wstrb(1),
      I4 => Q(3),
      I5 => \^hdlc_addr_reg[0]\,
      O => p_2_out(0)
    );
\fifo_load_fifo_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_2_out(0),
      Q => \fifo_load_fifo_reg_n_0_[0]\,
      R => '0'
    );
\fifo_load_fifo_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \fifo_load_fifo_reg_n_0_[0]\,
      Q => \fifo_load_fifo_reg_n_0_[1]\,
      R => '0'
    );
fifo_load_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \fifo_load_fifo_reg_n_0_[0]\,
      I1 => \fifo_load_fifo_reg_n_0_[1]\,
      O => fifo_load0
    );
fifo_load_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => fifo_load0,
      Q => fifo_load,
      R => '0'
    );
\len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => len_0,
      D => buf_to_tx(0),
      Q => len(0),
      R => '0'
    );
\len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => len_0,
      D => buf_to_tx(1),
      Q => len(1),
      R => '0'
    );
\len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => len_0,
      D => buf_to_tx(2),
      Q => len(2),
      R => '0'
    );
\nr_last_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => link_clk,
      CE => nr_last,
      D => D(0),
      Q => \nr_last_reg[2]_0\(0),
      S => reset_r
    );
\nr_last_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => link_clk,
      CE => nr_last,
      D => D(1),
      Q => \nr_last_reg[2]_0\(1),
      S => reset_r
    );
\nr_last_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => link_clk,
      CE => nr_last,
      D => D(2),
      Q => \nr_last_reg[2]_0\(2),
      S => reset_r
    );
\ns[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ns(0),
      O => \ns[0]_i_1_n_0\
    );
\ns[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ns(0),
      I1 => ns(1),
      O => \ns[1]_i_1_n_0\
    );
\ns[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_r,
      I1 => reset_ns_reg_n_0,
      O => ns0
    );
\ns[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ns(0),
      I1 => ns(1),
      I2 => ns(2),
      O => \ns[2]_i_2_n_0\
    );
\ns_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => ns_1,
      D => \ns[0]_i_1_n_0\,
      Q => ns(0),
      R => ns0
    );
\ns_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => ns_1,
      D => \ns[1]_i_1_n_0\,
      Q => ns(1),
      R => ns0
    );
\ns_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => ns_1,
      D => \ns[2]_i_2_n_0\,
      Q => ns(2),
      R => ns0
    );
\ptr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ptr_reg_n_0_[0]\,
      I1 => p_1_in,
      O => \ptr[0]_i_1_n_0\
    );
\ptr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \ptr_reg_n_0_[1]\,
      I1 => \ptr_reg_n_0_[0]\,
      I2 => p_1_in,
      O => \ptr[1]_i_1_n_0\
    );
\ptr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ptr,
      I1 => p_1_in,
      O => \ptr[2]_i_1_n_0\
    );
\ptr[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \ptr_reg_n_0_[2]\,
      I1 => \ptr_reg_n_0_[1]\,
      I2 => \ptr_reg_n_0_[0]\,
      I3 => p_1_in,
      O => \ptr[2]_i_2_n_0\
    );
\ptr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => link_clk,
      CE => \ptr[2]_i_1_n_0\,
      D => \ptr[0]_i_1_n_0\,
      Q => \ptr_reg_n_0_[0]\,
      S => \FSM_onehot_state_reg_n_0_[6]\
    );
\ptr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => link_clk,
      CE => \ptr[2]_i_1_n_0\,
      D => \ptr[1]_i_1_n_0\,
      Q => \ptr_reg_n_0_[1]\,
      S => \FSM_onehot_state_reg_n_0_[6]\
    );
\ptr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => link_clk,
      CE => \ptr[2]_i_1_n_0\,
      D => \ptr[2]_i_2_n_0\,
      Q => \ptr_reg_n_0_[2]\,
      S => \FSM_onehot_state_reg_n_0_[6]\
    );
req_tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110101000101010"
    )
        port map (
      I0 => reset_r,
      I1 => busy_reg_n_0,
      I2 => req_tx,
      I3 => s00_axi_wstrb_0_sn_1,
      I4 => req_tx_i_2_n_0,
      I5 => s00_axi_wdata(15),
      O => req_tx_i_1_n_0
    );
req_tx_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      O => req_tx_i_2_n_0
    );
req_tx_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => req_tx_i_1_n_0,
      Q => req_tx,
      R => '0'
    );
reset_ns_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => reset_ns,
      Q => reset_ns_reg_n_0,
      R => '0'
    );
reset_r_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => buffer_reg_bram_0(0),
      I2 => s00_axi_wstrb(1),
      O => s00_axi_wstrb_0_sn_1
    );
srOut: entity work.tester_hdlc_blocks_v1_0_0_0_hdlc_outputregister
     port map (
      D(8) => srOut_n_1,
      D(7) => srOut_n_2,
      D(6) => srOut_n_3,
      D(5) => srOut_n_4,
      D(4) => srOut_n_5,
      D(3) => srOut_n_6,
      D(2) => srOut_n_7,
      D(1) => srOut_n_8,
      D(0) => srOut_n_9,
      Q(9) => \FSM_onehot_state_reg_n_0_[9]\,
      Q(8) => \FSM_onehot_state_reg_n_0_[8]\,
      Q(7) => nr_last,
      Q(6) => \FSM_onehot_state_reg_n_0_[6]\,
      Q(5) => len_0,
      Q(4) => p_1_in,
      Q(3) => \FSM_onehot_state_reg_n_0_[3]\,
      Q(2) => ns_1,
      Q(1) => ptr,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      autoheader => autoheader,
      fifo_empty => \^fifo_empty\,
      in6 => in6,
      link_clk => link_clk,
      req_tx => req_tx,
      reset_r => reset_r,
      serout => serout,
      srOutSuppressZeroing => srOutSuppressZeroing,
      \sr_reg[15]_0\(15) => \srOutWord_reg_n_0_[15]\,
      \sr_reg[15]_0\(14) => \srOutWord_reg_n_0_[14]\,
      \sr_reg[15]_0\(13) => \srOutWord_reg_n_0_[13]\,
      \sr_reg[15]_0\(12) => \srOutWord_reg_n_0_[12]\,
      \sr_reg[15]_0\(11) => \srOutWord_reg_n_0_[11]\,
      \sr_reg[15]_0\(10) => \srOutWord_reg_n_0_[10]\,
      \sr_reg[15]_0\(9) => \srOutWord_reg_n_0_[9]\,
      \sr_reg[15]_0\(8) => \srOutWord_reg_n_0_[8]\,
      \sr_reg[15]_0\(7) => \srOutWord_reg_n_0_[7]\,
      \sr_reg[15]_0\(6) => \srOutWord_reg_n_0_[6]\,
      \sr_reg[15]_0\(5) => \srOutWord_reg_n_0_[5]\,
      \sr_reg[15]_0\(4) => \srOutWord_reg_n_0_[4]\,
      \sr_reg[15]_0\(3) => \srOutWord_reg_n_0_[3]\,
      \sr_reg[15]_0\(2) => \srOutWord_reg_n_0_[2]\,
      \sr_reg[15]_0\(1) => \srOutWord_reg_n_0_[1]\,
      \sr_reg[15]_0\(0) => \srOutWord_reg_n_0_[0]\,
      \state2__4\ => \state2__4\
    );
srOutSuppressZeroing_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFEFEFE00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_state_reg_n_0_[9]\,
      I3 => srOutWord,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => srOutSuppressZeroing,
      O => srOutSuppressZeroing_i_1_n_0
    );
srOutSuppressZeroing_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => srOutSuppressZeroing_i_1_n_0,
      Q => srOutSuppressZeroing,
      R => '0'
    );
\srOutWord[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_state_reg_n_0_[9]\,
      O => \srOutWord[12]_i_2_n_0\
    );
\srOutWord[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => ns_1,
      I1 => ns(0),
      I2 => \FSM_onehot_state_reg_n_0_[9]\,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \srOutWord[13]_i_2_n_0\
    );
\srOutWord[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => ns_1,
      I1 => ns(1),
      I2 => \FSM_onehot_state_reg_n_0_[9]\,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \srOutWord[14]_i_2_n_0\
    );
\srOutWord[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => nr_last,
      I1 => ptr,
      I2 => ns_1,
      I3 => \FSM_onehot_state_reg_n_0_[9]\,
      I4 => \FSM_onehot_state_reg_n_0_[6]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => srOutWord
    );
\srOutWord_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => bufWrite_n_37,
      Q => \srOutWord_reg_n_0_[0]\,
      R => '0'
    );
\srOutWord_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => crc_n_4,
      Q => \srOutWord_reg_n_0_[10]\,
      R => '0'
    );
\srOutWord_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => bufWrite_n_35,
      Q => \srOutWord_reg_n_0_[11]\,
      R => '0'
    );
\srOutWord_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => crc_n_3,
      Q => \srOutWord_reg_n_0_[12]\,
      R => '0'
    );
\srOutWord_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => crc_n_2,
      Q => \srOutWord_reg_n_0_[13]\,
      R => '0'
    );
\srOutWord_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => crc_n_1,
      Q => \srOutWord_reg_n_0_[14]\,
      R => '0'
    );
\srOutWord_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => crc_n_0,
      Q => \srOutWord_reg_n_0_[15]\,
      R => '0'
    );
\srOutWord_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => crc_n_12,
      Q => \srOutWord_reg_n_0_[1]\,
      R => '0'
    );
\srOutWord_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => crc_n_11,
      Q => \srOutWord_reg_n_0_[2]\,
      R => '0'
    );
\srOutWord_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => crc_n_10,
      Q => \srOutWord_reg_n_0_[3]\,
      R => '0'
    );
\srOutWord_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => crc_n_9,
      Q => \srOutWord_reg_n_0_[4]\,
      R => '0'
    );
\srOutWord_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => crc_n_8,
      Q => \srOutWord_reg_n_0_[5]\,
      R => '0'
    );
\srOutWord_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => crc_n_7,
      Q => \srOutWord_reg_n_0_[6]\,
      R => '0'
    );
\srOutWord_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => crc_n_6,
      Q => \srOutWord_reg_n_0_[7]\,
      R => '0'
    );
\srOutWord_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => bufWrite_n_36,
      Q => \srOutWord_reg_n_0_[8]\,
      R => '0'
    );
\srOutWord_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => srOutWord,
      D => crc_n_5,
      Q => \srOutWord_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_hdlc_blocks_v1_0_0_0_hdlc_top is
  port (
    serout : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    hdlc_reset : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    buffer_reg_bram_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sr_in_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_hdlc_blocks_v1_0_0_0_hdlc_top : entity is "hdlc_top";
end tester_hdlc_blocks_v1_0_0_0_hdlc_top;

architecture STRUCTURE of tester_hdlc_blocks_v1_0_0_0_hdlc_top is
  signal fifo_empty : STD_LOGIC;
  signal full : STD_LOGIC;
  signal nr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal nr_last : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal read_fifo : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal resetR : STD_LOGIC;
  signal resetW : STD_LOGIC;
  signal reset_r : STD_LOGIC;
  signal reset_r0 : STD_LOGIC;
  signal \state2__4\ : STD_LOGIC;
  signal theTX_n_21 : STD_LOGIC;
  signal theTX_n_22 : STD_LOGIC;
begin
reset_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => theTX_n_22,
      I1 => Q(3),
      I2 => s00_axi_wdata(5),
      I3 => theTX_n_21,
      I4 => hdlc_reset,
      O => reset_r0
    );
reset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => reset_r0,
      Q => reset_r,
      R => '0'
    );
theRX: entity work.tester_hdlc_blocks_v1_0_0_0_hdlc_rx
     port map (
      D(15 downto 0) => D(15 downto 0),
      DOUTADOUT(15 downto 0) => read_fifo(15 downto 0),
      \FSM_onehot_state_reg[6]\(2 downto 0) => nr_last(2 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => resetR,
      \axi_rdata_reg[14]\ => theTX_n_22,
      fifo_empty => fifo_empty,
      full => full,
      link_clk => link_clk,
      \nr_reg[2]_0\(2 downto 0) => nr(2 downto 0),
      \pulseFifo_reg[0]_0\(0) => buffer_reg_bram_0(0),
      reset_r => reset_r,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0),
      \sr_in_reg[8]\(0) => \sr_in_reg[8]\(0),
      \state2__4\ => \state2__4\,
      \wptr_reg[0]_0\(0) => resetW
    );
theTX: entity work.tester_hdlc_blocks_v1_0_0_0_hdlc_tx
     port map (
      D(2 downto 0) => nr(2 downto 0),
      DOUTADOUT(15 downto 0) => read_fifo(15 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => resetW,
      buffer_reg_bram_0(0) => buffer_reg_bram_0(0),
      fifo_empty => fifo_empty,
      full => full,
      \hdlc_addr_reg[0]\ => theTX_n_22,
      link_clk => link_clk,
      \nr_last_reg[2]_0\(2 downto 0) => nr_last(2 downto 0),
      resetW_reg(0) => resetR,
      reset_r => reset_r,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0),
      s00_axi_wstrb_0_sp_1 => theTX_n_21,
      serout => serout,
      \state2__4\ => \state2__4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0_S00_AXI is
  port (
    fmc_mosi_p : out STD_LOGIC;
    fmc_mosi_n : out STD_LOGIC;
    fmc_clk_p : out STD_LOGIC;
    fmc_clk_n : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fmc_miso_p : in STD_LOGIC;
    fmc_miso_n : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0_S00_AXI : entity is "hdlc_blocks_3rd_v1_0_S00_AXI";
end tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0_S00_AXI;

architecture STRUCTURE of tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0_S00_AXI is
  signal \FSM_onehot_axi_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_reg_n_0_[6]\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal axi_rdata0 : STD_LOGIC;
  signal axi_rvalid0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal cap_miso : STD_LOGIC;
  signal clk_40_reg_i_1_n_0 : STD_LOGIC;
  signal dly1_miso : STD_LOGIC;
  signal hdlc_Output : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal hdlc_addr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \hdlc_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \hdlc_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \hdlc_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \hdlc_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \hdlc_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal hdlc_reset : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_in0_in : STD_LOGIC;
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal serout : STD_LOGIC;
  signal tmp_clk : STD_LOGIC;
  signal tmp_miso : STD_LOGIC;
  signal tmp_mosi : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_axi_state[0]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_state[1]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_state[4]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_state[7]_i_1\ : label is "soft_lutpair55";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_reg[0]\ : label is "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_reg[1]\ : label is "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_reg[2]\ : label is "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_reg[3]\ : label is "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_reg[4]\ : label is "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_reg[5]\ : label is "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_reg[6]\ : label is "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_reg[7]\ : label is "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IBUFDS_mi : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUFDS_mi : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUFDS_mi : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUFDS_mi : label is "AUTO";
  attribute BOX_TYPE of OBUFDS_clk : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_clk : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of OBUFDS_clk : label is "OBUFDS";
  attribute BOX_TYPE of OBUFDS_mosi : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_mosi : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_mosi : label is "OBUFDS";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \hdlc_addr[0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \hdlc_addr[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \hdlc_addr[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \hdlc_addr[3]_i_2\ : label is "soft_lutpair58";
begin
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
\FSM_onehot_axi_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \FSM_onehot_axi_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_axi_state_reg_n_0_[2]\,
      O => \FSM_onehot_axi_state[0]_i_1_n_0\
    );
\FSM_onehot_axi_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => \FSM_onehot_axi_state[1]_i_2_n_0\,
      I1 => s00_axi_arvalid,
      I2 => p_0_in_0,
      I3 => s00_axi_awvalid,
      O => \FSM_onehot_axi_state[1]_i_1_n_0\
    );
\FSM_onehot_axi_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \FSM_onehot_axi_state_reg_n_0_[0]\,
      I2 => s00_axi_rready,
      I3 => \FSM_onehot_axi_state_reg_n_0_[5]\,
      O => \FSM_onehot_axi_state[1]_i_2_n_0\
    );
\FSM_onehot_axi_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_axi_state_reg_n_0_[4]\,
      I1 => s00_axi_wvalid,
      O => \FSM_onehot_axi_state[3]_i_1_n_0\
    );
\FSM_onehot_axi_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => p_0_in_0,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => \FSM_onehot_axi_state_reg_n_0_[4]\,
      O => \FSM_onehot_axi_state[4]_i_1_n_0\
    );
\FSM_onehot_axi_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \FSM_onehot_axi_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_axi_state_reg_n_0_[6]\,
      O => \FSM_onehot_axi_state[5]_i_1_n_0\
    );
\FSM_onehot_axi_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => p_0_in_0,
      O => \FSM_onehot_axi_state[7]_i_1_n_0\
    );
\FSM_onehot_axi_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_axi_state[0]_i_1_n_0\,
      Q => \FSM_onehot_axi_state_reg_n_0_[0]\,
      R => axi_bvalid_i_1_n_0
    );
\FSM_onehot_axi_state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_axi_state[1]_i_1_n_0\,
      Q => p_0_in_0,
      S => axi_bvalid_i_1_n_0
    );
\FSM_onehot_axi_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_axi_state_reg_n_0_[3]\,
      Q => \FSM_onehot_axi_state_reg_n_0_[2]\,
      R => axi_bvalid_i_1_n_0
    );
\FSM_onehot_axi_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_axi_state[3]_i_1_n_0\,
      Q => \FSM_onehot_axi_state_reg_n_0_[3]\,
      R => axi_bvalid_i_1_n_0
    );
\FSM_onehot_axi_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_axi_state[4]_i_1_n_0\,
      Q => \FSM_onehot_axi_state_reg_n_0_[4]\,
      R => axi_bvalid_i_1_n_0
    );
\FSM_onehot_axi_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_axi_state[5]_i_1_n_0\,
      Q => \FSM_onehot_axi_state_reg_n_0_[5]\,
      R => axi_bvalid_i_1_n_0
    );
\FSM_onehot_axi_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in0_in,
      Q => \FSM_onehot_axi_state_reg_n_0_[6]\,
      R => axi_bvalid_i_1_n_0
    );
\FSM_onehot_axi_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_axi_state[7]_i_1_n_0\,
      Q => p_1_in0_in,
      R => axi_bvalid_i_1_n_0
    );
IBUFDS_mi: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => fmc_miso_p,
      IB => fmc_miso_n,
      O => tmp_miso
    );
OBUFDS_clk: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => tmp_clk,
      O => fmc_clk_p,
      OB => fmc_clk_n
    );
OBUFDS_mosi: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => tmp_mosi,
      O => fmc_mosi_p,
      OB => fmc_mosi_n
    );
axi_arready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC8"
    )
        port map (
      I0 => p_1_in0_in,
      I1 => s00_axi_arvalid,
      I2 => \FSM_onehot_axi_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_axi_state_reg_n_0_[5]\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => '0'
    );
axi_bvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555C000"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_awready\,
      I4 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_2_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_2_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_axi_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_axi_state_reg_n_0_[5]\,
      O => axi_rdata0
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(0),
      Q => s00_axi_rdata(0),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(10),
      Q => s00_axi_rdata(10),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(11),
      Q => s00_axi_rdata(11),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(12),
      Q => s00_axi_rdata(12),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(13),
      Q => s00_axi_rdata(13),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(14),
      Q => s00_axi_rdata(14),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(15),
      Q => s00_axi_rdata(15),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(1),
      Q => s00_axi_rdata(1),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(2),
      Q => s00_axi_rdata(2),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(3),
      Q => s00_axi_rdata(3),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(4),
      Q => s00_axi_rdata(4),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(5),
      Q => s00_axi_rdata(5),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(6),
      Q => s00_axi_rdata(6),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(7),
      Q => s00_axi_rdata(7),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(8),
      Q => s00_axi_rdata(8),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => hdlc_Output(9),
      Q => s00_axi_rdata(9),
      R => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_rvalid0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid0,
      Q => s00_axi_rvalid,
      R => '0'
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \FSM_onehot_axi_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_axi_state_reg_n_0_[0]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_awready\,
      R => '0'
    );
cap_miso_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => tmp_miso,
      Q => cap_miso,
      R => '0'
    );
clk_40_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_clk,
      O => clk_40_reg_i_1_n_0
    );
clk_40_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => clk_40_reg_i_1_n_0,
      Q => tmp_clk,
      R => '0'
    );
dly1_miso_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => cap_miso,
      Q => dly1_miso,
      R => '0'
    );
dly_mosi_reg: unisim.vcomponents.FDRE
     port map (
      C => link_clk,
      CE => '1',
      D => serout,
      Q => tmp_mosi,
      R => '0'
    );
\hdlc_addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_arvalid,
      I2 => s00_axi_araddr(0),
      O => \hdlc_addr[0]_i_1_n_0\
    );
\hdlc_addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_arvalid,
      I2 => s00_axi_araddr(1),
      O => \hdlc_addr[1]_i_1_n_0\
    );
\hdlc_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_arvalid,
      I2 => s00_axi_araddr(2),
      O => \hdlc_addr[2]_i_1_n_0\
    );
\hdlc_addr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_arvalid,
      I2 => p_0_in_0,
      O => \hdlc_addr[3]_i_1_n_0\
    );
\hdlc_addr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => s00_axi_awaddr(3),
      I1 => s00_axi_arvalid,
      I2 => s00_axi_araddr(3),
      O => \hdlc_addr[3]_i_2_n_0\
    );
\hdlc_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \hdlc_addr[3]_i_1_n_0\,
      D => \hdlc_addr[0]_i_1_n_0\,
      Q => hdlc_addr(0),
      R => '0'
    );
\hdlc_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \hdlc_addr[3]_i_1_n_0\,
      D => \hdlc_addr[1]_i_1_n_0\,
      Q => hdlc_addr(1),
      R => '0'
    );
\hdlc_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \hdlc_addr[3]_i_1_n_0\,
      D => \hdlc_addr[2]_i_1_n_0\,
      Q => hdlc_addr(2),
      R => '0'
    );
\hdlc_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \hdlc_addr[3]_i_1_n_0\,
      D => \hdlc_addr[3]_i_2_n_0\,
      Q => hdlc_addr(3),
      R => '0'
    );
hdlc_reset_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      Q => hdlc_reset,
      S => axi_bvalid_i_1_n_0
    );
hdlc_wrapper: entity work.tester_hdlc_blocks_v1_0_0_0_hdlc_top
     port map (
      D(15 downto 0) => hdlc_Output(15 downto 0),
      Q(3 downto 0) => hdlc_addr(3 downto 0),
      buffer_reg_bram_0(0) => \FSM_onehot_axi_state_reg_n_0_[3]\,
      hdlc_reset => hdlc_reset,
      link_clk => link_clk,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0),
      serout => serout,
      \sr_in_reg[8]\(0) => dly1_miso
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0 is
  port (
    fmc_mosi_p : out STD_LOGIC;
    fmc_mosi_n : out STD_LOGIC;
    fmc_clk_p : out STD_LOGIC;
    fmc_clk_n : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fmc_miso_p : in STD_LOGIC;
    fmc_miso_n : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0 : entity is "hdlc_blocks_3rd_v1_0";
end tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0;

architecture STRUCTURE of tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0 is
begin
hdlc_blocks_3rd_v1_0_S00_AXI_inst: entity work.tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0_S00_AXI
     port map (
      fmc_clk_n => fmc_clk_n,
      fmc_clk_p => fmc_clk_p,
      fmc_miso_n => fmc_miso_n,
      fmc_miso_p => fmc_miso_p,
      fmc_mosi_n => fmc_mosi_n,
      fmc_mosi_p => fmc_mosi_p,
      link_clk => link_clk,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(3 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(3 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(15 downto 0) => s00_axi_rdata(15 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_hdlc_blocks_v1_0_0_0 is
  port (
    led_output : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fmc_miso_p : in STD_LOGIC;
    fmc_miso_n : in STD_LOGIC;
    fmc_mosi_p : out STD_LOGIC;
    fmc_mosi_n : out STD_LOGIC;
    fmc_clk_p : out STD_LOGIC;
    fmc_clk_n : out STD_LOGIC;
    aux_i2c_enable : out STD_LOGIC;
    aux_link_disable : out STD_LOGIC;
    fmc_led3 : out STD_LOGIC;
    fmc_led4 : out STD_LOGIC;
    reset_b : out STD_LOGIC;
    link_clk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of tester_hdlc_blocks_v1_0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of tester_hdlc_blocks_v1_0_0_0 : entity is "tester_hdlc_blocks_v1_0_0_0,hdlc_blocks_3rd_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of tester_hdlc_blocks_v1_0_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of tester_hdlc_blocks_v1_0_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of tester_hdlc_blocks_v1_0_0_0 : entity is "hdlc_blocks_3rd_v1_0,Vivado 2018.3";
end tester_hdlc_blocks_v1_0_0_0;

architecture STRUCTURE of tester_hdlc_blocks_v1_0_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^s00_axi_aresetn\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of fmc_clk_n : signal is "xilinx.com:signal:clock:1.0 fmc_clk_n CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of fmc_clk_n : signal is "XIL_INTERFACENAME fmc_clk_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN tester_hdlc_blocks_v1_0_0_0_fmc_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fmc_clk_p : signal is "xilinx.com:signal:clock:1.0 fmc_clk_p CLK";
  attribute X_INTERFACE_PARAMETER of fmc_clk_p : signal is "XIL_INTERFACENAME fmc_clk_p, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN tester_hdlc_blocks_v1_0_0_0_fmc_clk_p, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of link_clk : signal is "xilinx.com:signal:clock:1.0 link_clk CLK";
  attribute X_INTERFACE_PARAMETER of link_clk : signal is "XIL_INTERFACENAME link_clk, FREQ_HZ 80000000, PHASE 0.0, CLK_DOMAIN tester_clk_wiz_0_0_clk_320, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_b : signal is "xilinx.com:signal:reset:1.0 reset_b RST";
  attribute X_INTERFACE_PARAMETER of reset_b : signal is "XIL_INTERFACENAME reset_b, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 99999985, PHASE 0.000, CLK_DOMAIN tester_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999985, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN tester_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
  \^s00_axi_aresetn\ <= s00_axi_aresetn;
  aux_i2c_enable <= \<const0>\;
  aux_link_disable <= \<const0>\;
  fmc_led3 <= \<const0>\;
  fmc_led4 <= \<const1>\;
  led_output(7) <= \<const0>\;
  led_output(6) <= \<const1>\;
  led_output(5) <= \<const0>\;
  led_output(4) <= \<const1>\;
  led_output(3) <= \<const0>\;
  led_output(2) <= \<const1>\;
  led_output(1) <= \<const0>\;
  led_output(0) <= \<const1>\;
  reset_b <= \^s00_axi_aresetn\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \<const0>\;
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \<const0>\;
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \<const0>\;
  s00_axi_rdata(24) <= \<const0>\;
  s00_axi_rdata(23) <= \<const0>\;
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \<const0>\;
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \<const0>\;
  s00_axi_rdata(18) <= \<const0>\;
  s00_axi_rdata(17) <= \<const0>\;
  s00_axi_rdata(16) <= \<const0>\;
  s00_axi_rdata(15 downto 0) <= \^s00_axi_rdata\(15 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s00_axi_wready <= \^s00_axi_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0
     port map (
      fmc_clk_n => fmc_clk_n,
      fmc_clk_p => fmc_clk_p,
      fmc_miso_n => fmc_miso_n,
      fmc_miso_p => fmc_miso_p,
      fmc_mosi_n => fmc_mosi_n,
      fmc_mosi_p => fmc_mosi_p,
      link_clk => link_clk,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(5 downto 2),
      s00_axi_aresetn => \^s00_axi_aresetn\,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(5 downto 2),
      s00_axi_awready => \^s00_axi_awready\,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(15 downto 0) => \^s00_axi_rdata\(15 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
