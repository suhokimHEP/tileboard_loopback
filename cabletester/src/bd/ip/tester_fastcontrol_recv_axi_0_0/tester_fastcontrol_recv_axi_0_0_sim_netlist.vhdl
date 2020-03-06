-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Oct 29 14:15:20 2019
-- Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_fastcontrol_recv_axi_0_0/tester_fastcontrol_recv_axi_0_0_sim_netlist.vhdl
-- Design      : tester_fastcontrol_recv_axi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu2cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_recv_axi_0_0_ResetSync is
  port (
    \ResetSync_reg_reg[1]_0\ : out STD_LOGIC;
    fast_control_clk : in STD_LOGIC;
    reset_decoder_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_ResetSync : entity is "ResetSync";
end tester_fastcontrol_recv_axi_0_0_ResetSync;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_ResetSync is
  signal ResetSync_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ResetSync_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal RstSync_b : STD_LOGIC;
begin
\ResetSync_reg[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_decoder_n,
      O => \ResetSync_reg[1]_i_1_n_0\
    );
\ResetSync_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => \ResetSync_reg[1]_i_1_n_0\,
      D => '1',
      Q => ResetSync_reg(0)
    );
\ResetSync_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => \ResetSync_reg[1]_i_1_n_0\,
      D => ResetSync_reg(0),
      Q => RstSync_b
    );
cmd_OrbitSync40_d_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RstSync_b,
      O => \ResetSync_reg_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_recv_axi_0_0_clk40_decoder_FSM is
  port (
    sync_err_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sync_err_reg_0 : in STD_LOGIC;
    sync_err : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_down_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fast_control_clk : in STD_LOGIC;
    \FSM_sequential_state_reg[1]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_clk40_decoder_FSM : entity is "clk40_decoder_FSM";
end tester_fastcontrol_recv_axi_0_0_clk40_decoder_FSM;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_clk40_decoder_FSM is
  signal \^fsm_sequential_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sync_err_i_3_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDLE:00,SYNC_TX_1:01,SYNC_TX_2:10,START_CLK:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDLE:00,SYNC_TX_1:01,SYNC_TX_2:10,START_CLK:11";
begin
  \FSM_sequential_state_reg[1]_0\(1 downto 0) <= \^fsm_sequential_state_reg[1]_0\(1 downto 0);
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => \FSM_sequential_state_reg[1]_2\,
      D => \FSM_sequential_state_reg[1]_1\(0),
      Q => \^fsm_sequential_state_reg[1]_0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => \FSM_sequential_state_reg[1]_2\,
      D => \FSM_sequential_state_reg[1]_1\(1),
      Q => \^fsm_sequential_state_reg[1]_0\(1)
    );
\count_down[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040404000"
    )
        port map (
      I0 => Q(0),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => Q(1),
      I4 => \count_down_reg[2]\,
      I5 => Q(2),
      O => D(0)
    );
\count_down[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00000000000E000"
    )
        port map (
      I0 => \count_down_reg[2]\,
      I1 => Q(2),
      I2 => \^fsm_sequential_state_reg[1]_0\(1),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      I4 => Q(1),
      I5 => Q(0),
      O => D(1)
    );
\count_down[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C000C0002000"
    )
        port map (
      I0 => \count_down_reg[2]\,
      I1 => Q(2),
      I2 => \^fsm_sequential_state_reg[1]_0\(0),
      I3 => \^fsm_sequential_state_reg[1]_0\(1),
      I4 => Q(1),
      I5 => Q(0),
      O => D(2)
    );
sync_err_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCCCCCCC5"
    )
        port map (
      I0 => sync_err_reg_0,
      I1 => sync_err,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => sync_err_i_3_n_0,
      O => sync_err_reg
    );
sync_err_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(0),
      I1 => \^fsm_sequential_state_reg[1]_0\(1),
      O => sync_err_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_recv_axi_0_0_fast_cmd_decoder is
  port (
    fc_OrbitSync : out STD_LOGIC;
    fc_L1A : out STD_LOGIC;
    fc_OrbitCountReset_OrbitSync : out STD_LOGIC;
    fc_CalibrationReq : out STD_LOGIC;
    fc_CalibrationL1A : out STD_LOGIC;
    fc_LinkReset : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_ReSync40_d_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_CalibrationL1A40_d_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_CalibrationReq40_d_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_OrbitCountReset40_d_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_OrbitSync40_d_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \inbuffer_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \inbuffer_reg[3]_1\ : out STD_LOGIC;
    \inbuffer_reg[5]_0\ : out STD_LOGIC;
    fast_control_clk : in STD_LOGIC;
    cmd_OrbitSync40_d_reg_1 : in STD_LOGIC;
    cmd_CalibrationL1A40_d_reg_1 : in STD_LOGIC;
    polarity : in STD_LOGIC;
    fast_control_stream : in STD_LOGIC;
    edge_select : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sync_err : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_fast_cmd_decoder : entity is "fast_cmd_decoder";
end tester_fastcontrol_recv_axi_0_0_fast_cmd_decoder;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_fast_cmd_decoder is
  signal cmd_CalibrationL1A40_d_0 : STD_LOGIC;
  signal cmd_CalibrationL1A_d : STD_LOGIC;
  signal cmd_CalibrationL1A_d_i_1_n_0 : STD_LOGIC;
  signal cmd_CalibrationReq40_d_0 : STD_LOGIC;
  signal cmd_CalibrationReq_d : STD_LOGIC;
  signal cmd_CalibrationReq_d_i_1_n_0 : STD_LOGIC;
  signal cmd_L1A_Full40_d_0 : STD_LOGIC;
  signal cmd_L1A_Full_d : STD_LOGIC;
  signal cmd_L1A_Full_d_i_1_n_0 : STD_LOGIC;
  signal cmd_OrbitCountReset40_d_0 : STD_LOGIC;
  signal cmd_OrbitCountReset_d : STD_LOGIC;
  signal cmd_OrbitCountReset_d_i_1_n_0 : STD_LOGIC;
  signal cmd_OrbitSync40_d_0 : STD_LOGIC;
  signal cmd_OrbitSync_d : STD_LOGIC;
  signal cmd_OrbitSync_d_i_2_n_0 : STD_LOGIC;
  signal cmd_ReSync40_d_0 : STD_LOGIC;
  signal cmd_ReSync_d : STD_LOGIC;
  signal cmd_ReSync_d_0 : STD_LOGIC;
  signal cmd_ReSync_d_i_1_n_0 : STD_LOGIC;
  signal \^fc_calibrationl1a\ : STD_LOGIC;
  signal \^fc_calibrationreq\ : STD_LOGIC;
  signal \^fc_l1a\ : STD_LOGIC;
  signal \^fc_linkreset\ : STD_LOGIC;
  signal \^fc_orbitcountreset_orbitsync\ : STD_LOGIC;
  signal \^fc_orbitsync\ : STD_LOGIC;
  signal in_f0 : STD_LOGIC;
  signal in_f0_i_1_n_0 : STD_LOGIC;
  signal in_f1 : STD_LOGIC;
  signal in_f2 : STD_LOGIC;
  signal in_r : STD_LOGIC;
  signal in_r0 : STD_LOGIC;
  signal \inbuffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \inbuffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \inbuffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \inbuffer_reg_n_0_[6]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of cmd_CalibrationL1A_d_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of cmd_CalibrationReq_d_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of cmd_L1A_Full_d_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of cmd_OrbitCountReset_d_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of cmd_OrbitSync_d_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of cmd_ReSync_d_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_down[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sync_err_i_2 : label is "soft_lutpair1";
begin
  fc_CalibrationL1A <= \^fc_calibrationl1a\;
  fc_CalibrationReq <= \^fc_calibrationreq\;
  fc_L1A <= \^fc_l1a\;
  fc_LinkReset <= \^fc_linkreset\;
  fc_OrbitCountReset_OrbitSync <= \^fc_orbitcountreset_orbitsync\;
  fc_OrbitSync <= \^fc_orbitsync\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAA9AAA"
    )
        port map (
      I0 => Q(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => Q(1),
      O => \inbuffer_reg[3]_0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => Q(0),
      I4 => Q(1),
      O => \inbuffer_reg[3]_0\(1)
    );
cmd_CalibrationL1A40_d_0_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_CalibrationL1A_d,
      Q => cmd_CalibrationL1A40_d_0
    );
cmd_CalibrationL1A40_d_reg: unisim.vcomponents.FDCE
     port map (
      C => cmd_CalibrationL1A40_d_reg_1,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_CalibrationL1A40_d_0,
      Q => \^fc_calibrationl1a\
    );
cmd_CalibrationL1A_d_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \inbuffer_reg_n_0_[2]\,
      I2 => \inbuffer_reg_n_0_[0]\,
      I3 => \inbuffer_reg_n_0_[1]\,
      O => cmd_CalibrationL1A_d_i_1_n_0
    );
cmd_CalibrationL1A_d_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => cmd_ReSync_d_0,
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_CalibrationL1A_d_i_1_n_0,
      Q => cmd_CalibrationL1A_d
    );
cmd_CalibrationReq40_d_0_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_CalibrationReq_d,
      Q => cmd_CalibrationReq40_d_0
    );
cmd_CalibrationReq40_d_reg: unisim.vcomponents.FDCE
     port map (
      C => cmd_CalibrationL1A40_d_reg_1,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_CalibrationReq40_d_0,
      Q => \^fc_calibrationreq\
    );
cmd_CalibrationReq_d_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \inbuffer_reg_n_0_[1]\,
      I1 => \inbuffer_reg_n_0_[0]\,
      I2 => \inbuffer_reg_n_0_[2]\,
      I3 => p_0_in(0),
      O => cmd_CalibrationReq_d_i_1_n_0
    );
cmd_CalibrationReq_d_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => cmd_ReSync_d_0,
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_CalibrationReq_d_i_1_n_0,
      Q => cmd_CalibrationReq_d
    );
cmd_L1A_Full40_d_0_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_L1A_Full_d,
      Q => cmd_L1A_Full40_d_0
    );
cmd_L1A_Full40_d_reg: unisim.vcomponents.FDCE
     port map (
      C => cmd_CalibrationL1A40_d_reg_1,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_L1A_Full40_d_0,
      Q => \^fc_l1a\
    );
cmd_L1A_Full_d_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \inbuffer_reg_n_0_[1]\,
      I1 => \inbuffer_reg_n_0_[2]\,
      I2 => p_0_in(0),
      O => cmd_L1A_Full_d_i_1_n_0
    );
cmd_L1A_Full_d_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => cmd_ReSync_d_0,
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_L1A_Full_d_i_1_n_0,
      Q => cmd_L1A_Full_d
    );
cmd_OrbitCountReset40_d_0_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_OrbitCountReset_d,
      Q => cmd_OrbitCountReset40_d_0
    );
cmd_OrbitCountReset40_d_reg: unisim.vcomponents.FDCE
     port map (
      C => cmd_CalibrationL1A40_d_reg_1,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_OrbitCountReset40_d_0,
      Q => \^fc_orbitcountreset_orbitsync\
    );
cmd_OrbitCountReset_d_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \inbuffer_reg_n_0_[1]\,
      I1 => \inbuffer_reg_n_0_[0]\,
      I2 => p_0_in(0),
      I3 => \inbuffer_reg_n_0_[2]\,
      O => cmd_OrbitCountReset_d_i_1_n_0
    );
cmd_OrbitCountReset_d_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => cmd_ReSync_d_0,
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_OrbitCountReset_d_i_1_n_0,
      Q => cmd_OrbitCountReset_d
    );
cmd_OrbitSync40_d_0_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_OrbitSync_d,
      Q => cmd_OrbitSync40_d_0
    );
cmd_OrbitSync40_d_reg: unisim.vcomponents.FDCE
     port map (
      C => cmd_CalibrationL1A40_d_reg_1,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_OrbitSync40_d_0,
      Q => \^fc_orbitsync\
    );
cmd_OrbitSync_d_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \inbuffer_reg_n_0_[6]\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      O => cmd_ReSync_d_0
    );
cmd_OrbitSync_d_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \inbuffer_reg_n_0_[0]\,
      I1 => p_0_in(0),
      O => cmd_OrbitSync_d_i_2_n_0
    );
cmd_OrbitSync_d_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => cmd_ReSync_d_0,
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_OrbitSync_d_i_2_n_0,
      Q => cmd_OrbitSync_d
    );
cmd_ReSync40_d_0_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_ReSync_d,
      Q => cmd_ReSync40_d_0
    );
cmd_ReSync40_d_reg: unisim.vcomponents.FDCE
     port map (
      C => cmd_CalibrationL1A40_d_reg_1,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_ReSync40_d_0,
      Q => \^fc_linkreset\
    );
cmd_ReSync_d_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \inbuffer_reg_n_0_[1]\,
      I2 => \inbuffer_reg_n_0_[0]\,
      O => cmd_ReSync_d_i_1_n_0
    );
cmd_ReSync_d_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => cmd_ReSync_d_0,
      CLR => cmd_OrbitSync40_d_reg_1,
      D => cmd_ReSync_d_i_1_n_0,
      Q => cmd_ReSync_d
    );
\count_down[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => sync_err,
      O => \inbuffer_reg[3]_1\
    );
\counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fc_linkreset\,
      I1 => \counter_reg[7]\(0),
      O => cmd_ReSync40_d_reg_0(0)
    );
\counter[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fc_calibrationl1a\,
      I1 => \counter_reg[7]_0\(0),
      O => cmd_CalibrationL1A40_d_reg_0(0)
    );
\counter[0]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fc_calibrationreq\,
      I1 => \counter_reg[7]_1\(0),
      O => cmd_CalibrationReq40_d_reg_0(0)
    );
\counter[0]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fc_orbitcountreset_orbitsync\,
      I1 => \counter_reg[7]_2\(0),
      O => cmd_OrbitCountReset40_d_reg_0(0)
    );
\counter[0]_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fc_orbitsync\,
      I1 => \counter_reg[7]_3\(0),
      O => cmd_OrbitSync40_d_reg_0(0)
    );
\counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fc_l1a\,
      I1 => D(0),
      O => S(0)
    );
in_f0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => polarity,
      I1 => fast_control_stream,
      O => in_f0_i_1_n_0
    );
in_f0_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => in_f0_i_1_n_0,
      Q => in_f0
    );
in_f1_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => in_f0,
      Q => in_f1
    );
in_f2_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => in_f1,
      Q => in_f2
    );
in_r0_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => in_f0_i_1_n_0,
      Q => in_r0
    );
in_r_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => in_r0,
      Q => in_r
    );
\inbuffer[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => in_r,
      I1 => edge_select,
      I2 => in_f2,
      O => p_1_out(0)
    );
