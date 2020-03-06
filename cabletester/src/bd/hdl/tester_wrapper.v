//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Tue Nov  5 16:34:46 2019
//Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
//Command     : generate_target tester_wrapper.bd
//Design      : tester_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module tester_wrapper
   (HGCROC1_DAQ_IN_N,
    HGCROC1_DAQ_IN_P,
    HGCROC1_TRIG_IN_N,
    HGCROC1_TRIG_IN_N2,
    HGCROC1_TRIG_IN_P,
    HGCROC1_TRIG_IN_P2,
    HGCROC1_TRIG_OUT_N3,
    HGCROC1_TRIG_OUT_P3,
    HGCROC2_DAQ_IN_N,
    HGCROC2_DAQ_IN_P,
    HGCROC2_TRIG_IN_N,
    HGCROC2_TRIG_IN_P,
    HGCROC_SCL,
    HGCROC_SDA,
    SCA_CLK_N,
    SCA_CLK_P,
    SCA_MISO_N,
    SCA_MISO_P,
    SCA_MOSI_N,
    SCA_MOSI_P,
    fc_clk_o_n,
    fc_clk_o_p,
    fc_sig_o_n,
    fc_sig_o_p,
    gpo,
    heartbeat_led,
    misc_data,
    misc_dir,
    misc_switches,
    rj45_ttl,
    sd_led);
  input [1:0]HGCROC1_DAQ_IN_N;
  input [1:0]HGCROC1_DAQ_IN_P;
  input [1:0]HGCROC1_TRIG_IN_N;
  input HGCROC1_TRIG_IN_N2;
  input [1:0]HGCROC1_TRIG_IN_P;
  input HGCROC1_TRIG_IN_P2;
  output HGCROC1_TRIG_OUT_N3;
  output HGCROC1_TRIG_OUT_P3;
  input [1:0]HGCROC2_DAQ_IN_N;
  input [1:0]HGCROC2_DAQ_IN_P;
  input [3:0]HGCROC2_TRIG_IN_N;
  input [3:0]HGCROC2_TRIG_IN_P;
  inout HGCROC_SCL;
  inout HGCROC_SDA;
  output SCA_CLK_N;
  output SCA_CLK_P;
  input SCA_MISO_N;
  input SCA_MISO_P;
  output SCA_MOSI_N;
  output SCA_MOSI_P;
  output fc_clk_o_n;
  output fc_clk_o_p;
  output fc_sig_o_n;
  output fc_sig_o_p;
  output [1:0]gpo;
  output heartbeat_led;
  inout [7:0]misc_data;
  output [7:0]misc_dir;
  input [4:0]misc_switches;
  output [7:0]rj45_ttl;
  output [7:0]sd_led;

  wire [1:0]HGCROC1_DAQ_IN_N;
  wire [1:0]HGCROC1_DAQ_IN_P;
  wire [1:0]HGCROC1_TRIG_IN_N;
  wire HGCROC1_TRIG_IN_N2;
  wire [1:0]HGCROC1_TRIG_IN_P;
  wire HGCROC1_TRIG_IN_P2;
  wire HGCROC1_TRIG_OUT_N3;
  wire HGCROC1_TRIG_OUT_P3;
  wire [1:0]HGCROC2_DAQ_IN_N;
  wire [1:0]HGCROC2_DAQ_IN_P;
  wire [3:0]HGCROC2_TRIG_IN_N;
  wire [3:0]HGCROC2_TRIG_IN_P;
  wire HGCROC_SCL;
  wire HGCROC_SDA;
  wire SCA_CLK_N;
  wire SCA_CLK_P;
  wire SCA_MISO_N;
  wire SCA_MISO_P;
  wire SCA_MOSI_N;
  wire SCA_MOSI_P;
  wire fc_clk_o_n;
  wire fc_clk_o_p;
  wire fc_sig_o_n;
  wire fc_sig_o_p;
  wire [1:0]gpo;
  wire heartbeat_led;
  wire [7:0]misc_data;
  wire [7:0]misc_dir;
  wire [4:0]misc_switches;
  wire [7:0]rj45_ttl;
  wire [7:0]sd_led;

  tester tester_i
       (.HGCROC1_DAQ_IN_N(HGCROC1_DAQ_IN_N),
        .HGCROC1_DAQ_IN_P(HGCROC1_DAQ_IN_P),
        .HGCROC1_TRIG_IN_N(HGCROC1_TRIG_IN_N),
        .HGCROC1_TRIG_IN_N2(HGCROC1_TRIG_IN_N2),
        .HGCROC1_TRIG_IN_P(HGCROC1_TRIG_IN_P),
        .HGCROC1_TRIG_IN_P2(HGCROC1_TRIG_IN_P2),
        .HGCROC1_TRIG_OUT_N3(HGCROC1_TRIG_OUT_N3),
        .HGCROC1_TRIG_OUT_P3(HGCROC1_TRIG_OUT_P3),
        .HGCROC2_DAQ_IN_N(HGCROC2_DAQ_IN_N),
        .HGCROC2_DAQ_IN_P(HGCROC2_DAQ_IN_P),
        .HGCROC2_TRIG_IN_N(HGCROC2_TRIG_IN_N),
        .HGCROC2_TRIG_IN_P(HGCROC2_TRIG_IN_P),
        .HGCROC_SCL(HGCROC_SCL),
        .HGCROC_SDA(HGCROC_SDA),
        .SCA_CLK_N(SCA_CLK_N),
        .SCA_CLK_P(SCA_CLK_P),
        .SCA_MISO_N(SCA_MISO_N),
        .SCA_MISO_P(SCA_MISO_P),
        .SCA_MOSI_N(SCA_MOSI_N),
        .SCA_MOSI_P(SCA_MOSI_P),
        .fc_clk_o_n(fc_clk_o_n),
        .fc_clk_o_p(fc_clk_o_p),
        .fc_sig_o_n(fc_sig_o_n),
        .fc_sig_o_p(fc_sig_o_p),
        .gpo(gpo),
        .heartbeat_led(heartbeat_led),
        .misc_data(misc_data),
        .misc_dir(misc_dir),
        .misc_switches(misc_switches),
        .rj45_ttl(rj45_ttl),
        .sd_led(sd_led));
endmodule
