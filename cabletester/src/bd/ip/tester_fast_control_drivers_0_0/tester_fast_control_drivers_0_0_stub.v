// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct 29 14:12:53 2019
// Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_fast_control_drivers_0_0/tester_fast_control_drivers_0_0_stub.v
// Design      : tester_fast_control_drivers_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fast_control_drivers,Vivado 2018.3" *)
module tester_fast_control_drivers_0_0(fc_clk_i, fc_sig_i, fc_clk_o_p, fc_clk_o_n, 
  fc_sig_o_p, fc_sig_o_n)
/* synthesis syn_black_box black_box_pad_pin="fc_clk_i,fc_sig_i,fc_clk_o_p,fc_clk_o_n,fc_sig_o_p,fc_sig_o_n" */;
  input fc_clk_i;
  input fc_sig_i;
  output fc_clk_o_p;
  output fc_clk_o_n;
  output fc_sig_o_p;
  output fc_sig_o_n;
endmodule