\inbuffer_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => p_1_out(0),
      Q => \inbuffer_reg_n_0_[0]\
    );
\inbuffer_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => \inbuffer_reg_n_0_[0]\,
      Q => \inbuffer_reg_n_0_[1]\
    );
\inbuffer_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => \inbuffer_reg_n_0_[1]\,
      Q => \inbuffer_reg_n_0_[2]\
    );
\inbuffer_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => \inbuffer_reg_n_0_[2]\,
      Q => p_0_in(0)
    );
\inbuffer_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => p_0_in(0),
      Q => p_0_in(1)
    );
\inbuffer_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => p_0_in(1),
      Q => p_0_in(2)
    );
\inbuffer_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => cmd_OrbitSync40_d_reg_1,
      D => p_0_in(2),
      Q => \inbuffer_reg_n_0_[6]\
    );
sync_err_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      O => \inbuffer_reg[5]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clear : in STD_LOGIC;
    \counter_reg[0]_0\ : in STD_LOGIC;
    fc_CalibrationL1A : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter is
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
  signal \NLW_counter_reg[24]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  D(0) <= \^d\(0);
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
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
      DI(0) => fc_CalibrationL1A,
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
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_13\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_12\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_11\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_10\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_9\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_8\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
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
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_14\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_13\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_12\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_14\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_11\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_10\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_9\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_8\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
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
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_14\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_13\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_12\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_11\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_10\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_13\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_9\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__1_n_8\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_12\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_11\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_10\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_9\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__0_n_8\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
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
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_14\,
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
entity tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \fc_raddr_reg[4]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clear : in STD_LOGIC;
    \counter_reg[31]_0\ : in STD_LOGIC;
    \io_r_data_reg[0]\ : in STD_LOGIC;
    CtlReg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \io_r_data_reg[31]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \io_r_data_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \io_r_data_reg[31]_0\ : in STD_LOGIC;
    \io_r_data_reg[30]\ : in STD_LOGIC;
    \io_r_data_reg[29]\ : in STD_LOGIC;
    \io_r_data_reg[28]\ : in STD_LOGIC;
    \io_r_data_reg[27]\ : in STD_LOGIC;
    \io_r_data_reg[26]\ : in STD_LOGIC;
    \io_r_data_reg[25]\ : in STD_LOGIC;
    \io_r_data_reg[24]\ : in STD_LOGIC;
    \io_r_data_reg[23]\ : in STD_LOGIC;
    \io_r_data_reg[22]\ : in STD_LOGIC;
    \io_r_data_reg[21]\ : in STD_LOGIC;
    \io_r_data_reg[20]\ : in STD_LOGIC;
    \io_r_data_reg[19]\ : in STD_LOGIC;
    \io_r_data_reg[18]\ : in STD_LOGIC;
    \io_r_data_reg[17]\ : in STD_LOGIC;
    \io_r_data_reg[16]\ : in STD_LOGIC;
    \io_r_data_reg[15]\ : in STD_LOGIC;
    \io_r_data_reg[14]\ : in STD_LOGIC;
    \io_r_data_reg[13]\ : in STD_LOGIC;
    \io_r_data_reg[12]\ : in STD_LOGIC;
    \io_r_data_reg[11]\ : in STD_LOGIC;
    \io_r_data_reg[10]\ : in STD_LOGIC;
    \io_r_data_reg[9]\ : in STD_LOGIC;
    \io_r_data_reg[8]\ : in STD_LOGIC;
    \io_r_data_reg[7]\ : in STD_LOGIC;
    \io_r_data_reg[6]\ : in STD_LOGIC;
    \io_r_data_reg[5]\ : in STD_LOGIC;
    \io_r_data_reg[4]\ : in STD_LOGIC;
    \io_r_data_reg[3]\ : in STD_LOGIC;
    \io_r_data_reg[2]\ : in STD_LOGIC;
    \io_r_data_reg[1]\ : in STD_LOGIC;
    \io_r_data_reg[0]_1\ : in STD_LOGIC;
    \io_r_data[31]_i_3_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \io_r_data[31]_i_3_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fc_CalibrationReq : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_0 : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_0;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \StatusReg__353\ : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal \io_r_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[10]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[11]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[12]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[13]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[14]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[15]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[16]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[17]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[18]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[19]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[20]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[21]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[22]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[23]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[24]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[25]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[26]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[27]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[28]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[29]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[2]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[30]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[31]_i_5_n_0\ : STD_LOGIC;
  signal \io_r_data[3]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[4]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[5]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[6]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[7]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[8]_i_4_n_0\ : STD_LOGIC;
  signal \io_r_data[9]_i_4_n_0\ : STD_LOGIC;
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
  signal \NLW_counter_reg[24]_i_1__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  D(0) <= \^d\(0);
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
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
      DI(0) => fc_CalibrationReq,
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
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_13\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_12\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_11\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_10\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_9\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_8\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
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
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_14\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_13\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_12\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_14\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_11\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_10\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_9\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_8\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
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
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_14\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_13\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_12\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_11\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_10\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_13\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_9\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__2_n_8\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_12\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_11\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_10\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_9\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__1_n_8\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
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
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_14\,
      Q => counter_reg(9),
      R => clear
    );
\io_r_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[0]_i_4_n_0\,
      I1 => \io_r_data_reg[0]_1\,
      I2 => Q(0),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(0)
    );
\io_r_data[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[0]\,
      I1 => \io_r_data[31]_i_3_0\(0),
      I2 => \io_r_data[31]_i_3_1\(0),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[0]_i_4_n_0\
    );
\io_r_data[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[10]_i_4_n_0\,
      I1 => \io_r_data_reg[10]\,
      I2 => Q(10),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(10)
    );
\io_r_data[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[10]\,
      I1 => \io_r_data[31]_i_3_0\(10),
      I2 => \io_r_data[31]_i_3_1\(10),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[10]_i_4_n_0\
    );
\io_r_data[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[11]_i_4_n_0\,
      I1 => \io_r_data_reg[11]\,
      I2 => Q(11),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(11)
    );
\io_r_data[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[11]\,
      I1 => \io_r_data[31]_i_3_0\(11),
      I2 => \io_r_data[31]_i_3_1\(11),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[11]_i_4_n_0\
    );
\io_r_data[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[12]_i_4_n_0\,
      I1 => \io_r_data_reg[12]\,
      I2 => Q(12),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(12)
    );
\io_r_data[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[12]\,
      I1 => \io_r_data[31]_i_3_0\(12),
      I2 => \io_r_data[31]_i_3_1\(12),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[12]_i_4_n_0\
    );
\io_r_data[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[13]_i_4_n_0\,
      I1 => \io_r_data_reg[13]\,
      I2 => Q(13),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(13)
    );
\io_r_data[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[13]\,
      I1 => \io_r_data[31]_i_3_0\(13),
      I2 => \io_r_data[31]_i_3_1\(13),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[13]_i_4_n_0\
    );
\io_r_data[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[14]_i_4_n_0\,
      I1 => \io_r_data_reg[14]\,
      I2 => Q(14),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(14)
    );
\io_r_data[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[14]\,
      I1 => \io_r_data[31]_i_3_0\(14),
      I2 => \io_r_data[31]_i_3_1\(14),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[14]_i_4_n_0\
    );
\io_r_data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[15]_i_4_n_0\,
      I1 => \io_r_data_reg[15]\,
      I2 => Q(15),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(15)
    );
\io_r_data[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[15]\,
      I1 => \io_r_data[31]_i_3_0\(15),
      I2 => \io_r_data[31]_i_3_1\(15),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[15]_i_4_n_0\
    );
\io_r_data[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[16]_i_4_n_0\,
      I1 => \io_r_data_reg[16]\,
      I2 => Q(16),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(16)
    );
\io_r_data[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[16]\,
      I1 => \io_r_data[31]_i_3_0\(16),
      I2 => \io_r_data[31]_i_3_1\(16),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[16]_i_4_n_0\
    );
\io_r_data[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[17]_i_4_n_0\,
      I1 => \io_r_data_reg[17]\,
      I2 => Q(17),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(17)
    );
\io_r_data[17]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[17]\,
      I1 => \io_r_data[31]_i_3_0\(17),
      I2 => \io_r_data[31]_i_3_1\(17),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[17]_i_4_n_0\
    );
\io_r_data[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[18]_i_4_n_0\,
      I1 => \io_r_data_reg[18]\,
      I2 => Q(18),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(18)
    );
\io_r_data[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[18]\,
      I1 => \io_r_data[31]_i_3_0\(18),
      I2 => \io_r_data[31]_i_3_1\(18),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[18]_i_4_n_0\
    );
\io_r_data[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[19]_i_4_n_0\,
      I1 => \io_r_data_reg[19]\,
      I2 => Q(19),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(19)
    );
\io_r_data[19]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[19]\,
      I1 => \io_r_data[31]_i_3_0\(19),
      I2 => \io_r_data[31]_i_3_1\(19),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[19]_i_4_n_0\
    );
\io_r_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[1]_i_4_n_0\,
      I1 => \io_r_data_reg[1]\,
      I2 => Q(1),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(1)
    );
\io_r_data[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[1]\,
      I1 => \io_r_data[31]_i_3_0\(1),
      I2 => \io_r_data[31]_i_3_1\(1),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[1]_i_4_n_0\
    );
\io_r_data[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[20]_i_4_n_0\,
      I1 => \io_r_data_reg[20]\,
      I2 => Q(20),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(20)
    );
\io_r_data[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[20]\,
      I1 => \io_r_data[31]_i_3_0\(20),
      I2 => \io_r_data[31]_i_3_1\(20),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[20]_i_4_n_0\
    );
\io_r_data[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[21]_i_4_n_0\,
      I1 => \io_r_data_reg[21]\,
      I2 => Q(21),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(21)
    );
\io_r_data[21]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[21]\,
      I1 => \io_r_data[31]_i_3_0\(21),
      I2 => \io_r_data[31]_i_3_1\(21),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[21]_i_4_n_0\
    );
\io_r_data[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[22]_i_4_n_0\,
      I1 => \io_r_data_reg[22]\,
      I2 => Q(22),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(22)
    );
\io_r_data[22]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[22]\,
      I1 => \io_r_data[31]_i_3_0\(22),
      I2 => \io_r_data[31]_i_3_1\(22),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[22]_i_4_n_0\
    );
\io_r_data[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[23]_i_4_n_0\,
      I1 => \io_r_data_reg[23]\,
      I2 => Q(23),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(23)
    );
\io_r_data[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[23]\,
      I1 => \io_r_data[31]_i_3_0\(23),
      I2 => \io_r_data[31]_i_3_1\(23),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[23]_i_4_n_0\
    );
\io_r_data[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[24]_i_4_n_0\,
      I1 => \io_r_data_reg[24]\,
      I2 => Q(24),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(24)
    );
\io_r_data[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[24]\,
      I1 => \io_r_data[31]_i_3_0\(24),
      I2 => \io_r_data[31]_i_3_1\(24),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[24]_i_4_n_0\
    );
\io_r_data[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[25]_i_4_n_0\,
      I1 => \io_r_data_reg[25]\,
      I2 => Q(25),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(25)
    );
\io_r_data[25]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[25]\,
      I1 => \io_r_data[31]_i_3_0\(25),
      I2 => \io_r_data[31]_i_3_1\(25),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[25]_i_4_n_0\
    );
\io_r_data[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[26]_i_4_n_0\,
      I1 => \io_r_data_reg[26]\,
      I2 => Q(26),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(26)
    );
\io_r_data[26]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[26]\,
      I1 => \io_r_data[31]_i_3_0\(26),
      I2 => \io_r_data[31]_i_3_1\(26),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[26]_i_4_n_0\
    );
\io_r_data[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[27]_i_4_n_0\,
      I1 => \io_r_data_reg[27]\,
      I2 => Q(27),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(27)
    );
\io_r_data[27]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[27]\,
      I1 => \io_r_data[31]_i_3_0\(27),
      I2 => \io_r_data[31]_i_3_1\(27),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[27]_i_4_n_0\
    );
\io_r_data[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[28]_i_4_n_0\,
      I1 => \io_r_data_reg[28]\,
      I2 => Q(28),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(28)
    );
\io_r_data[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[28]\,
      I1 => \io_r_data[31]_i_3_0\(28),
      I2 => \io_r_data[31]_i_3_1\(28),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[28]_i_4_n_0\
    );
\io_r_data[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[29]_i_4_n_0\,
      I1 => \io_r_data_reg[29]\,
      I2 => Q(29),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(29)
    );
\io_r_data[29]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[29]\,
      I1 => \io_r_data[31]_i_3_0\(29),
      I2 => \io_r_data[31]_i_3_1\(29),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[29]_i_4_n_0\
    );
\io_r_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[2]_i_4_n_0\,
      I1 => \io_r_data_reg[2]\,
      I2 => Q(2),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(2)
    );
\io_r_data[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[2]\,
      I1 => \io_r_data[31]_i_3_0\(2),
      I2 => \io_r_data[31]_i_3_1\(2),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[2]_i_4_n_0\
    );
\io_r_data[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[30]_i_4_n_0\,
      I1 => \io_r_data_reg[30]\,
      I2 => Q(30),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(30)
    );
\io_r_data[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[30]\,
      I1 => \io_r_data[31]_i_3_0\(30),
      I2 => \io_r_data[31]_i_3_1\(30),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[30]_i_4_n_0\
    );
\io_r_data[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[31]_i_5_n_0\,
      I1 => \io_r_data_reg[31]\,
      I2 => Q(31),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(31)
    );
\io_r_data[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[31]\,
      I1 => \io_r_data[31]_i_3_0\(31),
      I2 => \io_r_data[31]_i_3_1\(31),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[31]_i_5_n_0\
    );
\io_r_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[3]_i_4_n_0\,
      I1 => \io_r_data_reg[3]\,
      I2 => Q(3),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(3)
    );
\io_r_data[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[3]\,
      I1 => \io_r_data[31]_i_3_0\(3),
      I2 => \io_r_data[31]_i_3_1\(3),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[3]_i_4_n_0\
    );
\io_r_data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[4]_i_4_n_0\,
      I1 => \io_r_data_reg[4]\,
      I2 => Q(4),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(4)
    );
\io_r_data[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[4]\,
      I1 => \io_r_data[31]_i_3_0\(4),
      I2 => \io_r_data[31]_i_3_1\(4),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[4]_i_4_n_0\
    );
\io_r_data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[5]_i_4_n_0\,
      I1 => \io_r_data_reg[5]\,
      I2 => Q(5),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(5)
    );
\io_r_data[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[5]\,
      I1 => \io_r_data[31]_i_3_0\(5),
      I2 => \io_r_data[31]_i_3_1\(5),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[5]_i_4_n_0\
    );
\io_r_data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[6]_i_4_n_0\,
      I1 => \io_r_data_reg[6]\,
      I2 => Q(6),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(6)
    );
