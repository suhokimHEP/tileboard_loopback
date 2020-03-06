-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct 29 14:15:22 2019
-- Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_fastcontrol_axi_0_0/tester_fastcontrol_axi_0_0_sim_netlist.vhdl
-- Design      : tester_fastcontrol_axi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu2cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fast_control_encode is
  port (
    \cmd_reg[3]_0\ : out STD_LOGIC;
    \cmd_reg[2]_0\ : out STD_LOGIC;
    \cmd_reg[1]_0\ : out STD_LOGIC;
    \cmd_reg[0]_0\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    debug_non_idle_now0 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cmd_reg[3]_1\ : in STD_LOGIC;
    ext_lhc_clk : in STD_LOGIC;
    \cmd_reg[2]_1\ : in STD_LOGIC;
    \cmd_reg[1]_1\ : in STD_LOGIC;
    \cmd_reg[0]_1\ : in STD_LOGIC;
    invalid_r_reg_0 : in STD_LOGIC;
    idleonly : in STD_LOGIC;
    enable_fc : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fast_control_encode : entity is "hgcal_fast_control_encode";
end tester_fastcontrol_axi_0_0_hgcal_fast_control_encode;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fast_control_encode is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^cmd_reg[0]_0\ : STD_LOGIC;
  signal \^cmd_reg[1]_0\ : STD_LOGIC;
  signal \^cmd_reg[2]_0\ : STD_LOGIC;
  signal \^cmd_reg[3]_0\ : STD_LOGIC;
begin
  DI(0) <= \^di\(0);
  \cmd_reg[0]_0\ <= \^cmd_reg[0]_0\;
  \cmd_reg[1]_0\ <= \^cmd_reg[1]_0\;
  \cmd_reg[2]_0\ <= \^cmd_reg[2]_0\;
  \cmd_reg[3]_0\ <= \^cmd_reg[3]_0\;
\cmd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \cmd_reg[0]_1\,
      Q => \^cmd_reg[0]_0\,
      R => '0'
    );
\cmd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \cmd_reg[1]_1\,
      Q => \^cmd_reg[1]_0\,
      R => '0'
    );
\cmd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \cmd_reg[2]_1\,
      Q => \^cmd_reg[2]_0\,
      R => '0'
    );
\cmd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \cmd_reg[3]_1\,
      Q => \^cmd_reg[3]_0\,
      R => '0'
    );
\counter[0]_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(0),
      I1 => D(0),
      O => S(0)
    );
debug_non_idle_now_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000F000F000E00"
    )
        port map (
      I0 => \^cmd_reg[1]_0\,
      I1 => \^cmd_reg[0]_0\,
      I2 => idleonly,
      I3 => enable_fc,
      I4 => \^cmd_reg[3]_0\,
      I5 => \^cmd_reg[2]_0\,
      O => debug_non_idle_now0
    );
invalid_r_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => invalid_r_reg_0,
      Q => \^di\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed is
  port (
    fire_reg_0 : out STD_LOGIC;
    latched_req : out STD_LOGIC;
    fire_reg_1 : out STD_LOGIC;
    fire_reg_2 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    pending0 : in STD_LOGIC;
    reset_40 : in STD_LOGIC;
    enable_orbitsync : in STD_LOGIC;
    fc_l1a : in STD_LOGIC;
    fc_daqresync : in STD_LOGIC;
    invalid_r_reg : in STD_LOGIC;
    fc_internaltest : in STD_LOGIC;
    invalid_r_reg_0 : in STD_LOGIC;
    fc_linkreset : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed : entity is "hgcal_fc_manager_bxtimed";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed is
  signal \^fire_reg_0\ : STD_LOGIC;
  signal \^fire_reg_2\ : STD_LOGIC;
  signal \^latched_req\ : STD_LOGIC;
  signal latched_req_i_1_n_0 : STD_LOGIC;
  signal pending : STD_LOGIC;
  signal req_async_40 : STD_LOGIC;
  signal was_req_40 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of FDPE_re : label is "PRIMITIVE";
begin
  fire_reg_0 <= \^fire_reg_0\;
  fire_reg_2 <= \^fire_reg_2\;
  latched_req <= \^latched_req\;
FDPE_re: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => ext_lhc_clk,
      CE => '1',
      D => Q(0),
      PRE => Q(0),
      Q => req_async_40
    );
\cmd[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^fire_reg_0\,
      I1 => fc_linkreset,
      O => \^fire_reg_2\
    );
\counter[0]_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fire_reg_0\,
      I1 => D(0),
      O => S(0)
    );
fire_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => pending,
      Q => \^fire_reg_0\,
      R => '0'
    );
invalid_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020200000203"
    )
        port map (
      I0 => fc_l1a,
      I1 => fc_daqresync,
      I2 => \^fire_reg_2\,
      I3 => invalid_r_reg,
      I4 => fc_internaltest,
      I5 => invalid_r_reg_0,
      O => fire_reg_1
    );
latched_req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044440400"
    )
        port map (
      I0 => reset_40,
      I1 => enable_orbitsync,
      I2 => was_req_40,
      I3 => req_async_40,
      I4 => \^latched_req\,
      I5 => \^fire_reg_0\,
      O => latched_req_i_1_n_0
    );
latched_req_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => latched_req_i_1_n_0,
      Q => \^latched_req\,
      R => '0'
    );
pending_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => pending0,
      Q => pending,
      R => '0'
    );
was_req_40_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => req_async_40,
      Q => was_req_40,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_11 is
  port (
    nextos : out STD_LOGIC;
    fire_reg_0 : out STD_LOGIC;
    fire_reg_1 : out STD_LOGIC;
    pending0 : out STD_LOGIC;
    fire_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    \start_sequence_40_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    invalid_r_reg : in STD_LOGIC;
    invalid_r_reg_0 : in STD_LOGIC;
    fc_calibrationreq : in STD_LOGIC;
    fc_calibrationl1a : in STD_LOGIC;
    fc_internaltest : in STD_LOGIC;
    latched_req : in STD_LOGIC;
    \pending_i_3__2_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    enable_orbitsync : in STD_LOGIC;
    reset_40 : in STD_LOGIC;
    \counter_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_11 : entity is "hgcal_fc_manager_bxtimed";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_11;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_11 is
  signal \^fire_reg_0\ : STD_LOGIC;
  signal latched_req_0 : STD_LOGIC;
  signal \latched_req_i_1__1_n_0\ : STD_LOGIC;
  signal \^nextos\ : STD_LOGIC;
  signal pending0_1 : STD_LOGIC;
  signal \pending_i_2__2_n_0\ : STD_LOGIC;
  signal \pending_i_3__2_n_0\ : STD_LOGIC;
  signal \pending_i_4__2_n_0\ : STD_LOGIC;
  signal \pending_i_5__2_n_0\ : STD_LOGIC;
  signal \pending_i_6__2_n_0\ : STD_LOGIC;
  signal \pending_i_7__2_n_0\ : STD_LOGIC;
  signal \pending_i_8__2_n_0\ : STD_LOGIC;
  signal start_sequence_40 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \start_sequence_40[0]_i_1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[10]_i_1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[10]_i_2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[11]_i_1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[11]_i_2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[1]_i_1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[2]_i_1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[3]_i_1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[4]_i_1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[5]_i_1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[7]_i_1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \start_sequence_40[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \start_sequence_40[11]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \start_sequence_40[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \start_sequence_40[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \start_sequence_40[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \start_sequence_40[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \start_sequence_40[8]_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \start_sequence_40[9]_i_4\ : label is "soft_lutpair21";
begin
  fire_reg_0 <= \^fire_reg_0\;
  nextos <= \^nextos\;
\cmd[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000100"
    )
        port map (
      I0 => \^fire_reg_0\,
      I1 => invalid_r_reg,
      I2 => invalid_r_reg_0,
      I3 => fc_calibrationreq,
      I4 => fc_calibrationl1a,
      I5 => fc_internaltest,
      O => fire_reg_1
    );
\counter[0]_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fire_reg_0\,
      I1 => \counter_reg[7]\(0),
      O => fire_reg_2(0)
    );
fire_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \^nextos\,
      Q => \^fire_reg_0\,
      R => '0'
    );
\latched_req_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => reset_40,
      I1 => enable_orbitsync,
      I2 => \^fire_reg_0\,
      O => \latched_req_i_1__1_n_0\
    );
latched_req_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \latched_req_i_1__1_n_0\,
      Q => latched_req_0,
      R => '0'
    );
\pending_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002002"
    )
        port map (
      I0 => latched_req,
      I1 => \pending_i_2__2_n_0\,
      I2 => \pending_i_3__2_0\(9),
      I3 => start_sequence_40(9),
      I4 => \pending_i_3__2_n_0\,
      I5 => \pending_i_4__2_n_0\,
      O => pending0
    );
\pending_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002002"
    )
        port map (
      I0 => latched_req_0,
      I1 => \pending_i_2__2_n_0\,
      I2 => \pending_i_3__2_0\(9),
      I3 => start_sequence_40(9),
      I4 => \pending_i_3__2_n_0\,
      I5 => \pending_i_4__2_n_0\,
      O => pending0_1
    );
\pending_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7D7DFF7D"
    )
        port map (
      I0 => enable_orbitsync,
      I1 => \pending_i_3__2_0\(10),
      I2 => start_sequence_40(10),
      I3 => start_sequence_40(7),
      I4 => \pending_i_3__2_0\(7),
      O => \pending_i_2__2_n_0\
    );
\pending_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEFFFFEFEEEFEE"
    )
        port map (
      I0 => \pending_i_5__2_n_0\,
      I1 => \pending_i_6__2_n_0\,
      I2 => start_sequence_40(3),
      I3 => \pending_i_3__2_0\(3),
      I4 => start_sequence_40(7),
      I5 => \pending_i_3__2_0\(7),
      O => \pending_i_3__2_n_0\
    );
\pending_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF66F6"
    )
        port map (
      I0 => \pending_i_3__2_0\(1),
      I1 => start_sequence_40(1),
      I2 => \pending_i_3__2_0\(5),
      I3 => start_sequence_40(5),
      I4 => \pending_i_7__2_n_0\,
      I5 => \pending_i_8__2_n_0\,
      O => \pending_i_4__2_n_0\
    );
\pending_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFFFFFF22F2"
    )
        port map (
      I0 => start_sequence_40(3),
      I1 => \pending_i_3__2_0\(3),
      I2 => start_sequence_40(11),
      I3 => \pending_i_3__2_0\(11),
      I4 => start_sequence_40(6),
      I5 => \pending_i_3__2_0\(6),
      O => \pending_i_5__2_n_0\
    );
\pending_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => start_sequence_40(11),
      I1 => \pending_i_3__2_0\(11),
      I2 => start_sequence_40(0),
      I3 => \pending_i_3__2_0\(0),
      O => \pending_i_6__2_n_0\
    );
\pending_i_7__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66F666F6FFFF66F6"
    )
        port map (
      I0 => start_sequence_40(2),
      I1 => \pending_i_3__2_0\(2),
      I2 => \pending_i_3__2_0\(8),
      I3 => start_sequence_40(8),
      I4 => start_sequence_40(5),
      I5 => \pending_i_3__2_0\(5),
      O => \pending_i_7__2_n_0\
    );
\pending_i_8__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FF22FF2FFFF2FF2"
    )
        port map (
      I0 => start_sequence_40(0),
      I1 => \pending_i_3__2_0\(0),
      I2 => start_sequence_40(4),
      I3 => \pending_i_3__2_0\(4),
      I4 => start_sequence_40(8),
      I5 => \pending_i_3__2_0\(8),
      O => \pending_i_8__2_n_0\
    );
pending_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => pending0_1,
      Q => \^nextos\,
      R => '0'
    );
\start_sequence_40[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(0),
      O => \start_sequence_40[0]_i_1_n_0\
    );
\start_sequence_40[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(10),
      I1 => \start_sequence_40_reg[11]_0\(7),
      I2 => \start_sequence_40_reg[11]_0\(6),
      I3 => \start_sequence_40_reg[11]_0\(9),
      I4 => \start_sequence_40_reg[11]_0\(8),
      I5 => \start_sequence_40[10]_i_2_n_0\,
      O => \start_sequence_40[10]_i_1_n_0\
    );
\start_sequence_40[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(2),
      I1 => \start_sequence_40_reg[11]_0\(3),
      I2 => \start_sequence_40_reg[11]_0\(1),
      I3 => \start_sequence_40_reg[11]_0\(0),
      I4 => \start_sequence_40_reg[11]_0\(5),
      I5 => \start_sequence_40_reg[11]_0\(4),
      O => \start_sequence_40[10]_i_2_n_0\
    );
\start_sequence_40[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(11),
      I1 => \start_sequence_40_reg[11]_0\(10),
      I2 => \start_sequence_40[11]_i_2_n_0\,
      O => \start_sequence_40[11]_i_1_n_0\
    );
\start_sequence_40[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \start_sequence_40[10]_i_2_n_0\,
      I1 => \start_sequence_40_reg[11]_0\(8),
      I2 => \start_sequence_40_reg[11]_0\(9),
      I3 => \start_sequence_40_reg[11]_0\(6),
      I4 => \start_sequence_40_reg[11]_0\(7),
      O => \start_sequence_40[11]_i_2_n_0\
    );
\start_sequence_40[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(1),
      I1 => \start_sequence_40_reg[11]_0\(0),
      O => \start_sequence_40[1]_i_1_n_0\
    );
\start_sequence_40[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"802A"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2_n_0\,
      I1 => \start_sequence_40_reg[11]_0\(1),
      I2 => \start_sequence_40_reg[11]_0\(0),
      I3 => \start_sequence_40_reg[11]_0\(2),
      O => \start_sequence_40[2]_i_1_n_0\
    );
\start_sequence_40[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA15"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(2),
      I1 => \start_sequence_40_reg[11]_0\(0),
      I2 => \start_sequence_40_reg[11]_0\(1),
      I3 => \start_sequence_40_reg[11]_0\(3),
      O => \start_sequence_40[3]_i_1_n_0\
    );
\start_sequence_40[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA800000002A"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2_n_0\,
      I1 => \start_sequence_40_reg[11]_0\(0),
      I2 => \start_sequence_40_reg[11]_0\(1),
      I3 => \start_sequence_40_reg[11]_0\(3),
      I4 => \start_sequence_40_reg[11]_0\(2),
      I5 => \start_sequence_40_reg[11]_0\(4),
      O => \start_sequence_40[4]_i_1_n_0\
    );
\start_sequence_40[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA95"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(5),
      I1 => \start_sequence_40_reg[11]_0\(0),
      I2 => \start_sequence_40_reg[11]_0\(1),
      I3 => \start_sequence_40_reg[11]_0\(3),
      I4 => \start_sequence_40_reg[11]_0\(2),
      I5 => \start_sequence_40_reg[11]_0\(4),
      O => \start_sequence_40[5]_i_1_n_0\
    );
\start_sequence_40[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(6),
      I1 => \start_sequence_40[10]_i_2_n_0\,
      O => \start_sequence_40[6]_i_1__1_n_0\
    );
\start_sequence_40[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(7),
      I1 => \start_sequence_40[10]_i_2_n_0\,
      I2 => \start_sequence_40_reg[11]_0\(6),
      O => \start_sequence_40[7]_i_1_n_0\
    );
\start_sequence_40[8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(8),
      I1 => \start_sequence_40_reg[11]_0\(6),
      I2 => \start_sequence_40_reg[11]_0\(7),
      I3 => \start_sequence_40[10]_i_2_n_0\,
      O => \start_sequence_40[8]_i_1__1_n_0\
    );
\start_sequence_40[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000002"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2_n_0\,
      I1 => \start_sequence_40_reg[11]_0\(8),
      I2 => \start_sequence_40_reg[11]_0\(6),
      I3 => \start_sequence_40_reg[11]_0\(7),
      I4 => \start_sequence_40[10]_i_2_n_0\,
      I5 => \start_sequence_40_reg[11]_0\(9),
      O => \start_sequence_40[9]_i_1_n_0\
    );
\start_sequence_40[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(11),
      I1 => \start_sequence_40_reg[11]_0\(10),
      I2 => \start_sequence_40_reg[11]_0\(3),
      I3 => \start_sequence_40_reg[11]_0\(2),
      I4 => \start_sequence_40[9]_i_3_n_0\,
      I5 => \start_sequence_40[9]_i_4_n_0\,
      O => \start_sequence_40[9]_i_2_n_0\
    );
\start_sequence_40[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(4),
      I1 => \start_sequence_40_reg[11]_0\(5),
      O => \start_sequence_40[9]_i_3_n_0\
    );
\start_sequence_40[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(7),
      I1 => \start_sequence_40_reg[11]_0\(6),
      I2 => \start_sequence_40_reg[11]_0\(9),
      I3 => \start_sequence_40_reg[11]_0\(8),
      O => \start_sequence_40[9]_i_4_n_0\
    );
\start_sequence_40_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[0]_i_1_n_0\,
      Q => start_sequence_40(0),
      R => '0'
    );
\start_sequence_40_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[10]_i_1_n_0\,
      Q => start_sequence_40(10),
      R => '0'
    );
\start_sequence_40_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[11]_i_1_n_0\,
      Q => start_sequence_40(11),
      R => '0'
    );
\start_sequence_40_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[1]_i_1_n_0\,
      Q => start_sequence_40(1),
      R => '0'
    );
\start_sequence_40_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[2]_i_1_n_0\,
      Q => start_sequence_40(2),
      R => '0'
    );
\start_sequence_40_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[3]_i_1_n_0\,
      Q => start_sequence_40(3),
      R => '0'
    );
\start_sequence_40_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[4]_i_1_n_0\,
      Q => start_sequence_40(4),
      R => '0'
    );
\start_sequence_40_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[5]_i_1_n_0\,
      Q => start_sequence_40(5),
      R => '0'
    );
\start_sequence_40_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[6]_i_1__1_n_0\,
      Q => start_sequence_40(6),
      R => '0'
    );
\start_sequence_40_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[7]_i_1_n_0\,
      Q => start_sequence_40(7),
      R => '0'
    );
\start_sequence_40_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[8]_i_1__1_n_0\,
      Q => start_sequence_40(8),
      R => '0'
    );
\start_sequence_40_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[9]_i_1_n_0\,
      Q => start_sequence_40(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_12 is
  port (
    veto_l1agen_B : out STD_LOGIC;
    fire_reg_0 : out STD_LOGIC;
    fire_reg_1 : out STD_LOGIC;
    fc_l1a : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    reset_40 : in STD_LOGIC;
    req_periodic : in STD_LOGIC;
    \start_sequence_40_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pending_reg_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    fc_internaltest : in STD_LOGIC;
    fc_daqresync : in STD_LOGIC;
    fc_orbitcountreset : in STD_LOGIC;
    fc_linkreset : in STD_LOGIC;
    fc_l1agen_A : in STD_LOGIC;
    fc_l1a_for_calib : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_12 : entity is "hgcal_fc_manager_bxtimed";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_12;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_12 is
  signal \^fc_l1a\ : STD_LOGIC;
  signal \^fire_reg_0\ : STD_LOGIC;
  signal latched_req : STD_LOGIC;
  signal \latched_req_i_1__4_n_0\ : STD_LOGIC;
  signal pending0 : STD_LOGIC;
  signal \pending_i_2__1_n_0\ : STD_LOGIC;
  signal \pending_i_3__1_n_0\ : STD_LOGIC;
  signal \pending_i_4__1_n_0\ : STD_LOGIC;
  signal \pending_i_5__1_n_0\ : STD_LOGIC;
  signal \pending_i_6__1_n_0\ : STD_LOGIC;
  signal \pending_i_7__1_n_0\ : STD_LOGIC;
  signal \pending_i_8__1_n_0\ : STD_LOGIC;
  signal req_async_40 : STD_LOGIC;
  signal \start_sequence_40[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[10]_i_1__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[11]_i_1__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[11]_i_2__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[11]_i_3__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[5]_i_1__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[7]_i_1__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_1__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_2__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[0]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[10]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[11]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[1]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[2]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[3]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[4]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[5]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[6]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[7]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[8]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[9]\ : STD_LOGIC;
  signal \^veto_l1agen_b\ : STD_LOGIC;
  signal was_req_40 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of FDPE_re : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \start_sequence_40[0]_i_1__3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \start_sequence_40[11]_i_1__3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \start_sequence_40[1]_i_1__3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \start_sequence_40[2]_i_1__3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \start_sequence_40[3]_i_1__3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \start_sequence_40[6]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \start_sequence_40[7]_i_1__3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \start_sequence_40[8]_i_1__0\ : label is "soft_lutpair16";
begin
  fc_l1a <= \^fc_l1a\;
  fire_reg_0 <= \^fire_reg_0\;
  veto_l1agen_B <= \^veto_l1agen_b\;
FDPE_re: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => ext_lhc_clk,
      CE => '1',
      D => Q(0),
      PRE => Q(0),
      Q => req_async_40
    );
\cmd[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^fc_l1a\,
      I1 => fc_internaltest,
      I2 => fc_daqresync,
      I3 => fc_orbitcountreset,
      I4 => fc_linkreset,
      O => fire_reg_1
    );
\cmd[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^fire_reg_0\,
      I1 => fc_l1agen_A,
      I2 => fc_l1a_for_calib,
      O => \^fc_l1a\
    );
\counter[0]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^fire_reg_0\,
      I1 => fc_l1agen_A,
      I2 => fc_l1a_for_calib,
      O => DI(0)
    );
fire_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \^veto_l1agen_b\,
      Q => \^fire_reg_0\,
      R => '0'
    );
\latched_req_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055554454"
    )
        port map (
      I0 => reset_40,
      I1 => req_periodic,
      I2 => req_async_40,
      I3 => was_req_40,
      I4 => latched_req,
      I5 => \^fire_reg_0\,
      O => \latched_req_i_1__4_n_0\
    );
latched_req_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \latched_req_i_1__4_n_0\,
      Q => latched_req,
      R => '0'
    );
\pending_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \pending_i_2__1_n_0\,
      I1 => \pending_i_3__1_n_0\,
      I2 => \pending_i_4__1_n_0\,
      I3 => \pending_i_5__1_n_0\,
      O => pending0
    );
\pending_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAFFBABA"
    )
        port map (
      I0 => \pending_i_6__1_n_0\,
      I1 => \start_sequence_40_reg_n_0_[4]\,
      I2 => pending_reg_0(4),
      I3 => pending_reg_0(1),
      I4 => \start_sequence_40_reg_n_0_[1]\,
      I5 => \pending_i_7__1_n_0\,
      O => \pending_i_2__1_n_0\
    );
\pending_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D00D"
    )
        port map (
      I0 => \start_sequence_40_reg_n_0_[4]\,
      I1 => pending_reg_0(4),
      I2 => pending_reg_0(6),
      I3 => \start_sequence_40_reg_n_0_[6]\,
      O => \pending_i_3__1_n_0\
    );
\pending_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFFFBAFFFFFFFF"
    )
        port map (
      I0 => \pending_i_8__1_n_0\,
      I1 => \start_sequence_40_reg_n_0_[11]\,
      I2 => pending_reg_0(11),
      I3 => \start_sequence_40_reg_n_0_[8]\,
      I4 => pending_reg_0(8),
      I5 => latched_req,
      O => \pending_i_4__1_n_0\
    );
\pending_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \start_sequence_40_reg_n_0_[2]\,
      I1 => pending_reg_0(2),
      I2 => pending_reg_0(10),
      I3 => \start_sequence_40_reg_n_0_[10]\,
      I4 => pending_reg_0(9),
      I5 => \start_sequence_40_reg_n_0_[9]\,
      O => \pending_i_5__1_n_0\
    );
\pending_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => pending_reg_0(3),
      I1 => \start_sequence_40_reg_n_0_[3]\,
      I2 => pending_reg_0(5),
      I3 => \start_sequence_40_reg_n_0_[5]\,
      O => \pending_i_6__1_n_0\
    );
\pending_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66F666F6FFFF66F6"
    )
        port map (
      I0 => \start_sequence_40_reg_n_0_[0]\,
      I1 => pending_reg_0(0),
      I2 => pending_reg_0(3),
      I3 => \start_sequence_40_reg_n_0_[3]\,
      I4 => pending_reg_0(1),
      I5 => \start_sequence_40_reg_n_0_[1]\,
      O => \pending_i_7__1_n_0\
    );
\pending_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFFFFFF22F2"
    )
        port map (
      I0 => pending_reg_0(5),
      I1 => \start_sequence_40_reg_n_0_[5]\,
      I2 => \start_sequence_40_reg_n_0_[11]\,
      I3 => pending_reg_0(11),
      I4 => \start_sequence_40_reg_n_0_[7]\,
      I5 => pending_reg_0(7),
      O => \pending_i_8__1_n_0\
    );
pending_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => pending0,
      Q => \^veto_l1agen_b\,
      R => '0'
    );
\start_sequence_40[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(0),
      O => \start_sequence_40[0]_i_1__3_n_0\
    );
\start_sequence_40[10]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA9AA"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(10),
      I1 => \start_sequence_40_reg[11]_0\(8),
      I2 => \start_sequence_40_reg[11]_0\(9),
      I3 => \start_sequence_40[11]_i_3__0_n_0\,
      I4 => \start_sequence_40_reg[11]_0\(7),
      I5 => \start_sequence_40_reg[11]_0\(6),
      O => \start_sequence_40[10]_i_1__3_n_0\
    );
\start_sequence_40[11]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(11),
      I1 => \start_sequence_40[11]_i_2__3_n_0\,
      I2 => \start_sequence_40[11]_i_3__0_n_0\,
      O => \start_sequence_40[11]_i_1__3_n_0\
    );
\start_sequence_40[11]_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(7),
      I1 => \start_sequence_40_reg[11]_0\(6),
      I2 => \start_sequence_40_reg[11]_0\(8),
      I3 => \start_sequence_40_reg[11]_0\(9),
      I4 => \start_sequence_40_reg[11]_0\(10),
      O => \start_sequence_40[11]_i_2__3_n_0\
    );
\start_sequence_40[11]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000015"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(2),
      I1 => \start_sequence_40_reg[11]_0\(0),
      I2 => \start_sequence_40_reg[11]_0\(1),
      I3 => \start_sequence_40_reg[11]_0\(3),
      I4 => \start_sequence_40_reg[11]_0\(5),
      I5 => \start_sequence_40_reg[11]_0\(4),
      O => \start_sequence_40[11]_i_3__0_n_0\
    );
\start_sequence_40[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(1),
      I1 => \start_sequence_40_reg[11]_0\(0),
      O => \start_sequence_40[1]_i_1__3_n_0\
    );
\start_sequence_40[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"802A"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2__3_n_0\,
      I1 => \start_sequence_40_reg[11]_0\(1),
      I2 => \start_sequence_40_reg[11]_0\(0),
      I3 => \start_sequence_40_reg[11]_0\(2),
      O => \start_sequence_40[2]_i_1__3_n_0\
    );
\start_sequence_40[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA15"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(2),
      I1 => \start_sequence_40_reg[11]_0\(0),
      I2 => \start_sequence_40_reg[11]_0\(1),
      I3 => \start_sequence_40_reg[11]_0\(3),
      O => \start_sequence_40[3]_i_1__3_n_0\
    );
\start_sequence_40[4]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA88800000222"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2__3_n_0\,
      I1 => \start_sequence_40_reg[11]_0\(3),
      I2 => \start_sequence_40_reg[11]_0\(1),
      I3 => \start_sequence_40_reg[11]_0\(0),
      I4 => \start_sequence_40_reg[11]_0\(2),
      I5 => \start_sequence_40_reg[11]_0\(4),
      O => \start_sequence_40[4]_i_1__3_n_0\
    );
\start_sequence_40[5]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA999"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(5),
      I1 => \start_sequence_40_reg[11]_0\(3),
      I2 => \start_sequence_40_reg[11]_0\(1),
      I3 => \start_sequence_40_reg[11]_0\(0),
      I4 => \start_sequence_40_reg[11]_0\(2),
      I5 => \start_sequence_40_reg[11]_0\(4),
      O => \start_sequence_40[5]_i_1__3_n_0\
    );
\start_sequence_40[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(6),
      I1 => \start_sequence_40[11]_i_3__0_n_0\,
      O => \start_sequence_40[6]_i_1__0_n_0\
    );
\start_sequence_40[7]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(6),
      I1 => \start_sequence_40[11]_i_3__0_n_0\,
      I2 => \start_sequence_40_reg[11]_0\(7),
      O => \start_sequence_40[7]_i_1__3_n_0\
    );
\start_sequence_40[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(8),
      I1 => \start_sequence_40_reg[11]_0\(6),
      I2 => \start_sequence_40_reg[11]_0\(7),
      I3 => \start_sequence_40[11]_i_3__0_n_0\,
      O => \start_sequence_40[8]_i_1__0_n_0\
    );
\start_sequence_40[9]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAA00020000"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2__3_n_0\,
      I1 => \start_sequence_40_reg[11]_0\(8),
      I2 => \start_sequence_40_reg[11]_0\(6),
      I3 => \start_sequence_40_reg[11]_0\(7),
      I4 => \start_sequence_40[11]_i_3__0_n_0\,
      I5 => \start_sequence_40_reg[11]_0\(9),
      O => \start_sequence_40[9]_i_1__3_n_0\
    );
\start_sequence_40[9]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \start_sequence_40[11]_i_2__3_n_0\,
      I1 => \start_sequence_40_reg[11]_0\(3),
      I2 => \start_sequence_40_reg[11]_0\(5),
      I3 => \start_sequence_40_reg[11]_0\(4),
      I4 => \start_sequence_40_reg[11]_0\(2),
      I5 => \start_sequence_40_reg[11]_0\(11),
      O => \start_sequence_40[9]_i_2__3_n_0\
    );
\start_sequence_40_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[0]_i_1__3_n_0\,
      Q => \start_sequence_40_reg_n_0_[0]\,
      R => '0'
    );
\start_sequence_40_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[10]_i_1__3_n_0\,
      Q => \start_sequence_40_reg_n_0_[10]\,
      R => '0'
    );
\start_sequence_40_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[11]_i_1__3_n_0\,
      Q => \start_sequence_40_reg_n_0_[11]\,
      R => '0'
    );
\start_sequence_40_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[1]_i_1__3_n_0\,
      Q => \start_sequence_40_reg_n_0_[1]\,
      R => '0'
    );
\start_sequence_40_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[2]_i_1__3_n_0\,
      Q => \start_sequence_40_reg_n_0_[2]\,
      R => '0'
    );
\start_sequence_40_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[3]_i_1__3_n_0\,
      Q => \start_sequence_40_reg_n_0_[3]\,
      R => '0'
    );
\start_sequence_40_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[4]_i_1__3_n_0\,
      Q => \start_sequence_40_reg_n_0_[4]\,
      R => '0'
    );
\start_sequence_40_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[5]_i_1__3_n_0\,
      Q => \start_sequence_40_reg_n_0_[5]\,
      R => '0'
    );
\start_sequence_40_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[6]_i_1__0_n_0\,
      Q => \start_sequence_40_reg_n_0_[6]\,
      R => '0'
    );
\start_sequence_40_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[7]_i_1__3_n_0\,
      Q => \start_sequence_40_reg_n_0_[7]\,
      R => '0'
    );
\start_sequence_40_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[8]_i_1__0_n_0\,
      Q => \start_sequence_40_reg_n_0_[8]\,
      R => '0'
    );
\start_sequence_40_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[9]_i_1__3_n_0\,
      Q => \start_sequence_40_reg_n_0_[9]\,
      R => '0'
    );
was_req_40_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => req_async_40,
      Q => was_req_40,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_13 is
  port (
    veto_l1agen_A : out STD_LOGIC;
    fc_l1agen_A : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    reset_40 : in STD_LOGIC;
    req_periodic : in STD_LOGIC;
    \start_sequence_40_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \pending_i_3__0_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_13 : entity is "hgcal_fc_manager_bxtimed";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_13;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_13 is
  signal \^fc_l1agen_a\ : STD_LOGIC;
  signal latched_req : STD_LOGIC;
  signal \latched_req_i_1__3_n_0\ : STD_LOGIC;
  signal pending0 : STD_LOGIC;
  signal \pending_i_2__0_n_0\ : STD_LOGIC;
  signal \pending_i_3__0_n_0\ : STD_LOGIC;
  signal \pending_i_4__0_n_0\ : STD_LOGIC;
  signal \pending_i_5__0_n_0\ : STD_LOGIC;
  signal \pending_i_6__0_n_0\ : STD_LOGIC;
  signal \pending_i_7__0_n_0\ : STD_LOGIC;
  signal \pending_i_8__0_n_0\ : STD_LOGIC;
  signal req_async_40 : STD_LOGIC;
  signal \start_sequence_40[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[10]_i_1__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[11]_i_1__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[11]_i_2__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[11]_i_3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[6]_i_1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[8]_i_1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_1__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_2__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[0]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[10]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[11]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[1]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[2]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[3]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[4]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[5]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[6]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[7]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[8]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[9]\ : STD_LOGIC;
  signal \^veto_l1agen_a\ : STD_LOGIC;
  signal was_req_40 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of FDPE_re : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \start_sequence_40[0]_i_1__2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \start_sequence_40[11]_i_1__2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \start_sequence_40[1]_i_1__2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \start_sequence_40[2]_i_1__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \start_sequence_40[3]_i_1__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \start_sequence_40[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \start_sequence_40[7]_i_1__2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \start_sequence_40[8]_i_1\ : label is "soft_lutpair12";
begin
  fc_l1agen_A <= \^fc_l1agen_a\;
  veto_l1agen_A <= \^veto_l1agen_a\;
FDPE_re: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => ext_lhc_clk,
      CE => '1',
      D => Q(0),
      PRE => Q(0),
      Q => req_async_40
    );
fire_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \^veto_l1agen_a\,
      Q => \^fc_l1agen_a\,
      R => '0'
    );
\latched_req_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055554454"
    )
        port map (
      I0 => reset_40,
      I1 => req_periodic,
      I2 => req_async_40,
      I3 => was_req_40,
      I4 => latched_req,
      I5 => \^fc_l1agen_a\,
      O => \latched_req_i_1__3_n_0\
    );
latched_req_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \latched_req_i_1__3_n_0\,
      Q => latched_req,
      R => '0'
    );
\pending_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000051000051"
    )
        port map (
      I0 => \pending_i_2__0_n_0\,
      I1 => \start_sequence_40_reg_n_0_[4]\,
      I2 => \pending_i_3__0_0\(4),
      I3 => \start_sequence_40_reg_n_0_[6]\,
      I4 => \pending_i_3__0_0\(6),
      I5 => \pending_i_3__0_n_0\,
      O => pending0
    );
\pending_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAFFBABA"
    )
        port map (
      I0 => \pending_i_4__0_n_0\,
      I1 => \pending_i_3__0_0\(5),
      I2 => \start_sequence_40_reg_n_0_[5]\,
      I3 => \start_sequence_40_reg_n_0_[4]\,
      I4 => \pending_i_3__0_0\(4),
      I5 => \pending_i_5__0_n_0\,
      O => \pending_i_2__0_n_0\
    );
\pending_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBE"
    )
        port map (
      I0 => \pending_i_6__0_n_0\,
      I1 => \pending_i_3__0_0\(10),
      I2 => \start_sequence_40_reg_n_0_[10]\,
      I3 => \pending_i_7__0_n_0\,
      I4 => \pending_i_8__0_n_0\,
      O => \pending_i_3__0_n_0\
    );
\pending_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \pending_i_3__0_0\(3),
      I1 => \start_sequence_40_reg_n_0_[3]\,
      I2 => \start_sequence_40_reg_n_0_[2]\,
      I3 => \pending_i_3__0_0\(2),
      O => \pending_i_4__0_n_0\
    );
\pending_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFFFFFF22F2"
    )
        port map (
      I0 => \pending_i_3__0_0\(0),
      I1 => \start_sequence_40_reg_n_0_[0]\,
      I2 => \pending_i_3__0_0\(3),
      I3 => \start_sequence_40_reg_n_0_[3]\,
      I4 => \start_sequence_40_reg_n_0_[1]\,
      I5 => \pending_i_3__0_0\(1),
      O => \pending_i_5__0_n_0\
    );
\pending_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F66FFFF"
    )
        port map (
      I0 => \start_sequence_40_reg_n_0_[8]\,
      I1 => \pending_i_3__0_0\(8),
      I2 => \pending_i_3__0_0\(2),
      I3 => \start_sequence_40_reg_n_0_[2]\,
      I4 => latched_req,
      O => \pending_i_6__0_n_0\
    );
\pending_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \start_sequence_40_reg_n_0_[9]\,
      I1 => \pending_i_3__0_0\(9),
      I2 => \start_sequence_40_reg_n_0_[7]\,
      I3 => \pending_i_3__0_0\(7),
      O => \pending_i_7__0_n_0\
    );
\pending_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FF22FF2FFFF2FF2"
    )
        port map (
      I0 => \pending_i_3__0_0\(5),
      I1 => \start_sequence_40_reg_n_0_[5]\,
      I2 => \start_sequence_40_reg_n_0_[11]\,
      I3 => \pending_i_3__0_0\(11),
      I4 => \start_sequence_40_reg_n_0_[0]\,
      I5 => \pending_i_3__0_0\(0),
      O => \pending_i_8__0_n_0\
    );
pending_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => pending0,
      Q => \^veto_l1agen_a\,
      R => '0'
    );
\start_sequence_40[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(0),
      O => \start_sequence_40[0]_i_1__2_n_0\
    );
\start_sequence_40[10]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA9AA"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(10),
      I1 => \start_sequence_40_reg[11]_0\(8),
      I2 => \start_sequence_40_reg[11]_0\(9),
      I3 => \start_sequence_40[11]_i_3_n_0\,
      I4 => \start_sequence_40_reg[11]_0\(7),
      I5 => \start_sequence_40_reg[11]_0\(6),
      O => \start_sequence_40[10]_i_1__2_n_0\
    );
\start_sequence_40[11]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(11),
      I1 => \start_sequence_40[11]_i_2__2_n_0\,
      I2 => \start_sequence_40[11]_i_3_n_0\,
      O => \start_sequence_40[11]_i_1__2_n_0\
    );
\start_sequence_40[11]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(7),
      I1 => \start_sequence_40_reg[11]_0\(6),
      I2 => \start_sequence_40_reg[11]_0\(8),
      I3 => \start_sequence_40_reg[11]_0\(9),
      I4 => \start_sequence_40_reg[11]_0\(10),
      O => \start_sequence_40[11]_i_2__2_n_0\
    );
\start_sequence_40[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000015"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(2),
      I1 => \start_sequence_40_reg[11]_0\(0),
      I2 => \start_sequence_40_reg[11]_0\(1),
      I3 => \start_sequence_40_reg[11]_0\(3),
      I4 => \start_sequence_40_reg[11]_0\(5),
      I5 => \start_sequence_40_reg[11]_0\(4),
      O => \start_sequence_40[11]_i_3_n_0\
    );
\start_sequence_40[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(1),
      I1 => \start_sequence_40_reg[11]_0\(0),
      O => \start_sequence_40[1]_i_1__2_n_0\
    );
\start_sequence_40[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"802A"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2__2_n_0\,
      I1 => \start_sequence_40_reg[11]_0\(1),
      I2 => \start_sequence_40_reg[11]_0\(0),
      I3 => \start_sequence_40_reg[11]_0\(2),
      O => \start_sequence_40[2]_i_1__2_n_0\
    );
\start_sequence_40[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA15"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(2),
      I1 => \start_sequence_40_reg[11]_0\(0),
      I2 => \start_sequence_40_reg[11]_0\(1),
      I3 => \start_sequence_40_reg[11]_0\(3),
      O => \start_sequence_40[3]_i_1__2_n_0\
    );
\start_sequence_40[4]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA88800000222"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2__2_n_0\,
      I1 => \start_sequence_40_reg[11]_0\(3),
      I2 => \start_sequence_40_reg[11]_0\(1),
      I3 => \start_sequence_40_reg[11]_0\(0),
      I4 => \start_sequence_40_reg[11]_0\(2),
      I5 => \start_sequence_40_reg[11]_0\(4),
      O => \start_sequence_40[4]_i_1__2_n_0\
    );
\start_sequence_40[5]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA999"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(5),
      I1 => \start_sequence_40_reg[11]_0\(3),
      I2 => \start_sequence_40_reg[11]_0\(1),
      I3 => \start_sequence_40_reg[11]_0\(0),
      I4 => \start_sequence_40_reg[11]_0\(2),
      I5 => \start_sequence_40_reg[11]_0\(4),
      O => \start_sequence_40[5]_i_1__2_n_0\
    );
\start_sequence_40[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(6),
      I1 => \start_sequence_40[11]_i_3_n_0\,
      O => \start_sequence_40[6]_i_1_n_0\
    );
\start_sequence_40[7]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(6),
      I1 => \start_sequence_40[11]_i_3_n_0\,
      I2 => \start_sequence_40_reg[11]_0\(7),
      O => \start_sequence_40[7]_i_1__2_n_0\
    );
\start_sequence_40[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => \start_sequence_40_reg[11]_0\(8),
      I1 => \start_sequence_40_reg[11]_0\(6),
      I2 => \start_sequence_40_reg[11]_0\(7),
      I3 => \start_sequence_40[11]_i_3_n_0\,
      O => \start_sequence_40[8]_i_1_n_0\
    );
\start_sequence_40[9]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAA00020000"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2__2_n_0\,
      I1 => \start_sequence_40_reg[11]_0\(8),
      I2 => \start_sequence_40_reg[11]_0\(6),
      I3 => \start_sequence_40_reg[11]_0\(7),
      I4 => \start_sequence_40[11]_i_3_n_0\,
      I5 => \start_sequence_40_reg[11]_0\(9),
      O => \start_sequence_40[9]_i_1__2_n_0\
    );
\start_sequence_40[9]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \start_sequence_40[11]_i_2__2_n_0\,
      I1 => \start_sequence_40_reg[11]_0\(3),
      I2 => \start_sequence_40_reg[11]_0\(5),
      I3 => \start_sequence_40_reg[11]_0\(4),
      I4 => \start_sequence_40_reg[11]_0\(2),
      I5 => \start_sequence_40_reg[11]_0\(11),
      O => \start_sequence_40[9]_i_2__2_n_0\
    );
\start_sequence_40_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[0]_i_1__2_n_0\,
      Q => \start_sequence_40_reg_n_0_[0]\,
      R => '0'
    );
\start_sequence_40_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[10]_i_1__2_n_0\,
      Q => \start_sequence_40_reg_n_0_[10]\,
      R => '0'
    );
\start_sequence_40_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[11]_i_1__2_n_0\,
      Q => \start_sequence_40_reg_n_0_[11]\,
      R => '0'
    );
\start_sequence_40_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[1]_i_1__2_n_0\,
      Q => \start_sequence_40_reg_n_0_[1]\,
      R => '0'
    );
\start_sequence_40_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[2]_i_1__2_n_0\,
      Q => \start_sequence_40_reg_n_0_[2]\,
      R => '0'
    );
\start_sequence_40_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[3]_i_1__2_n_0\,
      Q => \start_sequence_40_reg_n_0_[3]\,
      R => '0'
    );
\start_sequence_40_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[4]_i_1__2_n_0\,
      Q => \start_sequence_40_reg_n_0_[4]\,
      R => '0'
    );
\start_sequence_40_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[5]_i_1__2_n_0\,
      Q => \start_sequence_40_reg_n_0_[5]\,
      R => '0'
    );
\start_sequence_40_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[6]_i_1_n_0\,
      Q => \start_sequence_40_reg_n_0_[6]\,
      R => '0'
    );
\start_sequence_40_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[7]_i_1__2_n_0\,
      Q => \start_sequence_40_reg_n_0_[7]\,
      R => '0'
    );
\start_sequence_40_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[8]_i_1_n_0\,
      Q => \start_sequence_40_reg_n_0_[8]\,
      R => '0'
    );
\start_sequence_40_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[9]_i_1__2_n_0\,
      Q => \start_sequence_40_reg_n_0_[9]\,
      R => '0'
    );
was_req_40_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => req_async_40,
      Q => was_req_40,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_14 is
  port (
    fire_reg_0 : out STD_LOGIC;
    fire_reg_1 : out STD_LOGIC;
    fire_reg_2 : out STD_LOGIC;
    fire_reg_3 : out STD_LOGIC;
    fire_reg_4 : out STD_LOGIC;
    fire_reg_5 : out STD_LOGIC;
    fire_reg_6 : out STD_LOGIC;
    will_fire : out STD_LOGIC;
    pending_reg_0 : out STD_LOGIC;
    will_fire_0 : out STD_LOGIC;
    fire_reg_7 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    fc_internaltest : in STD_LOGIC;
    fc_orbitsync : in STD_LOGIC;
    invalid_r_reg : in STD_LOGIC;
    invalid_r_reg_0 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    reset_40 : in STD_LOGIC;
    req_periodic : in STD_LOGIC;
    pending_i_3_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    invalid_r_reg_1 : in STD_LOGIC;
    \cmd_reg[2]\ : in STD_LOGIC;
    \cmd_reg[2]_0\ : in STD_LOGIC;
    invalid_r_reg_2 : in STD_LOGIC;
    \cmd_reg[1]\ : in STD_LOGIC;
    fc_orbitcountreset : in STD_LOGIC;
    fc_linkreset : in STD_LOGIC;
    fc_daqresync : in STD_LOGIC;
    fc_l1a : in STD_LOGIC;
    fire_reg_8 : in STD_LOGIC;
    link_daq_resync : in STD_LOGIC;
    link_reset_pending : in STD_LOGIC;
    veto_l1agen_A : in STD_LOGIC;
    veto_l1 : in STD_LOGIC;
    veto_l1agen_B : in STD_LOGIC;
    nextos : in STD_LOGIC;
    \counter_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_14 : entity is "hgcal_fc_manager_bxtimed";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_14;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_14 is
  signal \cmd[1]_i_2_n_0\ : STD_LOGIC;
  signal \cmd[2]_i_2_n_0\ : STD_LOGIC;
  signal \cmd[3]_i_5_n_0\ : STD_LOGIC;
  signal \cmd[3]_i_9_n_0\ : STD_LOGIC;
  signal \^fire_reg_0\ : STD_LOGIC;
  signal \^fire_reg_6\ : STD_LOGIC;
  signal invalid_r_i_3_n_0 : STD_LOGIC;
  signal latched_req : STD_LOGIC;
  signal \latched_req_i_1__2_n_0\ : STD_LOGIC;
  signal pending0 : STD_LOGIC;
  signal pending_i_2_n_0 : STD_LOGIC;
  signal pending_i_3_n_0 : STD_LOGIC;
  signal pending_i_4_n_0 : STD_LOGIC;
  signal pending_i_5_n_0 : STD_LOGIC;
  signal pending_i_6_n_0 : STD_LOGIC;
  signal pending_i_7_n_0 : STD_LOGIC;
  signal pending_i_8_n_0 : STD_LOGIC;
  signal pending_i_9_n_0 : STD_LOGIC;
  signal \^pending_reg_0\ : STD_LOGIC;
  signal req_async_40 : STD_LOGIC;
  signal \start_sequence_40[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_4__0_n_0\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[0]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[10]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[11]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[1]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[2]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[3]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[4]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[5]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[6]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[7]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[8]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[9]\ : STD_LOGIC;
  signal veto_cr : STD_LOGIC;
  signal was_req_40 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of FDPE_re : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cmd[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cmd[3]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cmd[3]_i_9\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of invalid_r_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \start_sequence_40[0]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \start_sequence_40[11]_i_2__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \start_sequence_40[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \start_sequence_40[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \start_sequence_40[3]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \start_sequence_40[7]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \start_sequence_40[8]_i_1__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \start_sequence_40[9]_i_4__0\ : label is "soft_lutpair4";
begin
  fire_reg_0 <= \^fire_reg_0\;
  fire_reg_6 <= \^fire_reg_6\;
  pending_reg_0 <= \^pending_reg_0\;
FDPE_re: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => ext_lhc_clk,
      CE => '1',
      D => Q(0),
      PRE => Q(0),
      Q => req_async_40
    );
\cmd[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEFEEEEEEEEE"
    )
        port map (
      I0 => \cmd[2]_i_2_n_0\,
      I1 => \cmd[3]_i_5_n_0\,
      I2 => \^fire_reg_0\,
      I3 => \cmd_reg[2]_0\,
      I4 => fc_orbitsync,
      I5 => \cmd_reg[2]\,
      O => fire_reg_4
    );
\cmd[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \cmd[1]_i_2_n_0\,
      I1 => \cmd_reg[2]\,
      I2 => \cmd_reg[1]\,
      I3 => \cmd[3]_i_5_n_0\,
      I4 => \cmd[2]_i_2_n_0\,
      I5 => fc_orbitcountreset,
      O => fire_reg_3
    );
\cmd[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \cmd[3]_i_9_n_0\,
      I1 => fc_daqresync,
      I2 => fc_linkreset,
      I3 => fc_orbitcountreset,
      I4 => fc_l1a,
      O => \cmd[1]_i_2_n_0\
    );
\cmd[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF101010"
    )
        port map (
      I0 => \^fire_reg_0\,
      I1 => \cmd_reg[2]_0\,
      I2 => \cmd_reg[2]\,
      I3 => fc_orbitcountreset,
      I4 => \cmd[2]_i_2_n_0\,
      I5 => \cmd[3]_i_5_n_0\,
      O => fire_reg_5
    );
\cmd[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \^fire_reg_6\,
      I1 => fc_orbitsync,
      I2 => fc_linkreset,
      I3 => fc_daqresync,
      I4 => fc_internaltest,
      I5 => fc_l1a,
      O => \cmd[2]_i_2_n_0\
    );
\cmd[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^fire_reg_0\,
      I1 => invalid_r_reg_0(12),
      I2 => invalid_r_reg,
      O => \^fire_reg_6\
    );
\cmd[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAEAEAA"
    )
        port map (
      I0 => invalid_r_reg_1,
      I1 => \cmd_reg[2]\,
      I2 => fc_orbitsync,
      I3 => \^fire_reg_0\,
      I4 => \cmd_reg[2]_0\,
      I5 => \cmd[3]_i_5_n_0\,
      O => fire_reg_1
    );
\cmd[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \cmd[3]_i_9_n_0\,
      I1 => fc_orbitcountreset,
      I2 => fc_linkreset,
      I3 => fc_daqresync,
      I4 => fc_l1a,
      O => \cmd[3]_i_5_n_0\
    );
\cmd[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010001"
    )
        port map (
      I0 => fc_internaltest,
      I1 => \^fire_reg_0\,
      I2 => fc_orbitsync,
      I3 => invalid_r_reg,
      I4 => invalid_r_reg_0(12),
      O => \cmd[3]_i_9_n_0\
    );
\counter[0]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fire_reg_0\,
      I1 => \counter_reg[7]\(0),
      O => fire_reg_7(0)
    );
fire_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^pending_reg_0\,
      I1 => fire_reg_8,
      I2 => link_daq_resync,
      O => will_fire
    );
\fire_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => link_reset_pending,
      I1 => veto_l1agen_A,
      I2 => veto_cr,
      I3 => veto_l1,
      I4 => veto_l1agen_B,
      I5 => nextos,
      O => will_fire_0
    );
fire_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => link_reset_pending,
      I1 => veto_l1agen_A,
      I2 => veto_cr,
      I3 => veto_l1,
      I4 => veto_l1agen_B,
      I5 => nextos,
      O => \^pending_reg_0\
    );
fire_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => veto_cr,
      Q => \^fire_reg_0\,
      R => '0'
    );
invalid_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010001"
    )
        port map (
      I0 => \cmd[3]_i_5_n_0\,
      I1 => \cmd[2]_i_2_n_0\,
      I2 => \cmd[1]_i_2_n_0\,
      I3 => invalid_r_reg_2,
      I4 => invalid_r_i_3_n_0,
      I5 => invalid_r_reg_1,
      O => fire_reg_2
    );
invalid_r_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88E8"
    )
        port map (
      I0 => fc_orbitsync,
      I1 => \^fire_reg_0\,
      I2 => invalid_r_reg,
      I3 => invalid_r_reg_0(12),
      O => invalid_r_i_3_n_0
    );
\latched_req_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055554454"
    )
        port map (
      I0 => reset_40,
      I1 => req_periodic,
      I2 => req_async_40,
      I3 => was_req_40,
      I4 => latched_req,
      I5 => \^fire_reg_0\,
      O => \latched_req_i_1__2_n_0\
    );
latched_req_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \latched_req_i_1__2_n_0\,
      Q => latched_req,
      R => '0'
    );
\pending_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000051000051"
    )
        port map (
      I0 => pending_i_2_n_0,
      I1 => \start_sequence_40_reg_n_0_[2]\,
      I2 => pending_i_3_0(2),
      I3 => \start_sequence_40_reg_n_0_[3]\,
      I4 => pending_i_3_0(3),
      I5 => pending_i_3_n_0,
      O => pending0
    );
pending_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEFFFFEFEEEFEE"
    )
        port map (
      I0 => pending_i_4_n_0,
      I1 => pending_i_5_n_0,
      I2 => \start_sequence_40_reg_n_0_[1]\,
      I3 => pending_i_3_0(1),
      I4 => \start_sequence_40_reg_n_0_[2]\,
      I5 => pending_i_3_0(2),
      O => pending_i_2_n_0
    );
pending_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBE"
    )
        port map (
      I0 => pending_i_6_n_0,
      I1 => pending_i_3_0(9),
      I2 => \start_sequence_40_reg_n_0_[9]\,
      I3 => pending_i_7_n_0,
      I4 => pending_i_8_n_0,
      I5 => pending_i_9_n_0,
      O => pending_i_3_n_0
    );
pending_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66F666F6FFFF66F6"
    )
        port map (
      I0 => \start_sequence_40_reg_n_0_[6]\,
      I1 => pending_i_3_0(6),
      I2 => pending_i_3_0(11),
      I3 => \start_sequence_40_reg_n_0_[11]\,
      I4 => \start_sequence_40_reg_n_0_[5]\,
      I5 => pending_i_3_0(5),
      O => pending_i_4_n_0
    );
pending_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => pending_i_3_0(4),
      I1 => \start_sequence_40_reg_n_0_[4]\,
      I2 => \start_sequence_40_reg_n_0_[10]\,
      I3 => pending_i_3_0(10),
      O => pending_i_5_n_0
    );
pending_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F66FFFF"
    )
        port map (
      I0 => \start_sequence_40_reg_n_0_[8]\,
      I1 => pending_i_3_0(8),
      I2 => \start_sequence_40_reg_n_0_[5]\,
      I3 => pending_i_3_0(5),
      I4 => latched_req,
      O => pending_i_6_n_0
    );
pending_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FF22FF2FFFF2FF2"
    )
        port map (
      I0 => pending_i_3_0(4),
      I1 => \start_sequence_40_reg_n_0_[4]\,
      I2 => pending_i_3_0(0),
      I3 => \start_sequence_40_reg_n_0_[0]\,
      I4 => pending_i_3_0(7),
      I5 => \start_sequence_40_reg_n_0_[7]\,
      O => pending_i_7_n_0
    );
pending_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => pending_i_3_0(10),
      I1 => \start_sequence_40_reg_n_0_[10]\,
      I2 => pending_i_3_0(1),
      I3 => \start_sequence_40_reg_n_0_[1]\,
      O => pending_i_8_n_0
    );
pending_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => pending_i_3_0(11),
      I1 => \start_sequence_40_reg_n_0_[11]\,
      I2 => pending_i_3_0(7),
      I3 => \start_sequence_40_reg_n_0_[7]\,
      O => pending_i_9_n_0
    );
pending_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => pending0,
      Q => veto_cr,
      R => '0'
    );
\start_sequence_40[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => invalid_r_reg_0(0),
      O => \start_sequence_40[0]_i_1__0_n_0\
    );
\start_sequence_40[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => invalid_r_reg_0(10),
      I1 => invalid_r_reg_0(7),
      I2 => invalid_r_reg_0(6),
      I3 => invalid_r_reg_0(9),
      I4 => invalid_r_reg_0(8),
      I5 => \start_sequence_40[10]_i_2__0_n_0\,
      O => \start_sequence_40[10]_i_1__0_n_0\
    );
\start_sequence_40[10]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => invalid_r_reg_0(2),
      I1 => invalid_r_reg_0(3),
      I2 => invalid_r_reg_0(1),
      I3 => invalid_r_reg_0(0),
      I4 => invalid_r_reg_0(5),
      I5 => invalid_r_reg_0(4),
      O => \start_sequence_40[10]_i_2__0_n_0\
    );
\start_sequence_40[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => invalid_r_reg_0(11),
      I1 => invalid_r_reg_0(10),
      I2 => \start_sequence_40[11]_i_2__0_n_0\,
      O => \start_sequence_40[11]_i_1__0_n_0\
    );
\start_sequence_40[11]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \start_sequence_40[10]_i_2__0_n_0\,
      I1 => invalid_r_reg_0(8),
      I2 => invalid_r_reg_0(9),
      I3 => invalid_r_reg_0(6),
      I4 => invalid_r_reg_0(7),
      O => \start_sequence_40[11]_i_2__0_n_0\
    );
\start_sequence_40[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => invalid_r_reg_0(1),
      I1 => invalid_r_reg_0(0),
      O => \start_sequence_40[1]_i_1__0_n_0\
    );
\start_sequence_40[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"802A"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2__0_n_0\,
      I1 => invalid_r_reg_0(1),
      I2 => invalid_r_reg_0(0),
      I3 => invalid_r_reg_0(2),
      O => \start_sequence_40[2]_i_1__0_n_0\
    );
\start_sequence_40[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA15"
    )
        port map (
      I0 => invalid_r_reg_0(2),
      I1 => invalid_r_reg_0(0),
      I2 => invalid_r_reg_0(1),
      I3 => invalid_r_reg_0(3),
      O => \start_sequence_40[3]_i_1__0_n_0\
    );
\start_sequence_40[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA800000002A"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2__0_n_0\,
      I1 => invalid_r_reg_0(0),
      I2 => invalid_r_reg_0(1),
      I3 => invalid_r_reg_0(3),
      I4 => invalid_r_reg_0(2),
      I5 => invalid_r_reg_0(4),
      O => \start_sequence_40[4]_i_1__0_n_0\
    );
\start_sequence_40[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA95"
    )
        port map (
      I0 => invalid_r_reg_0(5),
      I1 => invalid_r_reg_0(0),
      I2 => invalid_r_reg_0(1),
      I3 => invalid_r_reg_0(3),
      I4 => invalid_r_reg_0(2),
      I5 => invalid_r_reg_0(4),
      O => \start_sequence_40[5]_i_1__0_n_0\
    );
\start_sequence_40[6]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => invalid_r_reg_0(6),
      I1 => \start_sequence_40[10]_i_2__0_n_0\,
      O => \start_sequence_40[6]_i_1__2_n_0\
    );
\start_sequence_40[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => invalid_r_reg_0(7),
      I1 => \start_sequence_40[10]_i_2__0_n_0\,
      I2 => invalid_r_reg_0(6),
      O => \start_sequence_40[7]_i_1__0_n_0\
    );
\start_sequence_40[8]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => invalid_r_reg_0(8),
      I1 => invalid_r_reg_0(6),
      I2 => invalid_r_reg_0(7),
      I3 => \start_sequence_40[10]_i_2__0_n_0\,
      O => \start_sequence_40[8]_i_1__2_n_0\
    );
\start_sequence_40[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000002"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2__0_n_0\,
      I1 => invalid_r_reg_0(8),
      I2 => invalid_r_reg_0(6),
      I3 => invalid_r_reg_0(7),
      I4 => \start_sequence_40[10]_i_2__0_n_0\,
      I5 => invalid_r_reg_0(9),
      O => \start_sequence_40[9]_i_1__0_n_0\
    );
\start_sequence_40[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => invalid_r_reg_0(11),
      I1 => invalid_r_reg_0(10),
      I2 => invalid_r_reg_0(3),
      I3 => invalid_r_reg_0(2),
      I4 => \start_sequence_40[9]_i_3__0_n_0\,
      I5 => \start_sequence_40[9]_i_4__0_n_0\,
      O => \start_sequence_40[9]_i_2__0_n_0\
    );
\start_sequence_40[9]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => invalid_r_reg_0(4),
      I1 => invalid_r_reg_0(5),
      O => \start_sequence_40[9]_i_3__0_n_0\
    );
\start_sequence_40[9]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => invalid_r_reg_0(7),
      I1 => invalid_r_reg_0(6),
      I2 => invalid_r_reg_0(9),
      I3 => invalid_r_reg_0(8),
      O => \start_sequence_40[9]_i_4__0_n_0\
    );
\start_sequence_40_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[0]_i_1__0_n_0\,
      Q => \start_sequence_40_reg_n_0_[0]\,
      R => '0'
    );
\start_sequence_40_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[10]_i_1__0_n_0\,
      Q => \start_sequence_40_reg_n_0_[10]\,
      R => '0'
    );
\start_sequence_40_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[11]_i_1__0_n_0\,
      Q => \start_sequence_40_reg_n_0_[11]\,
      R => '0'
    );
\start_sequence_40_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[1]_i_1__0_n_0\,
      Q => \start_sequence_40_reg_n_0_[1]\,
      R => '0'
    );
\start_sequence_40_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[2]_i_1__0_n_0\,
      Q => \start_sequence_40_reg_n_0_[2]\,
      R => '0'
    );
\start_sequence_40_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[3]_i_1__0_n_0\,
      Q => \start_sequence_40_reg_n_0_[3]\,
      R => '0'
    );
\start_sequence_40_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[4]_i_1__0_n_0\,
      Q => \start_sequence_40_reg_n_0_[4]\,
      R => '0'
    );
\start_sequence_40_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[5]_i_1__0_n_0\,
      Q => \start_sequence_40_reg_n_0_[5]\,
      R => '0'
    );
\start_sequence_40_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[6]_i_1__2_n_0\,
      Q => \start_sequence_40_reg_n_0_[6]\,
      R => '0'
    );
\start_sequence_40_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[7]_i_1__0_n_0\,
      Q => \start_sequence_40_reg_n_0_[7]\,
      R => '0'
    );
\start_sequence_40_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[8]_i_1__2_n_0\,
      Q => \start_sequence_40_reg_n_0_[8]\,
      R => '0'
    );
\start_sequence_40_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[9]_i_1__0_n_0\,
      Q => \start_sequence_40_reg_n_0_[9]\,
      R => '0'
    );
was_req_40_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => req_async_40,
      Q => was_req_40,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_15 is
  port (
    veto_l1 : out STD_LOGIC;
    fire_reg_0 : out STD_LOGIC;
    \gen_write[2].CtlReg_reg[2][24]\ : out STD_LOGIC;
    fc_calibrationl1a : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_write[2].CtlReg_reg[2][24]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    \counter_reg[7]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    fc_orbitsync : in STD_LOGIC;
    fc_calibrationreq : in STD_LOGIC;
    enable_calibrationl1a : in STD_LOGIC;
    reset_40 : in STD_LOGIC;
    pending_reg_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    fc_l1agen_A : in STD_LOGIC;
    fc_l1agen_B : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_15 : entity is "hgcal_fc_manager_bxtimed";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_15;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_15 is
  signal \^fire_reg_0\ : STD_LOGIC;
  signal latched_req : STD_LOGIC;
  signal \latched_req_i_1__0_n_0\ : STD_LOGIC;
  signal pending0 : STD_LOGIC;
  signal \pending_i_2__3_n_0\ : STD_LOGIC;
  signal \pending_i_3__3_n_0\ : STD_LOGIC;
  signal \pending_i_4__3_n_0\ : STD_LOGIC;
  signal \pending_i_5__3_n_0\ : STD_LOGIC;
  signal \pending_i_6__3_n_0\ : STD_LOGIC;
  signal \pending_i_7__3_n_0\ : STD_LOGIC;
  signal \pending_i_8__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[10]_i_2__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[11]_i_2__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[6]_i_1__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[8]_i_1__3_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_2__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_3__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40[9]_i_4__1_n_0\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[0]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[10]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[11]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[1]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[2]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[3]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[4]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[5]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[6]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[7]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[8]\ : STD_LOGIC;
  signal \start_sequence_40_reg_n_0_[9]\ : STD_LOGIC;
  signal \^veto_l1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cmd[1]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cmd[3]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \start_sequence_40[0]_i_1__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \start_sequence_40[11]_i_2__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \start_sequence_40[1]_i_1__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \start_sequence_40[2]_i_1__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \start_sequence_40[3]_i_1__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \start_sequence_40[7]_i_1__1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \start_sequence_40[8]_i_1__3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \start_sequence_40[9]_i_4__1\ : label is "soft_lutpair9";
begin
  fire_reg_0 <= \^fire_reg_0\;
  veto_l1 <= \^veto_l1\;
\cmd[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \counter_reg[7]\(12),
      I1 => \^fire_reg_0\,
      I2 => fc_orbitsync,
      I3 => fc_calibrationreq,
      O => \gen_write[2].CtlReg_reg[2][24]\
    );
\cmd[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fire_reg_0\,
      I1 => \counter_reg[7]\(12),
      O => fc_calibrationl1a
    );
\counter[0]_i_2__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fire_reg_0\,
      I1 => \counter_reg[7]\(12),
      O => DI(0)
    );
\counter[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \counter_reg[7]\(12),
      I1 => \^fire_reg_0\,
      I2 => \counter_reg[7]_0\(0),
      O => \gen_write[2].CtlReg_reg[2][24]_0\(0)
    );
\counter[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \^fire_reg_0\,
      I1 => fc_l1agen_A,
      I2 => fc_l1agen_B,
      I3 => D(0),
      O => S(0)
    );
fire_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \^veto_l1\,
      Q => \^fire_reg_0\,
      R => '0'
    );
\latched_req_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000A8"
    )
        port map (
      I0 => enable_calibrationl1a,
      I1 => fc_calibrationreq,
      I2 => latched_req,
      I3 => \^fire_reg_0\,
      I4 => reset_40,
      O => \latched_req_i_1__0_n_0\
    );
latched_req_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \latched_req_i_1__0_n_0\,
      Q => latched_req,
      R => '0'
    );
\pending_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \pending_i_2__3_n_0\,
      I1 => \pending_i_3__3_n_0\,
      I2 => \pending_i_4__3_n_0\,
      I3 => \pending_i_5__3_n_0\,
      I4 => \pending_i_6__3_n_0\,
      O => pending0
    );
\pending_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAFFBABA"
    )
        port map (
      I0 => \pending_i_7__3_n_0\,
      I1 => \start_sequence_40_reg_n_0_[5]\,
      I2 => pending_reg_0(5),
      I3 => \start_sequence_40_reg_n_0_[8]\,
      I4 => pending_reg_0(8),
      I5 => \pending_i_8__3_n_0\,
      O => \pending_i_2__3_n_0\
    );
\pending_i_3__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => pending_reg_0(0),
      I1 => \start_sequence_40_reg_n_0_[0]\,
      I2 => \start_sequence_40_reg_n_0_[5]\,
      I3 => pending_reg_0(5),
      I4 => pending_reg_0(4),
      I5 => \start_sequence_40_reg_n_0_[4]\,
      O => \pending_i_3__3_n_0\
    );
\pending_i_4__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FF22FF2FFFF2FF2"
    )
        port map (
      I0 => \start_sequence_40_reg_n_0_[7]\,
      I1 => pending_reg_0(7),
      I2 => \start_sequence_40_reg_n_0_[1]\,
      I3 => pending_reg_0(1),
      I4 => \start_sequence_40_reg_n_0_[8]\,
      I5 => pending_reg_0(8),
      O => \pending_i_4__3_n_0\
    );
\pending_i_5__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF77FF7FFFF7FF7"
    )
        port map (
      I0 => enable_calibrationl1a,
      I1 => latched_req,
      I2 => pending_reg_0(11),
      I3 => \start_sequence_40_reg_n_0_[11]\,
      I4 => pending_reg_0(7),
      I5 => \start_sequence_40_reg_n_0_[7]\,
      O => \pending_i_5__3_n_0\
    );
\pending_i_6__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \start_sequence_40_reg_n_0_[9]\,
      I1 => pending_reg_0(9),
      I2 => pending_reg_0(6),
      I3 => \start_sequence_40_reg_n_0_[6]\,
      I4 => pending_reg_0(10),
      I5 => \start_sequence_40_reg_n_0_[10]\,
      O => \pending_i_6__3_n_0\
    );
\pending_i_7__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => pending_reg_0(4),
      I1 => \start_sequence_40_reg_n_0_[4]\,
      I2 => \start_sequence_40_reg_n_0_[2]\,
      I3 => pending_reg_0(2),
      O => \pending_i_7__3_n_0\
    );
\pending_i_8__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FF22FF2FFFF2FF2"
    )
        port map (
      I0 => \start_sequence_40_reg_n_0_[0]\,
      I1 => pending_reg_0(0),
      I2 => pending_reg_0(3),
      I3 => \start_sequence_40_reg_n_0_[3]\,
      I4 => \start_sequence_40_reg_n_0_[2]\,
      I5 => pending_reg_0(2),
      O => \pending_i_8__3_n_0\
    );
pending_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => pending0,
      Q => \^veto_l1\,
      R => '0'
    );
\start_sequence_40[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg[7]\(0),
      O => \start_sequence_40[0]_i_1__1_n_0\
    );
\start_sequence_40[10]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \counter_reg[7]\(10),
      I1 => \counter_reg[7]\(7),
      I2 => \counter_reg[7]\(6),
      I3 => \counter_reg[7]\(9),
      I4 => \counter_reg[7]\(8),
      I5 => \start_sequence_40[10]_i_2__1_n_0\,
      O => \start_sequence_40[10]_i_1__1_n_0\
    );
\start_sequence_40[10]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \counter_reg[7]\(2),
      I1 => \counter_reg[7]\(3),
      I2 => \counter_reg[7]\(1),
      I3 => \counter_reg[7]\(0),
      I4 => \counter_reg[7]\(5),
      I5 => \counter_reg[7]\(4),
      O => \start_sequence_40[10]_i_2__1_n_0\
    );
\start_sequence_40[11]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \counter_reg[7]\(11),
      I1 => \counter_reg[7]\(10),
      I2 => \start_sequence_40[11]_i_2__1_n_0\,
      O => \start_sequence_40[11]_i_1__1_n_0\
    );
\start_sequence_40[11]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \start_sequence_40[10]_i_2__1_n_0\,
      I1 => \counter_reg[7]\(8),
      I2 => \counter_reg[7]\(9),
      I3 => \counter_reg[7]\(6),
      I4 => \counter_reg[7]\(7),
      O => \start_sequence_40[11]_i_2__1_n_0\
    );
\start_sequence_40[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg[7]\(1),
      I1 => \counter_reg[7]\(0),
      O => \start_sequence_40[1]_i_1__1_n_0\
    );
\start_sequence_40[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"802A"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2__1_n_0\,
      I1 => \counter_reg[7]\(1),
      I2 => \counter_reg[7]\(0),
      I3 => \counter_reg[7]\(2),
      O => \start_sequence_40[2]_i_1__1_n_0\
    );
\start_sequence_40[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA15"
    )
        port map (
      I0 => \counter_reg[7]\(2),
      I1 => \counter_reg[7]\(0),
      I2 => \counter_reg[7]\(1),
      I3 => \counter_reg[7]\(3),
      O => \start_sequence_40[3]_i_1__1_n_0\
    );
\start_sequence_40[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA800000002A"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2__1_n_0\,
      I1 => \counter_reg[7]\(0),
      I2 => \counter_reg[7]\(1),
      I3 => \counter_reg[7]\(3),
      I4 => \counter_reg[7]\(2),
      I5 => \counter_reg[7]\(4),
      O => \start_sequence_40[4]_i_1__1_n_0\
    );
\start_sequence_40[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA95"
    )
        port map (
      I0 => \counter_reg[7]\(5),
      I1 => \counter_reg[7]\(0),
      I2 => \counter_reg[7]\(1),
      I3 => \counter_reg[7]\(3),
      I4 => \counter_reg[7]\(2),
      I5 => \counter_reg[7]\(4),
      O => \start_sequence_40[5]_i_1__1_n_0\
    );
\start_sequence_40[6]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \counter_reg[7]\(6),
      I1 => \start_sequence_40[10]_i_2__1_n_0\,
      O => \start_sequence_40[6]_i_1__3_n_0\
    );
\start_sequence_40[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \counter_reg[7]\(7),
      I1 => \start_sequence_40[10]_i_2__1_n_0\,
      I2 => \counter_reg[7]\(6),
      O => \start_sequence_40[7]_i_1__1_n_0\
    );
\start_sequence_40[8]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \counter_reg[7]\(8),
      I1 => \counter_reg[7]\(6),
      I2 => \counter_reg[7]\(7),
      I3 => \start_sequence_40[10]_i_2__1_n_0\,
      O => \start_sequence_40[8]_i_1__3_n_0\
    );
\start_sequence_40[9]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000002"
    )
        port map (
      I0 => \start_sequence_40[9]_i_2__1_n_0\,
      I1 => \counter_reg[7]\(8),
      I2 => \counter_reg[7]\(6),
      I3 => \counter_reg[7]\(7),
      I4 => \start_sequence_40[10]_i_2__1_n_0\,
      I5 => \counter_reg[7]\(9),
      O => \start_sequence_40[9]_i_1__1_n_0\
    );
\start_sequence_40[9]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter_reg[7]\(11),
      I1 => \counter_reg[7]\(10),
      I2 => \counter_reg[7]\(3),
      I3 => \counter_reg[7]\(2),
      I4 => \start_sequence_40[9]_i_3__1_n_0\,
      I5 => \start_sequence_40[9]_i_4__1_n_0\,
      O => \start_sequence_40[9]_i_2__1_n_0\
    );
\start_sequence_40[9]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_reg[7]\(4),
      I1 => \counter_reg[7]\(5),
      O => \start_sequence_40[9]_i_3__1_n_0\
    );
\start_sequence_40[9]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg[7]\(7),
      I1 => \counter_reg[7]\(6),
      I2 => \counter_reg[7]\(9),
      I3 => \counter_reg[7]\(8),
      O => \start_sequence_40[9]_i_4__1_n_0\
    );
\start_sequence_40_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[0]_i_1__1_n_0\,
      Q => \start_sequence_40_reg_n_0_[0]\,
      R => '0'
    );
\start_sequence_40_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[10]_i_1__1_n_0\,
      Q => \start_sequence_40_reg_n_0_[10]\,
      R => '0'
    );
\start_sequence_40_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[11]_i_1__1_n_0\,
      Q => \start_sequence_40_reg_n_0_[11]\,
      R => '0'
    );
\start_sequence_40_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[1]_i_1__1_n_0\,
      Q => \start_sequence_40_reg_n_0_[1]\,
      R => '0'
    );
\start_sequence_40_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[2]_i_1__1_n_0\,
      Q => \start_sequence_40_reg_n_0_[2]\,
      R => '0'
    );
\start_sequence_40_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[3]_i_1__1_n_0\,
      Q => \start_sequence_40_reg_n_0_[3]\,
      R => '0'
    );
\start_sequence_40_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[4]_i_1__1_n_0\,
      Q => \start_sequence_40_reg_n_0_[4]\,
      R => '0'
    );
\start_sequence_40_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[5]_i_1__1_n_0\,
      Q => \start_sequence_40_reg_n_0_[5]\,
      R => '0'
    );
\start_sequence_40_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[6]_i_1__3_n_0\,
      Q => \start_sequence_40_reg_n_0_[6]\,
      R => '0'
    );
\start_sequence_40_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[7]_i_1__1_n_0\,
      Q => \start_sequence_40_reg_n_0_[7]\,
      R => '0'
    );
\start_sequence_40_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[8]_i_1__3_n_0\,
      Q => \start_sequence_40_reg_n_0_[8]\,
      R => '0'
    );
\start_sequence_40_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \start_sequence_40[9]_i_1__1_n_0\,
      Q => \start_sequence_40_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clear : in STD_LOGIC;
    ext_lhc_clk : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \counter_reg[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_10\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_11\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_12\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_13\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_14\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_15\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_8\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__2_n_9\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_10\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_11\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_12\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_13\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_14\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_15\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_8\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__3_n_9\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_10\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_11\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_12\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_13\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_14\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_15\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_8\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__3_n_9\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_10\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_11\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_12\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_13\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_14\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_15\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_8\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__3_n_9\ : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  D(0) <= \^d\(0);
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_15\,
      Q => \^d\(0),
      R => clear
    );
\counter_reg[0]_i_1__2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[0]_i_1__2_n_0\,
      CO(6) => \counter_reg[0]_i_1__2_n_1\,
      CO(5) => \counter_reg[0]_i_1__2_n_2\,
      CO(4) => \counter_reg[0]_i_1__2_n_3\,
      CO(3) => \counter_reg[0]_i_1__2_n_4\,
      CO(2) => \counter_reg[0]_i_1__2_n_5\,
      CO(1) => \counter_reg[0]_i_1__2_n_6\,
      CO(0) => \counter_reg[0]_i_1__2_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => DI(0),
      O(7) => \counter_reg[0]_i_1__2_n_8\,
      O(6) => \counter_reg[0]_i_1__2_n_9\,
      O(5) => \counter_reg[0]_i_1__2_n_10\,
      O(4) => \counter_reg[0]_i_1__2_n_11\,
      O(3) => \counter_reg[0]_i_1__2_n_12\,
      O(2) => \counter_reg[0]_i_1__2_n_13\,
      O(1) => \counter_reg[0]_i_1__2_n_14\,
      O(0) => \counter_reg[0]_i_1__2_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => \counter_reg[7]_0\(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_13\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_12\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_11\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_10\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_9\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_8\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_15\,
      Q => counter_reg(16),
      R => clear
    );
\counter_reg[16]_i_1__3\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[8]_i_1__3_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[16]_i_1__3_n_0\,
      CO(6) => \counter_reg[16]_i_1__3_n_1\,
      CO(5) => \counter_reg[16]_i_1__3_n_2\,
      CO(4) => \counter_reg[16]_i_1__3_n_3\,
      CO(3) => \counter_reg[16]_i_1__3_n_4\,
      CO(2) => \counter_reg[16]_i_1__3_n_5\,
      CO(1) => \counter_reg[16]_i_1__3_n_6\,
      CO(0) => \counter_reg[16]_i_1__3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[16]_i_1__3_n_8\,
      O(6) => \counter_reg[16]_i_1__3_n_9\,
      O(5) => \counter_reg[16]_i_1__3_n_10\,
      O(4) => \counter_reg[16]_i_1__3_n_11\,
      O(3) => \counter_reg[16]_i_1__3_n_12\,
      O(2) => \counter_reg[16]_i_1__3_n_13\,
      O(1) => \counter_reg[16]_i_1__3_n_14\,
      O(0) => \counter_reg[16]_i_1__3_n_15\,
      S(7 downto 0) => counter_reg(23 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_14\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_13\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_12\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_14\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_11\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_10\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_9\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_8\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_15\,
      Q => counter_reg(24),
      R => clear
    );
\counter_reg[24]_i_1__3\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[16]_i_1__3_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_counter_reg[24]_i_1__3_CO_UNCONNECTED\(7),
      CO(6) => \counter_reg[24]_i_1__3_n_1\,
      CO(5) => \counter_reg[24]_i_1__3_n_2\,
      CO(4) => \counter_reg[24]_i_1__3_n_3\,
      CO(3) => \counter_reg[24]_i_1__3_n_4\,
      CO(2) => \counter_reg[24]_i_1__3_n_5\,
      CO(1) => \counter_reg[24]_i_1__3_n_6\,
      CO(0) => \counter_reg[24]_i_1__3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[24]_i_1__3_n_8\,
      O(6) => \counter_reg[24]_i_1__3_n_9\,
      O(5) => \counter_reg[24]_i_1__3_n_10\,
      O(4) => \counter_reg[24]_i_1__3_n_11\,
      O(3) => \counter_reg[24]_i_1__3_n_12\,
      O(2) => \counter_reg[24]_i_1__3_n_13\,
      O(1) => \counter_reg[24]_i_1__3_n_14\,
      O(0) => \counter_reg[24]_i_1__3_n_15\,
      S(7 downto 0) => counter_reg(31 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_14\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_13\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_12\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_11\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_10\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_13\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_9\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_8\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_12\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_11\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_10\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_9\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_8\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_15\,
      Q => counter_reg(8),
      R => clear
    );
\counter_reg[8]_i_1__3\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[0]_i_1__2_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[8]_i_1__3_n_0\,
      CO(6) => \counter_reg[8]_i_1__3_n_1\,
      CO(5) => \counter_reg[8]_i_1__3_n_2\,
      CO(4) => \counter_reg[8]_i_1__3_n_3\,
      CO(3) => \counter_reg[8]_i_1__3_n_4\,
      CO(2) => \counter_reg[8]_i_1__3_n_5\,
      CO(1) => \counter_reg[8]_i_1__3_n_6\,
      CO(0) => \counter_reg[8]_i_1__3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[8]_i_1__3_n_8\,
      O(6) => \counter_reg[8]_i_1__3_n_9\,
      O(5) => \counter_reg[8]_i_1__3_n_10\,
      O(4) => \counter_reg[8]_i_1__3_n_11\,
      O(3) => \counter_reg[8]_i_1__3_n_12\,
      O(2) => \counter_reg[8]_i_1__3_n_13\,
      O(1) => \counter_reg[8]_i_1__3_n_14\,
      O(0) => \counter_reg[8]_i_1__3_n_15\,
      S(7 downto 0) => counter_reg(15 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_14\,
      Q => counter_reg(9),
      R => clear
    );
\value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => Q(0),
      R => '0'
    );
\value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(10),
      Q => Q(10),
      R => '0'
    );
\value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(11),
      Q => Q(11),
      R => '0'
    );
\value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(12),
      Q => Q(12),
      R => '0'
    );
\value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(13),
      Q => Q(13),
      R => '0'
    );
\value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(14),
      Q => Q(14),
      R => '0'
    );
\value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(15),
      Q => Q(15),
      R => '0'
    );
\value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(16),
      Q => Q(16),
      R => '0'
    );
\value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(17),
      Q => Q(17),
      R => '0'
    );
\value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(18),
      Q => Q(18),
      R => '0'
    );
\value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(19),
      Q => Q(19),
      R => '0'
    );
\value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(1),
      Q => Q(1),
      R => '0'
    );
\value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(20),
      Q => Q(20),
      R => '0'
    );
\value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(21),
      Q => Q(21),
      R => '0'
    );
\value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(22),
      Q => Q(22),
      R => '0'
    );
\value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(23),
      Q => Q(23),
      R => '0'
    );
\value_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(24),
      Q => Q(24),
      R => '0'
    );
\value_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(25),
      Q => Q(25),
      R => '0'
    );
\value_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(26),
      Q => Q(26),
      R => '0'
    );
\value_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(27),
      Q => Q(27),
      R => '0'
    );
\value_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(28),
      Q => Q(28),
      R => '0'
    );
\value_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(29),
      Q => Q(29),
      R => '0'
    );
\value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(2),
      Q => Q(2),
      R => '0'
    );
\value_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(30),
      Q => Q(30),
      R => '0'
    );
\value_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(31),
      Q => Q(31),
      R => '0'
    );
\value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(3),
      Q => Q(3),
      R => '0'
    );
\value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(4),
      Q => Q(4),
      R => '0'
    );
\value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(5),
      Q => Q(5),
      R => '0'
    );
\value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(6),
      Q => Q(6),
      R => '0'
    );
\value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(7),
      Q => Q(7),
      R => '0'
    );
\value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(8),
      Q => Q(8),
      R => '0'
    );
\value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clear : in STD_LOGIC;
    ext_lhc_clk : in STD_LOGIC;
    fc_calibrationreq : in STD_LOGIC;
    \counter_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_0 : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_0;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \counter_reg[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_10\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_11\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_12\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_13\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_14\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_15\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_8\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__3_n_9\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_10\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_11\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_12\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_13\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_14\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_15\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_8\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__4_n_9\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_10\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_11\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_12\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_13\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_14\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_15\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_8\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__4_n_9\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_10\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_11\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_12\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_13\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_14\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_15\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_8\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__4_n_9\ : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  D(0) <= \^d\(0);
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_15\,
      Q => \^d\(0),
      R => clear
    );
\counter_reg[0]_i_1__3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[0]_i_1__3_n_0\,
      CO(6) => \counter_reg[0]_i_1__3_n_1\,
      CO(5) => \counter_reg[0]_i_1__3_n_2\,
      CO(4) => \counter_reg[0]_i_1__3_n_3\,
      CO(3) => \counter_reg[0]_i_1__3_n_4\,
      CO(2) => \counter_reg[0]_i_1__3_n_5\,
      CO(1) => \counter_reg[0]_i_1__3_n_6\,
      CO(0) => \counter_reg[0]_i_1__3_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => fc_calibrationreq,
      O(7) => \counter_reg[0]_i_1__3_n_8\,
      O(6) => \counter_reg[0]_i_1__3_n_9\,
      O(5) => \counter_reg[0]_i_1__3_n_10\,
      O(4) => \counter_reg[0]_i_1__3_n_11\,
      O(3) => \counter_reg[0]_i_1__3_n_12\,
      O(2) => \counter_reg[0]_i_1__3_n_13\,
      O(1) => \counter_reg[0]_i_1__3_n_14\,
      O(0) => \counter_reg[0]_i_1__3_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => \counter_reg[7]_0\(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_13\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_12\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_11\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_10\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_9\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_8\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_15\,
      Q => counter_reg(16),
      R => clear
    );
\counter_reg[16]_i_1__4\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[8]_i_1__4_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[16]_i_1__4_n_0\,
      CO(6) => \counter_reg[16]_i_1__4_n_1\,
      CO(5) => \counter_reg[16]_i_1__4_n_2\,
      CO(4) => \counter_reg[16]_i_1__4_n_3\,
      CO(3) => \counter_reg[16]_i_1__4_n_4\,
      CO(2) => \counter_reg[16]_i_1__4_n_5\,
      CO(1) => \counter_reg[16]_i_1__4_n_6\,
      CO(0) => \counter_reg[16]_i_1__4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[16]_i_1__4_n_8\,
      O(6) => \counter_reg[16]_i_1__4_n_9\,
      O(5) => \counter_reg[16]_i_1__4_n_10\,
      O(4) => \counter_reg[16]_i_1__4_n_11\,
      O(3) => \counter_reg[16]_i_1__4_n_12\,
      O(2) => \counter_reg[16]_i_1__4_n_13\,
      O(1) => \counter_reg[16]_i_1__4_n_14\,
      O(0) => \counter_reg[16]_i_1__4_n_15\,
      S(7 downto 0) => counter_reg(23 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_14\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_13\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_12\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_14\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_11\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_10\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_9\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_8\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_15\,
      Q => counter_reg(24),
      R => clear
    );
\counter_reg[24]_i_1__4\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[16]_i_1__4_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_counter_reg[24]_i_1__4_CO_UNCONNECTED\(7),
      CO(6) => \counter_reg[24]_i_1__4_n_1\,
      CO(5) => \counter_reg[24]_i_1__4_n_2\,
      CO(4) => \counter_reg[24]_i_1__4_n_3\,
      CO(3) => \counter_reg[24]_i_1__4_n_4\,
      CO(2) => \counter_reg[24]_i_1__4_n_5\,
      CO(1) => \counter_reg[24]_i_1__4_n_6\,
      CO(0) => \counter_reg[24]_i_1__4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[24]_i_1__4_n_8\,
      O(6) => \counter_reg[24]_i_1__4_n_9\,
      O(5) => \counter_reg[24]_i_1__4_n_10\,
      O(4) => \counter_reg[24]_i_1__4_n_11\,
      O(3) => \counter_reg[24]_i_1__4_n_12\,
      O(2) => \counter_reg[24]_i_1__4_n_13\,
      O(1) => \counter_reg[24]_i_1__4_n_14\,
      O(0) => \counter_reg[24]_i_1__4_n_15\,
      S(7 downto 0) => counter_reg(31 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_14\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_13\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_12\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_11\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_10\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_13\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_9\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_8\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_12\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_11\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_10\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_9\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_8\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_15\,
      Q => counter_reg(8),
      R => clear
    );
\counter_reg[8]_i_1__4\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[0]_i_1__3_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[8]_i_1__4_n_0\,
      CO(6) => \counter_reg[8]_i_1__4_n_1\,
      CO(5) => \counter_reg[8]_i_1__4_n_2\,
      CO(4) => \counter_reg[8]_i_1__4_n_3\,
      CO(3) => \counter_reg[8]_i_1__4_n_4\,
      CO(2) => \counter_reg[8]_i_1__4_n_5\,
      CO(1) => \counter_reg[8]_i_1__4_n_6\,
      CO(0) => \counter_reg[8]_i_1__4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[8]_i_1__4_n_8\,
      O(6) => \counter_reg[8]_i_1__4_n_9\,
      O(5) => \counter_reg[8]_i_1__4_n_10\,
      O(4) => \counter_reg[8]_i_1__4_n_11\,
      O(3) => \counter_reg[8]_i_1__4_n_12\,
      O(2) => \counter_reg[8]_i_1__4_n_13\,
      O(1) => \counter_reg[8]_i_1__4_n_14\,
      O(0) => \counter_reg[8]_i_1__4_n_15\,
      S(7 downto 0) => counter_reg(15 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_14\,
      Q => counter_reg(9),
      R => clear
    );
\value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => Q(0),
      R => '0'
    );
\value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(10),
      Q => Q(10),
      R => '0'
    );
\value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(11),
      Q => Q(11),
      R => '0'
    );
\value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(12),
      Q => Q(12),
      R => '0'
    );
\value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(13),
      Q => Q(13),
      R => '0'
    );
\value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(14),
      Q => Q(14),
      R => '0'
    );
\value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(15),
      Q => Q(15),
      R => '0'
    );
\value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(16),
      Q => Q(16),
      R => '0'
    );
\value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(17),
      Q => Q(17),
      R => '0'
    );
\value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(18),
      Q => Q(18),
      R => '0'
    );
\value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(19),
      Q => Q(19),
      R => '0'
    );
\value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(1),
      Q => Q(1),
      R => '0'
    );
\value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(20),
      Q => Q(20),
      R => '0'
    );
\value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(21),
      Q => Q(21),
      R => '0'
    );
\value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(22),
      Q => Q(22),
      R => '0'
    );
\value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(23),
      Q => Q(23),
      R => '0'
    );
\value_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(24),
      Q => Q(24),
      R => '0'
    );
\value_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(25),
      Q => Q(25),
      R => '0'
    );
\value_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(26),
      Q => Q(26),
      R => '0'
    );
\value_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(27),
      Q => Q(27),
      R => '0'
    );
\value_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(28),
      Q => Q(28),
      R => '0'
    );
\value_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(29),
      Q => Q(29),
      R => '0'
    );
\value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(2),
      Q => Q(2),
      R => '0'
    );
\value_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(30),
      Q => Q(30),
      R => '0'
    );
\value_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(31),
      Q => Q(31),
      R => '0'
    );
\value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(3),
      Q => Q(3),
      R => '0'
    );
\value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(4),
      Q => Q(4),
      R => '0'
    );
\value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(5),
      Q => Q(5),
      R => '0'
    );
\value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(6),
      Q => Q(6),
      R => '0'
    );
\value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(7),
      Q => Q(7),
      R => '0'
    );
\value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(8),
      Q => Q(8),
      R => '0'
    );
\value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \value_reg[31]_0\ : out STD_LOGIC;
    \value_reg[30]_0\ : out STD_LOGIC;
    \value_reg[29]_0\ : out STD_LOGIC;
    \value_reg[28]_0\ : out STD_LOGIC;
    \value_reg[27]_0\ : out STD_LOGIC;
    \value_reg[26]_0\ : out STD_LOGIC;
    \value_reg[25]_0\ : out STD_LOGIC;
    \value_reg[24]_0\ : out STD_LOGIC;
    \value_reg[23]_0\ : out STD_LOGIC;
    \value_reg[22]_0\ : out STD_LOGIC;
    \value_reg[21]_0\ : out STD_LOGIC;
    \value_reg[20]_0\ : out STD_LOGIC;
    \value_reg[19]_0\ : out STD_LOGIC;
    \value_reg[18]_0\ : out STD_LOGIC;
    \value_reg[17]_0\ : out STD_LOGIC;
    \value_reg[16]_0\ : out STD_LOGIC;
    \value_reg[15]_0\ : out STD_LOGIC;
    \value_reg[14]_0\ : out STD_LOGIC;
    \value_reg[13]_0\ : out STD_LOGIC;
    \value_reg[12]_0\ : out STD_LOGIC;
    \value_reg[11]_0\ : out STD_LOGIC;
    \value_reg[10]_0\ : out STD_LOGIC;
    \value_reg[9]_0\ : out STD_LOGIC;
    \value_reg[8]_0\ : out STD_LOGIC;
    \value_reg[7]_0\ : out STD_LOGIC;
    \value_reg[6]_0\ : out STD_LOGIC;
    \value_reg[5]_0\ : out STD_LOGIC;
    \value_reg[4]_0\ : out STD_LOGIC;
    \value_reg[3]_0\ : out STD_LOGIC;
    \value_reg[2]_0\ : out STD_LOGIC;
    \value_reg[1]_0\ : out STD_LOGIC;
    \value_reg[0]_0\ : out STD_LOGIC;
    clear : in STD_LOGIC;
    ext_lhc_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \io_r_data_reg[31]_i_7\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \io_r_data_reg[31]_i_7_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \io_r_data_reg[31]_i_7_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fc_daqresync : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_1 : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_1;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_1 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \counter_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_10\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_11\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_12\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_13\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_14\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_15\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_8\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__0_n_9\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_10\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_11\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_12\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_13\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_14\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_15\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_8\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_9\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_10\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_11\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_12\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_13\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_14\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_15\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_8\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__1_n_9\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_10\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_11\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_12\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_13\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_14\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_15\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_8\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_9\ : STD_LOGIC;
  signal \value_reg_n_0_[0]\ : STD_LOGIC;
  signal \value_reg_n_0_[10]\ : STD_LOGIC;
  signal \value_reg_n_0_[11]\ : STD_LOGIC;
  signal \value_reg_n_0_[12]\ : STD_LOGIC;
  signal \value_reg_n_0_[13]\ : STD_LOGIC;
  signal \value_reg_n_0_[14]\ : STD_LOGIC;
  signal \value_reg_n_0_[15]\ : STD_LOGIC;
  signal \value_reg_n_0_[16]\ : STD_LOGIC;
  signal \value_reg_n_0_[17]\ : STD_LOGIC;
  signal \value_reg_n_0_[18]\ : STD_LOGIC;
  signal \value_reg_n_0_[19]\ : STD_LOGIC;
  signal \value_reg_n_0_[1]\ : STD_LOGIC;
  signal \value_reg_n_0_[20]\ : STD_LOGIC;
  signal \value_reg_n_0_[21]\ : STD_LOGIC;
  signal \value_reg_n_0_[22]\ : STD_LOGIC;
  signal \value_reg_n_0_[23]\ : STD_LOGIC;
  signal \value_reg_n_0_[24]\ : STD_LOGIC;
  signal \value_reg_n_0_[25]\ : STD_LOGIC;
  signal \value_reg_n_0_[26]\ : STD_LOGIC;
  signal \value_reg_n_0_[27]\ : STD_LOGIC;
  signal \value_reg_n_0_[28]\ : STD_LOGIC;
  signal \value_reg_n_0_[29]\ : STD_LOGIC;
  signal \value_reg_n_0_[2]\ : STD_LOGIC;
  signal \value_reg_n_0_[30]\ : STD_LOGIC;
  signal \value_reg_n_0_[31]\ : STD_LOGIC;
  signal \value_reg_n_0_[3]\ : STD_LOGIC;
  signal \value_reg_n_0_[4]\ : STD_LOGIC;
  signal \value_reg_n_0_[5]\ : STD_LOGIC;
  signal \value_reg_n_0_[6]\ : STD_LOGIC;
  signal \value_reg_n_0_[7]\ : STD_LOGIC;
  signal \value_reg_n_0_[8]\ : STD_LOGIC;
  signal \value_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  D(0) <= \^d\(0);
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_15\,
      Q => \^d\(0),
      R => clear
    );
\counter_reg[0]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[0]_i_1__0_n_0\,
      CO(6) => \counter_reg[0]_i_1__0_n_1\,
      CO(5) => \counter_reg[0]_i_1__0_n_2\,
      CO(4) => \counter_reg[0]_i_1__0_n_3\,
      CO(3) => \counter_reg[0]_i_1__0_n_4\,
      CO(2) => \counter_reg[0]_i_1__0_n_5\,
      CO(1) => \counter_reg[0]_i_1__0_n_6\,
      CO(0) => \counter_reg[0]_i_1__0_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => fc_daqresync,
      O(7) => \counter_reg[0]_i_1__0_n_8\,
      O(6) => \counter_reg[0]_i_1__0_n_9\,
      O(5) => \counter_reg[0]_i_1__0_n_10\,
      O(4) => \counter_reg[0]_i_1__0_n_11\,
      O(3) => \counter_reg[0]_i_1__0_n_12\,
      O(2) => \counter_reg[0]_i_1__0_n_13\,
      O(1) => \counter_reg[0]_i_1__0_n_14\,
      O(0) => \counter_reg[0]_i_1__0_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => S(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_13\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_12\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_11\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_10\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_9\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_8\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_15\,
      Q => counter_reg(16),
      R => clear
    );
\counter_reg[16]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[8]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[16]_i_1__1_n_0\,
      CO(6) => \counter_reg[16]_i_1__1_n_1\,
      CO(5) => \counter_reg[16]_i_1__1_n_2\,
      CO(4) => \counter_reg[16]_i_1__1_n_3\,
      CO(3) => \counter_reg[16]_i_1__1_n_4\,
      CO(2) => \counter_reg[16]_i_1__1_n_5\,
      CO(1) => \counter_reg[16]_i_1__1_n_6\,
      CO(0) => \counter_reg[16]_i_1__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[16]_i_1__1_n_8\,
      O(6) => \counter_reg[16]_i_1__1_n_9\,
      O(5) => \counter_reg[16]_i_1__1_n_10\,
      O(4) => \counter_reg[16]_i_1__1_n_11\,
      O(3) => \counter_reg[16]_i_1__1_n_12\,
      O(2) => \counter_reg[16]_i_1__1_n_13\,
      O(1) => \counter_reg[16]_i_1__1_n_14\,
      O(0) => \counter_reg[16]_i_1__1_n_15\,
      S(7 downto 0) => counter_reg(23 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_14\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_13\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_12\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_14\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_11\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_10\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_9\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_8\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_15\,
      Q => counter_reg(24),
      R => clear
    );
\counter_reg[24]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[16]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_counter_reg[24]_i_1__1_CO_UNCONNECTED\(7),
      CO(6) => \counter_reg[24]_i_1__1_n_1\,
      CO(5) => \counter_reg[24]_i_1__1_n_2\,
      CO(4) => \counter_reg[24]_i_1__1_n_3\,
      CO(3) => \counter_reg[24]_i_1__1_n_4\,
      CO(2) => \counter_reg[24]_i_1__1_n_5\,
      CO(1) => \counter_reg[24]_i_1__1_n_6\,
      CO(0) => \counter_reg[24]_i_1__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[24]_i_1__1_n_8\,
      O(6) => \counter_reg[24]_i_1__1_n_9\,
      O(5) => \counter_reg[24]_i_1__1_n_10\,
      O(4) => \counter_reg[24]_i_1__1_n_11\,
      O(3) => \counter_reg[24]_i_1__1_n_12\,
      O(2) => \counter_reg[24]_i_1__1_n_13\,
      O(1) => \counter_reg[24]_i_1__1_n_14\,
      O(0) => \counter_reg[24]_i_1__1_n_15\,
      S(7 downto 0) => counter_reg(31 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_14\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_13\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_12\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_11\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_10\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_13\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_9\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_8\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_12\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_11\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_10\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_9\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_8\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_15\,
      Q => counter_reg(8),
      R => clear
    );
\counter_reg[8]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[0]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[8]_i_1__1_n_0\,
      CO(6) => \counter_reg[8]_i_1__1_n_1\,
      CO(5) => \counter_reg[8]_i_1__1_n_2\,
      CO(4) => \counter_reg[8]_i_1__1_n_3\,
      CO(3) => \counter_reg[8]_i_1__1_n_4\,
      CO(2) => \counter_reg[8]_i_1__1_n_5\,
      CO(1) => \counter_reg[8]_i_1__1_n_6\,
      CO(0) => \counter_reg[8]_i_1__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[8]_i_1__1_n_8\,
      O(6) => \counter_reg[8]_i_1__1_n_9\,
      O(5) => \counter_reg[8]_i_1__1_n_10\,
      O(4) => \counter_reg[8]_i_1__1_n_11\,
      O(3) => \counter_reg[8]_i_1__1_n_12\,
      O(2) => \counter_reg[8]_i_1__1_n_13\,
      O(1) => \counter_reg[8]_i_1__1_n_14\,
      O(0) => \counter_reg[8]_i_1__1_n_15\,
      S(7 downto 0) => counter_reg(15 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_14\,
      Q => counter_reg(9),
      R => clear
    );
\io_r_data[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(0),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(0),
      O => \value_reg[0]_0\
    );
\io_r_data[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[10]\,
      I1 => Q(10),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(10),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(10),
      O => \value_reg[10]_0\
    );
\io_r_data[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[11]\,
      I1 => Q(11),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(11),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(11),
      O => \value_reg[11]_0\
    );
\io_r_data[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[12]\,
      I1 => Q(12),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(12),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(12),
      O => \value_reg[12]_0\
    );
\io_r_data[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[13]\,
      I1 => Q(13),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(13),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(13),
      O => \value_reg[13]_0\
    );
\io_r_data[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[14]\,
      I1 => Q(14),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(14),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(14),
      O => \value_reg[14]_0\
    );
\io_r_data[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[15]\,
      I1 => Q(15),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(15),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(15),
      O => \value_reg[15]_0\
    );
\io_r_data[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[16]\,
      I1 => Q(16),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(16),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(16),
      O => \value_reg[16]_0\
    );
\io_r_data[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[17]\,
      I1 => Q(17),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(17),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(17),
      O => \value_reg[17]_0\
    );
\io_r_data[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[18]\,
      I1 => Q(18),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(18),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(18),
      O => \value_reg[18]_0\
    );
\io_r_data[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[19]\,
      I1 => Q(19),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(19),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(19),
      O => \value_reg[19]_0\
    );
\io_r_data[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(1),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(1),
      O => \value_reg[1]_0\
    );
\io_r_data[20]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[20]\,
      I1 => Q(20),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(20),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(20),
      O => \value_reg[20]_0\
    );
\io_r_data[21]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[21]\,
      I1 => Q(21),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(21),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(21),
      O => \value_reg[21]_0\
    );
\io_r_data[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[22]\,
      I1 => Q(22),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(22),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(22),
      O => \value_reg[22]_0\
    );
\io_r_data[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[23]\,
      I1 => Q(23),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(23),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(23),
      O => \value_reg[23]_0\
    );
\io_r_data[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[24]\,
      I1 => Q(24),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(24),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(24),
      O => \value_reg[24]_0\
    );
\io_r_data[25]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[25]\,
      I1 => Q(25),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(25),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(25),
      O => \value_reg[25]_0\
    );
\io_r_data[26]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[26]\,
      I1 => Q(26),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(26),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(26),
      O => \value_reg[26]_0\
    );
\io_r_data[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[27]\,
      I1 => Q(27),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(27),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(27),
      O => \value_reg[27]_0\
    );
\io_r_data[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[28]\,
      I1 => Q(28),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(28),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(28),
      O => \value_reg[28]_0\
    );
\io_r_data[29]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[29]\,
      I1 => Q(29),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(29),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(29),
      O => \value_reg[29]_0\
    );
\io_r_data[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(2),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(2),
      O => \value_reg[2]_0\
    );
\io_r_data[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[30]\,
      I1 => Q(30),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(30),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(30),
      O => \value_reg[30]_0\
    );
\io_r_data[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[31]\,
      I1 => Q(31),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(31),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(31),
      O => \value_reg[31]_0\
    );
\io_r_data[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(3),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(3),
      O => \value_reg[3]_0\
    );
\io_r_data[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[4]\,
      I1 => Q(4),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(4),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(4),
      O => \value_reg[4]_0\
    );
\io_r_data[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(5),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(5),
      O => \value_reg[5]_0\
    );
\io_r_data[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[6]\,
      I1 => Q(6),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(6),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(6),
      O => \value_reg[6]_0\
    );
\io_r_data[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(7),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(7),
      O => \value_reg[7]_0\
    );
\io_r_data[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[8]\,
      I1 => Q(8),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(8),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(8),
      O => \value_reg[8]_0\
    );
\io_r_data[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[9]\,
      I1 => Q(9),
      I2 => \io_r_data_reg[31]_i_7\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(9),
      I4 => \io_r_data_reg[31]_i_7\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(9),
      O => \value_reg[9]_0\
    );
\value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => \value_reg_n_0_[0]\,
      R => '0'
    );
\value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(10),
      Q => \value_reg_n_0_[10]\,
      R => '0'
    );
\value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(11),
      Q => \value_reg_n_0_[11]\,
      R => '0'
    );
\value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(12),
      Q => \value_reg_n_0_[12]\,
      R => '0'
    );
\value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(13),
      Q => \value_reg_n_0_[13]\,
      R => '0'
    );
\value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(14),
      Q => \value_reg_n_0_[14]\,
      R => '0'
    );
\value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(15),
      Q => \value_reg_n_0_[15]\,
      R => '0'
    );
\value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(16),
      Q => \value_reg_n_0_[16]\,
      R => '0'
    );
\value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(17),
      Q => \value_reg_n_0_[17]\,
      R => '0'
    );
\value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(18),
      Q => \value_reg_n_0_[18]\,
      R => '0'
    );
\value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(19),
      Q => \value_reg_n_0_[19]\,
      R => '0'
    );
\value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(1),
      Q => \value_reg_n_0_[1]\,
      R => '0'
    );
\value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(20),
      Q => \value_reg_n_0_[20]\,
      R => '0'
    );
\value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(21),
      Q => \value_reg_n_0_[21]\,
      R => '0'
    );
\value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(22),
      Q => \value_reg_n_0_[22]\,
      R => '0'
    );
\value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(23),
      Q => \value_reg_n_0_[23]\,
      R => '0'
    );
\value_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(24),
      Q => \value_reg_n_0_[24]\,
      R => '0'
    );
\value_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(25),
      Q => \value_reg_n_0_[25]\,
      R => '0'
    );
\value_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(26),
      Q => \value_reg_n_0_[26]\,
      R => '0'
    );
\value_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(27),
      Q => \value_reg_n_0_[27]\,
      R => '0'
    );
\value_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(28),
      Q => \value_reg_n_0_[28]\,
      R => '0'
    );
\value_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(29),
      Q => \value_reg_n_0_[29]\,
      R => '0'
    );
\value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(2),
      Q => \value_reg_n_0_[2]\,
      R => '0'
    );
\value_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(30),
      Q => \value_reg_n_0_[30]\,
      R => '0'
    );
\value_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(31),
      Q => \value_reg_n_0_[31]\,
      R => '0'
    );
\value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(3),
      Q => \value_reg_n_0_[3]\,
      R => '0'
    );
\value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(4),
      Q => \value_reg_n_0_[4]\,
      R => '0'
    );
\value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(5),
      Q => \value_reg_n_0_[5]\,
      R => '0'
    );
\value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(6),
      Q => \value_reg_n_0_[6]\,
      R => '0'
    );
\value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(7),
      Q => \value_reg_n_0_[7]\,
      R => '0'
    );
\value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(8),
      Q => \value_reg_n_0_[8]\,
      R => '0'
    );
\value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(9),
      Q => \value_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_2 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    clear : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ext_lhc_clk : in STD_LOGIC;
    reset_counters_40_n : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_2 : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_2;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_2 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^clear\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \counter_reg[0]_i_1__6_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_10\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_11\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_12\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_13\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_14\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_15\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_8\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__6_n_9\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_10\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_11\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_12\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_13\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_14\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_15\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_8\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__7_n_9\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_10\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_11\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_12\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_13\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_14\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_15\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_8\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__7_n_9\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_10\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_11\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_12\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_13\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_14\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_15\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_8\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__7_n_9\ : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1__7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  D(0) <= \^d\(0);
  clear <= \^clear\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_counters_40_n,
      O => \^clear\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__6_n_15\,
      Q => \^d\(0),
      R => \^clear\
    );
\counter_reg[0]_i_1__6\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[0]_i_1__6_n_0\,
      CO(6) => \counter_reg[0]_i_1__6_n_1\,
      CO(5) => \counter_reg[0]_i_1__6_n_2\,
      CO(4) => \counter_reg[0]_i_1__6_n_3\,
      CO(3) => \counter_reg[0]_i_1__6_n_4\,
      CO(2) => \counter_reg[0]_i_1__6_n_5\,
      CO(1) => \counter_reg[0]_i_1__6_n_6\,
      CO(0) => \counter_reg[0]_i_1__6_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => DI(0),
      O(7) => \counter_reg[0]_i_1__6_n_8\,
      O(6) => \counter_reg[0]_i_1__6_n_9\,
      O(5) => \counter_reg[0]_i_1__6_n_10\,
      O(4) => \counter_reg[0]_i_1__6_n_11\,
      O(3) => \counter_reg[0]_i_1__6_n_12\,
      O(2) => \counter_reg[0]_i_1__6_n_13\,
      O(1) => \counter_reg[0]_i_1__6_n_14\,
      O(0) => \counter_reg[0]_i_1__6_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => S(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__7_n_13\,
      Q => counter_reg(10),
      R => \^clear\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__7_n_12\,
      Q => counter_reg(11),
      R => \^clear\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__7_n_11\,
      Q => counter_reg(12),
      R => \^clear\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__7_n_10\,
      Q => counter_reg(13),
      R => \^clear\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__7_n_9\,
      Q => counter_reg(14),
      R => \^clear\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__7_n_8\,
      Q => counter_reg(15),
      R => \^clear\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__7_n_15\,
      Q => counter_reg(16),
      R => \^clear\
    );
\counter_reg[16]_i_1__7\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[8]_i_1__7_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[16]_i_1__7_n_0\,
      CO(6) => \counter_reg[16]_i_1__7_n_1\,
      CO(5) => \counter_reg[16]_i_1__7_n_2\,
      CO(4) => \counter_reg[16]_i_1__7_n_3\,
      CO(3) => \counter_reg[16]_i_1__7_n_4\,
      CO(2) => \counter_reg[16]_i_1__7_n_5\,
      CO(1) => \counter_reg[16]_i_1__7_n_6\,
      CO(0) => \counter_reg[16]_i_1__7_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[16]_i_1__7_n_8\,
      O(6) => \counter_reg[16]_i_1__7_n_9\,
      O(5) => \counter_reg[16]_i_1__7_n_10\,
      O(4) => \counter_reg[16]_i_1__7_n_11\,
      O(3) => \counter_reg[16]_i_1__7_n_12\,
      O(2) => \counter_reg[16]_i_1__7_n_13\,
      O(1) => \counter_reg[16]_i_1__7_n_14\,
      O(0) => \counter_reg[16]_i_1__7_n_15\,
      S(7 downto 0) => counter_reg(23 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__7_n_14\,
      Q => counter_reg(17),
      R => \^clear\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__7_n_13\,
      Q => counter_reg(18),
      R => \^clear\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__7_n_12\,
      Q => counter_reg(19),
      R => \^clear\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__6_n_14\,
      Q => counter_reg(1),
      R => \^clear\
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__7_n_11\,
      Q => counter_reg(20),
      R => \^clear\
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__7_n_10\,
      Q => counter_reg(21),
      R => \^clear\
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__7_n_9\,
      Q => counter_reg(22),
      R => \^clear\
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__7_n_8\,
      Q => counter_reg(23),
      R => \^clear\
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__7_n_15\,
      Q => counter_reg(24),
      R => \^clear\
    );
\counter_reg[24]_i_1__7\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[16]_i_1__7_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_counter_reg[24]_i_1__7_CO_UNCONNECTED\(7),
      CO(6) => \counter_reg[24]_i_1__7_n_1\,
      CO(5) => \counter_reg[24]_i_1__7_n_2\,
      CO(4) => \counter_reg[24]_i_1__7_n_3\,
      CO(3) => \counter_reg[24]_i_1__7_n_4\,
      CO(2) => \counter_reg[24]_i_1__7_n_5\,
      CO(1) => \counter_reg[24]_i_1__7_n_6\,
      CO(0) => \counter_reg[24]_i_1__7_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[24]_i_1__7_n_8\,
      O(6) => \counter_reg[24]_i_1__7_n_9\,
      O(5) => \counter_reg[24]_i_1__7_n_10\,
      O(4) => \counter_reg[24]_i_1__7_n_11\,
      O(3) => \counter_reg[24]_i_1__7_n_12\,
      O(2) => \counter_reg[24]_i_1__7_n_13\,
      O(1) => \counter_reg[24]_i_1__7_n_14\,
      O(0) => \counter_reg[24]_i_1__7_n_15\,
      S(7 downto 0) => counter_reg(31 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__7_n_14\,
      Q => counter_reg(25),
      R => \^clear\
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__7_n_13\,
      Q => counter_reg(26),
      R => \^clear\
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__7_n_12\,
      Q => counter_reg(27),
      R => \^clear\
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__7_n_11\,
      Q => counter_reg(28),
      R => \^clear\
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__7_n_10\,
      Q => counter_reg(29),
      R => \^clear\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__6_n_13\,
      Q => counter_reg(2),
      R => \^clear\
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__7_n_9\,
      Q => counter_reg(30),
      R => \^clear\
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__7_n_8\,
      Q => counter_reg(31),
      R => \^clear\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__6_n_12\,
      Q => counter_reg(3),
      R => \^clear\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__6_n_11\,
      Q => counter_reg(4),
      R => \^clear\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__6_n_10\,
      Q => counter_reg(5),
      R => \^clear\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__6_n_9\,
      Q => counter_reg(6),
      R => \^clear\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__6_n_8\,
      Q => counter_reg(7),
      R => \^clear\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__7_n_15\,
      Q => counter_reg(8),
      R => \^clear\
    );
\counter_reg[8]_i_1__7\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[0]_i_1__6_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[8]_i_1__7_n_0\,
      CO(6) => \counter_reg[8]_i_1__7_n_1\,
      CO(5) => \counter_reg[8]_i_1__7_n_2\,
      CO(4) => \counter_reg[8]_i_1__7_n_3\,
      CO(3) => \counter_reg[8]_i_1__7_n_4\,
      CO(2) => \counter_reg[8]_i_1__7_n_5\,
      CO(1) => \counter_reg[8]_i_1__7_n_6\,
      CO(0) => \counter_reg[8]_i_1__7_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[8]_i_1__7_n_8\,
      O(6) => \counter_reg[8]_i_1__7_n_9\,
      O(5) => \counter_reg[8]_i_1__7_n_10\,
      O(4) => \counter_reg[8]_i_1__7_n_11\,
      O(3) => \counter_reg[8]_i_1__7_n_12\,
      O(2) => \counter_reg[8]_i_1__7_n_13\,
      O(1) => \counter_reg[8]_i_1__7_n_14\,
      O(0) => \counter_reg[8]_i_1__7_n_15\,
      S(7 downto 0) => counter_reg(15 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__7_n_14\,
      Q => counter_reg(9),
      R => \^clear\
    );
\value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => Q(0),
      R => '0'
    );
\value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(10),
      Q => Q(10),
      R => '0'
    );
\value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(11),
      Q => Q(11),
      R => '0'
    );
\value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(12),
      Q => Q(12),
      R => '0'
    );
\value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(13),
      Q => Q(13),
      R => '0'
    );
\value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(14),
      Q => Q(14),
      R => '0'
    );
\value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(15),
      Q => Q(15),
      R => '0'
    );
\value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(16),
      Q => Q(16),
      R => '0'
    );
\value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(17),
      Q => Q(17),
      R => '0'
    );
\value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(18),
      Q => Q(18),
      R => '0'
    );
\value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(19),
      Q => Q(19),
      R => '0'
    );
\value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(1),
      Q => Q(1),
      R => '0'
    );
\value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(20),
      Q => Q(20),
      R => '0'
    );
\value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(21),
      Q => Q(21),
      R => '0'
    );
\value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(22),
      Q => Q(22),
      R => '0'
    );
\value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(23),
      Q => Q(23),
      R => '0'
    );
\value_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(24),
      Q => Q(24),
      R => '0'
    );
\value_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(25),
      Q => Q(25),
      R => '0'
    );
\value_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(26),
      Q => Q(26),
      R => '0'
    );
\value_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(27),
      Q => Q(27),
      R => '0'
    );
\value_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(28),
      Q => Q(28),
      R => '0'
    );
\value_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(29),
      Q => Q(29),
      R => '0'
    );
\value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(2),
      Q => Q(2),
      R => '0'
    );
\value_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(30),
      Q => Q(30),
      R => '0'
    );
\value_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(31),
      Q => Q(31),
      R => '0'
    );
\value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(3),
      Q => Q(3),
      R => '0'
    );
\value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(4),
      Q => Q(4),
      R => '0'
    );
\value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(5),
      Q => Q(5),
      R => '0'
    );
\value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(6),
      Q => Q(6),
      R => '0'
    );
\value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(7),
      Q => Q(7),
      R => '0'
    );
\value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(8),
      Q => Q(8),
      R => '0'
    );
\value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clear : in STD_LOGIC;
    ext_lhc_clk : in STD_LOGIC;
    fc_internaltest : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_3 : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_3;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_3 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_10\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_11\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_12\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_13\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_14\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_15\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_8\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_9\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_10\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_11\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_12\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_13\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_14\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_15\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_8\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__0_n_9\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_10\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_11\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_12\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_13\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_14\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_15\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_8\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_9\ : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  D(0) <= \^d\(0);
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_15\,
      Q => \^d\(0),
      R => clear
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[0]_i_1_n_0\,
      CO(6) => \counter_reg[0]_i_1_n_1\,
      CO(5) => \counter_reg[0]_i_1_n_2\,
      CO(4) => \counter_reg[0]_i_1_n_3\,
      CO(3) => \counter_reg[0]_i_1_n_4\,
      CO(2) => \counter_reg[0]_i_1_n_5\,
      CO(1) => \counter_reg[0]_i_1_n_6\,
      CO(0) => \counter_reg[0]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => fc_internaltest,
      O(7) => \counter_reg[0]_i_1_n_8\,
      O(6) => \counter_reg[0]_i_1_n_9\,
      O(5) => \counter_reg[0]_i_1_n_10\,
      O(4) => \counter_reg[0]_i_1_n_11\,
      O(3) => \counter_reg[0]_i_1_n_12\,
      O(2) => \counter_reg[0]_i_1_n_13\,
      O(1) => \counter_reg[0]_i_1_n_14\,
      O(0) => \counter_reg[0]_i_1_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => S(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_13\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_12\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_11\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_10\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_9\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_8\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_15\,
      Q => counter_reg(16),
      R => clear
    );
\counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[8]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[16]_i_1__0_n_0\,
      CO(6) => \counter_reg[16]_i_1__0_n_1\,
      CO(5) => \counter_reg[16]_i_1__0_n_2\,
      CO(4) => \counter_reg[16]_i_1__0_n_3\,
      CO(3) => \counter_reg[16]_i_1__0_n_4\,
      CO(2) => \counter_reg[16]_i_1__0_n_5\,
      CO(1) => \counter_reg[16]_i_1__0_n_6\,
      CO(0) => \counter_reg[16]_i_1__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[16]_i_1__0_n_8\,
      O(6) => \counter_reg[16]_i_1__0_n_9\,
      O(5) => \counter_reg[16]_i_1__0_n_10\,
      O(4) => \counter_reg[16]_i_1__0_n_11\,
      O(3) => \counter_reg[16]_i_1__0_n_12\,
      O(2) => \counter_reg[16]_i_1__0_n_13\,
      O(1) => \counter_reg[16]_i_1__0_n_14\,
      O(0) => \counter_reg[16]_i_1__0_n_15\,
      S(7 downto 0) => counter_reg(23 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_14\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_13\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_12\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_14\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_11\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_10\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_9\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_8\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_15\,
      Q => counter_reg(24),
      R => clear
    );
\counter_reg[24]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[16]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_counter_reg[24]_i_1__0_CO_UNCONNECTED\(7),
      CO(6) => \counter_reg[24]_i_1__0_n_1\,
      CO(5) => \counter_reg[24]_i_1__0_n_2\,
      CO(4) => \counter_reg[24]_i_1__0_n_3\,
      CO(3) => \counter_reg[24]_i_1__0_n_4\,
      CO(2) => \counter_reg[24]_i_1__0_n_5\,
      CO(1) => \counter_reg[24]_i_1__0_n_6\,
      CO(0) => \counter_reg[24]_i_1__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[24]_i_1__0_n_8\,
      O(6) => \counter_reg[24]_i_1__0_n_9\,
      O(5) => \counter_reg[24]_i_1__0_n_10\,
      O(4) => \counter_reg[24]_i_1__0_n_11\,
      O(3) => \counter_reg[24]_i_1__0_n_12\,
      O(2) => \counter_reg[24]_i_1__0_n_13\,
      O(1) => \counter_reg[24]_i_1__0_n_14\,
      O(0) => \counter_reg[24]_i_1__0_n_15\,
      S(7 downto 0) => counter_reg(31 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_14\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_13\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_12\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_11\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_10\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_13\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_9\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_8\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_12\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_11\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_10\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_9\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1_n_8\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_15\,
      Q => counter_reg(8),
      R => clear
    );
\counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[8]_i_1__0_n_0\,
      CO(6) => \counter_reg[8]_i_1__0_n_1\,
      CO(5) => \counter_reg[8]_i_1__0_n_2\,
      CO(4) => \counter_reg[8]_i_1__0_n_3\,
      CO(3) => \counter_reg[8]_i_1__0_n_4\,
      CO(2) => \counter_reg[8]_i_1__0_n_5\,
      CO(1) => \counter_reg[8]_i_1__0_n_6\,
      CO(0) => \counter_reg[8]_i_1__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[8]_i_1__0_n_8\,
      O(6) => \counter_reg[8]_i_1__0_n_9\,
      O(5) => \counter_reg[8]_i_1__0_n_10\,
      O(4) => \counter_reg[8]_i_1__0_n_11\,
      O(3) => \counter_reg[8]_i_1__0_n_12\,
      O(2) => \counter_reg[8]_i_1__0_n_13\,
      O(1) => \counter_reg[8]_i_1__0_n_14\,
      O(0) => \counter_reg[8]_i_1__0_n_15\,
      S(7 downto 0) => counter_reg(15 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_14\,
      Q => counter_reg(9),
      R => clear
    );
\value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => Q(0),
      R => '0'
    );
\value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(10),
      Q => Q(10),
      R => '0'
    );
\value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(11),
      Q => Q(11),
      R => '0'
    );
\value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(12),
      Q => Q(12),
      R => '0'
    );
\value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(13),
      Q => Q(13),
      R => '0'
    );
\value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(14),
      Q => Q(14),
      R => '0'
    );
\value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(15),
      Q => Q(15),
      R => '0'
    );
\value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(16),
      Q => Q(16),
      R => '0'
    );
\value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(17),
      Q => Q(17),
      R => '0'
    );
\value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(18),
      Q => Q(18),
      R => '0'
    );
\value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(19),
      Q => Q(19),
      R => '0'
    );
\value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(1),
      Q => Q(1),
      R => '0'
    );
\value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(20),
      Q => Q(20),
      R => '0'
    );
\value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(21),
      Q => Q(21),
      R => '0'
    );
\value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(22),
      Q => Q(22),
      R => '0'
    );
\value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(23),
      Q => Q(23),
      R => '0'
    );
\value_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(24),
      Q => Q(24),
      R => '0'
    );
\value_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(25),
      Q => Q(25),
      R => '0'
    );
\value_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(26),
      Q => Q(26),
      R => '0'
    );
\value_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(27),
      Q => Q(27),
      R => '0'
    );
\value_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(28),
      Q => Q(28),
      R => '0'
    );
\value_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(29),
      Q => Q(29),
      R => '0'
    );
\value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(2),
      Q => Q(2),
      R => '0'
    );
\value_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(30),
      Q => Q(30),
      R => '0'
    );
\value_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(31),
      Q => Q(31),
      R => '0'
    );
\value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(3),
      Q => Q(3),
      R => '0'
    );
\value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(4),
      Q => Q(4),
      R => '0'
    );
\value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(5),
      Q => Q(5),
      R => '0'
    );
\value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(6),
      Q => Q(6),
      R => '0'
    );
\value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(7),
      Q => Q(7),
      R => '0'
    );
\value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(8),
      Q => Q(8),
      R => '0'
    );
\value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_4 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \fc_raddr_reg[3]\ : out STD_LOGIC_VECTOR ( 22 downto 0 );
    \value_reg[27]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clear : in STD_LOGIC;
    ext_lhc_clk : in STD_LOGIC;
    \io_r_data_reg[0]\ : in STD_LOGIC;
    \io_r_data_reg[0]_0\ : in STD_LOGIC;
    \io_r_data_reg[2]\ : in STD_LOGIC;
    \io_r_data_reg[3]\ : in STD_LOGIC;
    \io_r_data_reg[4]\ : in STD_LOGIC;
    \io_r_data_reg[6]\ : in STD_LOGIC;
    \io_r_data_reg[7]\ : in STD_LOGIC;
    \io_r_data_reg[8]\ : in STD_LOGIC;
    \io_r_data_reg[9]\ : in STD_LOGIC;
    \io_r_data_reg[10]\ : in STD_LOGIC;
    \io_r_data_reg[12]\ : in STD_LOGIC;
    \io_r_data_reg[15]\ : in STD_LOGIC;
    \io_r_data_reg[16]\ : in STD_LOGIC;
    \io_r_data_reg[17]\ : in STD_LOGIC;
    \io_r_data_reg[19]\ : in STD_LOGIC;
    \io_r_data_reg[20]\ : in STD_LOGIC;
    \io_r_data_reg[21]\ : in STD_LOGIC;
    \io_r_data_reg[24]\ : in STD_LOGIC;
    \io_r_data_reg[25]\ : in STD_LOGIC;
    \io_r_data_reg[26]\ : in STD_LOGIC;
    \io_r_data_reg[28]\ : in STD_LOGIC;
    \io_r_data_reg[29]\ : in STD_LOGIC;
    \io_r_data_reg[30]\ : in STD_LOGIC;
    \io_r_data_reg[31]\ : in STD_LOGIC;
    \io_r_data_reg[31]_0\ : in STD_LOGIC;
    \io_r_data_reg[30]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 22 downto 0 );
    \io_r_data_reg[31]_1\ : in STD_LOGIC;
    \io_r_data_reg[0]_1\ : in STD_LOGIC;
    \io_r_data_reg[2]_0\ : in STD_LOGIC;
    \io_r_data_reg[3]_0\ : in STD_LOGIC;
    \io_r_data_reg[4]_0\ : in STD_LOGIC;
    \io_r_data_reg[6]_0\ : in STD_LOGIC;
    \io_r_data_reg[7]_0\ : in STD_LOGIC;
    \io_r_data_reg[8]_0\ : in STD_LOGIC;
    \io_r_data_reg[9]_0\ : in STD_LOGIC;
    \io_r_data_reg[10]_0\ : in STD_LOGIC;
    \io_r_data_reg[12]_0\ : in STD_LOGIC;
    \io_r_data_reg[15]_0\ : in STD_LOGIC;
    \io_r_data_reg[16]_0\ : in STD_LOGIC;
    \io_r_data_reg[17]_0\ : in STD_LOGIC;
    \io_r_data_reg[19]_0\ : in STD_LOGIC;
    \io_r_data_reg[20]_0\ : in STD_LOGIC;
    \io_r_data_reg[21]_0\ : in STD_LOGIC;
    \io_r_data_reg[24]_0\ : in STD_LOGIC;
    \io_r_data_reg[25]_0\ : in STD_LOGIC;
    \io_r_data_reg[26]_0\ : in STD_LOGIC;
    \io_r_data_reg[28]_0\ : in STD_LOGIC;
    \io_r_data_reg[29]_0\ : in STD_LOGIC;
    \io_r_data_reg[30]_1\ : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_4 : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_4;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_4 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \io_r_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[10]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[12]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[16]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[17]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[19]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[20]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[21]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[24]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[25]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[26]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[28]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[29]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[30]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[31]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[8]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[9]_i_2_n_0\ : STD_LOGIC;
  signal \value_reg_n_0_[0]\ : STD_LOGIC;
  signal \value_reg_n_0_[10]\ : STD_LOGIC;
  signal \value_reg_n_0_[12]\ : STD_LOGIC;
  signal \value_reg_n_0_[15]\ : STD_LOGIC;
  signal \value_reg_n_0_[16]\ : STD_LOGIC;
  signal \value_reg_n_0_[17]\ : STD_LOGIC;
  signal \value_reg_n_0_[19]\ : STD_LOGIC;
  signal \value_reg_n_0_[20]\ : STD_LOGIC;
  signal \value_reg_n_0_[21]\ : STD_LOGIC;
  signal \value_reg_n_0_[24]\ : STD_LOGIC;
  signal \value_reg_n_0_[25]\ : STD_LOGIC;
  signal \value_reg_n_0_[26]\ : STD_LOGIC;
  signal \value_reg_n_0_[28]\ : STD_LOGIC;
  signal \value_reg_n_0_[29]\ : STD_LOGIC;
  signal \value_reg_n_0_[2]\ : STD_LOGIC;
  signal \value_reg_n_0_[30]\ : STD_LOGIC;
  signal \value_reg_n_0_[31]\ : STD_LOGIC;
  signal \value_reg_n_0_[3]\ : STD_LOGIC;
  signal \value_reg_n_0_[4]\ : STD_LOGIC;
  signal \value_reg_n_0_[6]\ : STD_LOGIC;
  signal \value_reg_n_0_[7]\ : STD_LOGIC;
  signal \value_reg_n_0_[8]\ : STD_LOGIC;
  signal \value_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  D(0) <= \^d\(0);
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_15\,
      Q => \^d\(0),
      R => clear
    );
\counter_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[0]_i_2_n_0\,
      CO(6) => \counter_reg[0]_i_2_n_1\,
      CO(5) => \counter_reg[0]_i_2_n_2\,
      CO(4) => \counter_reg[0]_i_2_n_3\,
      CO(3) => \counter_reg[0]_i_2_n_4\,
      CO(2) => \counter_reg[0]_i_2_n_5\,
      CO(1) => \counter_reg[0]_i_2_n_6\,
      CO(0) => \counter_reg[0]_i_2_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => DI(0),
      O(7) => \counter_reg[0]_i_2_n_8\,
      O(6) => \counter_reg[0]_i_2_n_9\,
      O(5) => \counter_reg[0]_i_2_n_10\,
      O(4) => \counter_reg[0]_i_2_n_11\,
      O(3) => \counter_reg[0]_i_2_n_12\,
      O(2) => \counter_reg[0]_i_2_n_13\,
      O(1) => \counter_reg[0]_i_2_n_14\,
      O(0) => \counter_reg[0]_i_2_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => S(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_13\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_12\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_11\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_10\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_9\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_8\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_15\,
      Q => counter_reg(16),
      R => clear
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[16]_i_1_n_0\,
      CO(6) => \counter_reg[16]_i_1_n_1\,
      CO(5) => \counter_reg[16]_i_1_n_2\,
      CO(4) => \counter_reg[16]_i_1_n_3\,
      CO(3) => \counter_reg[16]_i_1_n_4\,
      CO(2) => \counter_reg[16]_i_1_n_5\,
      CO(1) => \counter_reg[16]_i_1_n_6\,
      CO(0) => \counter_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[16]_i_1_n_8\,
      O(6) => \counter_reg[16]_i_1_n_9\,
      O(5) => \counter_reg[16]_i_1_n_10\,
      O(4) => \counter_reg[16]_i_1_n_11\,
      O(3) => \counter_reg[16]_i_1_n_12\,
      O(2) => \counter_reg[16]_i_1_n_13\,
      O(1) => \counter_reg[16]_i_1_n_14\,
      O(0) => \counter_reg[16]_i_1_n_15\,
      S(7 downto 0) => counter_reg(23 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_14\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_13\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_12\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_14\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_11\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_10\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_9\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_8\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_15\,
      Q => counter_reg(24),
      R => clear
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \counter_reg[24]_i_1_n_1\,
      CO(5) => \counter_reg[24]_i_1_n_2\,
      CO(4) => \counter_reg[24]_i_1_n_3\,
      CO(3) => \counter_reg[24]_i_1_n_4\,
      CO(2) => \counter_reg[24]_i_1_n_5\,
      CO(1) => \counter_reg[24]_i_1_n_6\,
      CO(0) => \counter_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[24]_i_1_n_8\,
      O(6) => \counter_reg[24]_i_1_n_9\,
      O(5) => \counter_reg[24]_i_1_n_10\,
      O(4) => \counter_reg[24]_i_1_n_11\,
      O(3) => \counter_reg[24]_i_1_n_12\,
      O(2) => \counter_reg[24]_i_1_n_13\,
      O(1) => \counter_reg[24]_i_1_n_14\,
      O(0) => \counter_reg[24]_i_1_n_15\,
      S(7 downto 0) => counter_reg(31 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_14\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_13\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_12\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_11\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_10\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_13\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_9\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_8\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_12\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_11\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_10\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_9\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_8\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_15\,
      Q => counter_reg(8),
      R => clear
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[8]_i_1_n_0\,
      CO(6) => \counter_reg[8]_i_1_n_1\,
      CO(5) => \counter_reg[8]_i_1_n_2\,
      CO(4) => \counter_reg[8]_i_1_n_3\,
      CO(3) => \counter_reg[8]_i_1_n_4\,
      CO(2) => \counter_reg[8]_i_1_n_5\,
      CO(1) => \counter_reg[8]_i_1_n_6\,
      CO(0) => \counter_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[8]_i_1_n_8\,
      O(6) => \counter_reg[8]_i_1_n_9\,
      O(5) => \counter_reg[8]_i_1_n_10\,
      O(4) => \counter_reg[8]_i_1_n_11\,
      O(3) => \counter_reg[8]_i_1_n_12\,
      O(2) => \counter_reg[8]_i_1_n_13\,
      O(1) => \counter_reg[8]_i_1_n_14\,
      O(0) => \counter_reg[8]_i_1_n_15\,
      S(7 downto 0) => counter_reg(15 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_14\,
      Q => counter_reg(9),
      R => clear
    );
\io_r_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[0]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(0),
      I4 => \io_r_data_reg[0]_1\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[0]_i_2_n_0\
    );
\io_r_data[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[10]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(8),
      I4 => \io_r_data_reg[10]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[10]_i_2_n_0\
    );
\io_r_data[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[12]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(9),
      I4 => \io_r_data_reg[12]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[12]_i_2_n_0\
    );
\io_r_data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[15]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(10),
      I4 => \io_r_data_reg[15]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[15]_i_2_n_0\
    );
\io_r_data[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[16]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(11),
      I4 => \io_r_data_reg[16]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[16]_i_2_n_0\
    );
\io_r_data[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[17]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(12),
      I4 => \io_r_data_reg[17]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[17]_i_2_n_0\
    );
\io_r_data[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[19]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(13),
      I4 => \io_r_data_reg[19]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[19]_i_2_n_0\
    );
\io_r_data[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[20]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(14),
      I4 => \io_r_data_reg[20]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[20]_i_2_n_0\
    );
\io_r_data[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[21]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(15),
      I4 => \io_r_data_reg[21]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[21]_i_2_n_0\
    );
\io_r_data[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[24]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(16),
      I4 => \io_r_data_reg[24]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[24]_i_2_n_0\
    );
\io_r_data[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[25]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(17),
      I4 => \io_r_data_reg[25]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[25]_i_2_n_0\
    );
\io_r_data[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[26]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(18),
      I4 => \io_r_data_reg[26]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[26]_i_2_n_0\
    );
\io_r_data[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[28]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(19),
      I4 => \io_r_data_reg[28]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[28]_i_2_n_0\
    );
\io_r_data[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[29]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(20),
      I4 => \io_r_data_reg[29]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[29]_i_2_n_0\
    );
\io_r_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[2]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(1),
      I4 => \io_r_data_reg[2]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[2]_i_2_n_0\
    );
\io_r_data[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[30]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(21),
      I4 => \io_r_data_reg[30]_1\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[30]_i_2_n_0\
    );
\io_r_data[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[31]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(22),
      I4 => \io_r_data_reg[31]_1\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[31]_i_4_n_0\
    );
\io_r_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[3]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(2),
      I4 => \io_r_data_reg[3]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[3]_i_2_n_0\
    );
\io_r_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[4]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(3),
      I4 => \io_r_data_reg[4]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[4]_i_2_n_0\
    );
\io_r_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[6]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(4),
      I4 => \io_r_data_reg[6]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[6]_i_2_n_0\
    );
\io_r_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[7]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(5),
      I4 => \io_r_data_reg[7]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[7]_i_2_n_0\
    );
\io_r_data[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[8]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(6),
      I4 => \io_r_data_reg[8]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[8]_i_2_n_0\
    );
\io_r_data[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404540FFFF4540"
    )
        port map (
      I0 => \io_r_data_reg[31]_0\,
      I1 => \value_reg_n_0_[9]\,
      I2 => \io_r_data_reg[30]_0\(0),
      I3 => Q(7),
      I4 => \io_r_data_reg[9]_0\,
      I5 => \io_r_data_reg[30]_0\(1),
      O => \io_r_data[9]_i_2_n_0\
    );
\io_r_data_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[0]_i_2_n_0\,
      I1 => \io_r_data_reg[0]_0\,
      O => \fc_raddr_reg[3]\(0),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[10]_i_2_n_0\,
      I1 => \io_r_data_reg[10]\,
      O => \fc_raddr_reg[3]\(8),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[12]_i_2_n_0\,
      I1 => \io_r_data_reg[12]\,
      O => \fc_raddr_reg[3]\(9),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[15]_i_2_n_0\,
      I1 => \io_r_data_reg[15]\,
      O => \fc_raddr_reg[3]\(10),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[16]_i_2_n_0\,
      I1 => \io_r_data_reg[16]\,
      O => \fc_raddr_reg[3]\(11),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[17]_i_2_n_0\,
      I1 => \io_r_data_reg[17]\,
      O => \fc_raddr_reg[3]\(12),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[19]_i_2_n_0\,
      I1 => \io_r_data_reg[19]\,
      O => \fc_raddr_reg[3]\(13),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[20]_i_2_n_0\,
      I1 => \io_r_data_reg[20]\,
      O => \fc_raddr_reg[3]\(14),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[21]_i_2_n_0\,
      I1 => \io_r_data_reg[21]\,
      O => \fc_raddr_reg[3]\(15),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[24]_i_2_n_0\,
      I1 => \io_r_data_reg[24]\,
      O => \fc_raddr_reg[3]\(16),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[25]_i_2_n_0\,
      I1 => \io_r_data_reg[25]\,
      O => \fc_raddr_reg[3]\(17),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[26]_i_2_n_0\,
      I1 => \io_r_data_reg[26]\,
      O => \fc_raddr_reg[3]\(18),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[28]_i_2_n_0\,
      I1 => \io_r_data_reg[28]\,
      O => \fc_raddr_reg[3]\(19),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[29]_i_2_n_0\,
      I1 => \io_r_data_reg[29]\,
      O => \fc_raddr_reg[3]\(20),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[2]_i_2_n_0\,
      I1 => \io_r_data_reg[2]\,
      O => \fc_raddr_reg[3]\(1),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[30]_i_2_n_0\,
      I1 => \io_r_data_reg[30]\,
      O => \fc_raddr_reg[3]\(21),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[31]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[31]_i_4_n_0\,
      I1 => \io_r_data_reg[31]\,
      O => \fc_raddr_reg[3]\(22),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[3]_i_2_n_0\,
      I1 => \io_r_data_reg[3]\,
      O => \fc_raddr_reg[3]\(2),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[4]_i_2_n_0\,
      I1 => \io_r_data_reg[4]\,
      O => \fc_raddr_reg[3]\(3),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[6]_i_2_n_0\,
      I1 => \io_r_data_reg[6]\,
      O => \fc_raddr_reg[3]\(4),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[7]_i_2_n_0\,
      I1 => \io_r_data_reg[7]\,
      O => \fc_raddr_reg[3]\(5),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[8]_i_2_n_0\,
      I1 => \io_r_data_reg[8]\,
      O => \fc_raddr_reg[3]\(6),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[9]_i_2_n_0\,
      I1 => \io_r_data_reg[9]\,
      O => \fc_raddr_reg[3]\(7),
      S => \io_r_data_reg[0]\
    );
\value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => \value_reg_n_0_[0]\,
      R => '0'
    );
\value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(10),
      Q => \value_reg_n_0_[10]\,
      R => '0'
    );
\value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(11),
      Q => \value_reg[27]_0\(2),
      R => '0'
    );
\value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(12),
      Q => \value_reg_n_0_[12]\,
      R => '0'
    );
\value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(13),
      Q => \value_reg[27]_0\(3),
      R => '0'
    );
\value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(14),
      Q => \value_reg[27]_0\(4),
      R => '0'
    );
\value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(15),
      Q => \value_reg_n_0_[15]\,
      R => '0'
    );
\value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(16),
      Q => \value_reg_n_0_[16]\,
      R => '0'
    );
\value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(17),
      Q => \value_reg_n_0_[17]\,
      R => '0'
    );
\value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(18),
      Q => \value_reg[27]_0\(5),
      R => '0'
    );
\value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(19),
      Q => \value_reg_n_0_[19]\,
      R => '0'
    );
\value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(1),
      Q => \value_reg[27]_0\(0),
      R => '0'
    );
\value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(20),
      Q => \value_reg_n_0_[20]\,
      R => '0'
    );
\value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(21),
      Q => \value_reg_n_0_[21]\,
      R => '0'
    );
\value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(22),
      Q => \value_reg[27]_0\(6),
      R => '0'
    );
\value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(23),
      Q => \value_reg[27]_0\(7),
      R => '0'
    );
\value_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(24),
      Q => \value_reg_n_0_[24]\,
      R => '0'
    );
\value_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(25),
      Q => \value_reg_n_0_[25]\,
      R => '0'
    );
\value_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(26),
      Q => \value_reg_n_0_[26]\,
      R => '0'
    );
\value_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(27),
      Q => \value_reg[27]_0\(8),
      R => '0'
    );
\value_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(28),
      Q => \value_reg_n_0_[28]\,
      R => '0'
    );
\value_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(29),
      Q => \value_reg_n_0_[29]\,
      R => '0'
    );
\value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(2),
      Q => \value_reg_n_0_[2]\,
      R => '0'
    );
\value_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(30),
      Q => \value_reg_n_0_[30]\,
      R => '0'
    );
\value_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(31),
      Q => \value_reg_n_0_[31]\,
      R => '0'
    );
\value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(3),
      Q => \value_reg_n_0_[3]\,
      R => '0'
    );
\value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(4),
      Q => \value_reg_n_0_[4]\,
      R => '0'
    );
\value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(5),
      Q => \value_reg[27]_0\(1),
      R => '0'
    );
\value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(6),
      Q => \value_reg_n_0_[6]\,
      R => '0'
    );
\value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(7),
      Q => \value_reg_n_0_[7]\,
      R => '0'
    );
\value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(8),
      Q => \value_reg_n_0_[8]\,
      R => '0'
    );
\value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(9),
      Q => \value_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_5 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clear : in STD_LOGIC;
    ext_lhc_clk : in STD_LOGIC;
    fc_linkreset : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_5 : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_5;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_5 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \counter_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_10\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_11\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_12\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_13\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_14\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_15\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_8\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__1_n_9\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_10\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_11\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_12\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_13\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_14\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_15\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_8\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_9\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_10\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_11\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_12\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_13\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_14\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_15\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_8\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__2_n_9\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_10\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_11\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_12\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_13\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_14\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_15\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_8\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_9\ : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  D(0) <= \^d\(0);
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_15\,
      Q => \^d\(0),
      R => clear
    );
\counter_reg[0]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[0]_i_1__1_n_0\,
      CO(6) => \counter_reg[0]_i_1__1_n_1\,
      CO(5) => \counter_reg[0]_i_1__1_n_2\,
      CO(4) => \counter_reg[0]_i_1__1_n_3\,
      CO(3) => \counter_reg[0]_i_1__1_n_4\,
      CO(2) => \counter_reg[0]_i_1__1_n_5\,
      CO(1) => \counter_reg[0]_i_1__1_n_6\,
      CO(0) => \counter_reg[0]_i_1__1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => fc_linkreset,
      O(7) => \counter_reg[0]_i_1__1_n_8\,
      O(6) => \counter_reg[0]_i_1__1_n_9\,
      O(5) => \counter_reg[0]_i_1__1_n_10\,
      O(4) => \counter_reg[0]_i_1__1_n_11\,
      O(3) => \counter_reg[0]_i_1__1_n_12\,
      O(2) => \counter_reg[0]_i_1__1_n_13\,
      O(1) => \counter_reg[0]_i_1__1_n_14\,
      O(0) => \counter_reg[0]_i_1__1_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => S(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_13\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_12\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_11\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_10\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_9\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_8\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_15\,
      Q => counter_reg(16),
      R => clear
    );
\counter_reg[16]_i_1__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[8]_i_1__2_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[16]_i_1__2_n_0\,
      CO(6) => \counter_reg[16]_i_1__2_n_1\,
      CO(5) => \counter_reg[16]_i_1__2_n_2\,
      CO(4) => \counter_reg[16]_i_1__2_n_3\,
      CO(3) => \counter_reg[16]_i_1__2_n_4\,
      CO(2) => \counter_reg[16]_i_1__2_n_5\,
      CO(1) => \counter_reg[16]_i_1__2_n_6\,
      CO(0) => \counter_reg[16]_i_1__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[16]_i_1__2_n_8\,
      O(6) => \counter_reg[16]_i_1__2_n_9\,
      O(5) => \counter_reg[16]_i_1__2_n_10\,
      O(4) => \counter_reg[16]_i_1__2_n_11\,
      O(3) => \counter_reg[16]_i_1__2_n_12\,
      O(2) => \counter_reg[16]_i_1__2_n_13\,
      O(1) => \counter_reg[16]_i_1__2_n_14\,
      O(0) => \counter_reg[16]_i_1__2_n_15\,
      S(7 downto 0) => counter_reg(23 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_14\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_13\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_12\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_14\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_11\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_10\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_9\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_8\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_15\,
      Q => counter_reg(24),
      R => clear
    );
\counter_reg[24]_i_1__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[16]_i_1__2_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_counter_reg[24]_i_1__2_CO_UNCONNECTED\(7),
      CO(6) => \counter_reg[24]_i_1__2_n_1\,
      CO(5) => \counter_reg[24]_i_1__2_n_2\,
      CO(4) => \counter_reg[24]_i_1__2_n_3\,
      CO(3) => \counter_reg[24]_i_1__2_n_4\,
      CO(2) => \counter_reg[24]_i_1__2_n_5\,
      CO(1) => \counter_reg[24]_i_1__2_n_6\,
      CO(0) => \counter_reg[24]_i_1__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[24]_i_1__2_n_8\,
      O(6) => \counter_reg[24]_i_1__2_n_9\,
      O(5) => \counter_reg[24]_i_1__2_n_10\,
      O(4) => \counter_reg[24]_i_1__2_n_11\,
      O(3) => \counter_reg[24]_i_1__2_n_12\,
      O(2) => \counter_reg[24]_i_1__2_n_13\,
      O(1) => \counter_reg[24]_i_1__2_n_14\,
      O(0) => \counter_reg[24]_i_1__2_n_15\,
      S(7 downto 0) => counter_reg(31 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_14\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_13\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_12\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_11\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_10\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_13\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_9\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_8\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_12\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_11\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_10\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_9\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_8\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_15\,
      Q => counter_reg(8),
      R => clear
    );
\counter_reg[8]_i_1__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[0]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[8]_i_1__2_n_0\,
      CO(6) => \counter_reg[8]_i_1__2_n_1\,
      CO(5) => \counter_reg[8]_i_1__2_n_2\,
      CO(4) => \counter_reg[8]_i_1__2_n_3\,
      CO(3) => \counter_reg[8]_i_1__2_n_4\,
      CO(2) => \counter_reg[8]_i_1__2_n_5\,
      CO(1) => \counter_reg[8]_i_1__2_n_6\,
      CO(0) => \counter_reg[8]_i_1__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[8]_i_1__2_n_8\,
      O(6) => \counter_reg[8]_i_1__2_n_9\,
      O(5) => \counter_reg[8]_i_1__2_n_10\,
      O(4) => \counter_reg[8]_i_1__2_n_11\,
      O(3) => \counter_reg[8]_i_1__2_n_12\,
      O(2) => \counter_reg[8]_i_1__2_n_13\,
      O(1) => \counter_reg[8]_i_1__2_n_14\,
      O(0) => \counter_reg[8]_i_1__2_n_15\,
      S(7 downto 0) => counter_reg(15 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_14\,
      Q => counter_reg(9),
      R => clear
    );
\value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => Q(0),
      R => '0'
    );
\value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(10),
      Q => Q(10),
      R => '0'
    );
\value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(11),
      Q => Q(11),
      R => '0'
    );
\value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(12),
      Q => Q(12),
      R => '0'
    );
\value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(13),
      Q => Q(13),
      R => '0'
    );
\value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(14),
      Q => Q(14),
      R => '0'
    );
\value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(15),
      Q => Q(15),
      R => '0'
    );
\value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(16),
      Q => Q(16),
      R => '0'
    );
\value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(17),
      Q => Q(17),
      R => '0'
    );
\value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(18),
      Q => Q(18),
      R => '0'
    );
\value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(19),
      Q => Q(19),
      R => '0'
    );
\value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(1),
      Q => Q(1),
      R => '0'
    );
\value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(20),
      Q => Q(20),
      R => '0'
    );
\value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(21),
      Q => Q(21),
      R => '0'
    );
\value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(22),
      Q => Q(22),
      R => '0'
    );
\value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(23),
      Q => Q(23),
      R => '0'
    );
\value_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(24),
      Q => Q(24),
      R => '0'
    );
\value_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(25),
      Q => Q(25),
      R => '0'
    );
\value_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(26),
      Q => Q(26),
      R => '0'
    );
\value_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(27),
      Q => Q(27),
      R => '0'
    );
\value_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(28),
      Q => Q(28),
      R => '0'
    );
\value_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(29),
      Q => Q(29),
      R => '0'
    );
\value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(2),
      Q => Q(2),
      R => '0'
    );
\value_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(30),
      Q => Q(30),
      R => '0'
    );
\value_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(31),
      Q => Q(31),
      R => '0'
    );
\value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(3),
      Q => Q(3),
      R => '0'
    );
\value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(4),
      Q => Q(4),
      R => '0'
    );
\value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(5),
      Q => Q(5),
      R => '0'
    );
\value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(6),
      Q => Q(6),
      R => '0'
    );
\value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(7),
      Q => Q(7),
      R => '0'
    );
\value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(8),
      Q => Q(8),
      R => '0'
    );
\value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_6 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \fc_raddr_reg[3]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \fc_raddr_reg[2]\ : out STD_LOGIC;
    \fc_raddr_reg[2]_0\ : out STD_LOGIC;
    \fc_raddr_reg[2]_1\ : out STD_LOGIC;
    \fc_raddr_reg[2]_2\ : out STD_LOGIC;
    \fc_raddr_reg[2]_3\ : out STD_LOGIC;
    \fc_raddr_reg[2]_4\ : out STD_LOGIC;
    \fc_raddr_reg[2]_5\ : out STD_LOGIC;
    \fc_raddr_reg[2]_6\ : out STD_LOGIC;
    \fc_raddr_reg[2]_7\ : out STD_LOGIC;
    \fc_raddr_reg[2]_8\ : out STD_LOGIC;
    \fc_raddr_reg[2]_9\ : out STD_LOGIC;
    \fc_raddr_reg[2]_10\ : out STD_LOGIC;
    \fc_raddr_reg[2]_11\ : out STD_LOGIC;
    \fc_raddr_reg[2]_12\ : out STD_LOGIC;
    \fc_raddr_reg[2]_13\ : out STD_LOGIC;
    \fc_raddr_reg[2]_14\ : out STD_LOGIC;
    \fc_raddr_reg[2]_15\ : out STD_LOGIC;
    \fc_raddr_reg[2]_16\ : out STD_LOGIC;
    \fc_raddr_reg[2]_17\ : out STD_LOGIC;
    \fc_raddr_reg[2]_18\ : out STD_LOGIC;
    \fc_raddr_reg[2]_19\ : out STD_LOGIC;
    \fc_raddr_reg[2]_20\ : out STD_LOGIC;
    \fc_raddr_reg[2]_21\ : out STD_LOGIC;
    clear : in STD_LOGIC;
    ext_lhc_clk : in STD_LOGIC;
    \io_r_data_reg[27]\ : in STD_LOGIC;
    \io_r_data_reg[27]_0\ : in STD_LOGIC;
    \io_r_data_reg[23]\ : in STD_LOGIC;
    \io_r_data_reg[22]\ : in STD_LOGIC;
    \io_r_data_reg[18]\ : in STD_LOGIC;
    \io_r_data_reg[14]\ : in STD_LOGIC;
    \io_r_data_reg[13]\ : in STD_LOGIC;
    \io_r_data_reg[11]\ : in STD_LOGIC;
    \io_r_data_reg[5]\ : in STD_LOGIC;
    \io_r_data_reg[1]\ : in STD_LOGIC;
    \io_r_data_reg[27]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \io_r_data[31]_i_4\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \io_r_data_reg[31]_i_7_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \io_r_data_reg[31]_i_7_1\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \io_r_data_reg[1]_0\ : in STD_LOGIC;
    \io_r_data_reg[27]_2\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \io_r_data_reg[27]_3\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \io_r_data[30]_i_2\ : in STD_LOGIC;
    \io_r_data[29]_i_2\ : in STD_LOGIC;
    \io_r_data[28]_i_2\ : in STD_LOGIC;
    \io_r_data[27]_i_2_0\ : in STD_LOGIC;
    \io_r_data[26]_i_2\ : in STD_LOGIC;
    \io_r_data[25]_i_2\ : in STD_LOGIC;
    \io_r_data[24]_i_2\ : in STD_LOGIC;
    \io_r_data[23]_i_2_0\ : in STD_LOGIC;
    \io_r_data[22]_i_2_0\ : in STD_LOGIC;
    \io_r_data[21]_i_2\ : in STD_LOGIC;
    \io_r_data[20]_i_2\ : in STD_LOGIC;
    \io_r_data[19]_i_2\ : in STD_LOGIC;
    \io_r_data[18]_i_2_0\ : in STD_LOGIC;
    \io_r_data[17]_i_2\ : in STD_LOGIC;
    \io_r_data[16]_i_2\ : in STD_LOGIC;
    \io_r_data[15]_i_2\ : in STD_LOGIC;
    \io_r_data[14]_i_2_0\ : in STD_LOGIC;
    \io_r_data[13]_i_2_0\ : in STD_LOGIC;
    \io_r_data[12]_i_2\ : in STD_LOGIC;
    \io_r_data[11]_i_2_0\ : in STD_LOGIC;
    \io_r_data[10]_i_2\ : in STD_LOGIC;
    \io_r_data[9]_i_2\ : in STD_LOGIC;
    \io_r_data[8]_i_2\ : in STD_LOGIC;
    \io_r_data[7]_i_2\ : in STD_LOGIC;
    \io_r_data[6]_i_2\ : in STD_LOGIC;
    \io_r_data[5]_i_2_0\ : in STD_LOGIC;
    \io_r_data[4]_i_2\ : in STD_LOGIC;
    \io_r_data[3]_i_2\ : in STD_LOGIC;
    \io_r_data[2]_i_2\ : in STD_LOGIC;
    \io_r_data[1]_i_2_0\ : in STD_LOGIC;
    \io_r_data[0]_i_2\ : in STD_LOGIC;
    fc_orbitcountreset : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_6 : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_6;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_6 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \counter_reg[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_10\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_11\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_12\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_13\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_14\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_15\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_8\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__4_n_9\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_10\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_11\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_12\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_13\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_14\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_15\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_8\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__5_n_9\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_10\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_11\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_12\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_13\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_14\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_15\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_8\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__5_n_9\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_10\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_11\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_12\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_13\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_14\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_15\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_8\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__5_n_9\ : STD_LOGIC;
  signal \io_r_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[10]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[11]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[12]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[13]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[13]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[14]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[14]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[15]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[16]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[17]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[18]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[18]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[19]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[1]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[20]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[21]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[22]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[22]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[23]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[23]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[24]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[25]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[26]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[27]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[27]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[28]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[29]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[2]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[30]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[31]_i_9_n_0\ : STD_LOGIC;
  signal \io_r_data[3]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[4]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[5]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[6]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[7]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[8]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[9]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data_reg[13]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data_reg[18]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data_reg[22]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data_reg[27]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \value_reg_n_0_[0]\ : STD_LOGIC;
  signal \value_reg_n_0_[10]\ : STD_LOGIC;
  signal \value_reg_n_0_[11]\ : STD_LOGIC;
  signal \value_reg_n_0_[12]\ : STD_LOGIC;
  signal \value_reg_n_0_[13]\ : STD_LOGIC;
  signal \value_reg_n_0_[14]\ : STD_LOGIC;
  signal \value_reg_n_0_[15]\ : STD_LOGIC;
  signal \value_reg_n_0_[16]\ : STD_LOGIC;
  signal \value_reg_n_0_[17]\ : STD_LOGIC;
  signal \value_reg_n_0_[18]\ : STD_LOGIC;
  signal \value_reg_n_0_[19]\ : STD_LOGIC;
  signal \value_reg_n_0_[1]\ : STD_LOGIC;
  signal \value_reg_n_0_[20]\ : STD_LOGIC;
  signal \value_reg_n_0_[21]\ : STD_LOGIC;
  signal \value_reg_n_0_[22]\ : STD_LOGIC;
  signal \value_reg_n_0_[23]\ : STD_LOGIC;
  signal \value_reg_n_0_[24]\ : STD_LOGIC;
  signal \value_reg_n_0_[25]\ : STD_LOGIC;
  signal \value_reg_n_0_[26]\ : STD_LOGIC;
  signal \value_reg_n_0_[27]\ : STD_LOGIC;
  signal \value_reg_n_0_[28]\ : STD_LOGIC;
  signal \value_reg_n_0_[29]\ : STD_LOGIC;
  signal \value_reg_n_0_[2]\ : STD_LOGIC;
  signal \value_reg_n_0_[30]\ : STD_LOGIC;
  signal \value_reg_n_0_[31]\ : STD_LOGIC;
  signal \value_reg_n_0_[3]\ : STD_LOGIC;
  signal \value_reg_n_0_[4]\ : STD_LOGIC;
  signal \value_reg_n_0_[5]\ : STD_LOGIC;
  signal \value_reg_n_0_[6]\ : STD_LOGIC;
  signal \value_reg_n_0_[7]\ : STD_LOGIC;
  signal \value_reg_n_0_[8]\ : STD_LOGIC;
  signal \value_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  D(0) <= \^d\(0);
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__4_n_15\,
      Q => \^d\(0),
      R => clear
    );
\counter_reg[0]_i_1__4\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[0]_i_1__4_n_0\,
      CO(6) => \counter_reg[0]_i_1__4_n_1\,
      CO(5) => \counter_reg[0]_i_1__4_n_2\,
      CO(4) => \counter_reg[0]_i_1__4_n_3\,
      CO(3) => \counter_reg[0]_i_1__4_n_4\,
      CO(2) => \counter_reg[0]_i_1__4_n_5\,
      CO(1) => \counter_reg[0]_i_1__4_n_6\,
      CO(0) => \counter_reg[0]_i_1__4_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => fc_orbitcountreset,
      O(7) => \counter_reg[0]_i_1__4_n_8\,
      O(6) => \counter_reg[0]_i_1__4_n_9\,
      O(5) => \counter_reg[0]_i_1__4_n_10\,
      O(4) => \counter_reg[0]_i_1__4_n_11\,
      O(3) => \counter_reg[0]_i_1__4_n_12\,
      O(2) => \counter_reg[0]_i_1__4_n_13\,
      O(1) => \counter_reg[0]_i_1__4_n_14\,
      O(0) => \counter_reg[0]_i_1__4_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => S(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__5_n_13\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__5_n_12\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__5_n_11\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__5_n_10\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__5_n_9\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__5_n_8\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__5_n_15\,
      Q => counter_reg(16),
      R => clear
    );
\counter_reg[16]_i_1__5\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[8]_i_1__5_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[16]_i_1__5_n_0\,
      CO(6) => \counter_reg[16]_i_1__5_n_1\,
      CO(5) => \counter_reg[16]_i_1__5_n_2\,
      CO(4) => \counter_reg[16]_i_1__5_n_3\,
      CO(3) => \counter_reg[16]_i_1__5_n_4\,
      CO(2) => \counter_reg[16]_i_1__5_n_5\,
      CO(1) => \counter_reg[16]_i_1__5_n_6\,
      CO(0) => \counter_reg[16]_i_1__5_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[16]_i_1__5_n_8\,
      O(6) => \counter_reg[16]_i_1__5_n_9\,
      O(5) => \counter_reg[16]_i_1__5_n_10\,
      O(4) => \counter_reg[16]_i_1__5_n_11\,
      O(3) => \counter_reg[16]_i_1__5_n_12\,
      O(2) => \counter_reg[16]_i_1__5_n_13\,
      O(1) => \counter_reg[16]_i_1__5_n_14\,
      O(0) => \counter_reg[16]_i_1__5_n_15\,
      S(7 downto 0) => counter_reg(23 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__5_n_14\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__5_n_13\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__5_n_12\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__4_n_14\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__5_n_11\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__5_n_10\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__5_n_9\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__5_n_8\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__5_n_15\,
      Q => counter_reg(24),
      R => clear
    );
\counter_reg[24]_i_1__5\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[16]_i_1__5_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_counter_reg[24]_i_1__5_CO_UNCONNECTED\(7),
      CO(6) => \counter_reg[24]_i_1__5_n_1\,
      CO(5) => \counter_reg[24]_i_1__5_n_2\,
      CO(4) => \counter_reg[24]_i_1__5_n_3\,
      CO(3) => \counter_reg[24]_i_1__5_n_4\,
      CO(2) => \counter_reg[24]_i_1__5_n_5\,
      CO(1) => \counter_reg[24]_i_1__5_n_6\,
      CO(0) => \counter_reg[24]_i_1__5_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[24]_i_1__5_n_8\,
      O(6) => \counter_reg[24]_i_1__5_n_9\,
      O(5) => \counter_reg[24]_i_1__5_n_10\,
      O(4) => \counter_reg[24]_i_1__5_n_11\,
      O(3) => \counter_reg[24]_i_1__5_n_12\,
      O(2) => \counter_reg[24]_i_1__5_n_13\,
      O(1) => \counter_reg[24]_i_1__5_n_14\,
      O(0) => \counter_reg[24]_i_1__5_n_15\,
      S(7 downto 0) => counter_reg(31 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__5_n_14\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__5_n_13\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__5_n_12\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__5_n_11\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__5_n_10\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__4_n_13\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__5_n_9\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__5_n_8\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__4_n_12\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__4_n_11\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__4_n_10\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__4_n_9\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__4_n_8\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__5_n_15\,
      Q => counter_reg(8),
      R => clear
    );
\counter_reg[8]_i_1__5\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[0]_i_1__4_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[8]_i_1__5_n_0\,
      CO(6) => \counter_reg[8]_i_1__5_n_1\,
      CO(5) => \counter_reg[8]_i_1__5_n_2\,
      CO(4) => \counter_reg[8]_i_1__5_n_3\,
      CO(3) => \counter_reg[8]_i_1__5_n_4\,
      CO(2) => \counter_reg[8]_i_1__5_n_5\,
      CO(1) => \counter_reg[8]_i_1__5_n_6\,
      CO(0) => \counter_reg[8]_i_1__5_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[8]_i_1__5_n_8\,
      O(6) => \counter_reg[8]_i_1__5_n_9\,
      O(5) => \counter_reg[8]_i_1__5_n_10\,
      O(4) => \counter_reg[8]_i_1__5_n_11\,
      O(3) => \counter_reg[8]_i_1__5_n_12\,
      O(2) => \counter_reg[8]_i_1__5_n_13\,
      O(1) => \counter_reg[8]_i_1__5_n_14\,
      O(0) => \counter_reg[8]_i_1__5_n_15\,
      S(7 downto 0) => counter_reg(15 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__5_n_14\,
      Q => counter_reg(9),
      R => clear
    );
\io_r_data[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \value_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(0),
      I4 => \io_r_data_reg[27]_1\(0),
      O => \io_r_data[0]_i_6_n_0\
    );
\io_r_data[10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[10]\,
      I1 => Q(10),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(10),
      O => \io_r_data[10]_i_6_n_0\
    );
\io_r_data[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \io_r_data_reg[27]_1\(3),
      I1 => \io_r_data_reg[11]_i_4_n_0\,
      I2 => \io_r_data_reg[1]_0\,
      I3 => \io_r_data_reg[27]_2\(2),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[27]_3\(2),
      O => \io_r_data[11]_i_2_n_0\
    );
\io_r_data[11]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[11]\,
      I1 => Q(11),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(11),
      O => \io_r_data[11]_i_6_n_0\
    );
\io_r_data[12]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[12]\,
      I1 => Q(12),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(12),
      O => \io_r_data[12]_i_6_n_0\
    );
\io_r_data[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \io_r_data_reg[27]_1\(3),
      I1 => \io_r_data_reg[13]_i_4_n_0\,
      I2 => \io_r_data_reg[1]_0\,
      I3 => \io_r_data_reg[27]_2\(3),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[27]_3\(3),
      O => \io_r_data[13]_i_2_n_0\
    );
\io_r_data[13]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[13]\,
      I1 => Q(13),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(13),
      O => \io_r_data[13]_i_6_n_0\
    );
\io_r_data[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \io_r_data_reg[27]_1\(3),
      I1 => \io_r_data_reg[14]_i_4_n_0\,
      I2 => \io_r_data_reg[1]_0\,
      I3 => \io_r_data_reg[27]_2\(4),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[27]_3\(4),
      O => \io_r_data[14]_i_2_n_0\
    );
\io_r_data[14]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[14]\,
      I1 => Q(14),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(14),
      O => \io_r_data[14]_i_6_n_0\
    );
\io_r_data[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[15]\,
      I1 => Q(15),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(15),
      O => \io_r_data[15]_i_6_n_0\
    );
\io_r_data[16]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[16]\,
      I1 => Q(16),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(16),
      O => \io_r_data[16]_i_6_n_0\
    );
\io_r_data[17]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[17]\,
      I1 => Q(17),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(17),
      O => \io_r_data[17]_i_6_n_0\
    );
\io_r_data[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \io_r_data_reg[27]_1\(3),
      I1 => \io_r_data_reg[18]_i_4_n_0\,
      I2 => \io_r_data_reg[1]_0\,
      I3 => \io_r_data_reg[27]_2\(5),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[27]_3\(5),
      O => \io_r_data[18]_i_2_n_0\
    );
\io_r_data[18]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[18]\,
      I1 => Q(18),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(18),
      O => \io_r_data[18]_i_6_n_0\
    );
\io_r_data[19]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[19]\,
      I1 => Q(19),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(19),
      O => \io_r_data[19]_i_6_n_0\
    );
\io_r_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \io_r_data_reg[27]_1\(3),
      I1 => \io_r_data_reg[1]_i_4_n_0\,
      I2 => \io_r_data_reg[1]_0\,
      I3 => \io_r_data_reg[27]_2\(0),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[27]_3\(0),
      O => \io_r_data[1]_i_2_n_0\
    );
\io_r_data[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \value_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(1),
      I4 => \io_r_data_reg[27]_1\(0),
      O => \io_r_data[1]_i_6_n_0\
    );
\io_r_data[20]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[20]\,
      I1 => Q(20),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(20),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(0),
      O => \io_r_data[20]_i_6_n_0\
    );
\io_r_data[21]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[21]\,
      I1 => Q(21),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(21),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(1),
      O => \io_r_data[21]_i_6_n_0\
    );
\io_r_data[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \io_r_data_reg[27]_1\(3),
      I1 => \io_r_data_reg[22]_i_4_n_0\,
      I2 => \io_r_data_reg[1]_0\,
      I3 => \io_r_data_reg[27]_2\(6),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[27]_3\(6),
      O => \io_r_data[22]_i_2_n_0\
    );
\io_r_data[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[22]\,
      I1 => Q(22),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(22),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(2),
      O => \io_r_data[22]_i_6_n_0\
    );
\io_r_data[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \io_r_data_reg[27]_1\(3),
      I1 => \io_r_data_reg[23]_i_4_n_0\,
      I2 => \io_r_data_reg[1]_0\,
      I3 => \io_r_data_reg[27]_2\(7),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[27]_3\(7),
      O => \io_r_data[23]_i_2_n_0\
    );
\io_r_data[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[23]\,
      I1 => Q(23),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(23),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(3),
      O => \io_r_data[23]_i_6_n_0\
    );
\io_r_data[24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[24]\,
      I1 => Q(24),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(24),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(4),
      O => \io_r_data[24]_i_6_n_0\
    );
\io_r_data[25]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[25]\,
      I1 => Q(25),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(25),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(5),
      O => \io_r_data[25]_i_6_n_0\
    );
\io_r_data[26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[26]\,
      I1 => Q(26),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(26),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(6),
      O => \io_r_data[26]_i_6_n_0\
    );
\io_r_data[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \io_r_data_reg[27]_1\(3),
      I1 => \io_r_data_reg[27]_i_4_n_0\,
      I2 => \io_r_data_reg[1]_0\,
      I3 => \io_r_data_reg[27]_2\(8),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[27]_3\(8),
      O => \io_r_data[27]_i_2_n_0\
    );
\io_r_data[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[27]\,
      I1 => Q(27),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(27),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(7),
      O => \io_r_data[27]_i_6_n_0\
    );
\io_r_data[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[28]\,
      I1 => Q(28),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(28),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(8),
      O => \io_r_data[28]_i_6_n_0\
    );
\io_r_data[29]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[29]\,
      I1 => Q(29),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(29),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(9),
      O => \io_r_data[29]_i_6_n_0\
    );
\io_r_data[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(2),
      O => \io_r_data[2]_i_6_n_0\
    );
\io_r_data[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[30]\,
      I1 => Q(30),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(30),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(10),
      O => \io_r_data[30]_i_6_n_0\
    );
\io_r_data[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \value_reg_n_0_[31]\,
      I1 => Q(31),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[31]_i_7_0\(31),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[31]_i_7_1\(11),
      O => \io_r_data[31]_i_9_n_0\
    );
\io_r_data[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(3),
      O => \io_r_data[3]_i_6_n_0\
    );
\io_r_data[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[4]\,
      I1 => Q(4),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(4),
      O => \io_r_data[4]_i_6_n_0\
    );
\io_r_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \io_r_data_reg[27]_1\(3),
      I1 => \io_r_data_reg[5]_i_4_n_0\,
      I2 => \io_r_data_reg[1]_0\,
      I3 => \io_r_data_reg[27]_2\(1),
      I4 => \io_r_data_reg[27]_1\(0),
      I5 => \io_r_data_reg[27]_3\(1),
      O => \io_r_data[5]_i_2_n_0\
    );
\io_r_data[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(5),
      O => \io_r_data[5]_i_6_n_0\
    );
\io_r_data[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[6]\,
      I1 => Q(6),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(6),
      O => \io_r_data[6]_i_6_n_0\
    );
\io_r_data[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(7),
      O => \io_r_data[7]_i_6_n_0\
    );
\io_r_data[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[8]\,
      I1 => Q(8),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(8),
      O => \io_r_data[8]_i_6_n_0\
    );
\io_r_data[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \value_reg_n_0_[9]\,
      I1 => Q(9),
      I2 => \io_r_data_reg[27]_1\(1),
      I3 => \io_r_data_reg[27]_1\(0),
      I4 => \io_r_data_reg[31]_i_7_0\(9),
      O => \io_r_data[9]_i_6_n_0\
    );
\io_r_data_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[0]_i_6_n_0\,
      I1 => \io_r_data[0]_i_2\,
      O => \fc_raddr_reg[2]_21\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[10]_i_6_n_0\,
      I1 => \io_r_data[10]_i_2\,
      O => \fc_raddr_reg[2]_13\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[11]_i_2_n_0\,
      I1 => \io_r_data_reg[11]\,
      O => \fc_raddr_reg[3]\(2),
      S => \io_r_data_reg[27]\
    );
\io_r_data_reg[11]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[11]_i_6_n_0\,
      I1 => \io_r_data[11]_i_2_0\,
      O => \io_r_data_reg[11]_i_4_n_0\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[12]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[12]_i_6_n_0\,
      I1 => \io_r_data[12]_i_2\,
      O => \fc_raddr_reg[2]_12\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[13]_i_2_n_0\,
      I1 => \io_r_data_reg[13]\,
      O => \fc_raddr_reg[3]\(3),
      S => \io_r_data_reg[27]\
    );
\io_r_data_reg[13]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[13]_i_6_n_0\,
      I1 => \io_r_data[13]_i_2_0\,
      O => \io_r_data_reg[13]_i_4_n_0\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[14]_i_2_n_0\,
      I1 => \io_r_data_reg[14]\,
      O => \fc_raddr_reg[3]\(4),
      S => \io_r_data_reg[27]\
    );
\io_r_data_reg[14]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[14]_i_6_n_0\,
      I1 => \io_r_data[14]_i_2_0\,
      O => \io_r_data_reg[14]_i_4_n_0\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[15]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[15]_i_6_n_0\,
      I1 => \io_r_data[15]_i_2\,
      O => \fc_raddr_reg[2]_11\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[16]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[16]_i_6_n_0\,
      I1 => \io_r_data[16]_i_2\,
      O => \fc_raddr_reg[2]_10\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[17]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[17]_i_6_n_0\,
      I1 => \io_r_data[17]_i_2\,
      O => \fc_raddr_reg[2]_9\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[18]_i_2_n_0\,
      I1 => \io_r_data_reg[18]\,
      O => \fc_raddr_reg[3]\(5),
      S => \io_r_data_reg[27]\
    );
\io_r_data_reg[18]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[18]_i_6_n_0\,
      I1 => \io_r_data[18]_i_2_0\,
      O => \io_r_data_reg[18]_i_4_n_0\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[19]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[19]_i_6_n_0\,
      I1 => \io_r_data[19]_i_2\,
      O => \fc_raddr_reg[2]_8\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[1]_i_2_n_0\,
      I1 => \io_r_data_reg[1]\,
      O => \fc_raddr_reg[3]\(0),
      S => \io_r_data_reg[27]\
    );
\io_r_data_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[1]_i_6_n_0\,
      I1 => \io_r_data[1]_i_2_0\,
      O => \io_r_data_reg[1]_i_4_n_0\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[20]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[20]_i_6_n_0\,
      I1 => \io_r_data[20]_i_2\,
      O => \fc_raddr_reg[2]_7\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[21]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[21]_i_6_n_0\,
      I1 => \io_r_data[21]_i_2\,
      O => \fc_raddr_reg[2]_6\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[22]_i_2_n_0\,
      I1 => \io_r_data_reg[22]\,
      O => \fc_raddr_reg[3]\(6),
      S => \io_r_data_reg[27]\
    );
\io_r_data_reg[22]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[22]_i_6_n_0\,
      I1 => \io_r_data[22]_i_2_0\,
      O => \io_r_data_reg[22]_i_4_n_0\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[23]_i_2_n_0\,
      I1 => \io_r_data_reg[23]\,
      O => \fc_raddr_reg[3]\(7),
      S => \io_r_data_reg[27]\
    );
\io_r_data_reg[23]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[23]_i_6_n_0\,
      I1 => \io_r_data[23]_i_2_0\,
      O => \io_r_data_reg[23]_i_4_n_0\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[24]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[24]_i_6_n_0\,
      I1 => \io_r_data[24]_i_2\,
      O => \fc_raddr_reg[2]_5\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[25]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[25]_i_6_n_0\,
      I1 => \io_r_data[25]_i_2\,
      O => \fc_raddr_reg[2]_4\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[26]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[26]_i_6_n_0\,
      I1 => \io_r_data[26]_i_2\,
      O => \fc_raddr_reg[2]_3\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[27]_i_2_n_0\,
      I1 => \io_r_data_reg[27]_0\,
      O => \fc_raddr_reg[3]\(8),
      S => \io_r_data_reg[27]\
    );
\io_r_data_reg[27]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[27]_i_6_n_0\,
      I1 => \io_r_data[27]_i_2_0\,
      O => \io_r_data_reg[27]_i_4_n_0\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[28]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[28]_i_6_n_0\,
      I1 => \io_r_data[28]_i_2\,
      O => \fc_raddr_reg[2]_2\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[29]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[29]_i_6_n_0\,
      I1 => \io_r_data[29]_i_2\,
      O => \fc_raddr_reg[2]_1\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[2]_i_6_n_0\,
      I1 => \io_r_data[2]_i_2\,
      O => \fc_raddr_reg[2]_20\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[30]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[30]_i_6_n_0\,
      I1 => \io_r_data[30]_i_2\,
      O => \fc_raddr_reg[2]_0\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[31]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[31]_i_9_n_0\,
      I1 => \io_r_data[31]_i_4\,
      O => \fc_raddr_reg[2]\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[3]_i_6_n_0\,
      I1 => \io_r_data[3]_i_2\,
      O => \fc_raddr_reg[2]_19\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[4]_i_6_n_0\,
      I1 => \io_r_data[4]_i_2\,
      O => \fc_raddr_reg[2]_18\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[5]_i_2_n_0\,
      I1 => \io_r_data_reg[5]\,
      O => \fc_raddr_reg[3]\(1),
      S => \io_r_data_reg[27]\
    );
\io_r_data_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[5]_i_6_n_0\,
      I1 => \io_r_data[5]_i_2_0\,
      O => \io_r_data_reg[5]_i_4_n_0\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[6]_i_6_n_0\,
      I1 => \io_r_data[6]_i_2\,
      O => \fc_raddr_reg[2]_17\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[7]_i_6_n_0\,
      I1 => \io_r_data[7]_i_2\,
      O => \fc_raddr_reg[2]_16\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[8]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[8]_i_6_n_0\,
      I1 => \io_r_data[8]_i_2\,
      O => \fc_raddr_reg[2]_15\,
      S => \io_r_data_reg[27]_1\(2)
    );
\io_r_data_reg[9]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \io_r_data[9]_i_6_n_0\,
      I1 => \io_r_data[9]_i_2\,
      O => \fc_raddr_reg[2]_14\,
      S => \io_r_data_reg[27]_1\(2)
    );
\value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => \value_reg_n_0_[0]\,
      R => '0'
    );
\value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(10),
      Q => \value_reg_n_0_[10]\,
      R => '0'
    );
\value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(11),
      Q => \value_reg_n_0_[11]\,
      R => '0'
    );
\value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(12),
      Q => \value_reg_n_0_[12]\,
      R => '0'
    );
\value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(13),
      Q => \value_reg_n_0_[13]\,
      R => '0'
    );
\value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(14),
      Q => \value_reg_n_0_[14]\,
      R => '0'
    );
\value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(15),
      Q => \value_reg_n_0_[15]\,
      R => '0'
    );
\value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(16),
      Q => \value_reg_n_0_[16]\,
      R => '0'
    );
\value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(17),
      Q => \value_reg_n_0_[17]\,
      R => '0'
    );
\value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(18),
      Q => \value_reg_n_0_[18]\,
      R => '0'
    );
\value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(19),
      Q => \value_reg_n_0_[19]\,
      R => '0'
    );
\value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(1),
      Q => \value_reg_n_0_[1]\,
      R => '0'
    );
\value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(20),
      Q => \value_reg_n_0_[20]\,
      R => '0'
    );
\value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(21),
      Q => \value_reg_n_0_[21]\,
      R => '0'
    );
\value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(22),
      Q => \value_reg_n_0_[22]\,
      R => '0'
    );
\value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(23),
      Q => \value_reg_n_0_[23]\,
      R => '0'
    );
\value_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(24),
      Q => \value_reg_n_0_[24]\,
      R => '0'
    );
\value_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(25),
      Q => \value_reg_n_0_[25]\,
      R => '0'
    );
\value_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(26),
      Q => \value_reg_n_0_[26]\,
      R => '0'
    );
\value_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(27),
      Q => \value_reg_n_0_[27]\,
      R => '0'
    );
\value_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(28),
      Q => \value_reg_n_0_[28]\,
      R => '0'
    );
\value_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(29),
      Q => \value_reg_n_0_[29]\,
      R => '0'
    );
\value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(2),
      Q => \value_reg_n_0_[2]\,
      R => '0'
    );
\value_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(30),
      Q => \value_reg_n_0_[30]\,
      R => '0'
    );
\value_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(31),
      Q => \value_reg_n_0_[31]\,
      R => '0'
    );
\value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(3),
      Q => \value_reg_n_0_[3]\,
      R => '0'
    );
\value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(4),
      Q => \value_reg_n_0_[4]\,
      R => '0'
    );
\value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(5),
      Q => \value_reg_n_0_[5]\,
      R => '0'
    );
\value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(6),
      Q => \value_reg_n_0_[6]\,
      R => '0'
    );
\value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(7),
      Q => \value_reg_n_0_[7]\,
      R => '0'
    );
\value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(8),
      Q => \value_reg_n_0_[8]\,
      R => '0'
    );
\value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(9),
      Q => \value_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_7 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clear : in STD_LOGIC;
    ext_lhc_clk : in STD_LOGIC;
    fc_orbitsync : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_7 : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_7;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_7 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \counter_reg[0]_i_1__5_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_10\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_11\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_12\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_13\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_14\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_15\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_8\ : STD_LOGIC;
  signal \counter_reg[0]_i_1__5_n_9\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_10\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_11\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_12\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_13\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_14\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_15\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_8\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__6_n_9\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_10\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_11\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_12\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_13\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_14\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_15\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_8\ : STD_LOGIC;
  signal \counter_reg[24]_i_1__6_n_9\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_10\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_11\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_12\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_13\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_14\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_15\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_8\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__6_n_9\ : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  D(0) <= \^d\(0);
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__5_n_15\,
      Q => \^d\(0),
      R => clear
    );
\counter_reg[0]_i_1__5\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[0]_i_1__5_n_0\,
      CO(6) => \counter_reg[0]_i_1__5_n_1\,
      CO(5) => \counter_reg[0]_i_1__5_n_2\,
      CO(4) => \counter_reg[0]_i_1__5_n_3\,
      CO(3) => \counter_reg[0]_i_1__5_n_4\,
      CO(2) => \counter_reg[0]_i_1__5_n_5\,
      CO(1) => \counter_reg[0]_i_1__5_n_6\,
      CO(0) => \counter_reg[0]_i_1__5_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => fc_orbitsync,
      O(7) => \counter_reg[0]_i_1__5_n_8\,
      O(6) => \counter_reg[0]_i_1__5_n_9\,
      O(5) => \counter_reg[0]_i_1__5_n_10\,
      O(4) => \counter_reg[0]_i_1__5_n_11\,
      O(3) => \counter_reg[0]_i_1__5_n_12\,
      O(2) => \counter_reg[0]_i_1__5_n_13\,
      O(1) => \counter_reg[0]_i_1__5_n_14\,
      O(0) => \counter_reg[0]_i_1__5_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => S(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__6_n_13\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__6_n_12\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__6_n_11\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__6_n_10\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__6_n_9\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__6_n_8\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__6_n_15\,
      Q => counter_reg(16),
      R => clear
    );
\counter_reg[16]_i_1__6\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[8]_i_1__6_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[16]_i_1__6_n_0\,
      CO(6) => \counter_reg[16]_i_1__6_n_1\,
      CO(5) => \counter_reg[16]_i_1__6_n_2\,
      CO(4) => \counter_reg[16]_i_1__6_n_3\,
      CO(3) => \counter_reg[16]_i_1__6_n_4\,
      CO(2) => \counter_reg[16]_i_1__6_n_5\,
      CO(1) => \counter_reg[16]_i_1__6_n_6\,
      CO(0) => \counter_reg[16]_i_1__6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[16]_i_1__6_n_8\,
      O(6) => \counter_reg[16]_i_1__6_n_9\,
      O(5) => \counter_reg[16]_i_1__6_n_10\,
      O(4) => \counter_reg[16]_i_1__6_n_11\,
      O(3) => \counter_reg[16]_i_1__6_n_12\,
      O(2) => \counter_reg[16]_i_1__6_n_13\,
      O(1) => \counter_reg[16]_i_1__6_n_14\,
      O(0) => \counter_reg[16]_i_1__6_n_15\,
      S(7 downto 0) => counter_reg(23 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__6_n_14\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__6_n_13\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__6_n_12\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__5_n_14\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__6_n_11\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__6_n_10\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__6_n_9\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[16]_i_1__6_n_8\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__6_n_15\,
      Q => counter_reg(24),
      R => clear
    );
\counter_reg[24]_i_1__6\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[16]_i_1__6_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_counter_reg[24]_i_1__6_CO_UNCONNECTED\(7),
      CO(6) => \counter_reg[24]_i_1__6_n_1\,
      CO(5) => \counter_reg[24]_i_1__6_n_2\,
      CO(4) => \counter_reg[24]_i_1__6_n_3\,
      CO(3) => \counter_reg[24]_i_1__6_n_4\,
      CO(2) => \counter_reg[24]_i_1__6_n_5\,
      CO(1) => \counter_reg[24]_i_1__6_n_6\,
      CO(0) => \counter_reg[24]_i_1__6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[24]_i_1__6_n_8\,
      O(6) => \counter_reg[24]_i_1__6_n_9\,
      O(5) => \counter_reg[24]_i_1__6_n_10\,
      O(4) => \counter_reg[24]_i_1__6_n_11\,
      O(3) => \counter_reg[24]_i_1__6_n_12\,
      O(2) => \counter_reg[24]_i_1__6_n_13\,
      O(1) => \counter_reg[24]_i_1__6_n_14\,
      O(0) => \counter_reg[24]_i_1__6_n_15\,
      S(7 downto 0) => counter_reg(31 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__6_n_14\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__6_n_13\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__6_n_12\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__6_n_11\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__6_n_10\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__5_n_13\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__6_n_9\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[24]_i_1__6_n_8\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__5_n_12\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__5_n_11\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__5_n_10\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__5_n_9\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[0]_i_1__5_n_8\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__6_n_15\,
      Q => counter_reg(8),
      R => clear
    );
\counter_reg[8]_i_1__6\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[0]_i_1__5_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[8]_i_1__6_n_0\,
      CO(6) => \counter_reg[8]_i_1__6_n_1\,
      CO(5) => \counter_reg[8]_i_1__6_n_2\,
      CO(4) => \counter_reg[8]_i_1__6_n_3\,
      CO(3) => \counter_reg[8]_i_1__6_n_4\,
      CO(2) => \counter_reg[8]_i_1__6_n_5\,
      CO(1) => \counter_reg[8]_i_1__6_n_6\,
      CO(0) => \counter_reg[8]_i_1__6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[8]_i_1__6_n_8\,
      O(6) => \counter_reg[8]_i_1__6_n_9\,
      O(5) => \counter_reg[8]_i_1__6_n_10\,
      O(4) => \counter_reg[8]_i_1__6_n_11\,
      O(3) => \counter_reg[8]_i_1__6_n_12\,
      O(2) => \counter_reg[8]_i_1__6_n_13\,
      O(1) => \counter_reg[8]_i_1__6_n_14\,
      O(0) => \counter_reg[8]_i_1__6_n_15\,
      S(7 downto 0) => counter_reg(15 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \counter_reg[8]_i_1__6_n_14\,
      Q => counter_reg(9),
      R => clear
    );
\value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => Q(0),
      R => '0'
    );
\value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(10),
      Q => Q(10),
      R => '0'
    );
\value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(11),
      Q => Q(11),
      R => '0'
    );
\value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(12),
      Q => Q(12),
      R => '0'
    );
\value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(13),
      Q => Q(13),
      R => '0'
    );
\value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(14),
      Q => Q(14),
      R => '0'
    );
\value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(15),
      Q => Q(15),
      R => '0'
    );
\value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(16),
      Q => Q(16),
      R => '0'
    );
\value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(17),
      Q => Q(17),
      R => '0'
    );
\value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(18),
      Q => Q(18),
      R => '0'
    );
\value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(19),
      Q => Q(19),
      R => '0'
    );
\value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(1),
      Q => Q(1),
      R => '0'
    );
\value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(20),
      Q => Q(20),
      R => '0'
    );
\value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(21),
      Q => Q(21),
      R => '0'
    );
\value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(22),
      Q => Q(22),
      R => '0'
    );
\value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(23),
      Q => Q(23),
      R => '0'
    );
\value_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(24),
      Q => Q(24),
      R => '0'
    );
\value_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(25),
      Q => Q(25),
      R => '0'
    );
\value_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(26),
      Q => Q(26),
      R => '0'
    );
\value_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(27),
      Q => Q(27),
      R => '0'
    );
\value_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(28),
      Q => Q(28),
      R => '0'
    );
\value_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(29),
      Q => Q(29),
      R => '0'
    );
\value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(2),
      Q => Q(2),
      R => '0'
    );
\value_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(30),
      Q => Q(30),
      R => '0'
    );
\value_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(31),
      Q => Q(31),
      R => '0'
    );
\value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(3),
      Q => Q(3),
      R => '0'
    );
\value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(4),
      Q => Q(4),
      R => '0'
    );
\value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(5),
      Q => Q(5),
      R => '0'
    );
\value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(6),
      Q => Q(6),
      R => '0'
    );
\value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(7),
      Q => Q(7),
      R => '0'
    );
\value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(8),
      Q => Q(8),
      R => '0'
    );
\value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot is
  port (
    fc_daqresync : out STD_LOGIC;
    link_daq_resync : out STD_LOGIC;
    fire_reg_0 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    reset_40 : in STD_LOGIC;
    pending_reg_0 : in STD_LOGIC;
    fc_l1a_for_calib : in STD_LOGIC;
    fc_l1agen_A : in STD_LOGIC;
    fc_l1agen_B : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot : entity is "hgcal_fc_manager_single_shot";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot is
  signal \^fc_daqresync\ : STD_LOGIC;
  signal \^link_daq_resync\ : STD_LOGIC;
  signal \pending_i_1__0_n_0\ : STD_LOGIC;
  signal req_40 : STD_LOGIC;
  signal was_req_40 : STD_LOGIC;
  signal will_fire : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of FDPE_re : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fire_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pending_i_1__0\ : label is "soft_lutpair23";
begin
  fc_daqresync <= \^fc_daqresync\;
  link_daq_resync <= \^link_daq_resync\;
FDPE_re: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => ext_lhc_clk,
      CE => '1',
      D => Q(0),
      PRE => Q(0),
      Q => req_40
    );
\cmd[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^fc_daqresync\,
      I1 => fc_l1a_for_calib,
      I2 => fc_l1agen_A,
      I3 => fc_l1agen_B,
      O => fire_reg_0
    );
\counter[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fc_daqresync\,
      I1 => D(0),
      O => S(0)
    );
\fire_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^link_daq_resync\,
      I1 => pending_reg_0,
      O => will_fire
    );
fire_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => will_fire,
      Q => \^fc_daqresync\,
      R => '0'
    );
\pending_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55001010"
    )
        port map (
      I0 => reset_40,
      I1 => was_req_40,
      I2 => req_40,
      I3 => pending_reg_0,
      I4 => \^link_daq_resync\,
      O => \pending_i_1__0_n_0\
    );
pending_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \pending_i_1__0_n_0\,
      Q => \^link_daq_resync\,
      R => '0'
    );
was_req_40_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => req_40,
      Q => was_req_40,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_10 is
  port (
    fc_linkreset : out STD_LOGIC;
    link_reset_pending : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    will_fire : in STD_LOGIC;
    reset_40 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_10 : entity is "hgcal_fc_manager_single_shot";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_10;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_10 is
  signal \^fc_linkreset\ : STD_LOGIC;
  signal \^link_reset_pending\ : STD_LOGIC;
  signal pending_i_1_n_0 : STD_LOGIC;
  signal req_40 : STD_LOGIC;
  signal was_req_40 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of FDPE_re : label is "PRIMITIVE";
begin
  fc_linkreset <= \^fc_linkreset\;
  link_reset_pending <= \^link_reset_pending\;
FDPE_re: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => ext_lhc_clk,
      CE => '1',
      D => Q(0),
      PRE => Q(0),
      Q => req_40
    );
\counter[0]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fc_linkreset\,
      I1 => D(0),
      O => S(0)
    );
fire_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => will_fire,
      Q => \^fc_linkreset\,
      R => '0'
    );
pending_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005510"
    )
        port map (
      I0 => reset_40,
      I1 => was_req_40,
      I2 => req_40,
      I3 => \^link_reset_pending\,
      I4 => will_fire,
      O => pending_i_1_n_0
    );
pending_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => pending_i_1_n_0,
      Q => \^link_reset_pending\,
      R => '0'
    );
was_req_40_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => req_40,
      Q => was_req_40,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_9 is
  port (
    fc_internaltest : out STD_LOGIC;
    pending_reg_0 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    will_fire : in STD_LOGIC;
    reset_40 : in STD_LOGIC;
    link_daq_resync : in STD_LOGIC;
    pending_reg_1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_9 : entity is "hgcal_fc_manager_single_shot";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_9;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_9 is
  signal \^fc_internaltest\ : STD_LOGIC;
  signal \pending_i_1__1_n_0\ : STD_LOGIC;
  signal \^pending_reg_0\ : STD_LOGIC;
  signal req_40 : STD_LOGIC;
  signal was_req_40 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of FDPE_re : label is "PRIMITIVE";
begin
  fc_internaltest <= \^fc_internaltest\;
  pending_reg_0 <= \^pending_reg_0\;
FDPE_re: unisim.vcomponents.FDPE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => ext_lhc_clk,
      CE => '1',
      D => Q(0),
      PRE => Q(0),
      Q => req_40
    );
\counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fc_internaltest\,
      I1 => D(0),
      O => S(0)
    );
fire_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => will_fire,
      Q => \^fc_internaltest\,
      R => '0'
    );
\pending_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555101055001010"
    )
        port map (
      I0 => reset_40,
      I1 => was_req_40,
      I2 => req_40,
      I3 => link_daq_resync,
      I4 => \^pending_reg_0\,
      I5 => pending_reg_1,
      O => \pending_i_1__1_n_0\
    );
pending_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \pending_i_1__1_n_0\,
      Q => \^pending_reg_0\,
      R => '0'
    );
was_req_40_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => req_40,
      Q => was_req_40,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_simple_serializer is
  port (
    fast_control_stream : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    ext_lhc_clk_X8 : in STD_LOGIC;
    fc_reset : in STD_LOGIC;
    enable_fc : in STD_LOGIC;
    \latch_fast_control_reg[1]_0\ : in STD_LOGIC;
    \latch_fast_control_reg[4]_0\ : in STD_LOGIC;
    \latch_fast_control_reg[3]_0\ : in STD_LOGIC;
    \latch_fast_control_reg[2]_0\ : in STD_LOGIC;
    \latch_fast_control_reg[1]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_simple_serializer : entity is "hgcal_fc_simple_serializer";
end tester_fastcontrol_axi_0_0_hgcal_fc_simple_serializer;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_simple_serializer is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal did_match : STD_LOGIC;
  signal fc_fast_i_i_1_n_0 : STD_LOGIC;
  signal fc_fast_i_i_2_n_0 : STD_LOGIC;
  signal fc_fast_i_i_3_n_0 : STD_LOGIC;
  signal fe_40 : STD_LOGIC;
  signal latch_fast_control : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \latch_fast_control[0]_i_1_n_0\ : STD_LOGIC;
  signal matches : STD_LOGIC;
  signal matches_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal phase0 : STD_LOGIC;
  signal \phase_reg_n_0_[1]\ : STD_LOGIC;
  signal \phase_reg_n_0_[2]\ : STD_LOGIC;
  signal \phase_reg_n_0_[3]\ : STD_LOGIC;
  signal \phase_reg_n_0_[4]\ : STD_LOGIC;
  signal \phase_reg_n_0_[5]\ : STD_LOGIC;
  signal \phase_reg_n_0_[6]\ : STD_LOGIC;
  signal re_40 : STD_LOGIC;
  signal re_40_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fc_fast_i_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \latch_fast_control[0]_i_1\ : label is "soft_lutpair29";
begin
  Q(0) <= \^q\(0);
did_match_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => '1',
      D => matches,
      Q => did_match,
      R => '0'
    );
fc_fast_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => fc_fast_i_i_2_n_0,
      I1 => fc_fast_i_i_3_n_0,
      I2 => \^q\(0),
      I3 => latch_fast_control(0),
      O => fc_fast_i_i_1_n_0
    );
fc_fast_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => p_1_in,
      I1 => enable_fc,
      I2 => latch_fast_control(0),
      I3 => \phase_reg_n_0_[6]\,
      I4 => \phase_reg_n_0_[4]\,
      I5 => latch_fast_control(4),
      O => fc_fast_i_i_2_n_0
    );
fc_fast_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => latch_fast_control(3),
      I1 => \phase_reg_n_0_[3]\,
      I2 => latch_fast_control(2),
      I3 => \phase_reg_n_0_[2]\,
      I4 => \phase_reg_n_0_[1]\,
      I5 => latch_fast_control(1),
      O => fc_fast_i_i_3_n_0
    );
fc_fast_i_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => '1',
      D => fc_fast_i_i_1_n_0,
      Q => fast_control_stream,
      R => '0'
    );
fe_40_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => ext_lhc_clk,
      CE => '1',
      D => re_40,
      Q => fe_40,
      R => '0'
    );
\latch_fast_control[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => enable_fc,
      I1 => \^q\(0),
      I2 => latch_fast_control(0),
      O => \latch_fast_control[0]_i_1_n_0\
    );
\latch_fast_control_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => '1',
      D => \latch_fast_control[0]_i_1_n_0\,
      Q => latch_fast_control(0),
      R => '0'
    );
\latch_fast_control_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => \^q\(0),
      D => \latch_fast_control_reg[1]_1\,
      Q => latch_fast_control(1),
      R => \latch_fast_control_reg[1]_0\
    );
\latch_fast_control_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => \^q\(0),
      D => \latch_fast_control_reg[2]_0\,
      Q => latch_fast_control(2),
      R => \latch_fast_control_reg[1]_0\
    );
\latch_fast_control_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => \^q\(0),
      D => \latch_fast_control_reg[3]_0\,
      Q => latch_fast_control(3),
      R => \latch_fast_control_reg[1]_0\
    );
\latch_fast_control_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => \^q\(0),
      D => \latch_fast_control_reg[4]_0\,
      Q => latch_fast_control(4),
      R => \latch_fast_control_reg[1]_0\
    );
matches_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fe_40,
      I1 => re_40,
      O => matches_i_1_n_0
    );
matches_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => '1',
      D => matches_i_1_n_0,
      Q => matches,
      R => '0'
    );
\phase[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => did_match,
      I1 => matches,
      O => phase0
    );
\phase_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ext_lhc_clk_X8,
      CE => '1',
      D => \phase_reg_n_0_[1]\,
      Q => \^q\(0),
      S => phase0
    );
\phase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => '1',
      D => \phase_reg_n_0_[2]\,
      Q => \phase_reg_n_0_[1]\,
      R => phase0
    );
\phase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => '1',
      D => \phase_reg_n_0_[3]\,
      Q => \phase_reg_n_0_[2]\,
      R => phase0
    );
\phase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => '1',
      D => \phase_reg_n_0_[4]\,
      Q => \phase_reg_n_0_[3]\,
      R => phase0
    );
\phase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => '1',
      D => \phase_reg_n_0_[5]\,
      Q => \phase_reg_n_0_[4]\,
      R => phase0
    );
\phase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => '1',
      D => \phase_reg_n_0_[6]\,
      Q => \phase_reg_n_0_[5]\,
      R => phase0
    );
\phase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => '1',
      D => p_1_in,
      Q => \phase_reg_n_0_[6]\,
      R => phase0
    );
\phase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk_X8,
      CE => '1',
      D => \^q\(0),
      Q => p_1_in,
      R => phase0
    );
re_40_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fc_reset,
      I1 => re_40,
      O => re_40_i_1_n_0
    );
re_40_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => re_40_i_1_n_0,
      Q => re_40,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_calib is
  port (
    fc_calibrationreq : out STD_LOGIC;
    fc_l1a_for_calib : out STD_LOGIC;
    fire_reg : out STD_LOGIC;
    fc_calibrationl1a : out STD_LOGIC;
    fire_reg_0 : out STD_LOGIC;
    fire_reg_1 : out STD_LOGIC;
    fire_reg_2 : out STD_LOGIC;
    fire_reg_3 : out STD_LOGIC;
    fire_reg_4 : out STD_LOGIC;
    will_fire : out STD_LOGIC;
    pending_reg : out STD_LOGIC;
    will_fire_0 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_write[2].CtlReg_reg[2][24]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    fire_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    periodic_counter : in STD_LOGIC;
    fc_internaltest : in STD_LOGIC;
    fc_orbitsync : in STD_LOGIC;
    \counter_reg[7]\ : in STD_LOGIC_VECTOR ( 24 downto 0 );
    reset_40 : in STD_LOGIC;
    pending_reg_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    invalid_r_reg : in STD_LOGIC;
    \cmd_reg[2]\ : in STD_LOGIC;
    invalid_r_reg_0 : in STD_LOGIC;
    fc_orbitcountreset : in STD_LOGIC;
    fc_linkreset : in STD_LOGIC;
    fc_daqresync : in STD_LOGIC;
    fc_l1a : in STD_LOGIC;
    enable_periodic_calib : in STD_LOGIC;
    fire_reg_6 : in STD_LOGIC;
    link_daq_resync : in STD_LOGIC;
    link_reset_pending : in STD_LOGIC;
    veto_l1agen_A : in STD_LOGIC;
    veto_l1agen_B : in STD_LOGIC;
    nextos : in STD_LOGIC;
    periodic_counter0_carry_0 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    enable_calibrationl1a : in STD_LOGIC;
    fc_l1agen_A : in STD_LOGIC;
    fc_l1agen_B : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_calib : entity is "hgcal_fc_manager_calib";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_calib;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_calib is
  signal data0 : STD_LOGIC;
  signal \^fc_calibrationl1a\ : STD_LOGIC;
  signal \^fc_calibrationreq\ : STD_LOGIC;
  signal \^fc_l1a_for_calib\ : STD_LOGIC;
  signal periodic_counter0_carry_i_1_n_0 : STD_LOGIC;
  signal periodic_counter0_carry_i_2_n_0 : STD_LOGIC;
  signal periodic_counter0_carry_i_3_n_0 : STD_LOGIC;
  signal periodic_counter0_carry_i_4_n_0 : STD_LOGIC;
  signal periodic_counter0_carry_i_5_n_0 : STD_LOGIC;
  signal periodic_counter0_carry_i_6_n_0 : STD_LOGIC;
  signal periodic_counter0_carry_i_7_n_0 : STD_LOGIC;
  signal periodic_counter0_carry_n_2 : STD_LOGIC;
  signal periodic_counter0_carry_n_3 : STD_LOGIC;
  signal periodic_counter0_carry_n_4 : STD_LOGIC;
  signal periodic_counter0_carry_n_5 : STD_LOGIC;
  signal periodic_counter0_carry_n_6 : STD_LOGIC;
  signal periodic_counter0_carry_n_7 : STD_LOGIC;
  signal \periodic_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \periodic_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal periodic_counter_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \periodic_counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_10\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_11\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_12\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_13\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_14\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_15\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_8\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_3_n_9\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal req_periodic : STD_LOGIC;
  signal req_periodic_i_1_n_0 : STD_LOGIC;
  signal timer_l1_n_2 : STD_LOGIC;
  signal veto_l1 : STD_LOGIC;
  signal NLW_periodic_counter0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_periodic_counter0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_periodic_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_periodic_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
begin
  fc_calibrationl1a <= \^fc_calibrationl1a\;
  fc_calibrationreq <= \^fc_calibrationreq\;
  fc_l1a_for_calib <= \^fc_l1a_for_calib\;
periodic_counter0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => NLW_periodic_counter0_carry_CO_UNCONNECTED(7),
      CO(6) => data0,
      CO(5) => periodic_counter0_carry_n_2,
      CO(4) => periodic_counter0_carry_n_3,
      CO(3) => periodic_counter0_carry_n_4,
      CO(2) => periodic_counter0_carry_n_5,
      CO(1) => periodic_counter0_carry_n_6,
      CO(0) => periodic_counter0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_periodic_counter0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => '0',
      S(6) => periodic_counter0_carry_i_1_n_0,
      S(5) => periodic_counter0_carry_i_2_n_0,
      S(4) => periodic_counter0_carry_i_3_n_0,
      S(3) => periodic_counter0_carry_i_4_n_0,
      S(2) => periodic_counter0_carry_i_5_n_0,
      S(1) => periodic_counter0_carry_i_6_n_0,
      S(0) => periodic_counter0_carry_i_7_n_0
    );
periodic_counter0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => periodic_counter0_carry_0(19),
      I1 => periodic_counter_reg(19),
      I2 => periodic_counter0_carry_0(18),
      I3 => periodic_counter_reg(18),
      O => periodic_counter0_carry_i_1_n_0
    );
periodic_counter0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(15),
      I1 => periodic_counter0_carry_0(15),
      I2 => periodic_counter_reg(16),
      I3 => periodic_counter0_carry_0(16),
      I4 => periodic_counter0_carry_0(17),
      I5 => periodic_counter_reg(17),
      O => periodic_counter0_carry_i_2_n_0
    );
periodic_counter0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(12),
      I1 => periodic_counter0_carry_0(12),
      I2 => periodic_counter_reg(13),
      I3 => periodic_counter0_carry_0(13),
      I4 => periodic_counter0_carry_0(14),
      I5 => periodic_counter_reg(14),
      O => periodic_counter0_carry_i_3_n_0
    );
periodic_counter0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(9),
      I1 => periodic_counter0_carry_0(9),
      I2 => periodic_counter_reg(10),
      I3 => periodic_counter0_carry_0(10),
      I4 => periodic_counter0_carry_0(11),
      I5 => periodic_counter_reg(11),
      O => periodic_counter0_carry_i_4_n_0
    );
periodic_counter0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(6),
      I1 => periodic_counter0_carry_0(6),
      I2 => periodic_counter_reg(7),
      I3 => periodic_counter0_carry_0(7),
      I4 => periodic_counter0_carry_0(8),
      I5 => periodic_counter_reg(8),
      O => periodic_counter0_carry_i_5_n_0
    );
periodic_counter0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(3),
      I1 => periodic_counter0_carry_0(3),
      I2 => periodic_counter_reg(4),
      I3 => periodic_counter0_carry_0(4),
      I4 => periodic_counter0_carry_0(5),
      I5 => periodic_counter_reg(5),
      O => periodic_counter0_carry_i_6_n_0
    );
periodic_counter0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(2),
      I1 => periodic_counter0_carry_0(2),
      I2 => periodic_counter_reg(0),
      I3 => periodic_counter0_carry_0(0),
      I4 => periodic_counter0_carry_0(1),
      I5 => periodic_counter_reg(1),
      O => periodic_counter0_carry_i_7_n_0
    );
\periodic_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => periodic_counter,
      I1 => data0,
      I2 => reset_40,
      I3 => enable_periodic_calib,
      O => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => periodic_counter_reg(0),
      O => \periodic_counter[0]_i_6_n_0\
    );
\periodic_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_3_n_15\,
      Q => periodic_counter_reg(0),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[0]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \periodic_counter_reg[0]_i_3_n_0\,
      CO(6) => \periodic_counter_reg[0]_i_3_n_1\,
      CO(5) => \periodic_counter_reg[0]_i_3_n_2\,
      CO(4) => \periodic_counter_reg[0]_i_3_n_3\,
      CO(3) => \periodic_counter_reg[0]_i_3_n_4\,
      CO(2) => \periodic_counter_reg[0]_i_3_n_5\,
      CO(1) => \periodic_counter_reg[0]_i_3_n_6\,
      CO(0) => \periodic_counter_reg[0]_i_3_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \periodic_counter_reg[0]_i_3_n_8\,
      O(6) => \periodic_counter_reg[0]_i_3_n_9\,
      O(5) => \periodic_counter_reg[0]_i_3_n_10\,
      O(4) => \periodic_counter_reg[0]_i_3_n_11\,
      O(3) => \periodic_counter_reg[0]_i_3_n_12\,
      O(2) => \periodic_counter_reg[0]_i_3_n_13\,
      O(1) => \periodic_counter_reg[0]_i_3_n_14\,
      O(0) => \periodic_counter_reg[0]_i_3_n_15\,
      S(7 downto 1) => periodic_counter_reg(7 downto 1),
      S(0) => \periodic_counter[0]_i_6_n_0\
    );
\periodic_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1_n_13\,
      Q => periodic_counter_reg(10),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1_n_12\,
      Q => periodic_counter_reg(11),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1_n_11\,
      Q => periodic_counter_reg(12),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1_n_10\,
      Q => periodic_counter_reg(13),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1_n_9\,
      Q => periodic_counter_reg(14),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1_n_8\,
      Q => periodic_counter_reg(15),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[16]_i_1_n_15\,
      Q => periodic_counter_reg(16),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \periodic_counter_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_periodic_counter_reg[16]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \periodic_counter_reg[16]_i_1_n_5\,
      CO(1) => \periodic_counter_reg[16]_i_1_n_6\,
      CO(0) => \periodic_counter_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_periodic_counter_reg[16]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3) => \periodic_counter_reg[16]_i_1_n_12\,
      O(2) => \periodic_counter_reg[16]_i_1_n_13\,
      O(1) => \periodic_counter_reg[16]_i_1_n_14\,
      O(0) => \periodic_counter_reg[16]_i_1_n_15\,
      S(7 downto 4) => B"0000",
      S(3 downto 0) => periodic_counter_reg(19 downto 16)
    );
\periodic_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[16]_i_1_n_14\,
      Q => periodic_counter_reg(17),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[16]_i_1_n_13\,
      Q => periodic_counter_reg(18),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[16]_i_1_n_12\,
      Q => periodic_counter_reg(19),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_3_n_14\,
      Q => periodic_counter_reg(1),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_3_n_13\,
      Q => periodic_counter_reg(2),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_3_n_12\,
      Q => periodic_counter_reg(3),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_3_n_11\,
      Q => periodic_counter_reg(4),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_3_n_10\,
      Q => periodic_counter_reg(5),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_3_n_9\,
      Q => periodic_counter_reg(6),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_3_n_8\,
      Q => periodic_counter_reg(7),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1_n_15\,
      Q => periodic_counter_reg(8),
      R => \periodic_counter[0]_i_1_n_0\
    );
\periodic_counter_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \periodic_counter_reg[0]_i_3_n_0\,
      CI_TOP => '0',
      CO(7) => \periodic_counter_reg[8]_i_1_n_0\,
      CO(6) => \periodic_counter_reg[8]_i_1_n_1\,
      CO(5) => \periodic_counter_reg[8]_i_1_n_2\,
      CO(4) => \periodic_counter_reg[8]_i_1_n_3\,
      CO(3) => \periodic_counter_reg[8]_i_1_n_4\,
      CO(2) => \periodic_counter_reg[8]_i_1_n_5\,
      CO(1) => \periodic_counter_reg[8]_i_1_n_6\,
      CO(0) => \periodic_counter_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \periodic_counter_reg[8]_i_1_n_8\,
      O(6) => \periodic_counter_reg[8]_i_1_n_9\,
      O(5) => \periodic_counter_reg[8]_i_1_n_10\,
      O(4) => \periodic_counter_reg[8]_i_1_n_11\,
      O(3) => \periodic_counter_reg[8]_i_1_n_12\,
      O(2) => \periodic_counter_reg[8]_i_1_n_13\,
      O(1) => \periodic_counter_reg[8]_i_1_n_14\,
      O(0) => \periodic_counter_reg[8]_i_1_n_15\,
      S(7 downto 0) => periodic_counter_reg(15 downto 8)
    );
\periodic_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1_n_14\,
      Q => periodic_counter_reg(9),
      R => \periodic_counter[0]_i_1_n_0\
    );
req_periodic_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => reset_40,
      I1 => enable_periodic_calib,
      I2 => periodic_counter,
      I3 => data0,
      O => req_periodic_i_1_n_0
    );
req_periodic_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => req_periodic_i_1_n_0,
      Q => req_periodic,
      R => '0'
    );
timer_cr: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_14
     port map (
      Q(0) => Q(0),
      \cmd_reg[1]\ => timer_l1_n_2,
      \cmd_reg[2]\ => \cmd_reg[2]\,
      \cmd_reg[2]_0\ => \^fc_calibrationl1a\,
      \counter_reg[7]\(0) => \counter_reg[7]_1\(0),
      ext_lhc_clk => ext_lhc_clk,
      fc_daqresync => fc_daqresync,
      fc_internaltest => fc_internaltest,
      fc_l1a => fc_l1a,
      fc_linkreset => fc_linkreset,
      fc_orbitcountreset => fc_orbitcountreset,
      fc_orbitsync => fc_orbitsync,
      fire_reg_0 => \^fc_calibrationreq\,
      fire_reg_1 => fire_reg,
      fire_reg_2 => fire_reg_0,
      fire_reg_3 => fire_reg_1,
      fire_reg_4 => fire_reg_2,
      fire_reg_5 => fire_reg_3,
      fire_reg_6 => fire_reg_4,
      fire_reg_7(0) => fire_reg_5(0),
      fire_reg_8 => fire_reg_6,
      invalid_r_reg => \^fc_l1a_for_calib\,
      invalid_r_reg_0(12) => \counter_reg[7]\(24),
      invalid_r_reg_0(11 downto 0) => \counter_reg[7]\(11 downto 0),
      invalid_r_reg_1 => invalid_r_reg,
      invalid_r_reg_2 => invalid_r_reg_0,
      link_daq_resync => link_daq_resync,
      link_reset_pending => link_reset_pending,
      nextos => nextos,
      pending_i_3_0(11 downto 0) => pending_reg_0(11 downto 0),
      pending_reg_0 => pending_reg,
      req_periodic => req_periodic,
      reset_40 => reset_40,
      veto_l1 => veto_l1,
      veto_l1agen_A => veto_l1agen_A,
      veto_l1agen_B => veto_l1agen_B,
      will_fire => will_fire,
      will_fire_0 => will_fire_0
    );
timer_l1: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_15
     port map (
      D(0) => D(0),
      DI(0) => DI(0),
      S(0) => S(0),
      \counter_reg[7]\(12 downto 0) => \counter_reg[7]\(24 downto 12),
      \counter_reg[7]_0\(0) => \counter_reg[7]_0\(0),
      enable_calibrationl1a => enable_calibrationl1a,
      ext_lhc_clk => ext_lhc_clk,
      fc_calibrationl1a => \^fc_calibrationl1a\,
      fc_calibrationreq => \^fc_calibrationreq\,
      fc_l1agen_A => fc_l1agen_A,
      fc_l1agen_B => fc_l1agen_B,
      fc_orbitsync => fc_orbitsync,
      fire_reg_0 => \^fc_l1a_for_calib\,
      \gen_write[2].CtlReg_reg[2][24]\ => timer_l1_n_2,
      \gen_write[2].CtlReg_reg[2][24]_0\(0) => \gen_write[2].CtlReg_reg[2][24]\(0),
      pending_reg_0(11 downto 0) => pending_reg_0(11 downto 0),
      reset_40 => reset_40,
      veto_l1 => veto_l1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_orbitsync is
  port (
    nextos : out STD_LOGIC;
    fc_orbitsync : out STD_LOGIC;
    fc_orbitcountreset : out STD_LOGIC;
    fire_reg : out STD_LOGIC;
    fire_reg_0 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    fire_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    \start_sequence_40_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    reset_40 : in STD_LOGIC;
    enable_orbitsync : in STD_LOGIC;
    invalid_r_reg : in STD_LOGIC;
    fc_calibrationreq : in STD_LOGIC;
    fc_calibrationl1a : in STD_LOGIC;
    fc_internaltest : in STD_LOGIC;
    fc_l1a : in STD_LOGIC;
    fc_daqresync : in STD_LOGIC;
    invalid_r_reg_0 : in STD_LOGIC;
    fc_linkreset : in STD_LOGIC;
    \pending_i_3__2\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_orbitsync : entity is "hgcal_fc_manager_orbitsync";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_orbitsync;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_orbitsync is
  signal \^fc_orbitsync\ : STD_LOGIC;
  signal latched_req : STD_LOGIC;
  signal pending0 : STD_LOGIC;
  signal timer_ocr_n_3 : STD_LOGIC;
begin
  fc_orbitsync <= \^fc_orbitsync\;
timer_ocr: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed
     port map (
      D(0) => D(0),
      Q(0) => Q(0),
      S(0) => S(0),
      enable_orbitsync => enable_orbitsync,
      ext_lhc_clk => ext_lhc_clk,
      fc_daqresync => fc_daqresync,
      fc_internaltest => fc_internaltest,
      fc_l1a => fc_l1a,
      fc_linkreset => fc_linkreset,
      fire_reg_0 => fc_orbitcountreset,
      fire_reg_1 => fire_reg_0,
      fire_reg_2 => timer_ocr_n_3,
      invalid_r_reg => \^fc_orbitsync\,
      invalid_r_reg_0 => invalid_r_reg_0,
      latched_req => latched_req,
      pending0 => pending0,
      reset_40 => reset_40
    );
timer_os: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_11
     port map (
      \counter_reg[7]\(0) => \counter_reg[7]\(0),
      enable_orbitsync => enable_orbitsync,
      ext_lhc_clk => ext_lhc_clk,
      fc_calibrationl1a => fc_calibrationl1a,
      fc_calibrationreq => fc_calibrationreq,
      fc_internaltest => fc_internaltest,
      fire_reg_0 => \^fc_orbitsync\,
      fire_reg_1 => fire_reg,
      fire_reg_2(0) => fire_reg_1(0),
      invalid_r_reg => timer_ocr_n_3,
      invalid_r_reg_0 => invalid_r_reg,
      latched_req => latched_req,
      nextos => nextos,
      pending0 => pending0,
      \pending_i_3__2_0\(11 downto 0) => \pending_i_3__2\(11 downto 0),
      reset_40 => reset_40,
      \start_sequence_40_reg[11]_0\(11 downto 0) => \start_sequence_40_reg[11]\(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a is
  port (
    veto_l1agen_A : out STD_LOGIC;
    fc_l1agen_A : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    periodic_counter : in STD_LOGIC;
    reset_40 : in STD_LOGIC;
    periodic_counter0_carry_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    enable_l1agen_A : in STD_LOGIC;
    \pending_i_3__0\ : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a : entity is "hgcal_fc_manager_periodic_l1a";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a is
  signal \periodic_counter0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \periodic_counter0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \periodic_counter0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \periodic_counter0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \periodic_counter0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \periodic_counter0_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \periodic_counter0_carry_i_7__0_n_0\ : STD_LOGIC;
  signal periodic_counter0_carry_n_1 : STD_LOGIC;
  signal periodic_counter0_carry_n_2 : STD_LOGIC;
  signal periodic_counter0_carry_n_3 : STD_LOGIC;
  signal periodic_counter0_carry_n_4 : STD_LOGIC;
  signal periodic_counter0_carry_n_5 : STD_LOGIC;
  signal periodic_counter0_carry_n_6 : STD_LOGIC;
  signal periodic_counter0_carry_n_7 : STD_LOGIC;
  signal \periodic_counter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \periodic_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal periodic_counter_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \periodic_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__0_n_12\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__0_n_13\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__0_n_14\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__0_n_15\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_10\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_11\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_12\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_13\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_14\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_15\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_8\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__0_n_9\ : STD_LOGIC;
  signal req_periodic : STD_LOGIC;
  signal \req_periodic_i_1__0_n_0\ : STD_LOGIC;
  signal NLW_periodic_counter0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_periodic_counter0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_periodic_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_periodic_counter_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
begin
periodic_counter0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => NLW_periodic_counter0_carry_CO_UNCONNECTED(7),
      CO(6) => periodic_counter0_carry_n_1,
      CO(5) => periodic_counter0_carry_n_2,
      CO(4) => periodic_counter0_carry_n_3,
      CO(3) => periodic_counter0_carry_n_4,
      CO(2) => periodic_counter0_carry_n_5,
      CO(1) => periodic_counter0_carry_n_6,
      CO(0) => periodic_counter0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_periodic_counter0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => '0',
      S(6) => \periodic_counter0_carry_i_1__0_n_0\,
      S(5) => \periodic_counter0_carry_i_2__0_n_0\,
      S(4) => \periodic_counter0_carry_i_3__0_n_0\,
      S(3) => \periodic_counter0_carry_i_4__0_n_0\,
      S(2) => \periodic_counter0_carry_i_5__0_n_0\,
      S(1) => \periodic_counter0_carry_i_6__0_n_0\,
      S(0) => \periodic_counter0_carry_i_7__0_n_0\
    );
\periodic_counter0_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => periodic_counter0_carry_0(31),
      I1 => periodic_counter_reg(19),
      I2 => periodic_counter0_carry_0(30),
      I3 => periodic_counter_reg(18),
      O => \periodic_counter0_carry_i_1__0_n_0\
    );
\periodic_counter0_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(17),
      I1 => periodic_counter0_carry_0(29),
      I2 => periodic_counter_reg(15),
      I3 => periodic_counter0_carry_0(27),
      I4 => periodic_counter0_carry_0(28),
      I5 => periodic_counter_reg(16),
      O => \periodic_counter0_carry_i_2__0_n_0\
    );
\periodic_counter0_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(12),
      I1 => periodic_counter0_carry_0(24),
      I2 => periodic_counter_reg(13),
      I3 => periodic_counter0_carry_0(25),
      I4 => periodic_counter0_carry_0(26),
      I5 => periodic_counter_reg(14),
      O => \periodic_counter0_carry_i_3__0_n_0\
    );
\periodic_counter0_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(9),
      I1 => periodic_counter0_carry_0(21),
      I2 => periodic_counter_reg(10),
      I3 => periodic_counter0_carry_0(22),
      I4 => periodic_counter0_carry_0(23),
      I5 => periodic_counter_reg(11),
      O => \periodic_counter0_carry_i_4__0_n_0\
    );
\periodic_counter0_carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(6),
      I1 => periodic_counter0_carry_0(18),
      I2 => periodic_counter_reg(7),
      I3 => periodic_counter0_carry_0(19),
      I4 => periodic_counter0_carry_0(20),
      I5 => periodic_counter_reg(8),
      O => \periodic_counter0_carry_i_5__0_n_0\
    );
\periodic_counter0_carry_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(3),
      I1 => periodic_counter0_carry_0(15),
      I2 => periodic_counter_reg(4),
      I3 => periodic_counter0_carry_0(16),
      I4 => periodic_counter0_carry_0(17),
      I5 => periodic_counter_reg(5),
      O => \periodic_counter0_carry_i_6__0_n_0\
    );
\periodic_counter0_carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(2),
      I1 => periodic_counter0_carry_0(14),
      I2 => periodic_counter_reg(0),
      I3 => periodic_counter0_carry_0(12),
      I4 => periodic_counter0_carry_0(13),
      I5 => periodic_counter_reg(1),
      O => \periodic_counter0_carry_i_7__0_n_0\
    );
\periodic_counter[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => periodic_counter,
      I1 => periodic_counter0_carry_n_1,
      I2 => reset_40,
      I3 => enable_l1agen_A,
      O => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => periodic_counter_reg(0),
      O => \periodic_counter[0]_i_3_n_0\
    );
\periodic_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_2_n_15\,
      Q => periodic_counter_reg(0),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \periodic_counter_reg[0]_i_2_n_0\,
      CO(6) => \periodic_counter_reg[0]_i_2_n_1\,
      CO(5) => \periodic_counter_reg[0]_i_2_n_2\,
      CO(4) => \periodic_counter_reg[0]_i_2_n_3\,
      CO(3) => \periodic_counter_reg[0]_i_2_n_4\,
      CO(2) => \periodic_counter_reg[0]_i_2_n_5\,
      CO(1) => \periodic_counter_reg[0]_i_2_n_6\,
      CO(0) => \periodic_counter_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \periodic_counter_reg[0]_i_2_n_8\,
      O(6) => \periodic_counter_reg[0]_i_2_n_9\,
      O(5) => \periodic_counter_reg[0]_i_2_n_10\,
      O(4) => \periodic_counter_reg[0]_i_2_n_11\,
      O(3) => \periodic_counter_reg[0]_i_2_n_12\,
      O(2) => \periodic_counter_reg[0]_i_2_n_13\,
      O(1) => \periodic_counter_reg[0]_i_2_n_14\,
      O(0) => \periodic_counter_reg[0]_i_2_n_15\,
      S(7 downto 1) => periodic_counter_reg(7 downto 1),
      S(0) => \periodic_counter[0]_i_3_n_0\
    );
\periodic_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1__0_n_13\,
      Q => periodic_counter_reg(10),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1__0_n_12\,
      Q => periodic_counter_reg(11),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1__0_n_11\,
      Q => periodic_counter_reg(12),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1__0_n_10\,
      Q => periodic_counter_reg(13),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1__0_n_9\,
      Q => periodic_counter_reg(14),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1__0_n_8\,
      Q => periodic_counter_reg(15),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[16]_i_1__0_n_15\,
      Q => periodic_counter_reg(16),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \periodic_counter_reg[8]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_periodic_counter_reg[16]_i_1__0_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \periodic_counter_reg[16]_i_1__0_n_5\,
      CO(1) => \periodic_counter_reg[16]_i_1__0_n_6\,
      CO(0) => \periodic_counter_reg[16]_i_1__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_periodic_counter_reg[16]_i_1__0_O_UNCONNECTED\(7 downto 4),
      O(3) => \periodic_counter_reg[16]_i_1__0_n_12\,
      O(2) => \periodic_counter_reg[16]_i_1__0_n_13\,
      O(1) => \periodic_counter_reg[16]_i_1__0_n_14\,
      O(0) => \periodic_counter_reg[16]_i_1__0_n_15\,
      S(7 downto 4) => B"0000",
      S(3 downto 0) => periodic_counter_reg(19 downto 16)
    );
\periodic_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[16]_i_1__0_n_14\,
      Q => periodic_counter_reg(17),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[16]_i_1__0_n_13\,
      Q => periodic_counter_reg(18),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[16]_i_1__0_n_12\,
      Q => periodic_counter_reg(19),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_2_n_14\,
      Q => periodic_counter_reg(1),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_2_n_13\,
      Q => periodic_counter_reg(2),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_2_n_12\,
      Q => periodic_counter_reg(3),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_2_n_11\,
      Q => periodic_counter_reg(4),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_2_n_10\,
      Q => periodic_counter_reg(5),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_2_n_9\,
      Q => periodic_counter_reg(6),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[0]_i_2_n_8\,
      Q => periodic_counter_reg(7),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1__0_n_15\,
      Q => periodic_counter_reg(8),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\periodic_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \periodic_counter_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \periodic_counter_reg[8]_i_1__0_n_0\,
      CO(6) => \periodic_counter_reg[8]_i_1__0_n_1\,
      CO(5) => \periodic_counter_reg[8]_i_1__0_n_2\,
      CO(4) => \periodic_counter_reg[8]_i_1__0_n_3\,
      CO(3) => \periodic_counter_reg[8]_i_1__0_n_4\,
      CO(2) => \periodic_counter_reg[8]_i_1__0_n_5\,
      CO(1) => \periodic_counter_reg[8]_i_1__0_n_6\,
      CO(0) => \periodic_counter_reg[8]_i_1__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \periodic_counter_reg[8]_i_1__0_n_8\,
      O(6) => \periodic_counter_reg[8]_i_1__0_n_9\,
      O(5) => \periodic_counter_reg[8]_i_1__0_n_10\,
      O(4) => \periodic_counter_reg[8]_i_1__0_n_11\,
      O(3) => \periodic_counter_reg[8]_i_1__0_n_12\,
      O(2) => \periodic_counter_reg[8]_i_1__0_n_13\,
      O(1) => \periodic_counter_reg[8]_i_1__0_n_14\,
      O(0) => \periodic_counter_reg[8]_i_1__0_n_15\,
      S(7 downto 0) => periodic_counter_reg(15 downto 8)
    );
\periodic_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => periodic_counter,
      D => \periodic_counter_reg[8]_i_1__0_n_14\,
      Q => periodic_counter_reg(9),
      R => \periodic_counter[0]_i_1__0_n_0\
    );
\req_periodic_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => reset_40,
      I1 => enable_l1agen_A,
      I2 => periodic_counter,
      I3 => periodic_counter0_carry_n_1,
      O => \req_periodic_i_1__0_n_0\
    );
req_periodic_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \req_periodic_i_1__0_n_0\,
      Q => req_periodic,
      R => '0'
    );
timer_l1: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_13
     port map (
      Q(0) => Q(0),
      ext_lhc_clk => ext_lhc_clk,
      fc_l1agen_A => fc_l1agen_A,
      \pending_i_3__0_0\(11 downto 0) => \pending_i_3__0\(11 downto 0),
      req_periodic => req_periodic,
      reset_40 => reset_40,
      \start_sequence_40_reg[11]_0\(11 downto 0) => periodic_counter0_carry_0(11 downto 0),
      veto_l1agen_A => veto_l1agen_A
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a_8 is
  port (
    veto_l1agen_B : out STD_LOGIC;
    fc_l1agen_B : out STD_LOGIC;
    periodic_counter : out STD_LOGIC;
    fire_reg : out STD_LOGIC;
    fc_l1a : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_lhc_clk : in STD_LOGIC;
    reset_40 : in STD_LOGIC;
    periodic_counter0_carry_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    enable_l1agen_B : in STD_LOGIC;
    pending_reg : in STD_LOGIC_VECTOR ( 11 downto 0 );
    fc_internaltest : in STD_LOGIC;
    fc_daqresync : in STD_LOGIC;
    fc_orbitcountreset : in STD_LOGIC;
    fc_linkreset : in STD_LOGIC;
    fc_l1agen_A : in STD_LOGIC;
    fc_l1a_for_calib : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a_8 : entity is "hgcal_fc_manager_periodic_l1a";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a_8;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a_8 is
  signal \^periodic_counter\ : STD_LOGIC;
  signal \periodic_counter0_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \periodic_counter0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \periodic_counter0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \periodic_counter0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \periodic_counter0_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \periodic_counter0_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \periodic_counter0_carry_i_7__1_n_0\ : STD_LOGIC;
  signal periodic_counter0_carry_n_1 : STD_LOGIC;
  signal periodic_counter0_carry_n_2 : STD_LOGIC;
  signal periodic_counter0_carry_n_3 : STD_LOGIC;
  signal periodic_counter0_carry_n_4 : STD_LOGIC;
  signal periodic_counter0_carry_n_5 : STD_LOGIC;
  signal periodic_counter0_carry_n_6 : STD_LOGIC;
  signal periodic_counter0_carry_n_7 : STD_LOGIC;
  signal \periodic_counter[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \periodic_counter[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \periodic_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \periodic_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal periodic_counter_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \periodic_counter_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_10\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_11\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_12\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_13\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_14\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_15\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_8\ : STD_LOGIC;
  signal \periodic_counter_reg[0]_i_2__0_n_9\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__1_n_12\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__1_n_13\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__1_n_14\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__1_n_15\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \periodic_counter_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_10\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_11\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_12\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_13\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_14\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_15\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_8\ : STD_LOGIC;
  signal \periodic_counter_reg[8]_i_1__1_n_9\ : STD_LOGIC;
  signal req_periodic : STD_LOGIC;
  signal \req_periodic_i_1__1_n_0\ : STD_LOGIC;
  signal NLW_periodic_counter0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_periodic_counter0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_periodic_counter_reg[16]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_periodic_counter_reg[16]_i_1__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
begin
  periodic_counter <= \^periodic_counter\;
periodic_counter0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => NLW_periodic_counter0_carry_CO_UNCONNECTED(7),
      CO(6) => periodic_counter0_carry_n_1,
      CO(5) => periodic_counter0_carry_n_2,
      CO(4) => periodic_counter0_carry_n_3,
      CO(3) => periodic_counter0_carry_n_4,
      CO(2) => periodic_counter0_carry_n_5,
      CO(1) => periodic_counter0_carry_n_6,
      CO(0) => periodic_counter0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_periodic_counter0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => '0',
      S(6) => \periodic_counter0_carry_i_1__1_n_0\,
      S(5) => \periodic_counter0_carry_i_2__1_n_0\,
      S(4) => \periodic_counter0_carry_i_3__1_n_0\,
      S(3) => \periodic_counter0_carry_i_4__1_n_0\,
      S(2) => \periodic_counter0_carry_i_5__1_n_0\,
      S(1) => \periodic_counter0_carry_i_6__1_n_0\,
      S(0) => \periodic_counter0_carry_i_7__1_n_0\
    );
\periodic_counter0_carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => periodic_counter0_carry_0(31),
      I1 => periodic_counter_reg(19),
      I2 => periodic_counter0_carry_0(30),
      I3 => periodic_counter_reg(18),
      O => \periodic_counter0_carry_i_1__1_n_0\
    );
\periodic_counter0_carry_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(15),
      I1 => periodic_counter0_carry_0(27),
      I2 => periodic_counter_reg(16),
      I3 => periodic_counter0_carry_0(28),
      I4 => periodic_counter0_carry_0(29),
      I5 => periodic_counter_reg(17),
      O => \periodic_counter0_carry_i_2__1_n_0\
    );
\periodic_counter0_carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(13),
      I1 => periodic_counter0_carry_0(25),
      I2 => periodic_counter_reg(12),
      I3 => periodic_counter0_carry_0(24),
      I4 => periodic_counter0_carry_0(26),
      I5 => periodic_counter_reg(14),
      O => \periodic_counter0_carry_i_3__1_n_0\
    );
\periodic_counter0_carry_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(10),
      I1 => periodic_counter0_carry_0(22),
      I2 => periodic_counter_reg(9),
      I3 => periodic_counter0_carry_0(21),
      I4 => periodic_counter0_carry_0(23),
      I5 => periodic_counter_reg(11),
      O => \periodic_counter0_carry_i_4__1_n_0\
    );
\periodic_counter0_carry_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(6),
      I1 => periodic_counter0_carry_0(18),
      I2 => periodic_counter_reg(7),
      I3 => periodic_counter0_carry_0(19),
      I4 => periodic_counter0_carry_0(20),
      I5 => periodic_counter_reg(8),
      O => \periodic_counter0_carry_i_5__1_n_0\
    );
\periodic_counter0_carry_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(3),
      I1 => periodic_counter0_carry_0(15),
      I2 => periodic_counter_reg(4),
      I3 => periodic_counter0_carry_0(16),
      I4 => periodic_counter0_carry_0(17),
      I5 => periodic_counter_reg(5),
      O => \periodic_counter0_carry_i_6__1_n_0\
    );
\periodic_counter0_carry_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => periodic_counter_reg(1),
      I1 => periodic_counter0_carry_0(13),
      I2 => periodic_counter_reg(0),
      I3 => periodic_counter0_carry_0(12),
      I4 => periodic_counter0_carry_0(14),
      I5 => periodic_counter_reg(2),
      O => \periodic_counter0_carry_i_7__1_n_0\
    );
\periodic_counter[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => \^periodic_counter\,
      I1 => periodic_counter0_carry_n_1,
      I2 => reset_40,
      I3 => enable_l1agen_B,
      O => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \periodic_counter[0]_i_4_n_0\,
      I1 => pending_reg(7),
      I2 => pending_reg(6),
      I3 => pending_reg(5),
      I4 => pending_reg(4),
      I5 => \periodic_counter[0]_i_5_n_0\,
      O => \^periodic_counter\
    );
\periodic_counter[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => periodic_counter_reg(0),
      O => \periodic_counter[0]_i_3__0_n_0\
    );
\periodic_counter[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pending_reg(1),
      I1 => pending_reg(0),
      I2 => pending_reg(3),
      I3 => pending_reg(2),
      O => \periodic_counter[0]_i_4_n_0\
    );
\periodic_counter[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pending_reg(11),
      I1 => pending_reg(10),
      I2 => pending_reg(9),
      I3 => pending_reg(8),
      O => \periodic_counter[0]_i_5_n_0\
    );
\periodic_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[0]_i_2__0_n_15\,
      Q => periodic_counter_reg(0),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \periodic_counter_reg[0]_i_2__0_n_0\,
      CO(6) => \periodic_counter_reg[0]_i_2__0_n_1\,
      CO(5) => \periodic_counter_reg[0]_i_2__0_n_2\,
      CO(4) => \periodic_counter_reg[0]_i_2__0_n_3\,
      CO(3) => \periodic_counter_reg[0]_i_2__0_n_4\,
      CO(2) => \periodic_counter_reg[0]_i_2__0_n_5\,
      CO(1) => \periodic_counter_reg[0]_i_2__0_n_6\,
      CO(0) => \periodic_counter_reg[0]_i_2__0_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \periodic_counter_reg[0]_i_2__0_n_8\,
      O(6) => \periodic_counter_reg[0]_i_2__0_n_9\,
      O(5) => \periodic_counter_reg[0]_i_2__0_n_10\,
      O(4) => \periodic_counter_reg[0]_i_2__0_n_11\,
      O(3) => \periodic_counter_reg[0]_i_2__0_n_12\,
      O(2) => \periodic_counter_reg[0]_i_2__0_n_13\,
      O(1) => \periodic_counter_reg[0]_i_2__0_n_14\,
      O(0) => \periodic_counter_reg[0]_i_2__0_n_15\,
      S(7 downto 1) => periodic_counter_reg(7 downto 1),
      S(0) => \periodic_counter[0]_i_3__0_n_0\
    );
\periodic_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[8]_i_1__1_n_13\,
      Q => periodic_counter_reg(10),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[8]_i_1__1_n_12\,
      Q => periodic_counter_reg(11),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[8]_i_1__1_n_11\,
      Q => periodic_counter_reg(12),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[8]_i_1__1_n_10\,
      Q => periodic_counter_reg(13),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[8]_i_1__1_n_9\,
      Q => periodic_counter_reg(14),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[8]_i_1__1_n_8\,
      Q => periodic_counter_reg(15),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[16]_i_1__1_n_15\,
      Q => periodic_counter_reg(16),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[16]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \periodic_counter_reg[8]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_periodic_counter_reg[16]_i_1__1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \periodic_counter_reg[16]_i_1__1_n_5\,
      CO(1) => \periodic_counter_reg[16]_i_1__1_n_6\,
      CO(0) => \periodic_counter_reg[16]_i_1__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_periodic_counter_reg[16]_i_1__1_O_UNCONNECTED\(7 downto 4),
      O(3) => \periodic_counter_reg[16]_i_1__1_n_12\,
      O(2) => \periodic_counter_reg[16]_i_1__1_n_13\,
      O(1) => \periodic_counter_reg[16]_i_1__1_n_14\,
      O(0) => \periodic_counter_reg[16]_i_1__1_n_15\,
      S(7 downto 4) => B"0000",
      S(3 downto 0) => periodic_counter_reg(19 downto 16)
    );
\periodic_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[16]_i_1__1_n_14\,
      Q => periodic_counter_reg(17),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[16]_i_1__1_n_13\,
      Q => periodic_counter_reg(18),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[16]_i_1__1_n_12\,
      Q => periodic_counter_reg(19),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[0]_i_2__0_n_14\,
      Q => periodic_counter_reg(1),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[0]_i_2__0_n_13\,
      Q => periodic_counter_reg(2),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[0]_i_2__0_n_12\,
      Q => periodic_counter_reg(3),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[0]_i_2__0_n_11\,
      Q => periodic_counter_reg(4),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[0]_i_2__0_n_10\,
      Q => periodic_counter_reg(5),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[0]_i_2__0_n_9\,
      Q => periodic_counter_reg(6),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[0]_i_2__0_n_8\,
      Q => periodic_counter_reg(7),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[8]_i_1__1_n_15\,
      Q => periodic_counter_reg(8),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\periodic_counter_reg[8]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \periodic_counter_reg[0]_i_2__0_n_0\,
      CI_TOP => '0',
      CO(7) => \periodic_counter_reg[8]_i_1__1_n_0\,
      CO(6) => \periodic_counter_reg[8]_i_1__1_n_1\,
      CO(5) => \periodic_counter_reg[8]_i_1__1_n_2\,
      CO(4) => \periodic_counter_reg[8]_i_1__1_n_3\,
      CO(3) => \periodic_counter_reg[8]_i_1__1_n_4\,
      CO(2) => \periodic_counter_reg[8]_i_1__1_n_5\,
      CO(1) => \periodic_counter_reg[8]_i_1__1_n_6\,
      CO(0) => \periodic_counter_reg[8]_i_1__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \periodic_counter_reg[8]_i_1__1_n_8\,
      O(6) => \periodic_counter_reg[8]_i_1__1_n_9\,
      O(5) => \periodic_counter_reg[8]_i_1__1_n_10\,
      O(4) => \periodic_counter_reg[8]_i_1__1_n_11\,
      O(3) => \periodic_counter_reg[8]_i_1__1_n_12\,
      O(2) => \periodic_counter_reg[8]_i_1__1_n_13\,
      O(1) => \periodic_counter_reg[8]_i_1__1_n_14\,
      O(0) => \periodic_counter_reg[8]_i_1__1_n_15\,
      S(7 downto 0) => periodic_counter_reg(15 downto 8)
    );
\periodic_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => \^periodic_counter\,
      D => \periodic_counter_reg[8]_i_1__1_n_14\,
      Q => periodic_counter_reg(9),
      R => \periodic_counter[0]_i_1__1_n_0\
    );
\req_periodic_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => reset_40,
      I1 => enable_l1agen_B,
      I2 => \^periodic_counter\,
      I3 => periodic_counter0_carry_n_1,
      O => \req_periodic_i_1__1_n_0\
    );
req_periodic_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \req_periodic_i_1__1_n_0\,
      Q => req_periodic,
      R => '0'
    );
timer_l1: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_12
     port map (
      DI(0) => DI(0),
      Q(0) => Q(0),
      ext_lhc_clk => ext_lhc_clk,
      fc_daqresync => fc_daqresync,
      fc_internaltest => fc_internaltest,
      fc_l1a => fc_l1a,
      fc_l1a_for_calib => fc_l1a_for_calib,
      fc_l1agen_A => fc_l1agen_A,
      fc_linkreset => fc_linkreset,
      fc_orbitcountreset => fc_orbitcountreset,
      fire_reg_0 => fc_l1agen_B,
      fire_reg_1 => fire_reg,
      pending_reg_0(11 downto 0) => pending_reg(11 downto 0),
      req_periodic => req_periodic,
      reset_40 => reset_40,
      \start_sequence_40_reg[11]_0\(11 downto 0) => periodic_counter0_carry_0(11 downto 0),
      veto_l1agen_B => veto_l1agen_B
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_hgcal_fc_manager is
  port (
    enable_fc : out STD_LOGIC;
    fc_debug_non_idle_now : out STD_LOGIC;
    \cmd_reg[3]\ : out STD_LOGIC;
    \cmd_reg[2]\ : out STD_LOGIC;
    \cmd_reg[1]\ : out STD_LOGIC;
    \cmd_reg[0]\ : out STD_LOGIC;
    \phase_reg[0]\ : out STD_LOGIC;
    \io_r_data_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ext_lhc_clk : in STD_LOGIC;
    fc_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \latch_fast_control_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_write[1].CtlReg_reg[1][31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \io_r_data_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_write[0].CtlReg_reg[0][1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_hgcal_fc_manager : entity is "hgcal_fc_manager";
end tester_fastcontrol_axi_0_0_hgcal_fc_manager;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_hgcal_fc_manager is
  signal bx : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \bx[11]_i_2_n_0\ : STD_LOGIC;
  signal \bx[11]_i_3_n_0\ : STD_LOGIC;
  signal \bx[11]_i_4_n_0\ : STD_LOGIC;
  signal \bx[11]_i_5_n_0\ : STD_LOGIC;
  signal \bx[9]_i_2_n_0\ : STD_LOGIC;
  signal bx_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal bx_target : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal calib_ctl_n_10 : STD_LOGIC;
  signal calib_ctl_n_12 : STD_LOGIC;
  signal calib_ctl_n_13 : STD_LOGIC;
  signal calib_ctl_n_14 : STD_LOGIC;
  signal calib_ctl_n_15 : STD_LOGIC;
  signal calib_ctl_n_2 : STD_LOGIC;
  signal calib_ctl_n_4 : STD_LOGIC;
  signal calib_ctl_n_5 : STD_LOGIC;
  signal calib_ctl_n_6 : STD_LOGIC;
  signal calib_ctl_n_7 : STD_LOGIC;
  signal calib_ctl_n_8 : STD_LOGIC;
  signal calib_l1a_as_normal : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal count_cl1_n_1 : STD_LOGIC;
  signal count_cl1_n_10 : STD_LOGIC;
  signal count_cl1_n_11 : STD_LOGIC;
  signal count_cl1_n_12 : STD_LOGIC;
  signal count_cl1_n_13 : STD_LOGIC;
  signal count_cl1_n_14 : STD_LOGIC;
  signal count_cl1_n_15 : STD_LOGIC;
  signal count_cl1_n_16 : STD_LOGIC;
  signal count_cl1_n_17 : STD_LOGIC;
  signal count_cl1_n_18 : STD_LOGIC;
  signal count_cl1_n_19 : STD_LOGIC;
  signal count_cl1_n_2 : STD_LOGIC;
  signal count_cl1_n_20 : STD_LOGIC;
  signal count_cl1_n_21 : STD_LOGIC;
  signal count_cl1_n_22 : STD_LOGIC;
  signal count_cl1_n_23 : STD_LOGIC;
  signal count_cl1_n_24 : STD_LOGIC;
  signal count_cl1_n_25 : STD_LOGIC;
  signal count_cl1_n_26 : STD_LOGIC;
  signal count_cl1_n_27 : STD_LOGIC;
  signal count_cl1_n_28 : STD_LOGIC;
  signal count_cl1_n_29 : STD_LOGIC;
  signal count_cl1_n_3 : STD_LOGIC;
  signal count_cl1_n_30 : STD_LOGIC;
  signal count_cl1_n_31 : STD_LOGIC;
  signal count_cl1_n_32 : STD_LOGIC;
  signal count_cl1_n_4 : STD_LOGIC;
  signal count_cl1_n_5 : STD_LOGIC;
  signal count_cl1_n_6 : STD_LOGIC;
  signal count_cl1_n_7 : STD_LOGIC;
  signal count_cl1_n_8 : STD_LOGIC;
  signal count_cl1_n_9 : STD_LOGIC;
  signal count_cr_n_1 : STD_LOGIC;
  signal count_cr_n_10 : STD_LOGIC;
  signal count_cr_n_11 : STD_LOGIC;
  signal count_cr_n_12 : STD_LOGIC;
  signal count_cr_n_13 : STD_LOGIC;
  signal count_cr_n_14 : STD_LOGIC;
  signal count_cr_n_15 : STD_LOGIC;
  signal count_cr_n_16 : STD_LOGIC;
  signal count_cr_n_17 : STD_LOGIC;
  signal count_cr_n_18 : STD_LOGIC;
  signal count_cr_n_19 : STD_LOGIC;
  signal count_cr_n_2 : STD_LOGIC;
  signal count_cr_n_20 : STD_LOGIC;
  signal count_cr_n_21 : STD_LOGIC;
  signal count_cr_n_22 : STD_LOGIC;
  signal count_cr_n_23 : STD_LOGIC;
  signal count_cr_n_24 : STD_LOGIC;
  signal count_cr_n_25 : STD_LOGIC;
  signal count_cr_n_26 : STD_LOGIC;
  signal count_cr_n_27 : STD_LOGIC;
  signal count_cr_n_28 : STD_LOGIC;
  signal count_cr_n_29 : STD_LOGIC;
  signal count_cr_n_3 : STD_LOGIC;
  signal count_cr_n_30 : STD_LOGIC;
  signal count_cr_n_31 : STD_LOGIC;
  signal count_cr_n_32 : STD_LOGIC;
  signal count_cr_n_4 : STD_LOGIC;
  signal count_cr_n_5 : STD_LOGIC;
  signal count_cr_n_6 : STD_LOGIC;
  signal count_cr_n_7 : STD_LOGIC;
  signal count_cr_n_8 : STD_LOGIC;
  signal count_cr_n_9 : STD_LOGIC;
  signal count_ds_n_1 : STD_LOGIC;
  signal count_ds_n_10 : STD_LOGIC;
  signal count_ds_n_11 : STD_LOGIC;
  signal count_ds_n_12 : STD_LOGIC;
  signal count_ds_n_13 : STD_LOGIC;
  signal count_ds_n_14 : STD_LOGIC;
  signal count_ds_n_15 : STD_LOGIC;
  signal count_ds_n_16 : STD_LOGIC;
  signal count_ds_n_17 : STD_LOGIC;
  signal count_ds_n_18 : STD_LOGIC;
  signal count_ds_n_19 : STD_LOGIC;
  signal count_ds_n_2 : STD_LOGIC;
  signal count_ds_n_20 : STD_LOGIC;
  signal count_ds_n_21 : STD_LOGIC;
  signal count_ds_n_22 : STD_LOGIC;
  signal count_ds_n_23 : STD_LOGIC;
  signal count_ds_n_24 : STD_LOGIC;
  signal count_ds_n_25 : STD_LOGIC;
  signal count_ds_n_26 : STD_LOGIC;
  signal count_ds_n_27 : STD_LOGIC;
  signal count_ds_n_28 : STD_LOGIC;
  signal count_ds_n_29 : STD_LOGIC;
  signal count_ds_n_3 : STD_LOGIC;
  signal count_ds_n_30 : STD_LOGIC;
  signal count_ds_n_31 : STD_LOGIC;
  signal count_ds_n_32 : STD_LOGIC;
  signal count_ds_n_4 : STD_LOGIC;
  signal count_ds_n_5 : STD_LOGIC;
  signal count_ds_n_6 : STD_LOGIC;
  signal count_ds_n_7 : STD_LOGIC;
  signal count_ds_n_8 : STD_LOGIC;
  signal count_ds_n_9 : STD_LOGIC;
  signal count_it_n_1 : STD_LOGIC;
  signal count_it_n_10 : STD_LOGIC;
  signal count_it_n_11 : STD_LOGIC;
  signal count_it_n_12 : STD_LOGIC;
  signal count_it_n_13 : STD_LOGIC;
  signal count_it_n_14 : STD_LOGIC;
  signal count_it_n_15 : STD_LOGIC;
  signal count_it_n_16 : STD_LOGIC;
  signal count_it_n_17 : STD_LOGIC;
  signal count_it_n_18 : STD_LOGIC;
  signal count_it_n_19 : STD_LOGIC;
  signal count_it_n_2 : STD_LOGIC;
  signal count_it_n_20 : STD_LOGIC;
  signal count_it_n_21 : STD_LOGIC;
  signal count_it_n_22 : STD_LOGIC;
  signal count_it_n_23 : STD_LOGIC;
  signal count_it_n_24 : STD_LOGIC;
  signal count_it_n_25 : STD_LOGIC;
  signal count_it_n_26 : STD_LOGIC;
  signal count_it_n_27 : STD_LOGIC;
  signal count_it_n_28 : STD_LOGIC;
  signal count_it_n_29 : STD_LOGIC;
  signal count_it_n_3 : STD_LOGIC;
  signal count_it_n_30 : STD_LOGIC;
  signal count_it_n_31 : STD_LOGIC;
  signal count_it_n_32 : STD_LOGIC;
  signal count_it_n_4 : STD_LOGIC;
  signal count_it_n_5 : STD_LOGIC;
  signal count_it_n_6 : STD_LOGIC;
  signal count_it_n_7 : STD_LOGIC;
  signal count_it_n_8 : STD_LOGIC;
  signal count_it_n_9 : STD_LOGIC;
  signal count_l1_n_1 : STD_LOGIC;
  signal count_l1_n_10 : STD_LOGIC;
  signal count_l1_n_11 : STD_LOGIC;
  signal count_l1_n_12 : STD_LOGIC;
  signal count_l1_n_13 : STD_LOGIC;
  signal count_l1_n_14 : STD_LOGIC;
  signal count_l1_n_15 : STD_LOGIC;
  signal count_l1_n_16 : STD_LOGIC;
  signal count_l1_n_17 : STD_LOGIC;
  signal count_l1_n_18 : STD_LOGIC;
  signal count_l1_n_19 : STD_LOGIC;
  signal count_l1_n_2 : STD_LOGIC;
  signal count_l1_n_20 : STD_LOGIC;
  signal count_l1_n_21 : STD_LOGIC;
  signal count_l1_n_22 : STD_LOGIC;
  signal count_l1_n_23 : STD_LOGIC;
  signal count_l1_n_24 : STD_LOGIC;
  signal count_l1_n_25 : STD_LOGIC;
  signal count_l1_n_26 : STD_LOGIC;
  signal count_l1_n_27 : STD_LOGIC;
  signal count_l1_n_28 : STD_LOGIC;
  signal count_l1_n_29 : STD_LOGIC;
  signal count_l1_n_3 : STD_LOGIC;
  signal count_l1_n_30 : STD_LOGIC;
  signal count_l1_n_31 : STD_LOGIC;
  signal count_l1_n_32 : STD_LOGIC;
  signal count_l1_n_4 : STD_LOGIC;
  signal count_l1_n_5 : STD_LOGIC;
  signal count_l1_n_6 : STD_LOGIC;
  signal count_l1_n_7 : STD_LOGIC;
  signal count_l1_n_8 : STD_LOGIC;
  signal count_l1_n_9 : STD_LOGIC;
  signal count_lr_n_1 : STD_LOGIC;
  signal count_lr_n_10 : STD_LOGIC;
  signal count_lr_n_11 : STD_LOGIC;
  signal count_lr_n_12 : STD_LOGIC;
  signal count_lr_n_13 : STD_LOGIC;
  signal count_lr_n_14 : STD_LOGIC;
  signal count_lr_n_15 : STD_LOGIC;
  signal count_lr_n_16 : STD_LOGIC;
  signal count_lr_n_17 : STD_LOGIC;
  signal count_lr_n_18 : STD_LOGIC;
  signal count_lr_n_19 : STD_LOGIC;
  signal count_lr_n_2 : STD_LOGIC;
  signal count_lr_n_20 : STD_LOGIC;
  signal count_lr_n_21 : STD_LOGIC;
  signal count_lr_n_22 : STD_LOGIC;
  signal count_lr_n_23 : STD_LOGIC;
  signal count_lr_n_24 : STD_LOGIC;
  signal count_lr_n_25 : STD_LOGIC;
  signal count_lr_n_26 : STD_LOGIC;
  signal count_lr_n_27 : STD_LOGIC;
  signal count_lr_n_28 : STD_LOGIC;
  signal count_lr_n_29 : STD_LOGIC;
  signal count_lr_n_3 : STD_LOGIC;
  signal count_lr_n_30 : STD_LOGIC;
  signal count_lr_n_31 : STD_LOGIC;
  signal count_lr_n_32 : STD_LOGIC;
  signal count_lr_n_4 : STD_LOGIC;
  signal count_lr_n_5 : STD_LOGIC;
  signal count_lr_n_6 : STD_LOGIC;
  signal count_lr_n_7 : STD_LOGIC;
  signal count_lr_n_8 : STD_LOGIC;
  signal count_lr_n_9 : STD_LOGIC;
  signal count_ocr_n_1 : STD_LOGIC;
  signal count_ocr_n_10 : STD_LOGIC;
  signal count_ocr_n_11 : STD_LOGIC;
  signal count_ocr_n_12 : STD_LOGIC;
  signal count_ocr_n_13 : STD_LOGIC;
  signal count_ocr_n_14 : STD_LOGIC;
  signal count_ocr_n_15 : STD_LOGIC;
  signal count_ocr_n_16 : STD_LOGIC;
  signal count_ocr_n_17 : STD_LOGIC;
  signal count_ocr_n_18 : STD_LOGIC;
  signal count_ocr_n_19 : STD_LOGIC;
  signal count_ocr_n_2 : STD_LOGIC;
  signal count_ocr_n_20 : STD_LOGIC;
  signal count_ocr_n_21 : STD_LOGIC;
  signal count_ocr_n_22 : STD_LOGIC;
  signal count_ocr_n_23 : STD_LOGIC;
  signal count_ocr_n_24 : STD_LOGIC;
  signal count_ocr_n_25 : STD_LOGIC;
  signal count_ocr_n_26 : STD_LOGIC;
  signal count_ocr_n_27 : STD_LOGIC;
  signal count_ocr_n_28 : STD_LOGIC;
  signal count_ocr_n_29 : STD_LOGIC;
  signal count_ocr_n_3 : STD_LOGIC;
  signal count_ocr_n_30 : STD_LOGIC;
  signal count_ocr_n_31 : STD_LOGIC;
  signal count_ocr_n_32 : STD_LOGIC;
  signal count_ocr_n_4 : STD_LOGIC;
  signal count_ocr_n_5 : STD_LOGIC;
  signal count_ocr_n_6 : STD_LOGIC;
  signal count_ocr_n_7 : STD_LOGIC;
  signal count_ocr_n_8 : STD_LOGIC;
  signal count_ocr_n_9 : STD_LOGIC;
  signal count_os_n_1 : STD_LOGIC;
  signal count_os_n_10 : STD_LOGIC;
  signal count_os_n_11 : STD_LOGIC;
  signal count_os_n_12 : STD_LOGIC;
  signal count_os_n_13 : STD_LOGIC;
  signal count_os_n_14 : STD_LOGIC;
  signal count_os_n_15 : STD_LOGIC;
  signal count_os_n_16 : STD_LOGIC;
  signal count_os_n_17 : STD_LOGIC;
  signal count_os_n_18 : STD_LOGIC;
  signal count_os_n_19 : STD_LOGIC;
  signal count_os_n_2 : STD_LOGIC;
  signal count_os_n_20 : STD_LOGIC;
  signal count_os_n_21 : STD_LOGIC;
  signal count_os_n_22 : STD_LOGIC;
  signal count_os_n_23 : STD_LOGIC;
  signal count_os_n_24 : STD_LOGIC;
  signal count_os_n_25 : STD_LOGIC;
  signal count_os_n_26 : STD_LOGIC;
  signal count_os_n_27 : STD_LOGIC;
  signal count_os_n_28 : STD_LOGIC;
  signal count_os_n_29 : STD_LOGIC;
  signal count_os_n_3 : STD_LOGIC;
  signal count_os_n_30 : STD_LOGIC;
  signal count_os_n_31 : STD_LOGIC;
  signal count_os_n_32 : STD_LOGIC;
  signal count_os_n_4 : STD_LOGIC;
  signal count_os_n_5 : STD_LOGIC;
  signal count_os_n_6 : STD_LOGIC;
  signal count_os_n_7 : STD_LOGIC;
  signal count_os_n_8 : STD_LOGIC;
  signal count_os_n_9 : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg_2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg_3 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg_4 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg_5 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg_6 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg_7 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg_8 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data15 : STD_LOGIC_VECTOR ( 31 downto 20 );
  signal debug_non_idle_now0 : STD_LOGIC;
  signal enable_calibrationl1a : STD_LOGIC;
  signal \^enable_fc\ : STD_LOGIC;
  signal enable_l1agen_A : STD_LOGIC;
  signal enable_l1agen_B : STD_LOGIC;
  signal enable_orbitsync : STD_LOGIC;
  signal enable_periodic_calib : STD_LOGIC;
  signal encoder_n_6 : STD_LOGIC;
  signal fc_calibrationl1a : STD_LOGIC;
  signal fc_calibrationreq : STD_LOGIC;
  signal fc_daqresync : STD_LOGIC;
  signal fc_internaltest : STD_LOGIC;
  signal fc_l1a : STD_LOGIC;
  signal fc_l1a_for_calib : STD_LOGIC;
  signal fc_l1agen_A : STD_LOGIC;
  signal fc_l1agen_B : STD_LOGIC;
  signal fc_linkreset : STD_LOGIC;
  signal fc_orbitcountreset : STD_LOGIC;
  signal fc_orbitsync : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][15]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][16]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][17]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][18]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][19]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][20]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][21]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][22]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][23]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][24]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][25]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][26]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][27]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][28]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][29]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][30]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg[0][31]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][22]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][23]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][24]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][25]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][26]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][29]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][30]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][31]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg[1][31]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][16]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][17]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][18]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][19]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][20]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][21]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][22]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][23]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][24]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][25]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][26]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][27]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][28]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][29]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][30]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][31]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][10]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][11]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][25]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][26]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][27]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][28]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][29]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][30]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][31]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][8]\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg_n_0_[2][9]\ : STD_LOGIC;
  signal \gen_write[3].CtlReg[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[3].CtlReg_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gen_write[4].CtlReg[4][31]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[4].CtlReg_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \gen_write[4].CtlReg_reg_n_0_[4][10]\ : STD_LOGIC;
  signal \gen_write[4].CtlReg_reg_n_0_[4][11]\ : STD_LOGIC;
  signal \gen_write[4].CtlReg_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \gen_write[4].CtlReg_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \gen_write[4].CtlReg_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \gen_write[4].CtlReg_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \gen_write[4].CtlReg_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \gen_write[4].CtlReg_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \gen_write[4].CtlReg_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \gen_write[4].CtlReg_reg_n_0_[4][8]\ : STD_LOGIC;
  signal \gen_write[4].CtlReg_reg_n_0_[4][9]\ : STD_LOGIC;
  signal \gen_write[5].CtlReg[5][31]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[5].CtlReg_reg[5]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal idleonly : STD_LOGIC;
  signal \in\ : STD_LOGIC;
  signal \io_r_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[0]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[10]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[10]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[11]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[11]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[12]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[12]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[13]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[13]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[14]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[14]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[15]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[16]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[16]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[17]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[17]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[18]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[18]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[19]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[19]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[1]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[20]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[20]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[21]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[21]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[22]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[22]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[23]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[23]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[24]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[24]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[25]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[25]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[26]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[26]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[27]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[27]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[28]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[28]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[29]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[29]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[2]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[2]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[30]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[30]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \io_r_data[31]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[31]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[31]_i_6_n_0\ : STD_LOGIC;
  signal \io_r_data[31]_i_8_n_0\ : STD_LOGIC;
  signal \io_r_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[3]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[4]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[4]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[5]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[5]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[6]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[7]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[8]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[8]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[9]_i_3_n_0\ : STD_LOGIC;
  signal \io_r_data[9]_i_5_n_0\ : STD_LOGIC;
  signal l1agen_B_n_3 : STD_LOGIC;
  signal l1agen_B_n_5 : STD_LOGIC;
  signal link_daq_resync : STD_LOGIC;
  signal link_reset_pending : STD_LOGIC;
  signal nextos : STD_LOGIC;
  signal orbit_ctl_n_3 : STD_LOGIC;
  signal orbit_ctl_n_4 : STD_LOGIC;
  signal orbit_ctl_n_5 : STD_LOGIC;
  signal orbit_ctl_n_6 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal periodic_counter : STD_LOGIC;
  signal periodic_prescale : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal req_daqresync : STD_LOGIC;
  signal req_internal_test : STD_LOGIC;
  signal req_linkreset : STD_LOGIC;
  signal req_orbitcountreset : STD_LOGIC;
  signal req_single_calib : STD_LOGIC;
  signal req_single_l1agen_A : STD_LOGIC;
  signal req_single_l1agen_B : STD_LOGIC;
  signal reset_40 : STD_LOGIC;
  signal reset_counters_40_n : STD_LOGIC;
  signal reset_counters_40_n_i_1_n_0 : STD_LOGIC;
  signal reset_counters_io : STD_LOGIC;
  signal reset_io : STD_LOGIC;
  signal ss_daqresync_n_2 : STD_LOGIC;
  signal ss_daqresync_n_3 : STD_LOGIC;
  signal ss_internaltest_n_1 : STD_LOGIC;
  signal ss_internaltest_n_2 : STD_LOGIC;
  signal ss_linkreset_n_2 : STD_LOGIC;
  signal value : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal veto_l1agen_A : STD_LOGIC;
  signal veto_l1agen_B : STD_LOGIC;
  signal will_fire : STD_LOGIC;
  signal will_fire_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bx[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bx[11]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bx[11]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bx[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bx[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bx[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bx[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bx[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bx[7]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bx[9]_i_2\ : label is "soft_lutpair26";
begin
  enable_fc <= \^enable_fc\;
\bx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bx(0),
      O => bx_1(0)
    );
\bx[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \bx[11]_i_3_n_0\,
      I1 => \bx[11]_i_2_n_0\,
      I2 => bx(10),
      O => bx_1(10)
    );
\bx[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \bx[11]_i_2_n_0\,
      I1 => bx(10),
      I2 => bx(11),
      I3 => \bx[11]_i_3_n_0\,
      O => bx_1(11)
    );
\bx[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => bx(9),
      I1 => \bx[9]_i_2_n_0\,
      I2 => bx(5),
      I3 => bx(6),
      I4 => bx(7),
      I5 => bx(8),
      O => \bx[11]_i_2_n_0\
    );
\bx[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \bx[11]_i_4_n_0\,
      I1 => bx(6),
      I2 => bx(5),
      I3 => bx(7),
      I4 => bx(0),
      I5 => \bx[11]_i_5_n_0\,
      O => \bx[11]_i_3_n_0\
    );
\bx[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => bx(4),
      I1 => bx(2),
      I2 => bx(3),
      I3 => bx(9),
      O => \bx[11]_i_4_n_0\
    );
\bx[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => bx(8),
      I1 => bx(1),
      I2 => bx(11),
      I3 => bx(10),
      O => \bx[11]_i_5_n_0\
    );
\bx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bx(0),
      I1 => bx(1),
      O => bx_1(1)
    );
\bx[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \bx[11]_i_3_n_0\,
      I1 => bx(0),
      I2 => bx(1),
      I3 => bx(2),
      O => bx_1(2)
    );
\bx[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \bx[11]_i_3_n_0\,
      I1 => bx(1),
      I2 => bx(0),
      I3 => bx(2),
      I4 => bx(3),
      O => bx_1(3)
    );
\bx[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => bx(4),
      I1 => bx(2),
      I2 => bx(0),
      I3 => bx(1),
      I4 => bx(3),
      O => bx_1(4)
    );
\bx[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \bx[11]_i_3_n_0\,
      I1 => \bx[9]_i_2_n_0\,
      I2 => bx(5),
      O => bx_1(5)
    );
\bx[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \bx[11]_i_3_n_0\,
      I1 => \bx[9]_i_2_n_0\,
      I2 => bx(5),
      I3 => bx(6),
      O => bx_1(6)
    );
\bx[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0080"
    )
        port map (
      I0 => \bx[11]_i_3_n_0\,
      I1 => bx(6),
      I2 => bx(5),
      I3 => \bx[9]_i_2_n_0\,
      I4 => bx(7),
      O => bx_1(7)
    );
\bx[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA20000000"
    )
        port map (
      I0 => \bx[11]_i_3_n_0\,
      I1 => \bx[9]_i_2_n_0\,
      I2 => bx(5),
      I3 => bx(6),
      I4 => bx(7),
      I5 => bx(8),
      O => bx_1(8)
    );
\bx[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => bx(9),
      I1 => \bx[9]_i_2_n_0\,
      I2 => bx(5),
      I3 => bx(6),
      I4 => bx(7),
      I5 => bx(8),
      O => bx_1(9)
    );
\bx[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => bx(3),
      I1 => bx(1),
      I2 => bx(0),
      I3 => bx(2),
      I4 => bx(4),
      O => \bx[9]_i_2_n_0\
    );
\bx_io_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bx(0),
      Q => data15(20),
      R => '0'
    );
\bx_io_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bx(10),
      Q => data15(30),
      R => '0'
    );
\bx_io_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bx(11),
      Q => data15(31),
      R => '0'
    );
\bx_io_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bx(1),
      Q => data15(21),
      R => '0'
    );
\bx_io_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bx(2),
      Q => data15(22),
      R => '0'
    );
\bx_io_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bx(3),
      Q => data15(23),
      R => '0'
    );
\bx_io_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bx(4),
      Q => data15(24),
      R => '0'
    );
\bx_io_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bx(5),
      Q => data15(25),
      R => '0'
    );
\bx_io_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bx(6),
      Q => data15(26),
      R => '0'
    );
\bx_io_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bx(7),
      Q => data15(27),
      R => '0'
    );
\bx_io_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bx(8),
      Q => data15(28),
      R => '0'
    );
\bx_io_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => bx(9),
      Q => data15(29),
      R => '0'
    );
\bx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => bx_1(0),
      Q => bx(0),
      R => reset_40
    );
\bx_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => bx_1(10),
      Q => bx(10),
      R => reset_40
    );
\bx_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => bx_1(11),
      Q => bx(11),
      R => reset_40
    );
\bx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => bx_1(1),
      Q => bx(1),
      R => reset_40
    );
\bx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => bx_1(2),
      Q => bx(2),
      R => reset_40
    );
\bx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => bx_1(3),
      Q => bx(3),
      R => reset_40
    );
\bx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => bx_1(4),
      Q => bx(4),
      R => reset_40
    );
\bx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => bx_1(5),
      Q => bx(5),
      R => reset_40
    );
\bx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => bx_1(6),
      Q => bx(6),
      R => reset_40
    );
\bx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => bx_1(7),
      Q => bx(7),
      R => reset_40
    );
\bx_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => bx_1(8),
      Q => bx(8),
      R => reset_40
    );
\bx_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => bx_1(9),
      Q => bx(9),
      R => reset_40
    );
calib_ctl: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_calib
     port map (
      D(0) => counter_reg_5(0),
      DI(0) => calib_ctl_n_12,
      Q(0) => req_single_calib,
      S(0) => calib_ctl_n_13,
      \cmd_reg[2]\ => l1agen_B_n_3,
      \counter_reg[7]\(24) => calib_l1a_as_normal,
      \counter_reg[7]\(23 downto 12) => bx_target(11 downto 0),
      \counter_reg[7]\(11) => \gen_write[2].CtlReg_reg_n_0_[2][11]\,
      \counter_reg[7]\(10) => \gen_write[2].CtlReg_reg_n_0_[2][10]\,
      \counter_reg[7]\(9) => \gen_write[2].CtlReg_reg_n_0_[2][9]\,
      \counter_reg[7]\(8) => \gen_write[2].CtlReg_reg_n_0_[2][8]\,
      \counter_reg[7]\(7) => \gen_write[2].CtlReg_reg_n_0_[2][7]\,
      \counter_reg[7]\(6) => \gen_write[2].CtlReg_reg_n_0_[2][6]\,
      \counter_reg[7]\(5) => \gen_write[2].CtlReg_reg_n_0_[2][5]\,
      \counter_reg[7]\(4) => \gen_write[2].CtlReg_reg_n_0_[2][4]\,
      \counter_reg[7]\(3) => \gen_write[2].CtlReg_reg_n_0_[2][3]\,
      \counter_reg[7]\(2) => \gen_write[2].CtlReg_reg_n_0_[2][2]\,
      \counter_reg[7]\(1) => \gen_write[2].CtlReg_reg_n_0_[2][1]\,
      \counter_reg[7]\(0) => \gen_write[2].CtlReg_reg_n_0_[2][0]\,
      \counter_reg[7]_0\(0) => counter_reg(0),
      \counter_reg[7]_1\(0) => counter_reg_1(0),
      enable_calibrationl1a => enable_calibrationl1a,
      enable_periodic_calib => enable_periodic_calib,
      ext_lhc_clk => ext_lhc_clk,
      fc_calibrationl1a => fc_calibrationl1a,
      fc_calibrationreq => fc_calibrationreq,
      fc_daqresync => fc_daqresync,
      fc_internaltest => fc_internaltest,
      fc_l1a => fc_l1a,
      fc_l1a_for_calib => fc_l1a_for_calib,
      fc_l1agen_A => fc_l1agen_A,
      fc_l1agen_B => fc_l1agen_B,
      fc_linkreset => fc_linkreset,
      fc_orbitcountreset => fc_orbitcountreset,
      fc_orbitsync => fc_orbitsync,
      fire_reg => calib_ctl_n_2,
      fire_reg_0 => calib_ctl_n_4,
      fire_reg_1 => calib_ctl_n_5,
      fire_reg_2 => calib_ctl_n_6,
      fire_reg_3 => calib_ctl_n_7,
      fire_reg_4 => calib_ctl_n_8,
      fire_reg_5(0) => calib_ctl_n_15,
      fire_reg_6 => ss_internaltest_n_1,
      \gen_write[2].CtlReg_reg[2][24]\(0) => calib_ctl_n_14,
      invalid_r_reg => orbit_ctl_n_3,
      invalid_r_reg_0 => orbit_ctl_n_4,
      link_daq_resync => link_daq_resync,
      link_reset_pending => link_reset_pending,
      nextos => nextos,
      pending_reg => calib_ctl_n_10,
      pending_reg_0(11 downto 0) => bx(11 downto 0),
      periodic_counter => periodic_counter,
      periodic_counter0_carry_0(19 downto 0) => \gen_write[3].CtlReg_reg[3]\(19 downto 0),
      reset_40 => reset_40,
      veto_l1agen_A => veto_l1agen_A,
      veto_l1agen_B => veto_l1agen_B,
      will_fire => will_fire_0,
      will_fire_0 => will_fire
    );
count_cl1: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter
     port map (
      D(0) => counter_reg(0),
      DI(0) => calib_ctl_n_12,
      Q(31) => count_cl1_n_1,
      Q(30) => count_cl1_n_2,
      Q(29) => count_cl1_n_3,
      Q(28) => count_cl1_n_4,
      Q(27) => count_cl1_n_5,
      Q(26) => count_cl1_n_6,
      Q(25) => count_cl1_n_7,
      Q(24) => count_cl1_n_8,
      Q(23) => count_cl1_n_9,
      Q(22) => count_cl1_n_10,
      Q(21) => count_cl1_n_11,
      Q(20) => count_cl1_n_12,
      Q(19) => count_cl1_n_13,
      Q(18) => count_cl1_n_14,
      Q(17) => count_cl1_n_15,
      Q(16) => count_cl1_n_16,
      Q(15) => count_cl1_n_17,
      Q(14) => count_cl1_n_18,
      Q(13) => count_cl1_n_19,
      Q(12) => count_cl1_n_20,
      Q(11) => count_cl1_n_21,
      Q(10) => count_cl1_n_22,
      Q(9) => count_cl1_n_23,
      Q(8) => count_cl1_n_24,
      Q(7) => count_cl1_n_25,
      Q(6) => count_cl1_n_26,
      Q(5) => count_cl1_n_27,
      Q(4) => count_cl1_n_28,
      Q(3) => count_cl1_n_29,
      Q(2) => count_cl1_n_30,
      Q(1) => count_cl1_n_31,
      Q(0) => count_cl1_n_32,
      clear => clear,
      \counter_reg[7]_0\(0) => calib_ctl_n_14,
      ext_lhc_clk => ext_lhc_clk,
      s00_axi_aclk => s00_axi_aclk
    );
count_cr: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_0
     port map (
      D(0) => counter_reg_1(0),
      Q(31) => count_cr_n_1,
      Q(30) => count_cr_n_2,
      Q(29) => count_cr_n_3,
      Q(28) => count_cr_n_4,
      Q(27) => count_cr_n_5,
      Q(26) => count_cr_n_6,
      Q(25) => count_cr_n_7,
      Q(24) => count_cr_n_8,
      Q(23) => count_cr_n_9,
      Q(22) => count_cr_n_10,
      Q(21) => count_cr_n_11,
      Q(20) => count_cr_n_12,
      Q(19) => count_cr_n_13,
      Q(18) => count_cr_n_14,
      Q(17) => count_cr_n_15,
      Q(16) => count_cr_n_16,
      Q(15) => count_cr_n_17,
      Q(14) => count_cr_n_18,
      Q(13) => count_cr_n_19,
      Q(12) => count_cr_n_20,
      Q(11) => count_cr_n_21,
      Q(10) => count_cr_n_22,
      Q(9) => count_cr_n_23,
      Q(8) => count_cr_n_24,
      Q(7) => count_cr_n_25,
      Q(6) => count_cr_n_26,
      Q(5) => count_cr_n_27,
      Q(4) => count_cr_n_28,
      Q(3) => count_cr_n_29,
      Q(2) => count_cr_n_30,
      Q(1) => count_cr_n_31,
      Q(0) => count_cr_n_32,
      clear => clear,
      \counter_reg[7]_0\(0) => calib_ctl_n_15,
      ext_lhc_clk => ext_lhc_clk,
      fc_calibrationreq => fc_calibrationreq,
      s00_axi_aclk => s00_axi_aclk
    );
count_ds: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_1
     port map (
      D(0) => counter_reg_2(0),
      Q(31) => count_lr_n_1,
      Q(30) => count_lr_n_2,
      Q(29) => count_lr_n_3,
      Q(28) => count_lr_n_4,
      Q(27) => count_lr_n_5,
      Q(26) => count_lr_n_6,
      Q(25) => count_lr_n_7,
      Q(24) => count_lr_n_8,
      Q(23) => count_lr_n_9,
      Q(22) => count_lr_n_10,
      Q(21) => count_lr_n_11,
      Q(20) => count_lr_n_12,
      Q(19) => count_lr_n_13,
      Q(18) => count_lr_n_14,
      Q(17) => count_lr_n_15,
      Q(16) => count_lr_n_16,
      Q(15) => count_lr_n_17,
      Q(14) => count_lr_n_18,
      Q(13) => count_lr_n_19,
      Q(12) => count_lr_n_20,
      Q(11) => count_lr_n_21,
      Q(10) => count_lr_n_22,
      Q(9) => count_lr_n_23,
      Q(8) => count_lr_n_24,
      Q(7) => count_lr_n_25,
      Q(6) => count_lr_n_26,
      Q(5) => count_lr_n_27,
      Q(4) => count_lr_n_28,
      Q(3) => count_lr_n_29,
      Q(2) => count_lr_n_30,
      Q(1) => count_lr_n_31,
      Q(0) => count_lr_n_32,
      S(0) => ss_daqresync_n_3,
      clear => clear,
      ext_lhc_clk => ext_lhc_clk,
      fc_daqresync => fc_daqresync,
      \io_r_data_reg[31]_i_7\(1 downto 0) => \io_r_data_reg[0]_0\(1 downto 0),
      \io_r_data_reg[31]_i_7_0\(31) => count_cl1_n_1,
      \io_r_data_reg[31]_i_7_0\(30) => count_cl1_n_2,
      \io_r_data_reg[31]_i_7_0\(29) => count_cl1_n_3,
      \io_r_data_reg[31]_i_7_0\(28) => count_cl1_n_4,
      \io_r_data_reg[31]_i_7_0\(27) => count_cl1_n_5,
      \io_r_data_reg[31]_i_7_0\(26) => count_cl1_n_6,
      \io_r_data_reg[31]_i_7_0\(25) => count_cl1_n_7,
      \io_r_data_reg[31]_i_7_0\(24) => count_cl1_n_8,
      \io_r_data_reg[31]_i_7_0\(23) => count_cl1_n_9,
      \io_r_data_reg[31]_i_7_0\(22) => count_cl1_n_10,
      \io_r_data_reg[31]_i_7_0\(21) => count_cl1_n_11,
      \io_r_data_reg[31]_i_7_0\(20) => count_cl1_n_12,
      \io_r_data_reg[31]_i_7_0\(19) => count_cl1_n_13,
      \io_r_data_reg[31]_i_7_0\(18) => count_cl1_n_14,
      \io_r_data_reg[31]_i_7_0\(17) => count_cl1_n_15,
      \io_r_data_reg[31]_i_7_0\(16) => count_cl1_n_16,
      \io_r_data_reg[31]_i_7_0\(15) => count_cl1_n_17,
      \io_r_data_reg[31]_i_7_0\(14) => count_cl1_n_18,
      \io_r_data_reg[31]_i_7_0\(13) => count_cl1_n_19,
      \io_r_data_reg[31]_i_7_0\(12) => count_cl1_n_20,
      \io_r_data_reg[31]_i_7_0\(11) => count_cl1_n_21,
      \io_r_data_reg[31]_i_7_0\(10) => count_cl1_n_22,
      \io_r_data_reg[31]_i_7_0\(9) => count_cl1_n_23,
      \io_r_data_reg[31]_i_7_0\(8) => count_cl1_n_24,
      \io_r_data_reg[31]_i_7_0\(7) => count_cl1_n_25,
      \io_r_data_reg[31]_i_7_0\(6) => count_cl1_n_26,
      \io_r_data_reg[31]_i_7_0\(5) => count_cl1_n_27,
      \io_r_data_reg[31]_i_7_0\(4) => count_cl1_n_28,
      \io_r_data_reg[31]_i_7_0\(3) => count_cl1_n_29,
      \io_r_data_reg[31]_i_7_0\(2) => count_cl1_n_30,
      \io_r_data_reg[31]_i_7_0\(1) => count_cl1_n_31,
      \io_r_data_reg[31]_i_7_0\(0) => count_cl1_n_32,
      \io_r_data_reg[31]_i_7_1\(31) => count_cr_n_1,
      \io_r_data_reg[31]_i_7_1\(30) => count_cr_n_2,
      \io_r_data_reg[31]_i_7_1\(29) => count_cr_n_3,
      \io_r_data_reg[31]_i_7_1\(28) => count_cr_n_4,
      \io_r_data_reg[31]_i_7_1\(27) => count_cr_n_5,
      \io_r_data_reg[31]_i_7_1\(26) => count_cr_n_6,
      \io_r_data_reg[31]_i_7_1\(25) => count_cr_n_7,
      \io_r_data_reg[31]_i_7_1\(24) => count_cr_n_8,
      \io_r_data_reg[31]_i_7_1\(23) => count_cr_n_9,
      \io_r_data_reg[31]_i_7_1\(22) => count_cr_n_10,
      \io_r_data_reg[31]_i_7_1\(21) => count_cr_n_11,
      \io_r_data_reg[31]_i_7_1\(20) => count_cr_n_12,
      \io_r_data_reg[31]_i_7_1\(19) => count_cr_n_13,
      \io_r_data_reg[31]_i_7_1\(18) => count_cr_n_14,
      \io_r_data_reg[31]_i_7_1\(17) => count_cr_n_15,
      \io_r_data_reg[31]_i_7_1\(16) => count_cr_n_16,
      \io_r_data_reg[31]_i_7_1\(15) => count_cr_n_17,
      \io_r_data_reg[31]_i_7_1\(14) => count_cr_n_18,
      \io_r_data_reg[31]_i_7_1\(13) => count_cr_n_19,
      \io_r_data_reg[31]_i_7_1\(12) => count_cr_n_20,
      \io_r_data_reg[31]_i_7_1\(11) => count_cr_n_21,
      \io_r_data_reg[31]_i_7_1\(10) => count_cr_n_22,
      \io_r_data_reg[31]_i_7_1\(9) => count_cr_n_23,
      \io_r_data_reg[31]_i_7_1\(8) => count_cr_n_24,
      \io_r_data_reg[31]_i_7_1\(7) => count_cr_n_25,
      \io_r_data_reg[31]_i_7_1\(6) => count_cr_n_26,
      \io_r_data_reg[31]_i_7_1\(5) => count_cr_n_27,
      \io_r_data_reg[31]_i_7_1\(4) => count_cr_n_28,
      \io_r_data_reg[31]_i_7_1\(3) => count_cr_n_29,
      \io_r_data_reg[31]_i_7_1\(2) => count_cr_n_30,
      \io_r_data_reg[31]_i_7_1\(1) => count_cr_n_31,
      \io_r_data_reg[31]_i_7_1\(0) => count_cr_n_32,
      s00_axi_aclk => s00_axi_aclk,
      \value_reg[0]_0\ => count_ds_n_32,
      \value_reg[10]_0\ => count_ds_n_22,
      \value_reg[11]_0\ => count_ds_n_21,
      \value_reg[12]_0\ => count_ds_n_20,
      \value_reg[13]_0\ => count_ds_n_19,
      \value_reg[14]_0\ => count_ds_n_18,
      \value_reg[15]_0\ => count_ds_n_17,
      \value_reg[16]_0\ => count_ds_n_16,
      \value_reg[17]_0\ => count_ds_n_15,
      \value_reg[18]_0\ => count_ds_n_14,
      \value_reg[19]_0\ => count_ds_n_13,
      \value_reg[1]_0\ => count_ds_n_31,
      \value_reg[20]_0\ => count_ds_n_12,
      \value_reg[21]_0\ => count_ds_n_11,
      \value_reg[22]_0\ => count_ds_n_10,
      \value_reg[23]_0\ => count_ds_n_9,
      \value_reg[24]_0\ => count_ds_n_8,
      \value_reg[25]_0\ => count_ds_n_7,
      \value_reg[26]_0\ => count_ds_n_6,
      \value_reg[27]_0\ => count_ds_n_5,
      \value_reg[28]_0\ => count_ds_n_4,
      \value_reg[29]_0\ => count_ds_n_3,
      \value_reg[2]_0\ => count_ds_n_30,
      \value_reg[30]_0\ => count_ds_n_2,
      \value_reg[31]_0\ => count_ds_n_1,
      \value_reg[3]_0\ => count_ds_n_29,
      \value_reg[4]_0\ => count_ds_n_28,
      \value_reg[5]_0\ => count_ds_n_27,
      \value_reg[6]_0\ => count_ds_n_26,
      \value_reg[7]_0\ => count_ds_n_25,
      \value_reg[8]_0\ => count_ds_n_24,
      \value_reg[9]_0\ => count_ds_n_23
    );
count_err: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_2
     port map (
      D(0) => counter_reg_3(0),
      DI(0) => \in\,
      Q(31 downto 0) => value(31 downto 0),
      S(0) => encoder_n_6,
      clear => clear,
      ext_lhc_clk => ext_lhc_clk,
      reset_counters_40_n => reset_counters_40_n,
      s00_axi_aclk => s00_axi_aclk
    );
count_it: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_3
     port map (
      D(0) => counter_reg_4(0),
      Q(31) => count_it_n_1,
      Q(30) => count_it_n_2,
      Q(29) => count_it_n_3,
      Q(28) => count_it_n_4,
      Q(27) => count_it_n_5,
      Q(26) => count_it_n_6,
      Q(25) => count_it_n_7,
      Q(24) => count_it_n_8,
      Q(23) => count_it_n_9,
      Q(22) => count_it_n_10,
      Q(21) => count_it_n_11,
      Q(20) => count_it_n_12,
      Q(19) => count_it_n_13,
      Q(18) => count_it_n_14,
      Q(17) => count_it_n_15,
      Q(16) => count_it_n_16,
      Q(15) => count_it_n_17,
      Q(14) => count_it_n_18,
      Q(13) => count_it_n_19,
      Q(12) => count_it_n_20,
      Q(11) => count_it_n_21,
      Q(10) => count_it_n_22,
      Q(9) => count_it_n_23,
      Q(8) => count_it_n_24,
      Q(7) => count_it_n_25,
      Q(6) => count_it_n_26,
      Q(5) => count_it_n_27,
      Q(4) => count_it_n_28,
      Q(3) => count_it_n_29,
      Q(2) => count_it_n_30,
      Q(1) => count_it_n_31,
      Q(0) => count_it_n_32,
      S(0) => ss_internaltest_n_2,
      clear => clear,
      ext_lhc_clk => ext_lhc_clk,
      fc_internaltest => fc_internaltest,
      s00_axi_aclk => s00_axi_aclk
    );
count_l1: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_4
     port map (
      D(0) => counter_reg_5(0),
      DI(0) => l1agen_B_n_5,
      Q(22) => count_it_n_1,
      Q(21) => count_it_n_2,
      Q(20) => count_it_n_3,
      Q(19) => count_it_n_4,
      Q(18) => count_it_n_6,
      Q(17) => count_it_n_7,
      Q(16) => count_it_n_8,
      Q(15) => count_it_n_11,
      Q(14) => count_it_n_12,
      Q(13) => count_it_n_13,
      Q(12) => count_it_n_15,
      Q(11) => count_it_n_16,
      Q(10) => count_it_n_17,
      Q(9) => count_it_n_20,
      Q(8) => count_it_n_22,
      Q(7) => count_it_n_23,
      Q(6) => count_it_n_24,
      Q(5) => count_it_n_25,
      Q(4) => count_it_n_26,
      Q(3) => count_it_n_28,
      Q(2) => count_it_n_29,
      Q(1) => count_it_n_30,
      Q(0) => count_it_n_32,
      S(0) => calib_ctl_n_13,
      clear => clear,
      ext_lhc_clk => ext_lhc_clk,
      \fc_raddr_reg[3]\(22) => count_l1_n_1,
      \fc_raddr_reg[3]\(21) => count_l1_n_2,
      \fc_raddr_reg[3]\(20) => count_l1_n_3,
      \fc_raddr_reg[3]\(19) => count_l1_n_4,
      \fc_raddr_reg[3]\(18) => count_l1_n_5,
      \fc_raddr_reg[3]\(17) => count_l1_n_6,
      \fc_raddr_reg[3]\(16) => count_l1_n_7,
      \fc_raddr_reg[3]\(15) => count_l1_n_8,
      \fc_raddr_reg[3]\(14) => count_l1_n_9,
      \fc_raddr_reg[3]\(13) => count_l1_n_10,
      \fc_raddr_reg[3]\(12) => count_l1_n_11,
      \fc_raddr_reg[3]\(11) => count_l1_n_12,
      \fc_raddr_reg[3]\(10) => count_l1_n_13,
      \fc_raddr_reg[3]\(9) => count_l1_n_14,
      \fc_raddr_reg[3]\(8) => count_l1_n_15,
      \fc_raddr_reg[3]\(7) => count_l1_n_16,
      \fc_raddr_reg[3]\(6) => count_l1_n_17,
      \fc_raddr_reg[3]\(5) => count_l1_n_18,
      \fc_raddr_reg[3]\(4) => count_l1_n_19,
      \fc_raddr_reg[3]\(3) => count_l1_n_20,
      \fc_raddr_reg[3]\(2) => count_l1_n_21,
      \fc_raddr_reg[3]\(1) => count_l1_n_22,
      \fc_raddr_reg[3]\(0) => count_l1_n_23,
      \io_r_data_reg[0]\ => \io_r_data[31]_i_3_n_0\,
      \io_r_data_reg[0]_0\ => \io_r_data[0]_i_3_n_0\,
      \io_r_data_reg[0]_1\ => count_ocr_n_32,
      \io_r_data_reg[10]\ => \io_r_data[10]_i_3_n_0\,
      \io_r_data_reg[10]_0\ => count_ocr_n_24,
      \io_r_data_reg[12]\ => \io_r_data[12]_i_3_n_0\,
      \io_r_data_reg[12]_0\ => count_ocr_n_23,
      \io_r_data_reg[15]\ => \io_r_data[15]_i_3_n_0\,
      \io_r_data_reg[15]_0\ => count_ocr_n_22,
      \io_r_data_reg[16]\ => \io_r_data[16]_i_3_n_0\,
      \io_r_data_reg[16]_0\ => count_ocr_n_21,
      \io_r_data_reg[17]\ => \io_r_data[17]_i_3_n_0\,
      \io_r_data_reg[17]_0\ => count_ocr_n_20,
      \io_r_data_reg[19]\ => \io_r_data[19]_i_3_n_0\,
      \io_r_data_reg[19]_0\ => count_ocr_n_19,
      \io_r_data_reg[20]\ => \io_r_data[20]_i_3_n_0\,
      \io_r_data_reg[20]_0\ => count_ocr_n_18,
      \io_r_data_reg[21]\ => \io_r_data[21]_i_3_n_0\,
      \io_r_data_reg[21]_0\ => count_ocr_n_17,
      \io_r_data_reg[24]\ => \io_r_data[24]_i_3_n_0\,
      \io_r_data_reg[24]_0\ => count_ocr_n_16,
      \io_r_data_reg[25]\ => \io_r_data[25]_i_3_n_0\,
      \io_r_data_reg[25]_0\ => count_ocr_n_15,
      \io_r_data_reg[26]\ => \io_r_data[26]_i_3_n_0\,
      \io_r_data_reg[26]_0\ => count_ocr_n_14,
      \io_r_data_reg[28]\ => \io_r_data[28]_i_3_n_0\,
      \io_r_data_reg[28]_0\ => count_ocr_n_13,
      \io_r_data_reg[29]\ => \io_r_data[29]_i_3_n_0\,
      \io_r_data_reg[29]_0\ => count_ocr_n_12,
      \io_r_data_reg[2]\ => \io_r_data[2]_i_3_n_0\,
      \io_r_data_reg[2]_0\ => count_ocr_n_31,
      \io_r_data_reg[30]\ => \io_r_data[30]_i_3_n_0\,
      \io_r_data_reg[30]_0\(1) => \io_r_data_reg[0]_0\(3),
      \io_r_data_reg[30]_0\(0) => \io_r_data_reg[0]_0\(0),
      \io_r_data_reg[30]_1\ => count_ocr_n_11,
      \io_r_data_reg[31]\ => \io_r_data[31]_i_5_n_0\,
      \io_r_data_reg[31]_0\ => \io_r_data[31]_i_6_n_0\,
      \io_r_data_reg[31]_1\ => count_ocr_n_10,
      \io_r_data_reg[3]\ => \io_r_data[3]_i_3_n_0\,
      \io_r_data_reg[3]_0\ => count_ocr_n_30,
      \io_r_data_reg[4]\ => \io_r_data[4]_i_3_n_0\,
      \io_r_data_reg[4]_0\ => count_ocr_n_29,
      \io_r_data_reg[6]\ => \io_r_data[6]_i_3_n_0\,
      \io_r_data_reg[6]_0\ => count_ocr_n_28,
      \io_r_data_reg[7]\ => \io_r_data[7]_i_3_n_0\,
      \io_r_data_reg[7]_0\ => count_ocr_n_27,
      \io_r_data_reg[8]\ => \io_r_data[8]_i_3_n_0\,
      \io_r_data_reg[8]_0\ => count_ocr_n_26,
      \io_r_data_reg[9]\ => \io_r_data[9]_i_3_n_0\,
      \io_r_data_reg[9]_0\ => count_ocr_n_25,
      s00_axi_aclk => s00_axi_aclk,
      \value_reg[27]_0\(8) => count_l1_n_24,
      \value_reg[27]_0\(7) => count_l1_n_25,
      \value_reg[27]_0\(6) => count_l1_n_26,
      \value_reg[27]_0\(5) => count_l1_n_27,
      \value_reg[27]_0\(4) => count_l1_n_28,
      \value_reg[27]_0\(3) => count_l1_n_29,
      \value_reg[27]_0\(2) => count_l1_n_30,
      \value_reg[27]_0\(1) => count_l1_n_31,
      \value_reg[27]_0\(0) => count_l1_n_32
    );
count_lr: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_5
     port map (
      D(0) => counter_reg_6(0),
      Q(31) => count_lr_n_1,
      Q(30) => count_lr_n_2,
      Q(29) => count_lr_n_3,
      Q(28) => count_lr_n_4,
      Q(27) => count_lr_n_5,
      Q(26) => count_lr_n_6,
      Q(25) => count_lr_n_7,
      Q(24) => count_lr_n_8,
      Q(23) => count_lr_n_9,
      Q(22) => count_lr_n_10,
      Q(21) => count_lr_n_11,
      Q(20) => count_lr_n_12,
      Q(19) => count_lr_n_13,
      Q(18) => count_lr_n_14,
      Q(17) => count_lr_n_15,
      Q(16) => count_lr_n_16,
      Q(15) => count_lr_n_17,
      Q(14) => count_lr_n_18,
      Q(13) => count_lr_n_19,
      Q(12) => count_lr_n_20,
      Q(11) => count_lr_n_21,
      Q(10) => count_lr_n_22,
      Q(9) => count_lr_n_23,
      Q(8) => count_lr_n_24,
      Q(7) => count_lr_n_25,
      Q(6) => count_lr_n_26,
      Q(5) => count_lr_n_27,
      Q(4) => count_lr_n_28,
      Q(3) => count_lr_n_29,
      Q(2) => count_lr_n_30,
      Q(1) => count_lr_n_31,
      Q(0) => count_lr_n_32,
      S(0) => ss_linkreset_n_2,
      clear => clear,
      ext_lhc_clk => ext_lhc_clk,
      fc_linkreset => fc_linkreset,
      s00_axi_aclk => s00_axi_aclk
    );
count_ocr: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_6
     port map (
      D(0) => counter_reg_7(0),
      Q(31) => count_os_n_1,
      Q(30) => count_os_n_2,
      Q(29) => count_os_n_3,
      Q(28) => count_os_n_4,
      Q(27) => count_os_n_5,
      Q(26) => count_os_n_6,
      Q(25) => count_os_n_7,
      Q(24) => count_os_n_8,
      Q(23) => count_os_n_9,
      Q(22) => count_os_n_10,
      Q(21) => count_os_n_11,
      Q(20) => count_os_n_12,
      Q(19) => count_os_n_13,
      Q(18) => count_os_n_14,
      Q(17) => count_os_n_15,
      Q(16) => count_os_n_16,
      Q(15) => count_os_n_17,
      Q(14) => count_os_n_18,
      Q(13) => count_os_n_19,
      Q(12) => count_os_n_20,
      Q(11) => count_os_n_21,
      Q(10) => count_os_n_22,
      Q(9) => count_os_n_23,
      Q(8) => count_os_n_24,
      Q(7) => count_os_n_25,
      Q(6) => count_os_n_26,
      Q(5) => count_os_n_27,
      Q(4) => count_os_n_28,
      Q(3) => count_os_n_29,
      Q(2) => count_os_n_30,
      Q(1) => count_os_n_31,
      Q(0) => count_os_n_32,
      S(0) => orbit_ctl_n_5,
      clear => clear,
      ext_lhc_clk => ext_lhc_clk,
      fc_orbitcountreset => fc_orbitcountreset,
      \fc_raddr_reg[2]\ => count_ocr_n_10,
      \fc_raddr_reg[2]_0\ => count_ocr_n_11,
      \fc_raddr_reg[2]_1\ => count_ocr_n_12,
      \fc_raddr_reg[2]_10\ => count_ocr_n_21,
      \fc_raddr_reg[2]_11\ => count_ocr_n_22,
      \fc_raddr_reg[2]_12\ => count_ocr_n_23,
      \fc_raddr_reg[2]_13\ => count_ocr_n_24,
      \fc_raddr_reg[2]_14\ => count_ocr_n_25,
      \fc_raddr_reg[2]_15\ => count_ocr_n_26,
      \fc_raddr_reg[2]_16\ => count_ocr_n_27,
      \fc_raddr_reg[2]_17\ => count_ocr_n_28,
      \fc_raddr_reg[2]_18\ => count_ocr_n_29,
      \fc_raddr_reg[2]_19\ => count_ocr_n_30,
      \fc_raddr_reg[2]_2\ => count_ocr_n_13,
      \fc_raddr_reg[2]_20\ => count_ocr_n_31,
      \fc_raddr_reg[2]_21\ => count_ocr_n_32,
      \fc_raddr_reg[2]_3\ => count_ocr_n_14,
      \fc_raddr_reg[2]_4\ => count_ocr_n_15,
      \fc_raddr_reg[2]_5\ => count_ocr_n_16,
      \fc_raddr_reg[2]_6\ => count_ocr_n_17,
      \fc_raddr_reg[2]_7\ => count_ocr_n_18,
      \fc_raddr_reg[2]_8\ => count_ocr_n_19,
      \fc_raddr_reg[2]_9\ => count_ocr_n_20,
      \fc_raddr_reg[3]\(8) => count_ocr_n_1,
      \fc_raddr_reg[3]\(7) => count_ocr_n_2,
      \fc_raddr_reg[3]\(6) => count_ocr_n_3,
      \fc_raddr_reg[3]\(5) => count_ocr_n_4,
      \fc_raddr_reg[3]\(4) => count_ocr_n_5,
      \fc_raddr_reg[3]\(3) => count_ocr_n_6,
      \fc_raddr_reg[3]\(2) => count_ocr_n_7,
      \fc_raddr_reg[3]\(1) => count_ocr_n_8,
      \fc_raddr_reg[3]\(0) => count_ocr_n_9,
      \io_r_data[0]_i_2\ => count_ds_n_32,
      \io_r_data[10]_i_2\ => count_ds_n_22,
      \io_r_data[11]_i_2_0\ => count_ds_n_21,
      \io_r_data[12]_i_2\ => count_ds_n_20,
      \io_r_data[13]_i_2_0\ => count_ds_n_19,
      \io_r_data[14]_i_2_0\ => count_ds_n_18,
      \io_r_data[15]_i_2\ => count_ds_n_17,
      \io_r_data[16]_i_2\ => count_ds_n_16,
      \io_r_data[17]_i_2\ => count_ds_n_15,
      \io_r_data[18]_i_2_0\ => count_ds_n_14,
      \io_r_data[19]_i_2\ => count_ds_n_13,
      \io_r_data[1]_i_2_0\ => count_ds_n_31,
      \io_r_data[20]_i_2\ => count_ds_n_12,
      \io_r_data[21]_i_2\ => count_ds_n_11,
      \io_r_data[22]_i_2_0\ => count_ds_n_10,
      \io_r_data[23]_i_2_0\ => count_ds_n_9,
      \io_r_data[24]_i_2\ => count_ds_n_8,
      \io_r_data[25]_i_2\ => count_ds_n_7,
      \io_r_data[26]_i_2\ => count_ds_n_6,
      \io_r_data[27]_i_2_0\ => count_ds_n_5,
      \io_r_data[28]_i_2\ => count_ds_n_4,
      \io_r_data[29]_i_2\ => count_ds_n_3,
      \io_r_data[2]_i_2\ => count_ds_n_30,
      \io_r_data[30]_i_2\ => count_ds_n_2,
      \io_r_data[31]_i_4\ => count_ds_n_1,
      \io_r_data[3]_i_2\ => count_ds_n_29,
      \io_r_data[4]_i_2\ => count_ds_n_28,
      \io_r_data[5]_i_2_0\ => count_ds_n_27,
      \io_r_data[6]_i_2\ => count_ds_n_26,
      \io_r_data[7]_i_2\ => count_ds_n_25,
      \io_r_data[8]_i_2\ => count_ds_n_24,
      \io_r_data[9]_i_2\ => count_ds_n_23,
      \io_r_data_reg[11]\ => \io_r_data[11]_i_3_n_0\,
      \io_r_data_reg[13]\ => \io_r_data[13]_i_3_n_0\,
      \io_r_data_reg[14]\ => \io_r_data[14]_i_3_n_0\,
      \io_r_data_reg[18]\ => \io_r_data[18]_i_3_n_0\,
      \io_r_data_reg[1]\ => \io_r_data[1]_i_3_n_0\,
      \io_r_data_reg[1]_0\ => \io_r_data[31]_i_6_n_0\,
      \io_r_data_reg[22]\ => \io_r_data[22]_i_3_n_0\,
      \io_r_data_reg[23]\ => \io_r_data[23]_i_3_n_0\,
      \io_r_data_reg[27]\ => \io_r_data[31]_i_3_n_0\,
      \io_r_data_reg[27]_0\ => \io_r_data[27]_i_3_n_0\,
      \io_r_data_reg[27]_1\(3 downto 0) => \io_r_data_reg[0]_0\(3 downto 0),
      \io_r_data_reg[27]_2\(8) => count_l1_n_24,
      \io_r_data_reg[27]_2\(7) => count_l1_n_25,
      \io_r_data_reg[27]_2\(6) => count_l1_n_26,
      \io_r_data_reg[27]_2\(5) => count_l1_n_27,
      \io_r_data_reg[27]_2\(4) => count_l1_n_28,
      \io_r_data_reg[27]_2\(3) => count_l1_n_29,
      \io_r_data_reg[27]_2\(2) => count_l1_n_30,
      \io_r_data_reg[27]_2\(1) => count_l1_n_31,
      \io_r_data_reg[27]_2\(0) => count_l1_n_32,
      \io_r_data_reg[27]_3\(8) => count_it_n_5,
      \io_r_data_reg[27]_3\(7) => count_it_n_9,
      \io_r_data_reg[27]_3\(6) => count_it_n_10,
      \io_r_data_reg[27]_3\(5) => count_it_n_14,
      \io_r_data_reg[27]_3\(4) => count_it_n_18,
      \io_r_data_reg[27]_3\(3) => count_it_n_19,
      \io_r_data_reg[27]_3\(2) => count_it_n_21,
      \io_r_data_reg[27]_3\(1) => count_it_n_27,
      \io_r_data_reg[27]_3\(0) => count_it_n_31,
      \io_r_data_reg[31]_i_7_0\(31 downto 0) => value(31 downto 0),
      \io_r_data_reg[31]_i_7_1\(11 downto 0) => data15(31 downto 20),
      \io_r_data_reg[5]\ => \io_r_data[5]_i_3_n_0\,
      s00_axi_aclk => s00_axi_aclk
    );
count_os: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_7
     port map (
      D(0) => counter_reg_8(0),
      Q(31) => count_os_n_1,
      Q(30) => count_os_n_2,
      Q(29) => count_os_n_3,
      Q(28) => count_os_n_4,
      Q(27) => count_os_n_5,
      Q(26) => count_os_n_6,
      Q(25) => count_os_n_7,
      Q(24) => count_os_n_8,
      Q(23) => count_os_n_9,
      Q(22) => count_os_n_10,
      Q(21) => count_os_n_11,
      Q(20) => count_os_n_12,
      Q(19) => count_os_n_13,
      Q(18) => count_os_n_14,
      Q(17) => count_os_n_15,
      Q(16) => count_os_n_16,
      Q(15) => count_os_n_17,
      Q(14) => count_os_n_18,
      Q(13) => count_os_n_19,
      Q(12) => count_os_n_20,
      Q(11) => count_os_n_21,
      Q(10) => count_os_n_22,
      Q(9) => count_os_n_23,
      Q(8) => count_os_n_24,
      Q(7) => count_os_n_25,
      Q(6) => count_os_n_26,
      Q(5) => count_os_n_27,
      Q(4) => count_os_n_28,
      Q(3) => count_os_n_29,
      Q(2) => count_os_n_30,
      Q(1) => count_os_n_31,
      Q(0) => count_os_n_32,
      S(0) => orbit_ctl_n_6,
      clear => clear,
      ext_lhc_clk => ext_lhc_clk,
      fc_orbitsync => fc_orbitsync,
      s00_axi_aclk => s00_axi_aclk
    );
debug_non_idle_now_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => debug_non_idle_now0,
      Q => fc_debug_non_idle_now,
      R => '0'
    );
enable_fc_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => \gen_write[0].CtlReg_reg_n_0_[0][0]\,
      Q => \^enable_fc\,
      R => '0'
    );
encoder: entity work.tester_fastcontrol_axi_0_0_hgcal_fast_control_encode
     port map (
      D(0) => counter_reg_3(0),
      DI(0) => \in\,
      S(0) => encoder_n_6,
      \cmd_reg[0]_0\ => \cmd_reg[0]\,
      \cmd_reg[0]_1\ => calib_ctl_n_6,
      \cmd_reg[1]_0\ => \cmd_reg[1]\,
      \cmd_reg[1]_1\ => calib_ctl_n_5,
      \cmd_reg[2]_0\ => \cmd_reg[2]\,
      \cmd_reg[2]_1\ => calib_ctl_n_7,
      \cmd_reg[3]_0\ => \cmd_reg[3]\,
      \cmd_reg[3]_1\ => calib_ctl_n_2,
      debug_non_idle_now0 => debug_non_idle_now0,
      enable_fc => \^enable_fc\,
      ext_lhc_clk => ext_lhc_clk,
      idleonly => idleonly,
      invalid_r_reg_0 => calib_ctl_n_4
    );
\gen_write[0].CtlReg[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFE0000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[0].CtlReg_reg_n_0_[0][0]\,
      I5 => \gen_write[1].CtlReg_reg[1][31]_0\(0),
      O => \gen_write[0].CtlReg[0][0]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      O => \gen_write[0].CtlReg[0][15]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(16),
      O => \gen_write[0].CtlReg[0][16]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(17),
      O => \gen_write[0].CtlReg[0][17]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(18),
      O => \gen_write[0].CtlReg[0][18]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(19),
      O => \gen_write[0].CtlReg[0][19]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(20),
      O => \gen_write[0].CtlReg[0][20]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(21),
      O => \gen_write[0].CtlReg[0][21]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(22),
      O => \gen_write[0].CtlReg[0][22]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(23),
      O => \gen_write[0].CtlReg[0][23]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(24),
      O => \gen_write[0].CtlReg[0][24]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(25),
      O => \gen_write[0].CtlReg[0][25]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(26),
      O => \gen_write[0].CtlReg[0][26]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(27),
      O => \gen_write[0].CtlReg[0][27]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(28),
      O => \gen_write[0].CtlReg[0][28]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(29),
      O => \gen_write[0].CtlReg[0][29]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(30),
      O => \gen_write[0].CtlReg[0][30]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(31),
      O => \gen_write[0].CtlReg[0][31]_i_1_n_0\
    );
\gen_write[0].CtlReg_reg[0][0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][0]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][0]\,
      S => reset_io
    );
\gen_write[0].CtlReg_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(10),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][10]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(11),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][11]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(12),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][12]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(13),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][13]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(14),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][14]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(15),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][15]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][16]_i_1_n_0\,
      Q => req_single_calib,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][17]_i_1_n_0\,
      Q => req_orbitcountreset,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][18]_i_1_n_0\,
      Q => req_linkreset,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][19]_i_1_n_0\,
      Q => req_daqresync,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(1),
      Q => p_0_in,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][20]_i_1_n_0\,
      Q => req_single_l1agen_A,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][21]_i_1_n_0\,
      Q => req_single_l1agen_B,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][22]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][22]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][23]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][23]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][24]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][24]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][25]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][25]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][26]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][26]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][27]_i_1_n_0\,
      Q => req_internal_test,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][28]_i_1_n_0\,
      Q => reset_counters_io,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][29]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][29]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(2),
      Q => enable_orbitsync,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][30]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][30]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][31]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][31]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(3),
      Q => enable_periodic_calib,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(4),
      Q => enable_calibrationl1a,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(5),
      Q => enable_l1agen_A,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(6),
      Q => enable_l1agen_B,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(7),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][7]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(8),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][8]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(9),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][9]\,
      R => reset_io
    );
\gen_write[1].CtlReg[1][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      I3 => Q(1),
      O => p_0_in_0
    );
\gen_write[1].CtlReg[1][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => s00_axi_wstrb(0),
      I2 => \gen_write[0].CtlReg_reg[0][1]_0\(0),
      I3 => \gen_write[0].CtlReg_reg[0][1]_0\(1),
      I4 => Q(4),
      I5 => Q(3),
      O => \gen_write[1].CtlReg[1][31]_i_2_n_0\
    );
\gen_write[1].CtlReg_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(0),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][0]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][10]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(10),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][10]\,
      S => reset_io
    );
\gen_write[1].CtlReg_reg[1][11]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(11),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][11]\,
      S => reset_io
    );
\gen_write[1].CtlReg_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(12),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][12]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(13),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][13]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(14),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][14]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(15),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][15]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(16),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][16]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(17),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][17]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(18),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][18]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(19),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][19]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(1),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][1]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(20),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][20]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(21),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][21]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(22),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][22]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(23),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][23]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(24),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][24]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(25),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][25]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(26),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][26]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(27),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][27]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(28),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][28]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(29),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][29]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(2),
      Q => p_0_in0,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(30),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][30]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(31),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][31]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(3),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][3]\,
      S => reset_io
    );
\gen_write[1].CtlReg_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(4),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][4]\,
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(5),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][5]\,
      S => reset_io
    );
\gen_write[1].CtlReg_reg[1][6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(6),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][6]\,
      S => reset_io
    );
\gen_write[1].CtlReg_reg[1][7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(7),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][7]\,
      S => reset_io
    );
\gen_write[1].CtlReg_reg[1][8]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(8),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][8]\,
      S => reset_io
    );
\gen_write[1].CtlReg_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in_0,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(9),
      Q => \gen_write[1].CtlReg_reg_n_0_[1][9]\,
      R => reset_io
    );
\gen_write[2].CtlReg[2][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      O => \gen_write[2].CtlReg[2][31]_i_1_n_0\
    );
\gen_write[2].CtlReg_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(0),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][0]\,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(10),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][10]\,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(11),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][11]\,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(12),
      Q => bx_target(0),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(13),
      Q => bx_target(1),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][14]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(14),
      Q => bx_target(2),
      S => reset_io
    );
\gen_write[2].CtlReg_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(15),
      Q => bx_target(3),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][16]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(16),
      Q => bx_target(4),
      S => reset_io
    );
\gen_write[2].CtlReg_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(17),
      Q => bx_target(5),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][18]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(18),
      Q => bx_target(6),
      S => reset_io
    );
\gen_write[2].CtlReg_reg[2][19]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(19),
      Q => bx_target(7),
      S => reset_io
    );
\gen_write[2].CtlReg_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(1),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][1]\,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][20]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(20),
      Q => bx_target(8),
      S => reset_io
    );
\gen_write[2].CtlReg_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(21),
      Q => bx_target(9),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][22]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(22),
      Q => bx_target(10),
      S => reset_io
    );
\gen_write[2].CtlReg_reg[2][23]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(23),
      Q => bx_target(11),
      S => reset_io
    );
\gen_write[2].CtlReg_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(24),
      Q => calib_l1a_as_normal,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(25),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][25]\,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(26),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][26]\,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(27),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][27]\,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(28),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][28]\,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(29),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][29]\,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(2),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][2]\,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(30),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][30]\,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(31),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][31]\,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(3),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][3]\,
      S => reset_io
    );
\gen_write[2].CtlReg_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(4),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][4]\,
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(5),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][5]\,
      S => reset_io
    );
\gen_write[2].CtlReg_reg[2][6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(6),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][6]\,
      S => reset_io
    );
\gen_write[2].CtlReg_reg[2][7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(7),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][7]\,
      S => reset_io
    );
\gen_write[2].CtlReg_reg[2][8]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(8),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][8]\,
      S => reset_io
    );
\gen_write[2].CtlReg_reg[2][9]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(9),
      Q => \gen_write[2].CtlReg_reg_n_0_[2][9]\,
      S => reset_io
    );
\gen_write[3].CtlReg[3][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      O => \gen_write[3].CtlReg[3][31]_i_1_n_0\
    );
\gen_write[3].CtlReg_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(0),
      Q => \gen_write[3].CtlReg_reg[3]\(0),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(10),
      Q => \gen_write[3].CtlReg_reg[3]\(10),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(11),
      Q => \gen_write[3].CtlReg_reg[3]\(11),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(12),
      Q => \gen_write[3].CtlReg_reg[3]\(12),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(13),
      Q => \gen_write[3].CtlReg_reg[3]\(13),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(14),
      Q => \gen_write[3].CtlReg_reg[3]\(14),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(15),
      Q => \gen_write[3].CtlReg_reg[3]\(15),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(16),
      Q => \gen_write[3].CtlReg_reg[3]\(16),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(17),
      Q => \gen_write[3].CtlReg_reg[3]\(17),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(18),
      Q => \gen_write[3].CtlReg_reg[3]\(18),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(19),
      Q => \gen_write[3].CtlReg_reg[3]\(19),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(1),
      Q => \gen_write[3].CtlReg_reg[3]\(1),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(20),
      Q => \gen_write[3].CtlReg_reg[3]\(20),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(21),
      Q => \gen_write[3].CtlReg_reg[3]\(21),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(22),
      Q => \gen_write[3].CtlReg_reg[3]\(22),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(23),
      Q => \gen_write[3].CtlReg_reg[3]\(23),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(24),
      Q => \gen_write[3].CtlReg_reg[3]\(24),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(25),
      Q => \gen_write[3].CtlReg_reg[3]\(25),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(26),
      Q => \gen_write[3].CtlReg_reg[3]\(26),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(27),
      Q => \gen_write[3].CtlReg_reg[3]\(27),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(28),
      Q => \gen_write[3].CtlReg_reg[3]\(28),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(29),
      Q => \gen_write[3].CtlReg_reg[3]\(29),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(2),
      Q => \gen_write[3].CtlReg_reg[3]\(2),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(30),
      Q => \gen_write[3].CtlReg_reg[3]\(30),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(31),
      Q => \gen_write[3].CtlReg_reg[3]\(31),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(3),
      Q => \gen_write[3].CtlReg_reg[3]\(3),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(4),
      Q => \gen_write[3].CtlReg_reg[3]\(4),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(5),
      Q => \gen_write[3].CtlReg_reg[3]\(5),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(6),
      Q => \gen_write[3].CtlReg_reg[3]\(6),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(7),
      Q => \gen_write[3].CtlReg_reg[3]\(7),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(8),
      Q => \gen_write[3].CtlReg_reg[3]\(8),
      R => reset_io
    );
\gen_write[3].CtlReg_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[3].CtlReg[3][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(9),
      Q => \gen_write[3].CtlReg_reg[3]\(9),
      R => reset_io
    );
\gen_write[4].CtlReg[4][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      O => \gen_write[4].CtlReg[4][31]_i_1_n_0\
    );
\gen_write[4].CtlReg_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(0),
      Q => \gen_write[4].CtlReg_reg_n_0_[4][0]\,
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(10),
      Q => \gen_write[4].CtlReg_reg_n_0_[4][10]\,
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(11),
      Q => \gen_write[4].CtlReg_reg_n_0_[4][11]\,
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(12),
      Q => periodic_prescale(0),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(13),
      Q => periodic_prescale(1),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(14),
      Q => periodic_prescale(2),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(15),
      Q => periodic_prescale(3),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(16),
      Q => periodic_prescale(4),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(17),
      Q => periodic_prescale(5),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(18),
      Q => periodic_prescale(6),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(19),
      Q => periodic_prescale(7),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(1),
      Q => \gen_write[4].CtlReg_reg_n_0_[4][1]\,
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(20),
      Q => periodic_prescale(8),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(21),
      Q => periodic_prescale(9),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(22),
      Q => periodic_prescale(10),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(23),
      Q => periodic_prescale(11),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(24),
      Q => periodic_prescale(12),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(25),
      Q => periodic_prescale(13),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(26),
      Q => periodic_prescale(14),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(27),
      Q => periodic_prescale(15),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(28),
      Q => periodic_prescale(16),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(29),
      Q => periodic_prescale(17),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(2),
      Q => \gen_write[4].CtlReg_reg_n_0_[4][2]\,
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(30),
      Q => periodic_prescale(18),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(31),
      Q => periodic_prescale(19),
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(3),
      Q => \gen_write[4].CtlReg_reg_n_0_[4][3]\,
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(4),
      Q => \gen_write[4].CtlReg_reg_n_0_[4][4]\,
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(5),
      Q => \gen_write[4].CtlReg_reg_n_0_[4][5]\,
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(6),
      Q => \gen_write[4].CtlReg_reg_n_0_[4][6]\,
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(7),
      Q => \gen_write[4].CtlReg_reg_n_0_[4][7]\,
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(8),
      Q => \gen_write[4].CtlReg_reg_n_0_[4][8]\,
      R => reset_io
    );
\gen_write[4].CtlReg_reg[4][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[4].CtlReg[4][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(9),
      Q => \gen_write[4].CtlReg_reg_n_0_[4][9]\,
      R => reset_io
    );
\gen_write[5].CtlReg[5][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \gen_write[1].CtlReg[1][31]_i_2_n_0\,
      O => \gen_write[5].CtlReg[5][31]_i_1_n_0\
    );
\gen_write[5].CtlReg_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(0),
      Q => \gen_write[5].CtlReg_reg[5]\(0),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(10),
      Q => \gen_write[5].CtlReg_reg[5]\(10),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(11),
      Q => \gen_write[5].CtlReg_reg[5]\(11),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(12),
      Q => \gen_write[5].CtlReg_reg[5]\(12),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(13),
      Q => \gen_write[5].CtlReg_reg[5]\(13),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(14),
      Q => \gen_write[5].CtlReg_reg[5]\(14),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(15),
      Q => \gen_write[5].CtlReg_reg[5]\(15),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(16),
      Q => \gen_write[5].CtlReg_reg[5]\(16),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(17),
      Q => \gen_write[5].CtlReg_reg[5]\(17),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(18),
      Q => \gen_write[5].CtlReg_reg[5]\(18),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(19),
      Q => \gen_write[5].CtlReg_reg[5]\(19),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(1),
      Q => \gen_write[5].CtlReg_reg[5]\(1),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(20),
      Q => \gen_write[5].CtlReg_reg[5]\(20),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(21),
      Q => \gen_write[5].CtlReg_reg[5]\(21),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(22),
      Q => \gen_write[5].CtlReg_reg[5]\(22),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(23),
      Q => \gen_write[5].CtlReg_reg[5]\(23),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(24),
      Q => \gen_write[5].CtlReg_reg[5]\(24),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(25),
      Q => \gen_write[5].CtlReg_reg[5]\(25),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(26),
      Q => \gen_write[5].CtlReg_reg[5]\(26),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(27),
      Q => \gen_write[5].CtlReg_reg[5]\(27),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(28),
      Q => \gen_write[5].CtlReg_reg[5]\(28),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(29),
      Q => \gen_write[5].CtlReg_reg[5]\(29),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(2),
      Q => \gen_write[5].CtlReg_reg[5]\(2),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(30),
      Q => \gen_write[5].CtlReg_reg[5]\(30),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(31),
      Q => \gen_write[5].CtlReg_reg[5]\(31),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(3),
      Q => \gen_write[5].CtlReg_reg[5]\(3),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(4),
      Q => \gen_write[5].CtlReg_reg[5]\(4),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(5),
      Q => \gen_write[5].CtlReg_reg[5]\(5),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(6),
      Q => \gen_write[5].CtlReg_reg[5]\(6),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(7),
      Q => \gen_write[5].CtlReg_reg[5]\(7),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(8),
      Q => \gen_write[5].CtlReg_reg[5]\(8),
      R => reset_io
    );
\gen_write[5].CtlReg_reg[5][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[5].CtlReg[5][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(9),
      Q => \gen_write[5].CtlReg_reg[5]\(9),
      R => reset_io
    );
idleonly_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => p_0_in,
      Q => idleonly,
      R => '0'
    );
\io_r_data[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(0),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => \gen_write[4].CtlReg_reg_n_0_[4][0]\,
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[0]_i_5_n_0\,
      O => \io_r_data[0]_i_3_n_0\
    );
\io_r_data[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(0),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][0]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][0]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][0]\,
      O => \io_r_data[0]_i_5_n_0\
    );
\io_r_data[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(10),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => \gen_write[4].CtlReg_reg_n_0_[4][10]\,
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[10]_i_5_n_0\,
      O => \io_r_data[10]_i_3_n_0\
    );
\io_r_data[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(10),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][10]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][10]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][10]\,
      O => \io_r_data[10]_i_5_n_0\
    );
\io_r_data[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(11),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => \gen_write[4].CtlReg_reg_n_0_[4][11]\,
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[11]_i_5_n_0\,
      O => \io_r_data[11]_i_3_n_0\
    );
\io_r_data[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(11),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][11]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][11]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][11]\,
      O => \io_r_data[11]_i_5_n_0\
    );
\io_r_data[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(12),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(0),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[12]_i_5_n_0\,
      O => \io_r_data[12]_i_3_n_0\
    );
\io_r_data[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(12),
      I1 => bx_target(0),
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][12]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][12]\,
      O => \io_r_data[12]_i_5_n_0\
    );
\io_r_data[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(13),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(1),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[13]_i_5_n_0\,
      O => \io_r_data[13]_i_3_n_0\
    );
\io_r_data[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(13),
      I1 => bx_target(1),
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][13]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][13]\,
      O => \io_r_data[13]_i_5_n_0\
    );
\io_r_data[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(14),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(2),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[14]_i_5_n_0\,
      O => \io_r_data[14]_i_3_n_0\
    );
\io_r_data[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(14),
      I1 => bx_target(2),
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][14]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][14]\,
      O => \io_r_data[14]_i_5_n_0\
    );
\io_r_data[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(15),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(3),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[15]_i_5_n_0\,
      O => \io_r_data[15]_i_3_n_0\
    );
\io_r_data[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(15),
      I1 => bx_target(3),
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][15]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][15]\,
      O => \io_r_data[15]_i_5_n_0\
    );
\io_r_data[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(16),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(4),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[16]_i_5_n_0\,
      O => \io_r_data[16]_i_3_n_0\
    );
\io_r_data[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(16),
      I1 => bx_target(4),
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][16]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => req_single_calib,
      O => \io_r_data[16]_i_5_n_0\
    );
\io_r_data[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(17),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(5),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[17]_i_5_n_0\,
      O => \io_r_data[17]_i_3_n_0\
    );
\io_r_data[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(17),
      I1 => bx_target(5),
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][17]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => req_orbitcountreset,
      O => \io_r_data[17]_i_5_n_0\
    );
\io_r_data[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(18),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(6),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[18]_i_5_n_0\,
      O => \io_r_data[18]_i_3_n_0\
    );
\io_r_data[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(18),
      I1 => bx_target(6),
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][18]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => req_linkreset,
      O => \io_r_data[18]_i_5_n_0\
    );
\io_r_data[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(19),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(7),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[19]_i_5_n_0\,
      O => \io_r_data[19]_i_3_n_0\
    );
\io_r_data[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(19),
      I1 => bx_target(7),
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][19]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => req_daqresync,
      O => \io_r_data[19]_i_5_n_0\
    );
\io_r_data[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(1),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => \gen_write[4].CtlReg_reg_n_0_[4][1]\,
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[1]_i_5_n_0\,
      O => \io_r_data[1]_i_3_n_0\
    );
\io_r_data[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(1),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][1]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][1]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => p_0_in,
      O => \io_r_data[1]_i_5_n_0\
    );
\io_r_data[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(20),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(8),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[20]_i_5_n_0\,
      O => \io_r_data[20]_i_3_n_0\
    );
\io_r_data[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(20),
      I1 => bx_target(8),
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][20]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => req_single_l1agen_A,
      O => \io_r_data[20]_i_5_n_0\
    );
\io_r_data[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(21),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(9),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[21]_i_5_n_0\,
      O => \io_r_data[21]_i_3_n_0\
    );
\io_r_data[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(21),
      I1 => bx_target(9),
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][21]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => req_single_l1agen_B,
      O => \io_r_data[21]_i_5_n_0\
    );
\io_r_data[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(22),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(10),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[22]_i_5_n_0\,
      O => \io_r_data[22]_i_3_n_0\
    );
\io_r_data[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(22),
      I1 => bx_target(10),
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][22]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][22]\,
      O => \io_r_data[22]_i_5_n_0\
    );
\io_r_data[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(23),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(11),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[23]_i_5_n_0\,
      O => \io_r_data[23]_i_3_n_0\
    );
\io_r_data[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(23),
      I1 => bx_target(11),
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][23]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][23]\,
      O => \io_r_data[23]_i_5_n_0\
    );
\io_r_data[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(24),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(12),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[24]_i_5_n_0\,
      O => \io_r_data[24]_i_3_n_0\
    );
\io_r_data[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(24),
      I1 => calib_l1a_as_normal,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][24]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][24]\,
      O => \io_r_data[24]_i_5_n_0\
    );
\io_r_data[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(25),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(13),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[25]_i_5_n_0\,
      O => \io_r_data[25]_i_3_n_0\
    );
\io_r_data[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(25),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][25]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][25]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][25]\,
      O => \io_r_data[25]_i_5_n_0\
    );
\io_r_data[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(26),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(14),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[26]_i_5_n_0\,
      O => \io_r_data[26]_i_3_n_0\
    );
\io_r_data[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(26),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][26]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][26]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][26]\,
      O => \io_r_data[26]_i_5_n_0\
    );
\io_r_data[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(27),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(15),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[27]_i_5_n_0\,
      O => \io_r_data[27]_i_3_n_0\
    );
\io_r_data[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(27),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][27]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][27]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => req_internal_test,
      O => \io_r_data[27]_i_5_n_0\
    );
\io_r_data[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(28),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(16),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[28]_i_5_n_0\,
      O => \io_r_data[28]_i_3_n_0\
    );
\io_r_data[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(28),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][28]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][28]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => reset_counters_io,
      O => \io_r_data[28]_i_5_n_0\
    );
\io_r_data[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(29),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(17),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[29]_i_5_n_0\,
      O => \io_r_data[29]_i_3_n_0\
    );
\io_r_data[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(29),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][29]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][29]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][29]\,
      O => \io_r_data[29]_i_5_n_0\
    );
\io_r_data[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(2),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => \gen_write[4].CtlReg_reg_n_0_[4][2]\,
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[2]_i_5_n_0\,
      O => \io_r_data[2]_i_3_n_0\
    );
\io_r_data[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(2),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][2]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => p_0_in0,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => enable_orbitsync,
      O => \io_r_data[2]_i_5_n_0\
    );
\io_r_data[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(30),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(18),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[30]_i_5_n_0\,
      O => \io_r_data[30]_i_3_n_0\
    );
\io_r_data[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(30),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][30]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][30]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][30]\,
      O => \io_r_data[30]_i_5_n_0\
    );
\io_r_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \io_r_data_reg[0]_0\(3),
      I1 => \io_r_data_reg[0]_0\(4),
      O => \io_r_data[31]_i_1_n_0\
    );
\io_r_data[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \io_r_data_reg[0]_0\(3),
      I1 => \io_r_data_reg[0]_0\(4),
      O => \io_r_data[31]_i_3_n_0\
    );
\io_r_data[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(31),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => periodic_prescale(19),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[31]_i_8_n_0\,
      O => \io_r_data[31]_i_5_n_0\
    );
\io_r_data[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \io_r_data_reg[0]_0\(2),
      I1 => \io_r_data_reg[0]_0\(3),
      I2 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[31]_i_6_n_0\
    );
\io_r_data[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(31),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][31]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][31]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][31]\,
      O => \io_r_data[31]_i_8_n_0\
    );
\io_r_data[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(3),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => \gen_write[4].CtlReg_reg_n_0_[4][3]\,
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[3]_i_5_n_0\,
      O => \io_r_data[3]_i_3_n_0\
    );
\io_r_data[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(3),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][3]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][3]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => enable_periodic_calib,
      O => \io_r_data[3]_i_5_n_0\
    );
\io_r_data[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(4),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => \gen_write[4].CtlReg_reg_n_0_[4][4]\,
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[4]_i_5_n_0\,
      O => \io_r_data[4]_i_3_n_0\
    );
\io_r_data[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(4),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][4]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][4]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => enable_calibrationl1a,
      O => \io_r_data[4]_i_5_n_0\
    );
\io_r_data[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(5),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => \gen_write[4].CtlReg_reg_n_0_[4][5]\,
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[5]_i_5_n_0\,
      O => \io_r_data[5]_i_3_n_0\
    );
\io_r_data[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(5),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][5]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][5]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => enable_l1agen_A,
      O => \io_r_data[5]_i_5_n_0\
    );
\io_r_data[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(6),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => \gen_write[4].CtlReg_reg_n_0_[4][6]\,
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[6]_i_5_n_0\,
      O => \io_r_data[6]_i_3_n_0\
    );
\io_r_data[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(6),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][6]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][6]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => enable_l1agen_B,
      O => \io_r_data[6]_i_5_n_0\
    );
\io_r_data[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(7),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => \gen_write[4].CtlReg_reg_n_0_[4][7]\,
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[7]_i_5_n_0\,
      O => \io_r_data[7]_i_3_n_0\
    );
\io_r_data[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(7),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][7]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][7]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][7]\,
      O => \io_r_data[7]_i_5_n_0\
    );
\io_r_data[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(8),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => \gen_write[4].CtlReg_reg_n_0_[4][8]\,
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[8]_i_5_n_0\,
      O => \io_r_data[8]_i_3_n_0\
    );
\io_r_data[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(8),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][8]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][8]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][8]\,
      O => \io_r_data[8]_i_5_n_0\
    );
\io_r_data[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_write[5].CtlReg_reg[5]\(9),
      I1 => \io_r_data_reg[0]_0\(0),
      I2 => \gen_write[4].CtlReg_reg_n_0_[4][9]\,
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data[9]_i_5_n_0\,
      O => \io_r_data[9]_i_3_n_0\
    );
\io_r_data[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \gen_write[3].CtlReg_reg[3]\(9),
      I1 => \gen_write[2].CtlReg_reg_n_0_[2][9]\,
      I2 => \io_r_data_reg[0]_0\(1),
      I3 => \gen_write[1].CtlReg_reg_n_0_[1][9]\,
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[0].CtlReg_reg_n_0_[0][9]\,
      O => \io_r_data[9]_i_5_n_0\
    );
\io_r_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_23,
      Q => \io_r_data_reg[31]_0\(0),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_15,
      Q => \io_r_data_reg[31]_0\(10),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_ocr_n_7,
      Q => \io_r_data_reg[31]_0\(11),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_14,
      Q => \io_r_data_reg[31]_0\(12),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_ocr_n_6,
      Q => \io_r_data_reg[31]_0\(13),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_ocr_n_5,
      Q => \io_r_data_reg[31]_0\(14),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_13,
      Q => \io_r_data_reg[31]_0\(15),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_12,
      Q => \io_r_data_reg[31]_0\(16),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_11,
      Q => \io_r_data_reg[31]_0\(17),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_ocr_n_4,
      Q => \io_r_data_reg[31]_0\(18),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_10,
      Q => \io_r_data_reg[31]_0\(19),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_ocr_n_9,
      Q => \io_r_data_reg[31]_0\(1),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_9,
      Q => \io_r_data_reg[31]_0\(20),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_8,
      Q => \io_r_data_reg[31]_0\(21),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_ocr_n_3,
      Q => \io_r_data_reg[31]_0\(22),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_ocr_n_2,
      Q => \io_r_data_reg[31]_0\(23),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_7,
      Q => \io_r_data_reg[31]_0\(24),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_6,
      Q => \io_r_data_reg[31]_0\(25),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_5,
      Q => \io_r_data_reg[31]_0\(26),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_ocr_n_1,
      Q => \io_r_data_reg[31]_0\(27),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_4,
      Q => \io_r_data_reg[31]_0\(28),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_3,
      Q => \io_r_data_reg[31]_0\(29),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_22,
      Q => \io_r_data_reg[31]_0\(2),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_2,
      Q => \io_r_data_reg[31]_0\(30),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_1,
      Q => \io_r_data_reg[31]_0\(31),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_21,
      Q => \io_r_data_reg[31]_0\(3),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_20,
      Q => \io_r_data_reg[31]_0\(4),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_ocr_n_8,
      Q => \io_r_data_reg[31]_0\(5),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_19,
      Q => \io_r_data_reg[31]_0\(6),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_18,
      Q => \io_r_data_reg[31]_0\(7),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_17,
      Q => \io_r_data_reg[31]_0\(8),
      R => \io_r_data[31]_i_1_n_0\
    );
\io_r_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_l1_n_16,
      Q => \io_r_data_reg[31]_0\(9),
      R => \io_r_data[31]_i_1_n_0\
    );
l1agen_A: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a
     port map (
      Q(0) => req_single_l1agen_A,
      enable_l1agen_A => enable_l1agen_A,
      ext_lhc_clk => ext_lhc_clk,
      fc_l1agen_A => fc_l1agen_A,
      \pending_i_3__0\(11 downto 0) => bx(11 downto 0),
      periodic_counter => periodic_counter,
      periodic_counter0_carry_0(31 downto 12) => periodic_prescale(19 downto 0),
      periodic_counter0_carry_0(11) => \gen_write[4].CtlReg_reg_n_0_[4][11]\,
      periodic_counter0_carry_0(10) => \gen_write[4].CtlReg_reg_n_0_[4][10]\,
      periodic_counter0_carry_0(9) => \gen_write[4].CtlReg_reg_n_0_[4][9]\,
      periodic_counter0_carry_0(8) => \gen_write[4].CtlReg_reg_n_0_[4][8]\,
      periodic_counter0_carry_0(7) => \gen_write[4].CtlReg_reg_n_0_[4][7]\,
      periodic_counter0_carry_0(6) => \gen_write[4].CtlReg_reg_n_0_[4][6]\,
      periodic_counter0_carry_0(5) => \gen_write[4].CtlReg_reg_n_0_[4][5]\,
      periodic_counter0_carry_0(4) => \gen_write[4].CtlReg_reg_n_0_[4][4]\,
      periodic_counter0_carry_0(3) => \gen_write[4].CtlReg_reg_n_0_[4][3]\,
      periodic_counter0_carry_0(2) => \gen_write[4].CtlReg_reg_n_0_[4][2]\,
      periodic_counter0_carry_0(1) => \gen_write[4].CtlReg_reg_n_0_[4][1]\,
      periodic_counter0_carry_0(0) => \gen_write[4].CtlReg_reg_n_0_[4][0]\,
      reset_40 => reset_40,
      veto_l1agen_A => veto_l1agen_A
    );
l1agen_B: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a_8
     port map (
      DI(0) => l1agen_B_n_5,
      Q(0) => req_single_l1agen_B,
      enable_l1agen_B => enable_l1agen_B,
      ext_lhc_clk => ext_lhc_clk,
      fc_daqresync => fc_daqresync,
      fc_internaltest => fc_internaltest,
      fc_l1a => fc_l1a,
      fc_l1a_for_calib => fc_l1a_for_calib,
      fc_l1agen_A => fc_l1agen_A,
      fc_l1agen_B => fc_l1agen_B,
      fc_linkreset => fc_linkreset,
      fc_orbitcountreset => fc_orbitcountreset,
      fire_reg => l1agen_B_n_3,
      pending_reg(11 downto 0) => bx(11 downto 0),
      periodic_counter => periodic_counter,
      periodic_counter0_carry_0(31 downto 0) => \gen_write[5].CtlReg_reg[5]\(31 downto 0),
      reset_40 => reset_40,
      veto_l1agen_B => veto_l1agen_B
    );
\latch_fast_control[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \latch_fast_control_reg[1]\(0),
      I1 => idleonly,
      I2 => \^enable_fc\,
      O => \phase_reg[0]\
    );
orbit_ctl: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_orbitsync
     port map (
      D(0) => counter_reg_7(0),
      Q(0) => req_orbitcountreset,
      S(0) => orbit_ctl_n_5,
      \counter_reg[7]\(0) => counter_reg_8(0),
      enable_orbitsync => enable_orbitsync,
      ext_lhc_clk => ext_lhc_clk,
      fc_calibrationl1a => fc_calibrationl1a,
      fc_calibrationreq => fc_calibrationreq,
      fc_daqresync => fc_daqresync,
      fc_internaltest => fc_internaltest,
      fc_l1a => fc_l1a,
      fc_linkreset => fc_linkreset,
      fc_orbitcountreset => fc_orbitcountreset,
      fc_orbitsync => fc_orbitsync,
      fire_reg => orbit_ctl_n_3,
      fire_reg_0 => orbit_ctl_n_4,
      fire_reg_1(0) => orbit_ctl_n_6,
      invalid_r_reg => ss_daqresync_n_2,
      invalid_r_reg_0 => calib_ctl_n_8,
      nextos => nextos,
      \pending_i_3__2\(11 downto 0) => bx(11 downto 0),
      reset_40 => reset_40,
      \start_sequence_40_reg[11]\(11) => \gen_write[1].CtlReg_reg_n_0_[1][11]\,
      \start_sequence_40_reg[11]\(10) => \gen_write[1].CtlReg_reg_n_0_[1][10]\,
      \start_sequence_40_reg[11]\(9) => \gen_write[1].CtlReg_reg_n_0_[1][9]\,
      \start_sequence_40_reg[11]\(8) => \gen_write[1].CtlReg_reg_n_0_[1][8]\,
      \start_sequence_40_reg[11]\(7) => \gen_write[1].CtlReg_reg_n_0_[1][7]\,
      \start_sequence_40_reg[11]\(6) => \gen_write[1].CtlReg_reg_n_0_[1][6]\,
      \start_sequence_40_reg[11]\(5) => \gen_write[1].CtlReg_reg_n_0_[1][5]\,
      \start_sequence_40_reg[11]\(4) => \gen_write[1].CtlReg_reg_n_0_[1][4]\,
      \start_sequence_40_reg[11]\(3) => \gen_write[1].CtlReg_reg_n_0_[1][3]\,
      \start_sequence_40_reg[11]\(2) => p_0_in0,
      \start_sequence_40_reg[11]\(1) => \gen_write[1].CtlReg_reg_n_0_[1][1]\,
      \start_sequence_40_reg[11]\(0) => \gen_write[1].CtlReg_reg_n_0_[1][0]\
    );
reset_40_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      D => fc_reset,
      Q => reset_40,
      R => '0'
    );
reset_counters_40_n_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_40,
      O => reset_counters_40_n_i_1_n_0
    );
reset_counters_40_n_reg: unisim.vcomponents.FDCE
     port map (
      C => ext_lhc_clk,
      CE => '1',
      CLR => reset_counters_io,
      D => reset_counters_40_n_i_1_n_0,
      Q => reset_counters_40_n
    );
reset_io_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => fc_reset,
      Q => reset_io,
      R => '0'
    );
ss_daqresync: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot
     port map (
      D(0) => counter_reg_2(0),
      Q(0) => req_daqresync,
      S(0) => ss_daqresync_n_3,
      ext_lhc_clk => ext_lhc_clk,
      fc_daqresync => fc_daqresync,
      fc_l1a_for_calib => fc_l1a_for_calib,
      fc_l1agen_A => fc_l1agen_A,
      fc_l1agen_B => fc_l1agen_B,
      fire_reg_0 => ss_daqresync_n_2,
      link_daq_resync => link_daq_resync,
      pending_reg_0 => calib_ctl_n_10,
      reset_40 => reset_40
    );
ss_internaltest: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_9
     port map (
      D(0) => counter_reg_4(0),
      Q(0) => req_internal_test,
      S(0) => ss_internaltest_n_2,
      ext_lhc_clk => ext_lhc_clk,
      fc_internaltest => fc_internaltest,
      link_daq_resync => link_daq_resync,
      pending_reg_0 => ss_internaltest_n_1,
      pending_reg_1 => calib_ctl_n_10,
      reset_40 => reset_40,
      will_fire => will_fire_0
    );
ss_linkreset: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_10
     port map (
      D(0) => counter_reg_6(0),
      Q(0) => req_linkreset,
      S(0) => ss_linkreset_n_2,
      ext_lhc_clk => ext_lhc_clk,
      fc_linkreset => fc_linkreset,
      link_reset_pending => link_reset_pending,
      reset_40 => reset_40,
      will_fire => will_fire
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0_S00_AXI is
  port (
    fc_debug_non_idle_now : out STD_LOGIC;
    fast_control_stream : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    ext_lhc_clk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ext_lhc_clk_X8 : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0_S00_AXI : entity is "fastcontrol_axi_v1_0_S00_AXI";
end tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0_S00_AXI;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0_S00_AXI is
  signal \FSM_sequential_axi_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_state[2]_i_2_n_0\ : STD_LOGIC;
  signal FastControlSerializer_n_1 : STD_LOGIC;
  signal FastControl_n_2 : STD_LOGIC;
  signal FastControl_n_3 : STD_LOGIC;
  signal FastControl_n_4 : STD_LOGIC;
  signal FastControl_n_5 : STD_LOGIC;
  signal FastControl_n_6 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal axi_rdata0 : STD_LOGIC;
  signal axi_rvalid0 : STD_LOGIC;
  signal axi_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_wready0 : STD_LOGIC;
  signal enable_fc : STD_LOGIC;
  signal fc_input : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fc_raddr : STD_LOGIC_VECTOR ( 3 to 3 );
  signal fc_raddr0 : STD_LOGIC;
  signal \fc_raddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \fc_raddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \fc_raddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \fc_raddr_reg_n_0_[4]\ : STD_LOGIC;
  signal fc_reset : STD_LOGIC;
  signal fc_reset0 : STD_LOGIC;
  signal fc_reset_i_2_n_0 : STD_LOGIC;
  signal fc_reset_i_3_n_0 : STD_LOGIC;
  signal fc_reset_i_4_n_0 : STD_LOGIC;
  signal fc_reset_i_5_n_0 : STD_LOGIC;
  signal fc_reset_i_6_n_0 : STD_LOGIC;
  signal fc_waddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal fc_waddr0 : STD_LOGIC;
  signal io_r_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_state_reg[0]\ : label is "STATE_WAIT_R:101,STATE_LATCH_R:110,STATE_DONE_R:100,STATE_LATCH_W:011,STATE_DO_W:010,STATE_DONE_W:000,STATE_IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_state_reg[1]\ : label is "STATE_WAIT_R:101,STATE_LATCH_R:110,STATE_DONE_R:100,STATE_LATCH_W:011,STATE_DO_W:010,STATE_DONE_W:000,STATE_IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_state_reg[2]\ : label is "STATE_WAIT_R:101,STATE_LATCH_R:110,STATE_DONE_R:100,STATE_LATCH_W:011,STATE_DO_W:010,STATE_DONE_W:000,STATE_IDLE:001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair30";
begin
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
\FSM_sequential_axi_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2F0020"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => axi_state(0),
      I2 => axi_state(2),
      I3 => axi_state(1),
      I4 => \FSM_sequential_axi_state[0]_i_2_n_0\,
      O => \FSM_sequential_axi_state[0]_i_1_n_0\
    );
\FSM_sequential_axi_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFF003333FFAA"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_wvalid,
      I3 => axi_state(2),
      I4 => axi_state(0),
      I5 => axi_state(1),
      O => \FSM_sequential_axi_state[0]_i_2_n_0\
    );
\FSM_sequential_axi_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => axi_state(2),
      I1 => axi_state(0),
      I2 => s00_axi_awvalid,
      I3 => s00_axi_arvalid,
      I4 => axi_state(1),
      O => \FSM_sequential_axi_state[1]_i_1_n_0\
    );
\FSM_sequential_axi_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => axi_state(0),
      I1 => axi_state(1),
      I2 => axi_state(2),
      O => \FSM_sequential_axi_state[2]_i_1_n_0\
    );
\FSM_sequential_axi_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFD3000"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => axi_state(1),
      I2 => axi_state(0),
      I3 => s00_axi_arvalid,
      I4 => axi_state(2),
      O => \FSM_sequential_axi_state[2]_i_2_n_0\
    );
\FSM_sequential_axi_state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_axi_state[2]_i_1_n_0\,
      D => \FSM_sequential_axi_state[0]_i_1_n_0\,
      Q => axi_state(0),
      S => axi_bvalid_i_1_n_0
    );
\FSM_sequential_axi_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_axi_state[2]_i_1_n_0\,
      D => \FSM_sequential_axi_state[1]_i_1_n_0\,
      Q => axi_state(1),
      R => axi_bvalid_i_1_n_0
    );
\FSM_sequential_axi_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_axi_state[2]_i_1_n_0\,
      D => \FSM_sequential_axi_state[2]_i_2_n_0\,
      Q => axi_state(2),
      R => axi_bvalid_i_1_n_0
    );
FastControl: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_manager
     port map (
      Q(4 downto 0) => fc_waddr(4 downto 0),
      \cmd_reg[0]\ => FastControl_n_5,
      \cmd_reg[1]\ => FastControl_n_4,
      \cmd_reg[2]\ => FastControl_n_3,
      \cmd_reg[3]\ => FastControl_n_2,
      enable_fc => enable_fc,
      ext_lhc_clk => ext_lhc_clk,
      fc_debug_non_idle_now => fc_debug_non_idle_now,
      fc_reset => fc_reset,
      \gen_write[0].CtlReg_reg[0][1]_0\(1) => axi_state(2),
      \gen_write[0].CtlReg_reg[0][1]_0\(0) => axi_state(0),
      \gen_write[1].CtlReg_reg[1][31]_0\(31 downto 0) => fc_input(31 downto 0),
      \io_r_data_reg[0]_0\(4) => \fc_raddr_reg_n_0_[4]\,
      \io_r_data_reg[0]_0\(3) => fc_raddr(3),
      \io_r_data_reg[0]_0\(2) => \fc_raddr_reg_n_0_[2]\,
      \io_r_data_reg[0]_0\(1) => \fc_raddr_reg_n_0_[1]\,
      \io_r_data_reg[0]_0\(0) => \fc_raddr_reg_n_0_[0]\,
      \io_r_data_reg[31]_0\(31 downto 0) => io_r_data(31 downto 0),
      \latch_fast_control_reg[1]\(0) => FastControlSerializer_n_1,
      \phase_reg[0]\ => FastControl_n_6,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0)
    );
FastControlSerializer: entity work.tester_fastcontrol_axi_0_0_hgcal_fc_simple_serializer
     port map (
      Q(0) => FastControlSerializer_n_1,
      enable_fc => enable_fc,
      ext_lhc_clk => ext_lhc_clk,
      ext_lhc_clk_X8 => ext_lhc_clk_X8,
      fast_control_stream => fast_control_stream,
      fc_reset => fc_reset,
      \latch_fast_control_reg[1]_0\ => FastControl_n_6,
      \latch_fast_control_reg[1]_1\ => FastControl_n_5,
      \latch_fast_control_reg[2]_0\ => FastControl_n_4,
      \latch_fast_control_reg[3]_0\ => FastControl_n_3,
      \latch_fast_control_reg[4]_0\ => FastControl_n_2
    );
axi_arready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => axi_state(0),
      I1 => axi_state(1),
      I2 => axi_state(2),
      I3 => s00_axi_arvalid,
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
      INIT => X"74444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s00_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
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
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_state(2),
      I1 => axi_state(1),
      O => axi_rdata0
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(0),
      Q => s00_axi_rdata(0),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(10),
      Q => s00_axi_rdata(10),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(11),
      Q => s00_axi_rdata(11),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(12),
      Q => s00_axi_rdata(12),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(13),
      Q => s00_axi_rdata(13),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(14),
      Q => s00_axi_rdata(14),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(15),
      Q => s00_axi_rdata(15),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(16),
      Q => s00_axi_rdata(16),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(17),
      Q => s00_axi_rdata(17),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(18),
      Q => s00_axi_rdata(18),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(19),
      Q => s00_axi_rdata(19),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(1),
      Q => s00_axi_rdata(1),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(20),
      Q => s00_axi_rdata(20),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(21),
      Q => s00_axi_rdata(21),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(22),
      Q => s00_axi_rdata(22),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(23),
      Q => s00_axi_rdata(23),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(24),
      Q => s00_axi_rdata(24),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(25),
      Q => s00_axi_rdata(25),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(26),
      Q => s00_axi_rdata(26),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(27),
      Q => s00_axi_rdata(27),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(28),
      Q => s00_axi_rdata(28),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(29),
      Q => s00_axi_rdata(29),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(2),
      Q => s00_axi_rdata(2),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(30),
      Q => s00_axi_rdata(30),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(31),
      Q => s00_axi_rdata(31),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(3),
      Q => s00_axi_rdata(3),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(4),
      Q => s00_axi_rdata(4),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(5),
      Q => s00_axi_rdata(5),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(6),
      Q => s00_axi_rdata(6),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(7),
      Q => s00_axi_rdata(7),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(8),
      Q => s00_axi_rdata(8),
      R => axi_bvalid_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_rdata0,
      D => io_r_data(9),
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
      INIT => X"0008"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => axi_state(2),
      I3 => axi_state(0),
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
\fc_input_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(0),
      Q => fc_input(0),
      R => '0'
    );
\fc_input_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(10),
      Q => fc_input(10),
      R => '0'
    );
\fc_input_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(11),
      Q => fc_input(11),
      R => '0'
    );
\fc_input_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(12),
      Q => fc_input(12),
      R => '0'
    );
\fc_input_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(13),
      Q => fc_input(13),
      R => '0'
    );
\fc_input_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(14),
      Q => fc_input(14),
      R => '0'
    );
\fc_input_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(15),
      Q => fc_input(15),
      R => '0'
    );
\fc_input_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(16),
      Q => fc_input(16),
      R => '0'
    );
\fc_input_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(17),
      Q => fc_input(17),
      R => '0'
    );
\fc_input_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(18),
      Q => fc_input(18),
      R => '0'
    );
\fc_input_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(19),
      Q => fc_input(19),
      R => '0'
    );
\fc_input_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(1),
      Q => fc_input(1),
      R => '0'
    );
\fc_input_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(20),
      Q => fc_input(20),
      R => '0'
    );
\fc_input_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(21),
      Q => fc_input(21),
      R => '0'
    );
\fc_input_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(22),
      Q => fc_input(22),
      R => '0'
    );
\fc_input_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(23),
      Q => fc_input(23),
      R => '0'
    );
\fc_input_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(24),
      Q => fc_input(24),
      R => '0'
    );
\fc_input_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(25),
      Q => fc_input(25),
      R => '0'
    );
\fc_input_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(26),
      Q => fc_input(26),
      R => '0'
    );
\fc_input_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(27),
      Q => fc_input(27),
      R => '0'
    );
\fc_input_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(28),
      Q => fc_input(28),
      R => '0'
    );
\fc_input_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(29),
      Q => fc_input(29),
      R => '0'
    );
\fc_input_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(2),
      Q => fc_input(2),
      R => '0'
    );
\fc_input_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(30),
      Q => fc_input(30),
      R => '0'
    );
\fc_input_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(31),
      Q => fc_input(31),
      R => '0'
    );
\fc_input_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(3),
      Q => fc_input(3),
      R => '0'
    );
\fc_input_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(4),
      Q => fc_input(4),
      R => '0'
    );
\fc_input_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(5),
      Q => fc_input(5),
      R => '0'
    );
\fc_input_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(6),
      Q => fc_input(6),
      R => '0'
    );
\fc_input_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(7),
      Q => fc_input(7),
      R => '0'
    );
\fc_input_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(8),
      Q => fc_input(8),
      R => '0'
    );
\fc_input_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(9),
      Q => fc_input(9),
      R => '0'
    );
\fc_raddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => axi_state(0),
      I2 => axi_state(1),
      I3 => axi_state(2),
      O => fc_raddr0
    );
\fc_raddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fc_raddr0,
      D => s00_axi_araddr(0),
      Q => \fc_raddr_reg_n_0_[0]\,
      R => '0'
    );
\fc_raddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fc_raddr0,
      D => s00_axi_araddr(1),
      Q => \fc_raddr_reg_n_0_[1]\,
      R => '0'
    );
\fc_raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fc_raddr0,
      D => s00_axi_araddr(2),
      Q => \fc_raddr_reg_n_0_[2]\,
      R => '0'
    );
\fc_raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fc_raddr0,
      D => s00_axi_araddr(3),
      Q => fc_raddr(3),
      R => '0'
    );
\fc_raddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fc_raddr0,
      D => s00_axi_araddr(4),
      Q => \fc_raddr_reg_n_0_[4]\,
      R => '0'
    );
fc_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => fc_reset_i_2_n_0,
      I1 => s00_axi_wdata(5),
      I2 => s00_axi_wdata(14),
      I3 => s00_axi_wdata(2),
      I4 => fc_reset_i_3_n_0,
      I5 => fc_reset_i_4_n_0,
      O => fc_reset0
    );
fc_reset_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => axi_state(2),
      I1 => axi_state(0),
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_wstrb(1),
      O => fc_reset_i_2_n_0
    );
fc_reset_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s00_axi_wdata(4),
      I1 => s00_axi_wdata(1),
      I2 => s00_axi_wdata(11),
      I3 => fc_waddr(3),
      O => fc_reset_i_3_n_0
    );
fc_reset_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => fc_reset_i_5_n_0,
      I1 => fc_reset_i_6_n_0,
      I2 => s00_axi_wdata(0),
      I3 => fc_waddr(4),
      I4 => s00_axi_wdata(9),
      I5 => fc_waddr(0),
      O => fc_reset_i_4_n_0
    );
fc_reset_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => s00_axi_wdata(15),
      I1 => s00_axi_wdata(6),
      I2 => fc_waddr(2),
      I3 => s00_axi_wdata(12),
      I4 => s00_axi_wdata(7),
      I5 => s00_axi_wdata(13),
      O => fc_reset_i_5_n_0
    );
fc_reset_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s00_axi_wdata(8),
      I1 => s00_axi_wdata(3),
      I2 => s00_axi_wdata(10),
      I3 => fc_waddr(1),
      O => fc_reset_i_6_n_0
    );
fc_reset_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => fc_reset0,
      Q => fc_reset,
      S => axi_bvalid_i_1_n_0
    );
\fc_waddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => axi_state(1),
      I1 => axi_state(0),
      I2 => s00_axi_awvalid,
      I3 => axi_state(2),
      O => fc_waddr0
    );
\fc_waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fc_waddr0,
      D => s00_axi_awaddr(0),
      Q => fc_waddr(0),
      R => '0'
    );
\fc_waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fc_waddr0,
      D => s00_axi_awaddr(1),
      Q => fc_waddr(1),
      R => '0'
    );
\fc_waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fc_waddr0,
      D => s00_axi_awaddr(2),
      Q => fc_waddr(2),
      R => '0'
    );
\fc_waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fc_waddr0,
      D => s00_axi_awaddr(3),
      Q => fc_waddr(3),
      R => '0'
    );
\fc_waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fc_waddr0,
      D => s00_axi_awaddr(4),
      Q => fc_waddr(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0 is
  port (
    fc_debug_non_idle_now : out STD_LOGIC;
    fast_control_stream : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    ext_lhc_clk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ext_lhc_clk_X8 : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0 : entity is "fastcontrol_axi_v1_0";
end tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0;

architecture STRUCTURE of tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0 is
begin
fastcontrol_axi_v1_0_S00_AXI_inst: entity work.tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0_S00_AXI
     port map (
      ext_lhc_clk => ext_lhc_clk,
      ext_lhc_clk_X8 => ext_lhc_clk_X8,
      fast_control_stream => fast_control_stream,
      fc_debug_non_idle_now => fc_debug_non_idle_now,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4 downto 0) => s00_axi_araddr(4 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(4 downto 0) => s00_axi_awaddr(4 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_axi_0_0 is
  port (
    ext_lhc_clk : in STD_LOGIC;
    ext_lhc_clk_X8 : in STD_LOGIC;
    fast_control_clk : out STD_LOGIC;
    fast_control_stream : out STD_LOGIC;
    fc_debug_lhc_clk : out STD_LOGIC;
    fc_debug_non_idle_now : out STD_LOGIC;
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
  attribute NotValidForBitStream of tester_fastcontrol_axi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of tester_fastcontrol_axi_0_0 : entity is "tester_fastcontrol_axi_0_0,fastcontrol_axi_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of tester_fastcontrol_axi_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of tester_fastcontrol_axi_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of tester_fastcontrol_axi_0_0 : entity is "fastcontrol_axi_v1_0,Vivado 2018.3";
end tester_fastcontrol_axi_0_0;

architecture STRUCTURE of tester_fastcontrol_axi_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^ext_lhc_clk\ : STD_LOGIC;
  signal \^ext_lhc_clk_x8\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ext_lhc_clk : signal is "xilinx.com:signal:clock:1.0 ext_lhc_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ext_lhc_clk : signal is "XIL_INTERFACENAME ext_lhc_clk, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN tester_clk_wiz_0_0_clk_320, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fast_control_clk : signal is "xilinx.com:signal:clock:1.0 fast_control_clk CLK";
  attribute X_INTERFACE_PARAMETER of fast_control_clk : signal is "XIL_INTERFACENAME fast_control_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN tester_fastcontrol_axi_0_0_fast_control_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fc_debug_lhc_clk : signal is "xilinx.com:signal:clock:1.0 fc_debug_lhc_clk CLK";
  attribute X_INTERFACE_PARAMETER of fc_debug_lhc_clk : signal is "XIL_INTERFACENAME fc_debug_lhc_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN tester_fastcontrol_axi_0_0_fc_debug_lhc_clk, INSERT_VIP 0";
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
  \^ext_lhc_clk\ <= ext_lhc_clk;
  \^ext_lhc_clk_x8\ <= ext_lhc_clk_X8;
  fast_control_clk <= \^ext_lhc_clk_x8\;
  fc_debug_lhc_clk <= \^ext_lhc_clk\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s00_axi_wready <= \^s00_axi_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0
     port map (
      ext_lhc_clk => \^ext_lhc_clk\,
      ext_lhc_clk_X8 => \^ext_lhc_clk_x8\,
      fast_control_stream => fast_control_stream,
      fc_debug_non_idle_now => fc_debug_non_idle_now,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(4 downto 0) => s00_axi_araddr(6 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(4 downto 0) => s00_axi_awaddr(6 downto 2),
      s00_axi_awready => \^s00_axi_awready\,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