\io_r_data[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[6]\,
      I1 => \io_r_data[31]_i_3_0\(6),
      I2 => \io_r_data[31]_i_3_1\(6),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[6]_i_4_n_0\
    );
\io_r_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[7]_i_4_n_0\,
      I1 => \io_r_data_reg[7]\,
      I2 => Q(7),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(7)
    );
\io_r_data[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[7]\,
      I1 => \io_r_data[31]_i_3_0\(7),
      I2 => \io_r_data[31]_i_3_1\(7),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[7]_i_4_n_0\
    );
\io_r_data[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[8]_i_4_n_0\,
      I1 => \io_r_data_reg[8]\,
      I2 => Q(8),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(8)
    );
\io_r_data[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[8]\,
      I1 => \io_r_data[31]_i_3_0\(8),
      I2 => \io_r_data[31]_i_3_1\(8),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[8]_i_4_n_0\
    );
\io_r_data[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AACC0000AACC00"
    )
        port map (
      I0 => \io_r_data[9]_i_4_n_0\,
      I1 => \io_r_data_reg[9]\,
      I2 => Q(9),
      I3 => \io_r_data_reg[0]_0\(2),
      I4 => \io_r_data_reg[0]_0\(3),
      I5 => \io_r_data_reg[31]_0\,
      O => \StatusReg__353\(9)
    );
\io_r_data[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => \value_reg_n_0_[9]\,
      I1 => \io_r_data[31]_i_3_0\(9),
      I2 => \io_r_data[31]_i_3_1\(9),
      I3 => \io_r_data_reg[0]_0\(0),
      I4 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[9]_i_4_n_0\
    );
\io_r_data_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(0),
      I1 => CtlReg(0),
      O => \fc_raddr_reg[4]\(0),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(10),
      I1 => CtlReg(10),
      O => \fc_raddr_reg[4]\(10),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(11),
      I1 => CtlReg(11),
      O => \fc_raddr_reg[4]\(11),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(12),
      I1 => CtlReg(12),
      O => \fc_raddr_reg[4]\(12),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(13),
      I1 => CtlReg(13),
      O => \fc_raddr_reg[4]\(13),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(14),
      I1 => CtlReg(14),
      O => \fc_raddr_reg[4]\(14),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(15),
      I1 => CtlReg(15),
      O => \fc_raddr_reg[4]\(15),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(16),
      I1 => CtlReg(16),
      O => \fc_raddr_reg[4]\(16),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(17),
      I1 => CtlReg(17),
      O => \fc_raddr_reg[4]\(17),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(18),
      I1 => CtlReg(18),
      O => \fc_raddr_reg[4]\(18),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(19),
      I1 => CtlReg(19),
      O => \fc_raddr_reg[4]\(19),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(1),
      I1 => CtlReg(1),
      O => \fc_raddr_reg[4]\(1),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(20),
      I1 => CtlReg(20),
      O => \fc_raddr_reg[4]\(20),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(21),
      I1 => CtlReg(21),
      O => \fc_raddr_reg[4]\(21),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(22),
      I1 => CtlReg(22),
      O => \fc_raddr_reg[4]\(22),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(23),
      I1 => CtlReg(23),
      O => \fc_raddr_reg[4]\(23),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(24),
      I1 => CtlReg(24),
      O => \fc_raddr_reg[4]\(24),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(25),
      I1 => CtlReg(25),
      O => \fc_raddr_reg[4]\(25),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(26),
      I1 => CtlReg(26),
      O => \fc_raddr_reg[4]\(26),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(27),
      I1 => CtlReg(27),
      O => \fc_raddr_reg[4]\(27),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(28),
      I1 => CtlReg(28),
      O => \fc_raddr_reg[4]\(28),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(29),
      I1 => CtlReg(29),
      O => \fc_raddr_reg[4]\(29),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(2),
      I1 => CtlReg(2),
      O => \fc_raddr_reg[4]\(2),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(30),
      I1 => CtlReg(30),
      O => \fc_raddr_reg[4]\(30),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[31]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(31),
      I1 => CtlReg(31),
      O => \fc_raddr_reg[4]\(31),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(3),
      I1 => CtlReg(3),
      O => \fc_raddr_reg[4]\(3),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(4),
      I1 => CtlReg(4),
      O => \fc_raddr_reg[4]\(4),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(5),
      I1 => CtlReg(5),
      O => \fc_raddr_reg[4]\(5),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(6),
      I1 => CtlReg(6),
      O => \fc_raddr_reg[4]\(6),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(7),
      I1 => CtlReg(7),
      O => \fc_raddr_reg[4]\(7),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(8),
      I1 => CtlReg(8),
      O => \fc_raddr_reg[4]\(8),
      S => \io_r_data_reg[0]\
    );
\io_r_data_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \StatusReg__353\(9),
      I1 => CtlReg(9),
      O => \fc_raddr_reg[4]\(9),
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
entity tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clear : in STD_LOGIC;
    \counter_reg[0]_0\ : in STD_LOGIC;
    fc_L1A : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_1 : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_1;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_1 is
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
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  D(0) <= \^d\(0);
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
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
      DI(0) => fc_L1A,
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
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1_n_13\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1_n_12\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1_n_11\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1_n_10\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1_n_9\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1_n_8\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
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
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1_n_14\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1_n_13\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1_n_12\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_2_n_14\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1_n_11\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1_n_10\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1_n_9\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1_n_8\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
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
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1_n_14\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1_n_13\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1_n_12\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1_n_11\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1_n_10\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_2_n_13\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1_n_9\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1_n_8\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_2_n_12\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_2_n_11\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_2_n_10\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_2_n_9\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_2_n_8\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
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
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1_n_14\,
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
entity tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_2 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clear : in STD_LOGIC;
    \counter_reg[31]_0\ : in STD_LOGIC;
    fc_LinkReset : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_2 : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_2;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_2 is
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
      C => \counter_reg[31]_0\,
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
      DI(0) => fc_LinkReset,
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
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_13\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_12\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_11\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_10\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_9\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_8\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
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
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_14\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_13\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_12\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1_n_14\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_11\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_10\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_9\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_8\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
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
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_14\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_13\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_12\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_11\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_10\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1_n_13\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_9\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__0_n_8\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1_n_12\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1_n_11\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1_n_10\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1_n_9\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1_n_8\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
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
      C => \counter_reg[31]_0\,
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
entity tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clear : in STD_LOGIC;
    \counter_reg[0]_0\ : in STD_LOGIC;
    fc_OrbitCountReset_OrbitSync : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_3 : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_3;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_3 is
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
      C => \counter_reg[0]_0\,
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
      DI(0) => fc_OrbitCountReset_OrbitSync,
      O(7) => \counter_reg[0]_i_1__2_n_8\,
      O(6) => \counter_reg[0]_i_1__2_n_9\,
      O(5) => \counter_reg[0]_i_1__2_n_10\,
      O(4) => \counter_reg[0]_i_1__2_n_11\,
      O(3) => \counter_reg[0]_i_1__2_n_12\,
      O(2) => \counter_reg[0]_i_1__2_n_13\,
      O(1) => \counter_reg[0]_i_1__2_n_14\,
      O(0) => \counter_reg[0]_i_1__2_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => S(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_13\,
      Q => counter_reg(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_12\,
      Q => counter_reg(11),
      R => clear
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_11\,
      Q => counter_reg(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_10\,
      Q => counter_reg(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_9\,
      Q => counter_reg(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__3_n_8\,
      Q => counter_reg(15),
      R => clear
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
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
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_14\,
      Q => counter_reg(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_13\,
      Q => counter_reg(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_12\,
      Q => counter_reg(19),
      R => clear
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_14\,
      Q => counter_reg(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_11\,
      Q => counter_reg(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_10\,
      Q => counter_reg(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_9\,
      Q => counter_reg(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__3_n_8\,
      Q => counter_reg(23),
      R => clear
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
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
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_14\,
      Q => counter_reg(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_13\,
      Q => counter_reg(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_12\,
      Q => counter_reg(27),
      R => clear
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_11\,
      Q => counter_reg(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_10\,
      Q => counter_reg(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_13\,
      Q => counter_reg(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_9\,
      Q => counter_reg(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__3_n_8\,
      Q => counter_reg(31),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_12\,
      Q => counter_reg(3),
      R => clear
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_11\,
      Q => counter_reg(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_10\,
      Q => counter_reg(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_9\,
      Q => counter_reg(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__2_n_8\,
      Q => counter_reg(7),
      R => clear
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[0]_0\,
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
      C => \counter_reg[0]_0\,
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
entity tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_4 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    clear : out STD_LOGIC;
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
    \counter_reg[31]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \io_r_data[31]_i_3\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \io_r_data[31]_i_3_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fc_OrbitSync : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_counters_40_n : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_4 : entity is "hgcal_fc_manager_counter";
end tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_4;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_4 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^clear\ : STD_LOGIC;
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
  signal value : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_counter_reg[24]_i_1__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
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
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_15\,
      Q => \^d\(0),
      R => \^clear\
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
      DI(0) => fc_OrbitSync,
      O(7) => \counter_reg[0]_i_1__3_n_8\,
      O(6) => \counter_reg[0]_i_1__3_n_9\,
      O(5) => \counter_reg[0]_i_1__3_n_10\,
      O(4) => \counter_reg[0]_i_1__3_n_11\,
      O(3) => \counter_reg[0]_i_1__3_n_12\,
      O(2) => \counter_reg[0]_i_1__3_n_13\,
      O(1) => \counter_reg[0]_i_1__3_n_14\,
      O(0) => \counter_reg[0]_i_1__3_n_15\,
      S(7 downto 1) => counter_reg(7 downto 1),
      S(0) => S(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_13\,
      Q => counter_reg(10),
      R => \^clear\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_12\,
      Q => counter_reg(11),
      R => \^clear\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_11\,
      Q => counter_reg(12),
      R => \^clear\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_10\,
      Q => counter_reg(13),
      R => \^clear\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_9\,
      Q => counter_reg(14),
      R => \^clear\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_8\,
      Q => counter_reg(15),
      R => \^clear\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_15\,
      Q => counter_reg(16),
      R => \^clear\
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
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_14\,
      Q => counter_reg(17),
      R => \^clear\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_13\,
      Q => counter_reg(18),
      R => \^clear\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_12\,
      Q => counter_reg(19),
      R => \^clear\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_14\,
      Q => counter_reg(1),
      R => \^clear\
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_11\,
      Q => counter_reg(20),
      R => \^clear\
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_10\,
      Q => counter_reg(21),
      R => \^clear\
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_9\,
      Q => counter_reg(22),
      R => \^clear\
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[16]_i_1__4_n_8\,
      Q => counter_reg(23),
      R => \^clear\
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_15\,
      Q => counter_reg(24),
      R => \^clear\
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
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_14\,
      Q => counter_reg(25),
      R => \^clear\
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_13\,
      Q => counter_reg(26),
      R => \^clear\
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_12\,
      Q => counter_reg(27),
      R => \^clear\
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_11\,
      Q => counter_reg(28),
      R => \^clear\
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_10\,
      Q => counter_reg(29),
      R => \^clear\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_13\,
      Q => counter_reg(2),
      R => \^clear\
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_9\,
      Q => counter_reg(30),
      R => \^clear\
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[24]_i_1__4_n_8\,
      Q => counter_reg(31),
      R => \^clear\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_12\,
      Q => counter_reg(3),
      R => \^clear\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_11\,
      Q => counter_reg(4),
      R => \^clear\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_10\,
      Q => counter_reg(5),
      R => \^clear\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_9\,
      Q => counter_reg(6),
      R => \^clear\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[0]_i_1__3_n_8\,
      Q => counter_reg(7),
      R => \^clear\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_15\,
      Q => counter_reg(8),
      R => \^clear\
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
      C => \counter_reg[31]_0\,
      CE => '1',
      D => \counter_reg[8]_i_1__4_n_14\,
      Q => counter_reg(9),
      R => \^clear\
    );
\io_r_data[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(0),
      I1 => Q(0),
      I2 => \io_r_data[31]_i_3\(0),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[0]_0\
    );
\io_r_data[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(10),
      I1 => Q(10),
      I2 => \io_r_data[31]_i_3\(10),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[10]_0\
    );
\io_r_data[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(11),
      I1 => Q(11),
      I2 => \io_r_data[31]_i_3\(11),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[11]_0\
    );
\io_r_data[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(12),
      I1 => Q(12),
      I2 => \io_r_data[31]_i_3\(12),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[12]_0\
    );
\io_r_data[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(13),
      I1 => Q(13),
      I2 => \io_r_data[31]_i_3\(13),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[13]_0\
    );
\io_r_data[14]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(14),
      I1 => Q(14),
      I2 => \io_r_data[31]_i_3\(14),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[14]_0\
    );
\io_r_data[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(15),
      I1 => Q(15),
      I2 => \io_r_data[31]_i_3\(15),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[15]_0\
    );
\io_r_data[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(16),
      I1 => Q(16),
      I2 => \io_r_data[31]_i_3\(16),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[16]_0\
    );
\io_r_data[17]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(17),
      I1 => Q(17),
      I2 => \io_r_data[31]_i_3\(17),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[17]_0\
    );
\io_r_data[18]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(18),
      I1 => Q(18),
      I2 => \io_r_data[31]_i_3\(18),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[18]_0\
    );
\io_r_data[19]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(19),
      I1 => Q(19),
      I2 => \io_r_data[31]_i_3\(19),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[19]_0\
    );
\io_r_data[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(1),
      I1 => Q(1),
      I2 => \io_r_data[31]_i_3\(1),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[1]_0\
    );
\io_r_data[20]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(20),
      I1 => Q(20),
      I2 => \io_r_data[31]_i_3\(20),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[20]_0\
    );
\io_r_data[21]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(21),
      I1 => Q(21),
      I2 => \io_r_data[31]_i_3\(21),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[21]_0\
    );
\io_r_data[22]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(22),
      I1 => Q(22),
      I2 => \io_r_data[31]_i_3\(22),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[22]_0\
    );
\io_r_data[23]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(23),
      I1 => Q(23),
      I2 => \io_r_data[31]_i_3\(23),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[23]_0\
    );
\io_r_data[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(24),
      I1 => Q(24),
      I2 => \io_r_data[31]_i_3\(24),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[24]_0\
    );
\io_r_data[25]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(25),
      I1 => Q(25),
      I2 => \io_r_data[31]_i_3\(25),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[25]_0\
    );
\io_r_data[26]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(26),
      I1 => Q(26),
      I2 => \io_r_data[31]_i_3\(26),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[26]_0\
    );
\io_r_data[27]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(27),
      I1 => Q(27),
      I2 => \io_r_data[31]_i_3\(27),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[27]_0\
    );
\io_r_data[28]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(28),
      I1 => Q(28),
      I2 => \io_r_data[31]_i_3\(28),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[28]_0\
    );
\io_r_data[29]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(29),
      I1 => Q(29),
      I2 => \io_r_data[31]_i_3\(29),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[29]_0\
    );
\io_r_data[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFFCA0F"
    )
        port map (
      I0 => value(2),
      I1 => \io_r_data[31]_i_3\(2),
      I2 => \io_r_data[31]_i_3_0\(0),
      I3 => \io_r_data[31]_i_3_0\(1),
      I4 => Q(2),
      O => \value_reg[2]_0\
    );
\io_r_data[30]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(30),
      I1 => Q(30),
      I2 => \io_r_data[31]_i_3\(30),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[30]_0\
    );
\io_r_data[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(31),
      I1 => Q(31),
      I2 => \io_r_data[31]_i_3\(31),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[31]_0\
    );
\io_r_data[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(3),
      I1 => Q(3),
      I2 => \io_r_data[31]_i_3\(3),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[3]_0\
    );
\io_r_data[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(4),
      I1 => Q(4),
      I2 => \io_r_data[31]_i_3\(4),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[4]_0\
    );
\io_r_data[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(5),
      I1 => Q(5),
      I2 => \io_r_data[31]_i_3\(5),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[5]_0\
    );
\io_r_data[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(6),
      I1 => Q(6),
      I2 => \io_r_data[31]_i_3\(6),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[6]_0\
    );
\io_r_data[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(7),
      I1 => Q(7),
      I2 => \io_r_data[31]_i_3\(7),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[7]_0\
    );
\io_r_data[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(8),
      I1 => Q(8),
      I2 => \io_r_data[31]_i_3\(8),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[8]_0\
    );
\io_r_data[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => value(9),
      I1 => Q(9),
      I2 => \io_r_data[31]_i_3\(9),
      I3 => \io_r_data[31]_i_3_0\(0),
      I4 => \io_r_data[31]_i_3_0\(1),
      O => \value_reg[9]_0\
    );
\value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => value(0),
      R => '0'
    );
\value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(10),
      Q => value(10),
      R => '0'
    );
\value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(11),
      Q => value(11),
      R => '0'
    );
\value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(12),
      Q => value(12),
      R => '0'
    );
\value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(13),
      Q => value(13),
      R => '0'
    );
\value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(14),
      Q => value(14),
      R => '0'
    );
\value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(15),
      Q => value(15),
      R => '0'
    );
\value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(16),
      Q => value(16),
      R => '0'
    );
\value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(17),
      Q => value(17),
      R => '0'
    );
\value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(18),
      Q => value(18),
      R => '0'
    );
\value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(19),
      Q => value(19),
      R => '0'
    );
\value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(1),
      Q => value(1),
      R => '0'
    );
\value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(20),
      Q => value(20),
      R => '0'
    );
\value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(21),
      Q => value(21),
      R => '0'
    );
\value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(22),
      Q => value(22),
      R => '0'
    );
\value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(23),
      Q => value(23),
      R => '0'
    );
\value_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(24),
      Q => value(24),
      R => '0'
    );
\value_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(25),
      Q => value(25),
      R => '0'
    );
\value_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(26),
      Q => value(26),
      R => '0'
    );
\value_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(27),
      Q => value(27),
      R => '0'
    );
\value_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(28),
      Q => value(28),
      R => '0'
    );
\value_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(29),
      Q => value(29),
      R => '0'
    );
\value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(2),
      Q => value(2),
      R => '0'
    );
\value_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(30),
      Q => value(30),
      R => '0'
    );
\value_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(31),
      Q => value(31),
      R => '0'
    );
\value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(3),
      Q => value(3),
      R => '0'
    );
\value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(4),
      Q => value(4),
      R => '0'
    );
\value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(5),
      Q => value(5),
      R => '0'
    );
\value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(6),
      Q => value(6),
      R => '0'
    );
\value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(7),
      Q => value(7),
      R => '0'
    );
\value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(8),
      Q => value(8),
      R => '0'
    );
\value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter_reg(9),
      Q => value(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_recv_axi_0_0_clk40_decoder_v2 is
  port (
    clk40_div : out STD_LOGIC;
    sync_err : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fast_control_clk : in STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    sync_err_reg_0 : in STD_LOGIC;
    \count_down_reg[2]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_clk40_decoder_v2 : entity is "clk40_decoder_v2";
end tester_fastcontrol_recv_axi_0_0_clk40_decoder_v2;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_clk40_decoder_v2 is
  signal clk40_decoder_FSM_inst_n_0 : STD_LOGIC;
  signal clk40_decoder_FSM_inst_n_1 : STD_LOGIC;
  signal clk40_decoder_FSM_inst_n_2 : STD_LOGIC;
  signal clk40_decoder_FSM_inst_n_3 : STD_LOGIC;
  signal \count_down_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_down_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^sync_err\ : STD_LOGIC;
begin
  sync_err <= \^sync_err\;
Clk_40_decod_reg: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => \FSM_sequential_state_reg[1]\,
      D => p_0_in,
      Q => clk40_div
    );
clk40_decoder_FSM_inst: entity work.tester_fastcontrol_recv_axi_0_0_clk40_decoder_FSM
     port map (
      D(2) => clk40_decoder_FSM_inst_n_1,
      D(1) => clk40_decoder_FSM_inst_n_2,
      D(0) => clk40_decoder_FSM_inst_n_3,
      \FSM_sequential_state_reg[1]_0\(1 downto 0) => Q(1 downto 0),
      \FSM_sequential_state_reg[1]_1\(1 downto 0) => D(1 downto 0),
      \FSM_sequential_state_reg[1]_2\ => \FSM_sequential_state_reg[1]\,
      Q(2) => p_0_in,
      Q(1) => \count_down_reg_n_0_[1]\,
      Q(0) => \count_down_reg_n_0_[0]\,
      \count_down_reg[2]\ => \count_down_reg[2]_0\,
      fast_control_clk => fast_control_clk,
      sync_err => \^sync_err\,
      sync_err_reg => clk40_decoder_FSM_inst_n_0,
      sync_err_reg_0 => sync_err_reg_0
    );
\count_down_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => \FSM_sequential_state_reg[1]\,
      D => clk40_decoder_FSM_inst_n_3,
      Q => \count_down_reg_n_0_[0]\
    );
\count_down_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => \FSM_sequential_state_reg[1]\,
      D => clk40_decoder_FSM_inst_n_2,
      Q => \count_down_reg_n_0_[1]\
    );
\count_down_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => fast_control_clk,
      CE => '1',
      CLR => \FSM_sequential_state_reg[1]\,
      D => clk40_decoder_FSM_inst_n_1,
      Q => p_0_in
    );
sync_err_reg: unisim.vcomponents.FDPE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => clk40_decoder_FSM_inst_n_0,
      PRE => \FSM_sequential_state_reg[1]\,
      Q => \^sync_err\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_recv_axi_0_0_fast_cmd_clk40_decoder is
  port (
    Clk_40_decod_reg : out STD_LOGIC;
    fc_OrbitSync : out STD_LOGIC;
    fc_L1A : out STD_LOGIC;
    fc_OrbitCountReset_OrbitSync : out STD_LOGIC;
    fc_CalibrationReq : out STD_LOGIC;
    fc_CalibrationL1A : out STD_LOGIC;
    fc_LinkReset : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_ReSync40_d_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_CalibrationL1A40_d_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_CalibrationReq40_d_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_OrbitCountReset40_d_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_OrbitSync40_d_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    fast_control_clk : in STD_LOGIC;
    polarity : in STD_LOGIC;
    fast_control_stream : in STD_LOGIC;
    edge_select : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_decoder_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_fast_cmd_clk40_decoder : entity is "fast_cmd_clk40_decoder";
end tester_fastcontrol_recv_axi_0_0_fast_cmd_clk40_decoder;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_fast_cmd_clk40_decoder is
  signal \^clk_40_decod_reg\ : STD_LOGIC;
  signal ResetSync_inst_n_0 : STD_LOGIC;
  signal \clk40_decoder_FSM_inst/nxtState\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \clk40_decoder_FSM_inst/state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal clk40_div : STD_LOGIC;
  signal fast_cmd_decoder_inst_n_14 : STD_LOGIC;
  signal fast_cmd_decoder_inst_n_15 : STD_LOGIC;
  signal sync_err : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of buf_40 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of buf_40 : label is "BUFG";
begin
  Clk_40_decod_reg <= \^clk_40_decod_reg\;
ResetSync_inst: entity work.tester_fastcontrol_recv_axi_0_0_ResetSync
     port map (
      \ResetSync_reg_reg[1]_0\ => ResetSync_inst_n_0,
      fast_control_clk => fast_control_clk,
      reset_decoder_n => reset_decoder_n
    );
buf_40: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC"
    )
        port map (
      CE => '1',
      I => clk40_div,
      O => \^clk_40_decod_reg\
    );
clk40_decoder_inst: entity work.tester_fastcontrol_recv_axi_0_0_clk40_decoder_v2
     port map (
      D(1 downto 0) => \clk40_decoder_FSM_inst/nxtState\(1 downto 0),
      \FSM_sequential_state_reg[1]\ => ResetSync_inst_n_0,
      Q(1 downto 0) => \clk40_decoder_FSM_inst/state\(1 downto 0),
      clk40_div => clk40_div,
      \count_down_reg[2]_0\ => fast_cmd_decoder_inst_n_14,
      fast_control_clk => fast_control_clk,
      sync_err => sync_err,
      sync_err_reg_0 => fast_cmd_decoder_inst_n_15
    );
fast_cmd_decoder_inst: entity work.tester_fastcontrol_recv_axi_0_0_fast_cmd_decoder
     port map (
      D(0) => D(0),
      Q(1 downto 0) => \clk40_decoder_FSM_inst/state\(1 downto 0),
      S(0) => S(0),
      cmd_CalibrationL1A40_d_reg_0(0) => cmd_CalibrationL1A40_d_reg(0),
      cmd_CalibrationL1A40_d_reg_1 => \^clk_40_decod_reg\,
      cmd_CalibrationReq40_d_reg_0(0) => cmd_CalibrationReq40_d_reg(0),
      cmd_OrbitCountReset40_d_reg_0(0) => cmd_OrbitCountReset40_d_reg(0),
      cmd_OrbitSync40_d_reg_0(0) => cmd_OrbitSync40_d_reg(0),
      cmd_OrbitSync40_d_reg_1 => ResetSync_inst_n_0,
      cmd_ReSync40_d_reg_0(0) => cmd_ReSync40_d_reg(0),
      \counter_reg[7]\(0) => \counter_reg[7]\(0),
      \counter_reg[7]_0\(0) => \counter_reg[7]_0\(0),
      \counter_reg[7]_1\(0) => \counter_reg[7]_1\(0),
      \counter_reg[7]_2\(0) => \counter_reg[7]_2\(0),
      \counter_reg[7]_3\(0) => \counter_reg[7]_3\(0),
      edge_select => edge_select,
      fast_control_clk => fast_control_clk,
      fast_control_stream => fast_control_stream,
      fc_CalibrationL1A => fc_CalibrationL1A,
      fc_CalibrationReq => fc_CalibrationReq,
      fc_L1A => fc_L1A,
      fc_LinkReset => fc_LinkReset,
      fc_OrbitCountReset_OrbitSync => fc_OrbitCountReset_OrbitSync,
      fc_OrbitSync => fc_OrbitSync,
      \inbuffer_reg[3]_0\(1 downto 0) => \clk40_decoder_FSM_inst/nxtState\(1 downto 0),
      \inbuffer_reg[3]_1\ => fast_cmd_decoder_inst_n_14,
      \inbuffer_reg[5]_0\ => fast_cmd_decoder_inst_n_15,
      polarity => polarity,
      sync_err => sync_err
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_recv_axi_0_0_hgcal_fc_recv_manager is
  port (
    Clk_40_decod_reg : out STD_LOGIC;
    fc_OrbitSync : out STD_LOGIC;
    fc_L1A : out STD_LOGIC;
    fc_OrbitCountReset_OrbitSync : out STD_LOGIC;
    fc_CalibrationReq : out STD_LOGIC;
    fc_CalibrationL1A : out STD_LOGIC;
    fc_LinkReset : out STD_LOGIC;
    \fc_we__1\ : out STD_LOGIC;
    \io_r_data_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fast_control_clk : in STD_LOGIC;
    fc_reset : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_write[1].CtlReg_reg[1][31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_write[0].CtlReg_reg[0][16]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \io_r_data_reg[0]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    fast_control_stream : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_hgcal_fc_recv_manager : entity is "hgcal_fc_recv_manager";
end tester_fastcontrol_recv_axi_0_0_hgcal_fc_recv_manager;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_hgcal_fc_recv_manager is
  signal \^clk_40_decod_reg\ : STD_LOGIC;
  signal CtlReg : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal count_os_n_33 : STD_LOGIC;
  signal count_os_n_4 : STD_LOGIC;
  signal count_os_n_5 : STD_LOGIC;
  signal count_os_n_6 : STD_LOGIC;
  signal count_os_n_7 : STD_LOGIC;
  signal count_os_n_8 : STD_LOGIC;
  signal count_os_n_9 : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg_2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg_3 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter_reg_4 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal decoder_n_10 : STD_LOGIC;
  signal decoder_n_11 : STD_LOGIC;
  signal decoder_n_12 : STD_LOGIC;
  signal decoder_n_7 : STD_LOGIC;
  signal decoder_n_8 : STD_LOGIC;
  signal decoder_n_9 : STD_LOGIC;
  signal edge_select : STD_LOGIC;
  signal \^fc_calibrationl1a\ : STD_LOGIC;
  signal \^fc_calibrationreq\ : STD_LOGIC;
  signal \^fc_l1a\ : STD_LOGIC;
  signal \^fc_linkreset\ : STD_LOGIC;
  signal \^fc_orbitcountreset_orbitsync\ : STD_LOGIC;
  signal \^fc_orbitsync\ : STD_LOGIC;
  signal \^fc_we__1\ : STD_LOGIC;
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
  signal \gen_write[0].CtlReg[0][31]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][16]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][17]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][18]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][19]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][20]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][21]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][22]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][23]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][24]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][25]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][26]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][27]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][30]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][31]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \gen_write[0].CtlReg_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \gen_write[1].CtlReg[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[1].CtlReg_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gen_write[2].CtlReg[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[2].CtlReg_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gen_write[3].CtlReg[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write[3].CtlReg_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \io_r_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \io_r_data[31]_i_7_n_0\ : STD_LOGIC;
  signal kcapture : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal kcapture_io : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal polarity : STD_LOGIC;
  signal reset_40 : STD_LOGIC;
  signal \reset_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \reset_counter[7]_i_4_n_0\ : STD_LOGIC;
  signal \reset_counter_reg__0\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \reset_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \reset_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \reset_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \reset_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \reset_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \reset_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \reset_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal reset_counters_40_n : STD_LOGIC;
  signal reset_counters_40_n_i_1_n_0 : STD_LOGIC;
  signal reset_counters_io : STD_LOGIC;
  signal reset_decoder_io : STD_LOGIC;
  signal reset_decoder_n : STD_LOGIC;
  signal reset_io : STD_LOGIC;
  signal sel : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reset_counter[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reset_counter[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reset_counter[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reset_counter[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reset_counter[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reset_counter[7]_i_3\ : label is "soft_lutpair7";
begin
  Clk_40_decod_reg <= \^clk_40_decod_reg\;
  fc_CalibrationL1A <= \^fc_calibrationl1a\;
  fc_CalibrationReq <= \^fc_calibrationreq\;
  fc_L1A <= \^fc_l1a\;
  fc_LinkReset <= \^fc_linkreset\;
  fc_OrbitCountReset_OrbitSync <= \^fc_orbitcountreset_orbitsync\;
  fc_OrbitSync <= \^fc_orbitsync\;
  \fc_we__1\ <= \^fc_we__1\;
count_cl1: entity work.tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter
     port map (
      D(0) => counter_reg(0),
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
      S(0) => decoder_n_9,
      clear => clear,
      \counter_reg[0]_0\ => \^clk_40_decod_reg\,
      fc_CalibrationL1A => \^fc_calibrationl1a\,
      s00_axi_aclk => s00_axi_aclk
    );
count_cr: entity work.tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_0
     port map (
      CtlReg(31 downto 0) => CtlReg(31 downto 0),
      D(0) => counter_reg_0(0),
      Q(31) => count_l1_n_1,
      Q(30) => count_l1_n_2,
      Q(29) => count_l1_n_3,
      Q(28) => count_l1_n_4,
      Q(27) => count_l1_n_5,
      Q(26) => count_l1_n_6,
      Q(25) => count_l1_n_7,
      Q(24) => count_l1_n_8,
      Q(23) => count_l1_n_9,
      Q(22) => count_l1_n_10,
      Q(21) => count_l1_n_11,
      Q(20) => count_l1_n_12,
      Q(19) => count_l1_n_13,
      Q(18) => count_l1_n_14,
      Q(17) => count_l1_n_15,
      Q(16) => count_l1_n_16,
      Q(15) => count_l1_n_17,
      Q(14) => count_l1_n_18,
      Q(13) => count_l1_n_19,
      Q(12) => count_l1_n_20,
      Q(11) => count_l1_n_21,
      Q(10) => count_l1_n_22,
      Q(9) => count_l1_n_23,
      Q(8) => count_l1_n_24,
      Q(7) => count_l1_n_25,
      Q(6) => count_l1_n_26,
      Q(5) => count_l1_n_27,
      Q(4) => count_l1_n_28,
      Q(3) => count_l1_n_29,
      Q(2) => count_l1_n_30,
      Q(1) => count_l1_n_31,
      Q(0) => count_l1_n_32,
      S(0) => decoder_n_10,
      clear => clear,
      \counter_reg[31]_0\ => \^clk_40_decod_reg\,
      fc_CalibrationReq => \^fc_calibrationreq\,
      \fc_raddr_reg[4]\(31) => count_cr_n_1,
      \fc_raddr_reg[4]\(30) => count_cr_n_2,
      \fc_raddr_reg[4]\(29) => count_cr_n_3,
      \fc_raddr_reg[4]\(28) => count_cr_n_4,
      \fc_raddr_reg[4]\(27) => count_cr_n_5,
      \fc_raddr_reg[4]\(26) => count_cr_n_6,
      \fc_raddr_reg[4]\(25) => count_cr_n_7,
      \fc_raddr_reg[4]\(24) => count_cr_n_8,
      \fc_raddr_reg[4]\(23) => count_cr_n_9,
      \fc_raddr_reg[4]\(22) => count_cr_n_10,
      \fc_raddr_reg[4]\(21) => count_cr_n_11,
      \fc_raddr_reg[4]\(20) => count_cr_n_12,
      \fc_raddr_reg[4]\(19) => count_cr_n_13,
      \fc_raddr_reg[4]\(18) => count_cr_n_14,
      \fc_raddr_reg[4]\(17) => count_cr_n_15,
      \fc_raddr_reg[4]\(16) => count_cr_n_16,
      \fc_raddr_reg[4]\(15) => count_cr_n_17,
      \fc_raddr_reg[4]\(14) => count_cr_n_18,
      \fc_raddr_reg[4]\(13) => count_cr_n_19,
      \fc_raddr_reg[4]\(12) => count_cr_n_20,
      \fc_raddr_reg[4]\(11) => count_cr_n_21,
      \fc_raddr_reg[4]\(10) => count_cr_n_22,
      \fc_raddr_reg[4]\(9) => count_cr_n_23,
      \fc_raddr_reg[4]\(8) => count_cr_n_24,
      \fc_raddr_reg[4]\(7) => count_cr_n_25,
      \fc_raddr_reg[4]\(6) => count_cr_n_26,
      \fc_raddr_reg[4]\(5) => count_cr_n_27,
      \fc_raddr_reg[4]\(4) => count_cr_n_28,
      \fc_raddr_reg[4]\(3) => count_cr_n_29,
      \fc_raddr_reg[4]\(2) => count_cr_n_30,
      \fc_raddr_reg[4]\(1) => count_cr_n_31,
      \fc_raddr_reg[4]\(0) => count_cr_n_32,
      \io_r_data[31]_i_3_0\(31) => count_lr_n_1,
      \io_r_data[31]_i_3_0\(30) => count_lr_n_2,
      \io_r_data[31]_i_3_0\(29) => count_lr_n_3,
      \io_r_data[31]_i_3_0\(28) => count_lr_n_4,
      \io_r_data[31]_i_3_0\(27) => count_lr_n_5,
      \io_r_data[31]_i_3_0\(26) => count_lr_n_6,
      \io_r_data[31]_i_3_0\(25) => count_lr_n_7,
      \io_r_data[31]_i_3_0\(24) => count_lr_n_8,
      \io_r_data[31]_i_3_0\(23) => count_lr_n_9,
      \io_r_data[31]_i_3_0\(22) => count_lr_n_10,
      \io_r_data[31]_i_3_0\(21) => count_lr_n_11,
      \io_r_data[31]_i_3_0\(20) => count_lr_n_12,
      \io_r_data[31]_i_3_0\(19) => count_lr_n_13,
      \io_r_data[31]_i_3_0\(18) => count_lr_n_14,
      \io_r_data[31]_i_3_0\(17) => count_lr_n_15,
      \io_r_data[31]_i_3_0\(16) => count_lr_n_16,
      \io_r_data[31]_i_3_0\(15) => count_lr_n_17,
      \io_r_data[31]_i_3_0\(14) => count_lr_n_18,
      \io_r_data[31]_i_3_0\(13) => count_lr_n_19,
      \io_r_data[31]_i_3_0\(12) => count_lr_n_20,
      \io_r_data[31]_i_3_0\(11) => count_lr_n_21,
      \io_r_data[31]_i_3_0\(10) => count_lr_n_22,
      \io_r_data[31]_i_3_0\(9) => count_lr_n_23,
      \io_r_data[31]_i_3_0\(8) => count_lr_n_24,
      \io_r_data[31]_i_3_0\(7) => count_lr_n_25,
      \io_r_data[31]_i_3_0\(6) => count_lr_n_26,
      \io_r_data[31]_i_3_0\(5) => count_lr_n_27,
      \io_r_data[31]_i_3_0\(4) => count_lr_n_28,
      \io_r_data[31]_i_3_0\(3) => count_lr_n_29,
      \io_r_data[31]_i_3_0\(2) => count_lr_n_30,
      \io_r_data[31]_i_3_0\(1) => count_lr_n_31,
      \io_r_data[31]_i_3_0\(0) => count_lr_n_32,
      \io_r_data[31]_i_3_1\(31) => count_cl1_n_1,
      \io_r_data[31]_i_3_1\(30) => count_cl1_n_2,
      \io_r_data[31]_i_3_1\(29) => count_cl1_n_3,
      \io_r_data[31]_i_3_1\(28) => count_cl1_n_4,
      \io_r_data[31]_i_3_1\(27) => count_cl1_n_5,
      \io_r_data[31]_i_3_1\(26) => count_cl1_n_6,
      \io_r_data[31]_i_3_1\(25) => count_cl1_n_7,
      \io_r_data[31]_i_3_1\(24) => count_cl1_n_8,
      \io_r_data[31]_i_3_1\(23) => count_cl1_n_9,
      \io_r_data[31]_i_3_1\(22) => count_cl1_n_10,
      \io_r_data[31]_i_3_1\(21) => count_cl1_n_11,
      \io_r_data[31]_i_3_1\(20) => count_cl1_n_12,
      \io_r_data[31]_i_3_1\(19) => count_cl1_n_13,
      \io_r_data[31]_i_3_1\(18) => count_cl1_n_14,
      \io_r_data[31]_i_3_1\(17) => count_cl1_n_15,
      \io_r_data[31]_i_3_1\(16) => count_cl1_n_16,
      \io_r_data[31]_i_3_1\(15) => count_cl1_n_17,
      \io_r_data[31]_i_3_1\(14) => count_cl1_n_18,
      \io_r_data[31]_i_3_1\(13) => count_cl1_n_19,
      \io_r_data[31]_i_3_1\(12) => count_cl1_n_20,
      \io_r_data[31]_i_3_1\(11) => count_cl1_n_21,
      \io_r_data[31]_i_3_1\(10) => count_cl1_n_22,
      \io_r_data[31]_i_3_1\(9) => count_cl1_n_23,
      \io_r_data[31]_i_3_1\(8) => count_cl1_n_24,
      \io_r_data[31]_i_3_1\(7) => count_cl1_n_25,
      \io_r_data[31]_i_3_1\(6) => count_cl1_n_26,
      \io_r_data[31]_i_3_1\(5) => count_cl1_n_27,
      \io_r_data[31]_i_3_1\(4) => count_cl1_n_28,
      \io_r_data[31]_i_3_1\(3) => count_cl1_n_29,
      \io_r_data[31]_i_3_1\(2) => count_cl1_n_30,
      \io_r_data[31]_i_3_1\(1) => count_cl1_n_31,
      \io_r_data[31]_i_3_1\(0) => count_cl1_n_32,
      \io_r_data_reg[0]\ => \io_r_data[31]_i_2_n_0\,
      \io_r_data_reg[0]_0\(3 downto 0) => \io_r_data_reg[0]_0\(3 downto 0),
      \io_r_data_reg[0]_1\ => count_os_n_33,
      \io_r_data_reg[10]\ => count_os_n_23,
      \io_r_data_reg[11]\ => count_os_n_22,
      \io_r_data_reg[12]\ => count_os_n_21,
      \io_r_data_reg[13]\ => count_os_n_20,
      \io_r_data_reg[14]\ => count_os_n_19,
      \io_r_data_reg[15]\ => count_os_n_18,
      \io_r_data_reg[16]\ => count_os_n_17,
      \io_r_data_reg[17]\ => count_os_n_16,
      \io_r_data_reg[18]\ => count_os_n_15,
      \io_r_data_reg[19]\ => count_os_n_14,
      \io_r_data_reg[1]\ => count_os_n_32,
      \io_r_data_reg[20]\ => count_os_n_13,
      \io_r_data_reg[21]\ => count_os_n_12,
      \io_r_data_reg[22]\ => count_os_n_11,
      \io_r_data_reg[23]\ => count_os_n_10,
      \io_r_data_reg[24]\ => count_os_n_9,
      \io_r_data_reg[25]\ => count_os_n_8,
      \io_r_data_reg[26]\ => count_os_n_7,
      \io_r_data_reg[27]\ => count_os_n_6,
      \io_r_data_reg[28]\ => count_os_n_5,
      \io_r_data_reg[29]\ => count_os_n_4,
      \io_r_data_reg[2]\ => count_os_n_31,
      \io_r_data_reg[30]\ => count_os_n_3,
      \io_r_data_reg[31]\ => count_os_n_2,
      \io_r_data_reg[31]_0\ => \io_r_data[31]_i_7_n_0\,
      \io_r_data_reg[3]\ => count_os_n_30,
      \io_r_data_reg[4]\ => count_os_n_29,
      \io_r_data_reg[5]\ => count_os_n_28,
      \io_r_data_reg[6]\ => count_os_n_27,
      \io_r_data_reg[7]\ => count_os_n_26,
      \io_r_data_reg[8]\ => count_os_n_25,
      \io_r_data_reg[9]\ => count_os_n_24,
      s00_axi_aclk => s00_axi_aclk
    );
count_l1: entity work.tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_1
     port map (
      D(0) => counter_reg_1(0),
      Q(31) => count_l1_n_1,
      Q(30) => count_l1_n_2,
      Q(29) => count_l1_n_3,
      Q(28) => count_l1_n_4,
      Q(27) => count_l1_n_5,
      Q(26) => count_l1_n_6,
      Q(25) => count_l1_n_7,
      Q(24) => count_l1_n_8,
      Q(23) => count_l1_n_9,
      Q(22) => count_l1_n_10,
      Q(21) => count_l1_n_11,
      Q(20) => count_l1_n_12,
      Q(19) => count_l1_n_13,
      Q(18) => count_l1_n_14,
      Q(17) => count_l1_n_15,
      Q(16) => count_l1_n_16,
      Q(15) => count_l1_n_17,
      Q(14) => count_l1_n_18,
      Q(13) => count_l1_n_19,
      Q(12) => count_l1_n_20,
      Q(11) => count_l1_n_21,
      Q(10) => count_l1_n_22,
      Q(9) => count_l1_n_23,
      Q(8) => count_l1_n_24,
      Q(7) => count_l1_n_25,
      Q(6) => count_l1_n_26,
      Q(5) => count_l1_n_27,
      Q(4) => count_l1_n_28,
      Q(3) => count_l1_n_29,
      Q(2) => count_l1_n_30,
      Q(1) => count_l1_n_31,
      Q(0) => count_l1_n_32,
      S(0) => decoder_n_7,
      clear => clear,
      \counter_reg[0]_0\ => \^clk_40_decod_reg\,
      fc_L1A => \^fc_l1a\,
      s00_axi_aclk => s00_axi_aclk
    );
count_lr: entity work.tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_2
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
      S(0) => decoder_n_8,
      clear => clear,
      \counter_reg[31]_0\ => \^clk_40_decod_reg\,
      fc_LinkReset => \^fc_linkreset\,
      s00_axi_aclk => s00_axi_aclk
    );
count_ocr: entity work.tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_3
     port map (
      D(0) => counter_reg_3(0),
      Q(31) => count_ocr_n_1,
      Q(30) => count_ocr_n_2,
      Q(29) => count_ocr_n_3,
      Q(28) => count_ocr_n_4,
      Q(27) => count_ocr_n_5,
      Q(26) => count_ocr_n_6,
      Q(25) => count_ocr_n_7,
      Q(24) => count_ocr_n_8,
      Q(23) => count_ocr_n_9,
      Q(22) => count_ocr_n_10,
      Q(21) => count_ocr_n_11,
      Q(20) => count_ocr_n_12,
      Q(19) => count_ocr_n_13,
      Q(18) => count_ocr_n_14,
      Q(17) => count_ocr_n_15,
      Q(16) => count_ocr_n_16,
      Q(15) => count_ocr_n_17,
      Q(14) => count_ocr_n_18,
      Q(13) => count_ocr_n_19,
      Q(12) => count_ocr_n_20,
      Q(11) => count_ocr_n_21,
      Q(10) => count_ocr_n_22,
      Q(9) => count_ocr_n_23,
      Q(8) => count_ocr_n_24,
      Q(7) => count_ocr_n_25,
      Q(6) => count_ocr_n_26,
      Q(5) => count_ocr_n_27,
      Q(4) => count_ocr_n_28,
      Q(3) => count_ocr_n_29,
      Q(2) => count_ocr_n_30,
      Q(1) => count_ocr_n_31,
      Q(0) => count_ocr_n_32,
      S(0) => decoder_n_11,
      clear => clear,
      \counter_reg[0]_0\ => \^clk_40_decod_reg\,
      fc_OrbitCountReset_OrbitSync => \^fc_orbitcountreset_orbitsync\,
      s00_axi_aclk => s00_axi_aclk
    );
count_os: entity work.tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_4
     port map (
      D(0) => counter_reg_4(0),
      Q(31 downto 0) => kcapture_io(31 downto 0),
      S(0) => decoder_n_12,
      clear => clear,
      \counter_reg[31]_0\ => \^clk_40_decod_reg\,
      fc_OrbitSync => \^fc_orbitsync\,
      \io_r_data[31]_i_3\(31) => count_ocr_n_1,
      \io_r_data[31]_i_3\(30) => count_ocr_n_2,
      \io_r_data[31]_i_3\(29) => count_ocr_n_3,
      \io_r_data[31]_i_3\(28) => count_ocr_n_4,
      \io_r_data[31]_i_3\(27) => count_ocr_n_5,
      \io_r_data[31]_i_3\(26) => count_ocr_n_6,
      \io_r_data[31]_i_3\(25) => count_ocr_n_7,
      \io_r_data[31]_i_3\(24) => count_ocr_n_8,
      \io_r_data[31]_i_3\(23) => count_ocr_n_9,
      \io_r_data[31]_i_3\(22) => count_ocr_n_10,
      \io_r_data[31]_i_3\(21) => count_ocr_n_11,
      \io_r_data[31]_i_3\(20) => count_ocr_n_12,
      \io_r_data[31]_i_3\(19) => count_ocr_n_13,
      \io_r_data[31]_i_3\(18) => count_ocr_n_14,
      \io_r_data[31]_i_3\(17) => count_ocr_n_15,
      \io_r_data[31]_i_3\(16) => count_ocr_n_16,
      \io_r_data[31]_i_3\(15) => count_ocr_n_17,
      \io_r_data[31]_i_3\(14) => count_ocr_n_18,
      \io_r_data[31]_i_3\(13) => count_ocr_n_19,
      \io_r_data[31]_i_3\(12) => count_ocr_n_20,
      \io_r_data[31]_i_3\(11) => count_ocr_n_21,
      \io_r_data[31]_i_3\(10) => count_ocr_n_22,
      \io_r_data[31]_i_3\(9) => count_ocr_n_23,
      \io_r_data[31]_i_3\(8) => count_ocr_n_24,
      \io_r_data[31]_i_3\(7) => count_ocr_n_25,
      \io_r_data[31]_i_3\(6) => count_ocr_n_26,
      \io_r_data[31]_i_3\(5) => count_ocr_n_27,
      \io_r_data[31]_i_3\(4) => count_ocr_n_28,
      \io_r_data[31]_i_3\(3) => count_ocr_n_29,
      \io_r_data[31]_i_3\(2) => count_ocr_n_30,
      \io_r_data[31]_i_3\(1) => count_ocr_n_31,
      \io_r_data[31]_i_3\(0) => count_ocr_n_32,
      \io_r_data[31]_i_3_0\(1 downto 0) => \io_r_data_reg[0]_0\(1 downto 0),
      reset_counters_40_n => reset_counters_40_n,
      s00_axi_aclk => s00_axi_aclk,
      \value_reg[0]_0\ => count_os_n_33,
      \value_reg[10]_0\ => count_os_n_23,
      \value_reg[11]_0\ => count_os_n_22,
      \value_reg[12]_0\ => count_os_n_21,
      \value_reg[13]_0\ => count_os_n_20,
      \value_reg[14]_0\ => count_os_n_19,
      \value_reg[15]_0\ => count_os_n_18,
      \value_reg[16]_0\ => count_os_n_17,
      \value_reg[17]_0\ => count_os_n_16,
      \value_reg[18]_0\ => count_os_n_15,
      \value_reg[19]_0\ => count_os_n_14,
      \value_reg[1]_0\ => count_os_n_32,
      \value_reg[20]_0\ => count_os_n_13,
      \value_reg[21]_0\ => count_os_n_12,
      \value_reg[22]_0\ => count_os_n_11,
      \value_reg[23]_0\ => count_os_n_10,
      \value_reg[24]_0\ => count_os_n_9,
      \value_reg[25]_0\ => count_os_n_8,
      \value_reg[26]_0\ => count_os_n_7,
      \value_reg[27]_0\ => count_os_n_6,
      \value_reg[28]_0\ => count_os_n_5,
      \value_reg[29]_0\ => count_os_n_4,
      \value_reg[2]_0\ => count_os_n_31,
      \value_reg[30]_0\ => count_os_n_3,
      \value_reg[31]_0\ => count_os_n_2,
      \value_reg[3]_0\ => count_os_n_30,
      \value_reg[4]_0\ => count_os_n_29,
      \value_reg[5]_0\ => count_os_n_28,
      \value_reg[6]_0\ => count_os_n_27,
      \value_reg[7]_0\ => count_os_n_26,
      \value_reg[8]_0\ => count_os_n_25,
      \value_reg[9]_0\ => count_os_n_24
    );
decoder: entity work.tester_fastcontrol_recv_axi_0_0_fast_cmd_clk40_decoder
     port map (
      Clk_40_decod_reg => \^clk_40_decod_reg\,
      D(0) => counter_reg_1(0),
      S(0) => decoder_n_7,
      cmd_CalibrationL1A40_d_reg(0) => decoder_n_9,
      cmd_CalibrationReq40_d_reg(0) => decoder_n_10,
      cmd_OrbitCountReset40_d_reg(0) => decoder_n_11,
      cmd_OrbitSync40_d_reg(0) => decoder_n_12,
      cmd_ReSync40_d_reg(0) => decoder_n_8,
      \counter_reg[7]\(0) => counter_reg_2(0),
      \counter_reg[7]_0\(0) => counter_reg(0),
      \counter_reg[7]_1\(0) => counter_reg_0(0),
      \counter_reg[7]_2\(0) => counter_reg_3(0),
      \counter_reg[7]_3\(0) => counter_reg_4(0),
      edge_select => edge_select,
      fast_control_clk => fast_control_clk,
      fast_control_stream => fast_control_stream,
      fc_CalibrationL1A => \^fc_calibrationl1a\,
      fc_CalibrationReq => \^fc_calibrationreq\,
      fc_L1A => \^fc_l1a\,
      fc_LinkReset => \^fc_linkreset\,
      fc_OrbitCountReset_OrbitSync => \^fc_orbitcountreset_orbitsync\,
      fc_OrbitSync => \^fc_orbitsync\,
      polarity => polarity,
      reset_decoder_n => reset_decoder_n
    );
edge_select_reg: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => \gen_write[0].CtlReg_reg_n_0_[0][0]\,
      Q => edge_select,
      R => '0'
    );
fc_reset_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => s00_axi_wstrb(0),
      I2 => \gen_write[0].CtlReg_reg[0][16]_0\(1),
      I3 => \gen_write[0].CtlReg_reg[0][16]_0\(0),
      O => \^fc_we__1\
    );
\gen_write[0].CtlReg[0][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^fc_we__1\,
      I3 => Q(4),
      I4 => Q(3),
      I5 => Q(2),
      O => \gen_write[0].CtlReg[0][15]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(16),
      O => \gen_write[0].CtlReg[0][16]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(17),
      O => \gen_write[0].CtlReg[0][17]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(18),
      O => \gen_write[0].CtlReg[0][18]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(19),
      O => \gen_write[0].CtlReg[0][19]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(20),
      O => \gen_write[0].CtlReg[0][20]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(21),
      O => \gen_write[0].CtlReg[0][21]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(22),
      O => \gen_write[0].CtlReg[0][22]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(23),
      O => \gen_write[0].CtlReg[0][23]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(24),
      O => \gen_write[0].CtlReg[0][24]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(25),
      O => \gen_write[0].CtlReg[0][25]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(26),
      O => \gen_write[0].CtlReg[0][26]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(27),
      O => \gen_write[0].CtlReg[0][27]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(28),
      O => \gen_write[0].CtlReg[0][28]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(29),
      O => \gen_write[0].CtlReg[0][29]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(30),
      O => \gen_write[0].CtlReg[0][30]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \gen_write[1].CtlReg_reg[1][31]_0\(31),
      O => \gen_write[0].CtlReg[0][31]_i_1_n_0\
    );
\gen_write[0].CtlReg[0][31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      O => \gen_write[0].CtlReg[0][31]_i_2_n_0\
    );
\gen_write[0].CtlReg_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(0),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][0]\,
      R => reset_io
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
      Q => \gen_write[0].CtlReg_reg_n_0_[0][16]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][17]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][17]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][18]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][18]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][19]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][19]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(1),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][1]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][20]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][20]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \gen_write[0].CtlReg[0][21]_i_1_n_0\,
      Q => \gen_write[0].CtlReg_reg_n_0_[0][21]\,
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
      Q => \gen_write[0].CtlReg_reg_n_0_[0][27]\,
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
      Q => reset_decoder_io,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(2),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][2]\,
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
      Q => \gen_write[0].CtlReg_reg_n_0_[0][3]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(4),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][4]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(5),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][5]\,
      R => reset_io
    );
\gen_write[0].CtlReg_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[0].CtlReg[0][15]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(6),
      Q => \gen_write[0].CtlReg_reg_n_0_[0][6]\,
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
      INIT => X"0080"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
      O => \gen_write[1].CtlReg[1][31]_i_1_n_0\
    );
\gen_write[1].CtlReg_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(0),
      Q => \gen_write[1].CtlReg_reg[1]\(0),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(10),
      Q => \gen_write[1].CtlReg_reg[1]\(10),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(11),
      Q => \gen_write[1].CtlReg_reg[1]\(11),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(12),
      Q => \gen_write[1].CtlReg_reg[1]\(12),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(13),
      Q => \gen_write[1].CtlReg_reg[1]\(13),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(14),
      Q => \gen_write[1].CtlReg_reg[1]\(14),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(15),
      Q => \gen_write[1].CtlReg_reg[1]\(15),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(16),
      Q => \gen_write[1].CtlReg_reg[1]\(16),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(17),
      Q => \gen_write[1].CtlReg_reg[1]\(17),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(18),
      Q => \gen_write[1].CtlReg_reg[1]\(18),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(19),
      Q => \gen_write[1].CtlReg_reg[1]\(19),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(1),
      Q => \gen_write[1].CtlReg_reg[1]\(1),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(20),
      Q => \gen_write[1].CtlReg_reg[1]\(20),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(21),
      Q => \gen_write[1].CtlReg_reg[1]\(21),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(22),
      Q => \gen_write[1].CtlReg_reg[1]\(22),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(23),
      Q => \gen_write[1].CtlReg_reg[1]\(23),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(24),
      Q => \gen_write[1].CtlReg_reg[1]\(24),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(25),
      Q => \gen_write[1].CtlReg_reg[1]\(25),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(26),
      Q => \gen_write[1].CtlReg_reg[1]\(26),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(27),
      Q => \gen_write[1].CtlReg_reg[1]\(27),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(28),
      Q => \gen_write[1].CtlReg_reg[1]\(28),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(29),
      Q => \gen_write[1].CtlReg_reg[1]\(29),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(2),
      Q => \gen_write[1].CtlReg_reg[1]\(2),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(30),
      Q => \gen_write[1].CtlReg_reg[1]\(30),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(31),
      Q => \gen_write[1].CtlReg_reg[1]\(31),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(3),
      Q => \gen_write[1].CtlReg_reg[1]\(3),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(4),
      Q => \gen_write[1].CtlReg_reg[1]\(4),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(5),
      Q => \gen_write[1].CtlReg_reg[1]\(5),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(6),
      Q => \gen_write[1].CtlReg_reg[1]\(6),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(7),
      Q => \gen_write[1].CtlReg_reg[1]\(7),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(8),
      Q => \gen_write[1].CtlReg_reg[1]\(8),
      R => reset_io
    );
\gen_write[1].CtlReg_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[1].CtlReg[1][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(9),
      Q => \gen_write[1].CtlReg_reg[1]\(9),
      R => reset_io
    );
\gen_write[2].CtlReg[2][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(1),
      I3 => Q(0),
      O => \gen_write[2].CtlReg[2][31]_i_1_n_0\
    );
\gen_write[2].CtlReg_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(0),
      Q => \gen_write[2].CtlReg_reg[2]\(0),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(10),
      Q => \gen_write[2].CtlReg_reg[2]\(10),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(11),
      Q => \gen_write[2].CtlReg_reg[2]\(11),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(12),
      Q => \gen_write[2].CtlReg_reg[2]\(12),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(13),
      Q => \gen_write[2].CtlReg_reg[2]\(13),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(14),
      Q => \gen_write[2].CtlReg_reg[2]\(14),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(15),
      Q => \gen_write[2].CtlReg_reg[2]\(15),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(16),
      Q => \gen_write[2].CtlReg_reg[2]\(16),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(17),
      Q => \gen_write[2].CtlReg_reg[2]\(17),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(18),
      Q => \gen_write[2].CtlReg_reg[2]\(18),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(19),
      Q => \gen_write[2].CtlReg_reg[2]\(19),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(1),
      Q => \gen_write[2].CtlReg_reg[2]\(1),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(20),
      Q => \gen_write[2].CtlReg_reg[2]\(20),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(21),
      Q => \gen_write[2].CtlReg_reg[2]\(21),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(22),
      Q => \gen_write[2].CtlReg_reg[2]\(22),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(23),
      Q => \gen_write[2].CtlReg_reg[2]\(23),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(24),
      Q => \gen_write[2].CtlReg_reg[2]\(24),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(25),
      Q => \gen_write[2].CtlReg_reg[2]\(25),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(26),
      Q => \gen_write[2].CtlReg_reg[2]\(26),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(27),
      Q => \gen_write[2].CtlReg_reg[2]\(27),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(28),
      Q => \gen_write[2].CtlReg_reg[2]\(28),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(29),
      Q => \gen_write[2].CtlReg_reg[2]\(29),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(2),
      Q => \gen_write[2].CtlReg_reg[2]\(2),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(30),
      Q => \gen_write[2].CtlReg_reg[2]\(30),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(31),
      Q => \gen_write[2].CtlReg_reg[2]\(31),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(3),
      Q => \gen_write[2].CtlReg_reg[2]\(3),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(4),
      Q => \gen_write[2].CtlReg_reg[2]\(4),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(5),
      Q => \gen_write[2].CtlReg_reg[2]\(5),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(6),
      Q => \gen_write[2].CtlReg_reg[2]\(6),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(7),
      Q => \gen_write[2].CtlReg_reg[2]\(7),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(8),
      Q => \gen_write[2].CtlReg_reg[2]\(8),
      R => reset_io
    );
\gen_write[2].CtlReg_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \gen_write[2].CtlReg[2][31]_i_1_n_0\,
      D => \gen_write[1].CtlReg_reg[1][31]_0\(9),
      Q => \gen_write[2].CtlReg_reg[2]\(9),
      R => reset_io
    );
\gen_write[3].CtlReg[3][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_write[0].CtlReg[0][31]_i_2_n_0\,
      I1 => \^fc_we__1\,
      I2 => Q(0),
      I3 => Q(1),
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
\io_r_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(0),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][0]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(0),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(0),
      O => CtlReg(0)
    );
\io_r_data[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(10),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][10]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(10),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(10),
      O => CtlReg(10)
    );
\io_r_data[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(11),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][11]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(11),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(11),
      O => CtlReg(11)
    );
\io_r_data[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(12),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][12]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(12),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(12),
      O => CtlReg(12)
    );
\io_r_data[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(13),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][13]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(13),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(13),
      O => CtlReg(13)
    );
\io_r_data[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(14),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][14]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(14),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(14),
      O => CtlReg(14)
    );
\io_r_data[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(15),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][15]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(15),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(15),
      O => CtlReg(15)
    );
\io_r_data[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(16),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][16]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(16),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(16),
      O => CtlReg(16)
    );
\io_r_data[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(17),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][17]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(17),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(17),
      O => CtlReg(17)
    );
\io_r_data[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(18),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][18]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(18),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(18),
      O => CtlReg(18)
    );
\io_r_data[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(19),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][19]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(19),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(19),
      O => CtlReg(19)
    );
\io_r_data[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(1),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][1]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(1),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(1),
      O => CtlReg(1)
    );
\io_r_data[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(20),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][20]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(20),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(20),
      O => CtlReg(20)
    );
\io_r_data[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(21),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][21]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(21),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(21),
      O => CtlReg(21)
    );
\io_r_data[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(22),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][22]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(22),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(22),
      O => CtlReg(22)
    );
\io_r_data[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(23),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][23]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(23),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(23),
      O => CtlReg(23)
    );
\io_r_data[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(24),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][24]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(24),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(24),
      O => CtlReg(24)
    );
\io_r_data[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(25),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][25]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(25),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(25),
      O => CtlReg(25)
    );
\io_r_data[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(26),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][26]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(26),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(26),
      O => CtlReg(26)
    );
\io_r_data[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(27),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][27]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(27),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(27),
      O => CtlReg(27)
    );
\io_r_data[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(28),
      I1 => reset_counters_io,
      I2 => \gen_write[3].CtlReg_reg[3]\(28),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(28),
      O => CtlReg(28)
    );
\io_r_data[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(29),
      I1 => reset_decoder_io,
      I2 => \gen_write[3].CtlReg_reg[3]\(29),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(29),
      O => CtlReg(29)
    );
\io_r_data[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(2),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][2]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(2),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(2),
      O => CtlReg(2)
    );
\io_r_data[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(30),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][30]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(30),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(30),
      O => CtlReg(30)
    );
\io_r_data[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \io_r_data_reg[0]_0\(4),
      I1 => \io_r_data_reg[0]_0\(3),
      I2 => \io_r_data_reg[0]_0\(2),
      O => \io_r_data[31]_i_2_n_0\
    );
\io_r_data[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(31),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][31]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(31),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(31),
      O => CtlReg(31)
    );
\io_r_data[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \io_r_data_reg[0]_0\(0),
      I1 => \io_r_data_reg[0]_0\(1),
      O => \io_r_data[31]_i_7_n_0\
    );
\io_r_data[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(3),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][3]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(3),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(3),
      O => CtlReg(3)
    );
\io_r_data[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(4),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][4]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(4),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(4),
      O => CtlReg(4)
    );
\io_r_data[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(5),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][5]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(5),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(5),
      O => CtlReg(5)
    );
\io_r_data[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(6),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][6]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(6),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(6),
      O => CtlReg(6)
    );
\io_r_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(7),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][7]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(7),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(7),
      O => CtlReg(7)
    );
\io_r_data[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(8),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][8]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(8),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(8),
      O => CtlReg(8)
    );
\io_r_data[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \gen_write[1].CtlReg_reg[1]\(9),
      I1 => \gen_write[0].CtlReg_reg_n_0_[0][9]\,
      I2 => \gen_write[3].CtlReg_reg[3]\(9),
      I3 => \io_r_data_reg[0]_0\(1),
      I4 => \io_r_data_reg[0]_0\(0),
      I5 => \gen_write[2].CtlReg_reg[2]\(9),
      O => CtlReg(9)
    );
\io_r_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_32,
      Q => \io_r_data_reg[31]_0\(0),
      R => '0'
    );
\io_r_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_22,
      Q => \io_r_data_reg[31]_0\(10),
      R => '0'
    );
\io_r_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_21,
      Q => \io_r_data_reg[31]_0\(11),
      R => '0'
    );
\io_r_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_20,
      Q => \io_r_data_reg[31]_0\(12),
      R => '0'
    );
\io_r_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_19,
      Q => \io_r_data_reg[31]_0\(13),
      R => '0'
    );
\io_r_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_18,
      Q => \io_r_data_reg[31]_0\(14),
      R => '0'
    );
\io_r_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_17,
      Q => \io_r_data_reg[31]_0\(15),
      R => '0'
    );
\io_r_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_16,
      Q => \io_r_data_reg[31]_0\(16),
      R => '0'
    );
\io_r_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_15,
      Q => \io_r_data_reg[31]_0\(17),
      R => '0'
    );
\io_r_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_14,
      Q => \io_r_data_reg[31]_0\(18),
      R => '0'
    );
\io_r_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_13,
      Q => \io_r_data_reg[31]_0\(19),
      R => '0'
    );
\io_r_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_31,
      Q => \io_r_data_reg[31]_0\(1),
      R => '0'
    );
\io_r_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_12,
      Q => \io_r_data_reg[31]_0\(20),
      R => '0'
    );
\io_r_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_11,
      Q => \io_r_data_reg[31]_0\(21),
      R => '0'
    );
\io_r_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_10,
      Q => \io_r_data_reg[31]_0\(22),
      R => '0'
    );
\io_r_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_9,
      Q => \io_r_data_reg[31]_0\(23),
      R => '0'
    );
\io_r_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_8,
      Q => \io_r_data_reg[31]_0\(24),
      R => '0'
    );
\io_r_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_7,
      Q => \io_r_data_reg[31]_0\(25),
      R => '0'
    );
\io_r_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_6,
      Q => \io_r_data_reg[31]_0\(26),
      R => '0'
    );
\io_r_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_5,
      Q => \io_r_data_reg[31]_0\(27),
      R => '0'
    );
\io_r_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_4,
      Q => \io_r_data_reg[31]_0\(28),
      R => '0'
    );
\io_r_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_3,
      Q => \io_r_data_reg[31]_0\(29),
      R => '0'
    );
\io_r_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_30,
      Q => \io_r_data_reg[31]_0\(2),
      R => '0'
    );
\io_r_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_2,
      Q => \io_r_data_reg[31]_0\(30),
      R => '0'
    );
\io_r_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_1,
      Q => \io_r_data_reg[31]_0\(31),
      R => '0'
    );
\io_r_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_29,
      Q => \io_r_data_reg[31]_0\(3),
      R => '0'
    );
\io_r_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_28,
      Q => \io_r_data_reg[31]_0\(4),
      R => '0'
    );
\io_r_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_27,
      Q => \io_r_data_reg[31]_0\(5),
      R => '0'
    );
\io_r_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_26,
      Q => \io_r_data_reg[31]_0\(6),
      R => '0'
    );
\io_r_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_25,
      Q => \io_r_data_reg[31]_0\(7),
      R => '0'
    );
\io_r_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_24,
      Q => \io_r_data_reg[31]_0\(8),
      R => '0'
    );
\io_r_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_cr_n_23,
      Q => \io_r_data_reg[31]_0\(9),
      R => '0'
    );
\kcapture_io_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(0),
      Q => kcapture_io(0),
      R => '0'
    );
\kcapture_io_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(10),
      Q => kcapture_io(10),
      R => '0'
    );
\kcapture_io_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(11),
      Q => kcapture_io(11),
      R => '0'
    );
\kcapture_io_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(12),
      Q => kcapture_io(12),
      R => '0'
    );
\kcapture_io_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(13),
      Q => kcapture_io(13),
      R => '0'
    );
\kcapture_io_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(14),
      Q => kcapture_io(14),
      R => '0'
    );
\kcapture_io_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(15),
      Q => kcapture_io(15),
      R => '0'
    );
\kcapture_io_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(16),
      Q => kcapture_io(16),
      R => '0'
    );
\kcapture_io_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(17),
      Q => kcapture_io(17),
      R => '0'
    );
\kcapture_io_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(18),
      Q => kcapture_io(18),
      R => '0'
    );
\kcapture_io_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(19),
      Q => kcapture_io(19),
      R => '0'
    );
\kcapture_io_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(1),
      Q => kcapture_io(1),
      R => '0'
    );
\kcapture_io_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(20),
      Q => kcapture_io(20),
      R => '0'
    );
\kcapture_io_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(21),
      Q => kcapture_io(21),
      R => '0'
    );
\kcapture_io_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(22),
      Q => kcapture_io(22),
      R => '0'
    );
\kcapture_io_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(23),
      Q => kcapture_io(23),
      R => '0'
    );
\kcapture_io_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(24),
      Q => kcapture_io(24),
      R => '0'
    );
\kcapture_io_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(25),
      Q => kcapture_io(25),
      R => '0'
    );
\kcapture_io_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(26),
      Q => kcapture_io(26),
      R => '0'
    );
\kcapture_io_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(27),
      Q => kcapture_io(27),
      R => '0'
    );
\kcapture_io_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(28),
      Q => kcapture_io(28),
      R => '0'
    );
\kcapture_io_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(29),
      Q => kcapture_io(29),
      R => '0'
    );
\kcapture_io_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(2),
      Q => kcapture_io(2),
      R => '0'
    );
\kcapture_io_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(30),
      Q => kcapture_io(30),
      R => '0'
    );
\kcapture_io_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(31),
      Q => kcapture_io(31),
      R => '0'
    );
\kcapture_io_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(3),
      Q => kcapture_io(3),
      R => '0'
    );
\kcapture_io_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(4),
      Q => kcapture_io(4),
      R => '0'
    );
\kcapture_io_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(5),
      Q => kcapture_io(5),
      R => '0'
    );
\kcapture_io_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(6),
      Q => kcapture_io(6),
      R => '0'
    );
\kcapture_io_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(7),
      Q => kcapture_io(7),
      R => '0'
    );
\kcapture_io_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(8),
      Q => kcapture_io(8),
      R => '0'
    );
\kcapture_io_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => kcapture(9),
      Q => kcapture_io(9),
      R => '0'
    );
\kcapture_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => fast_control_stream,
      Q => kcapture(0),
      R => '0'
    );
\kcapture_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(9),
      Q => kcapture(10),
      R => '0'
    );
\kcapture_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(10),
      Q => kcapture(11),
      R => '0'
    );
\kcapture_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(11),
      Q => kcapture(12),
      R => '0'
    );
\kcapture_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(12),
      Q => kcapture(13),
      R => '0'
    );
\kcapture_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(13),
      Q => kcapture(14),
      R => '0'
    );
\kcapture_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(14),
      Q => kcapture(15),
      R => '0'
    );
\kcapture_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(15),
      Q => kcapture(16),
      R => '0'
    );
\kcapture_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(16),
      Q => kcapture(17),
      R => '0'
    );
\kcapture_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(17),
      Q => kcapture(18),
      R => '0'
    );
\kcapture_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(18),
      Q => kcapture(19),
      R => '0'
    );
\kcapture_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(0),
      Q => kcapture(1),
      R => '0'
    );
\kcapture_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(19),
      Q => kcapture(20),
      R => '0'
    );
\kcapture_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(20),
      Q => kcapture(21),
      R => '0'
    );
\kcapture_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(21),
      Q => kcapture(22),
      R => '0'
    );
\kcapture_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(22),
      Q => kcapture(23),
      R => '0'
    );
\kcapture_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(23),
      Q => kcapture(24),
      R => '0'
    );
\kcapture_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(24),
      Q => kcapture(25),
      R => '0'
    );
\kcapture_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(25),
      Q => kcapture(26),
      R => '0'
    );
\kcapture_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(26),
      Q => kcapture(27),
      R => '0'
    );
\kcapture_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(27),
      Q => kcapture(28),
      R => '0'
    );
\kcapture_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(28),
      Q => kcapture(29),
      R => '0'
    );
\kcapture_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(1),
      Q => kcapture(2),
      R => '0'
    );
\kcapture_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(29),
      Q => kcapture(30),
      R => '0'
    );
\kcapture_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(30),
      Q => kcapture(31),
      R => '0'
    );
\kcapture_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(2),
      Q => kcapture(3),
      R => '0'
    );
\kcapture_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(3),
      Q => kcapture(4),
      R => '0'
    );
\kcapture_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(4),
      Q => kcapture(5),
      R => '0'
    );
\kcapture_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(5),
      Q => kcapture(6),
      R => '0'
    );
\kcapture_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(6),
      Q => kcapture(7),
      R => '0'
    );
\kcapture_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(7),
      Q => kcapture(8),
      R => '0'
    );
\kcapture_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => kcapture(8),
      Q => kcapture(9),
      R => '0'
    );
polarity_reg: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => \gen_write[0].CtlReg_reg_n_0_[0][1]\,
      Q => polarity,
      R => '0'
    );
reset_40_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk_40_decod_reg\,
      CE => '1',
      D => fc_reset,
      Q => reset_40,
      R => '0'
    );
\reset_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_counter_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\reset_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reset_counter_reg_n_0_[0]\,
      I1 => \reset_counter_reg_n_0_[1]\,
      O => \p_0_in__0\(1)
    );
\reset_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \reset_counter_reg_n_0_[0]\,
      I1 => \reset_counter_reg_n_0_[1]\,
      I2 => \reset_counter_reg_n_0_[2]\,
      O => \p_0_in__0\(2)
    );
\reset_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \reset_counter_reg_n_0_[1]\,
      I1 => \reset_counter_reg_n_0_[0]\,
      I2 => \reset_counter_reg_n_0_[2]\,
      I3 => \reset_counter_reg_n_0_[3]\,
      O => \p_0_in__0\(3)
    );
\reset_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \reset_counter_reg_n_0_[2]\,
      I1 => \reset_counter_reg_n_0_[0]\,
      I2 => \reset_counter_reg_n_0_[1]\,
      I3 => \reset_counter_reg_n_0_[3]\,
      I4 => \reset_counter_reg_n_0_[4]\,
      O => \p_0_in__0\(4)
    );
\reset_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \reset_counter_reg_n_0_[3]\,
      I1 => \reset_counter_reg_n_0_[1]\,
      I2 => \reset_counter_reg_n_0_[0]\,
      I3 => \reset_counter_reg_n_0_[2]\,
      I4 => \reset_counter_reg_n_0_[4]\,
      I5 => \reset_counter_reg_n_0_[5]\,
      O => \p_0_in__0\(5)
    );
\reset_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reset_counter[7]_i_4_n_0\,
      I1 => \reset_counter_reg_n_0_[6]\,
      O => \p_0_in__0\(6)
    );
\reset_counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fc_reset,
      I1 => reset_decoder_io,
      O => \reset_counter[7]_i_1_n_0\
    );
\reset_counter[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_counter_reg__0\(7),
      O => sel
    );
\reset_counter[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reset_counter[7]_i_4_n_0\,
      I1 => \reset_counter_reg_n_0_[6]\,
      O => \p_0_in__0\(7)
    );
\reset_counter[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \reset_counter_reg_n_0_[5]\,
      I1 => \reset_counter_reg_n_0_[3]\,
      I2 => \reset_counter_reg_n_0_[1]\,
      I3 => \reset_counter_reg_n_0_[0]\,
      I4 => \reset_counter_reg_n_0_[2]\,
      I5 => \reset_counter_reg_n_0_[4]\,
      O => \reset_counter[7]_i_4_n_0\
    );
\reset_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => sel,
      D => \p_0_in__0\(0),
      Q => \reset_counter_reg_n_0_[0]\,
      R => \reset_counter[7]_i_1_n_0\
    );
\reset_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => sel,
      D => \p_0_in__0\(1),
      Q => \reset_counter_reg_n_0_[1]\,
      R => \reset_counter[7]_i_1_n_0\
    );
\reset_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => sel,
      D => \p_0_in__0\(2),
      Q => \reset_counter_reg_n_0_[2]\,
      R => \reset_counter[7]_i_1_n_0\
    );
\reset_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => sel,
      D => \p_0_in__0\(3),
      Q => \reset_counter_reg_n_0_[3]\,
      R => \reset_counter[7]_i_1_n_0\
    );
\reset_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => sel,
      D => \p_0_in__0\(4),
      Q => \reset_counter_reg_n_0_[4]\,
      R => \reset_counter[7]_i_1_n_0\
    );
\reset_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => sel,
      D => \p_0_in__0\(5),
      Q => \reset_counter_reg_n_0_[5]\,
      R => \reset_counter[7]_i_1_n_0\
    );
\reset_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => sel,
      D => \p_0_in__0\(6),
      Q => \reset_counter_reg_n_0_[6]\,
      R => \reset_counter[7]_i_1_n_0\
    );
\reset_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => sel,
      D => \p_0_in__0\(7),
      Q => \reset_counter_reg__0\(7),
      R => \reset_counter[7]_i_1_n_0\
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
      C => \^clk_40_decod_reg\,
      CE => '1',
      CLR => reset_counters_io,
      D => reset_counters_40_n_i_1_n_0,
      Q => reset_counters_40_n
    );
reset_decoder_n_reg: unisim.vcomponents.FDRE
     port map (
      C => fast_control_clk,
      CE => '1',
      D => \reset_counter_reg__0\(7),
      Q => reset_decoder_n,
      R => '0'
    );
reset_io_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => fc_reset,
      Q => reset_io,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0_S00_AXI is
  port (
    lhc_clk : out STD_LOGIC;
    fc_OrbitSync : out STD_LOGIC;
    fc_L1A : out STD_LOGIC;
    fc_OrbitCountReset_OrbitSync : out STD_LOGIC;
    fc_CalibrationReq : out STD_LOGIC;
    fc_CalibrationL1A : out STD_LOGIC;
    fc_LinkReset : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    fast_control_clk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    fast_control_stream : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0_S00_AXI : entity is "fastcontrol_recv_axi_v1_0_S00_AXI";
end tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0_S00_AXI;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0_S00_AXI is
  signal \FSM_sequential_axi_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_state[2]_i_2_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal axi_rdata0 : STD_LOGIC;
  signal axi_rvalid0 : STD_LOGIC;
  signal axi_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_wready0 : STD_LOGIC;
  signal fc_input : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fc_raddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal fc_raddr0 : STD_LOGIC;
  signal fc_reset : STD_LOGIC;
  signal fc_reset0 : STD_LOGIC;
  signal fc_reset2 : STD_LOGIC;
  signal fc_reset_i_2_n_0 : STD_LOGIC;
  signal fc_reset_i_3_n_0 : STD_LOGIC;
  signal fc_reset_i_6_n_0 : STD_LOGIC;
  signal fc_reset_i_7_n_0 : STD_LOGIC;
  signal fc_waddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal fc_waddr0 : STD_LOGIC;
  signal \fc_we__1\ : STD_LOGIC;
  signal io_r_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_state_reg[0]\ : label is "STATE_WAIT_R:101,STATE_LATCH_R:110,STATE_DONE_R:100,STATE_LATCH_W:011,STATE_DO_W:010,STATE_DONE_W:000,STATE_IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_state_reg[1]\ : label is "STATE_WAIT_R:101,STATE_LATCH_R:110,STATE_DONE_R:100,STATE_LATCH_W:011,STATE_DO_W:010,STATE_DONE_W:000,STATE_IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_state_reg[2]\ : label is "STATE_WAIT_R:101,STATE_LATCH_R:110,STATE_DONE_R:100,STATE_LATCH_W:011,STATE_DO_W:010,STATE_DONE_W:000,STATE_IDLE:001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair8";
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
      INIT => X"F5FF350FF5FF3500"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => s00_axi_wvalid,
      I2 => axi_state(1),
      I3 => axi_state(0),
      I4 => axi_state(2),
      I5 => s00_axi_bready,
      O => \FSM_sequential_axi_state[0]_i_2_n_0\
    );
\FSM_sequential_axi_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50505040"
    )
        port map (
      I0 => axi_state(2),
      I1 => s00_axi_arvalid,
      I2 => axi_state(0),
      I3 => s00_axi_awvalid,
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
      INIT => X"CFC4CCC4"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => axi_state(2),
      I2 => axi_state(1),
      I3 => axi_state(0),
      I4 => s00_axi_arvalid,
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
FastControl: entity work.tester_fastcontrol_recv_axi_0_0_hgcal_fc_recv_manager
     port map (
      Clk_40_decod_reg => lhc_clk,
      Q(4 downto 0) => fc_waddr(4 downto 0),
      fast_control_clk => fast_control_clk,
      fast_control_stream => fast_control_stream,
      fc_CalibrationL1A => fc_CalibrationL1A,
      fc_CalibrationReq => fc_CalibrationReq,
      fc_L1A => fc_L1A,
      fc_LinkReset => fc_LinkReset,
      fc_OrbitCountReset_OrbitSync => fc_OrbitCountReset_OrbitSync,
      fc_OrbitSync => fc_OrbitSync,
      fc_reset => fc_reset,
      \fc_we__1\ => \fc_we__1\,
      \gen_write[0].CtlReg_reg[0][16]_0\(1) => axi_state(2),
      \gen_write[0].CtlReg_reg[0][16]_0\(0) => axi_state(0),
      \gen_write[1].CtlReg_reg[1][31]_0\(31 downto 0) => fc_input(31 downto 0),
      \io_r_data_reg[0]_0\(4 downto 0) => fc_raddr(4 downto 0),
      \io_r_data_reg[31]_0\(31 downto 0) => io_r_data(31 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0)
    );
axi_arready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => axi_state(2),
      I2 => axi_state(0),
      I3 => axi_state(1),
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
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
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
      INIT => X"1000"
    )
        port map (
      I0 => axi_state(2),
      I1 => axi_state(0),
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
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
      INIT => X"0400"
    )
        port map (
      I0 => axi_state(2),
      I1 => axi_state(0),
      I2 => axi_state(1),
      I3 => s00_axi_arvalid,
      O => fc_raddr0
    );
\fc_raddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fc_raddr0,
      D => s00_axi_araddr(0),
      Q => fc_raddr(0),
      R => '0'
    );
\fc_raddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fc_raddr0,
      D => s00_axi_araddr(1),
      Q => fc_raddr(1),
      R => '0'
    );
\fc_raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fc_raddr0,
      D => s00_axi_araddr(2),
      Q => fc_raddr(2),
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
      Q => fc_raddr(4),
      R => '0'
    );
fc_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => fc_reset_i_2_n_0,
      I1 => fc_reset_i_3_n_0,
      I2 => fc_reset2,
      I3 => \fc_we__1\,
      I4 => fc_reset_i_6_n_0,
      I5 => fc_reset_i_7_n_0,
      O => fc_reset0
    );
fc_reset_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wdata(15),
      I1 => s00_axi_wdata(14),
      I2 => s00_axi_wdata(13),
      I3 => s00_axi_wdata(12),
      O => fc_reset_i_2_n_0
    );
fc_reset_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wdata(11),
      I1 => s00_axi_wdata(10),
      I2 => s00_axi_wdata(9),
      I3 => s00_axi_wdata(8),
      O => fc_reset_i_3_n_0
    );
fc_reset_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => fc_waddr(0),
      I1 => fc_waddr(1),
      I2 => fc_waddr(2),
      I3 => fc_waddr(4),
      I4 => fc_waddr(3),
      O => fc_reset2
    );
fc_reset_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => s00_axi_wdata(0),
      I2 => s00_axi_wdata(3),
      I3 => s00_axi_wdata(2),
      O => fc_reset_i_6_n_0
    );
fc_reset_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wdata(7),
      I1 => s00_axi_wdata(6),
      I2 => s00_axi_wdata(5),
      I3 => s00_axi_wdata(4),
      O => fc_reset_i_7_n_0
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
      INIT => X"0400"
    )
        port map (
      I0 => axi_state(2),
      I1 => axi_state(0),
      I2 => axi_state(1),
      I3 => s00_axi_awvalid,
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
entity tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0 is
  port (
    lhc_clk : out STD_LOGIC;
    fc_OrbitSync : out STD_LOGIC;
    fc_L1A : out STD_LOGIC;
    fc_OrbitCountReset_OrbitSync : out STD_LOGIC;
    fc_CalibrationReq : out STD_LOGIC;
    fc_CalibrationL1A : out STD_LOGIC;
    fc_LinkReset : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    fast_control_clk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    fast_control_stream : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0 : entity is "fastcontrol_recv_axi_v1_0";
end tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0 is
begin
fastcontrol_recv_axi_v1_0_S00_AXI_inst: entity work.tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0_S00_AXI
     port map (
      fast_control_clk => fast_control_clk,
      fast_control_stream => fast_control_stream,
      fc_CalibrationL1A => fc_CalibrationL1A,
      fc_CalibrationReq => fc_CalibrationReq,
      fc_L1A => fc_L1A,
      fc_LinkReset => fc_LinkReset,
      fc_OrbitCountReset_OrbitSync => fc_OrbitCountReset_OrbitSync,
      fc_OrbitSync => fc_OrbitSync,
      lhc_clk => lhc_clk,
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
entity tester_fastcontrol_recv_axi_0_0 is
  port (
    fast_control_clk : in STD_LOGIC;
    fast_control_stream : in STD_LOGIC;
    lhc_clk : out STD_LOGIC;
    fc_OrbitSync : out STD_LOGIC;
    fc_L1A : out STD_LOGIC;
    fc_OrbitCountReset_OrbitSync : out STD_LOGIC;
    fc_CalibrationReq : out STD_LOGIC;
    fc_CalibrationL1A : out STD_LOGIC;
    fc_LinkReset : out STD_LOGIC;
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
  attribute NotValidForBitStream of tester_fastcontrol_recv_axi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of tester_fastcontrol_recv_axi_0_0 : entity is "tester_fastcontrol_recv_axi_0_0,fastcontrol_recv_axi_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of tester_fastcontrol_recv_axi_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of tester_fastcontrol_recv_axi_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of tester_fastcontrol_recv_axi_0_0 : entity is "fastcontrol_recv_axi_v1_0,Vivado 2018.3";
end tester_fastcontrol_recv_axi_0_0;

architecture STRUCTURE of tester_fastcontrol_recv_axi_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of fast_control_clk : signal is "xilinx.com:signal:clock:1.0 fast_control_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of fast_control_clk : signal is "XIL_INTERFACENAME fast_control_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN tester_fastcontrol_axi_0_0_fast_control_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of lhc_clk : signal is "xilinx.com:signal:clock:1.0 lhc_clk CLK";
  attribute X_INTERFACE_PARAMETER of lhc_clk : signal is "XIL_INTERFACENAME lhc_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN tester_fastcontrol_recv_axi_0_0_lhc_clk, INSERT_VIP 0";
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
inst: entity work.tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0
     port map (
      fast_control_clk => fast_control_clk,
      fast_control_stream => fast_control_stream,
      fc_CalibrationL1A => fc_CalibrationL1A,
      fc_CalibrationReq => fc_CalibrationReq,
      fc_L1A => fc_L1A,
      fc_LinkReset => fc_LinkReset,
      fc_OrbitCountReset_OrbitSync => fc_OrbitCountReset_OrbitSync,
      fc_OrbitSync => fc_OrbitSync,
      lhc_clk => lhc_clk,
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
