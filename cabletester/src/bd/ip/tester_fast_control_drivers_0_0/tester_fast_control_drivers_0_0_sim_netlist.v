// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct 29 14:12:53 2019
// Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_fast_control_drivers_0_0/tester_fast_control_drivers_0_0_sim_netlist.v
// Design      : tester_fast_control_drivers_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tester_fast_control_drivers_0_0,fast_control_drivers,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fast_control_drivers,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module tester_fast_control_drivers_0_0
   (fc_clk_i,
    fc_sig_i,
    fc_clk_o_p,
    fc_clk_o_n,
    fc_sig_o_p,
    fc_sig_o_n);
  input fc_clk_i;
  input fc_sig_i;
  output fc_clk_o_p;
  output fc_clk_o_n;
  output fc_sig_o_p;
  output fc_sig_o_n;

  wire fc_clk_i;
  (* SLEW = "SLOW" *) wire fc_clk_o_n;
  (* SLEW = "SLOW" *) wire fc_clk_o_p;
  wire fc_sig_i;
  (* SLEW = "SLOW" *) wire fc_sig_o_n;
  (* SLEW = "SLOW" *) wire fc_sig_o_p;

  tester_fast_control_drivers_0_0_fast_control_drivers inst
       (.fc_clk_i(fc_clk_i),
        .fc_clk_o_n(fc_clk_o_n),
        .fc_clk_o_p(fc_clk_o_p),
        .fc_sig_i(fc_sig_i),
        .fc_sig_o_n(fc_sig_o_n),
        .fc_sig_o_p(fc_sig_o_p));
endmodule

(* ORIG_REF_NAME = "fast_control_drivers" *) 
module tester_fast_control_drivers_0_0_fast_control_drivers
   (fc_clk_o_p,
    fc_clk_o_n,
    fc_sig_o_p,
    fc_sig_o_n,
    fc_clk_i,
    fc_sig_i);
  output fc_clk_o_p;
  output fc_clk_o_n;
  output fc_sig_o_p;
  output fc_sig_o_n;
  input fc_clk_i;
  input fc_sig_i;

  wire clk_i;
  wire fc_clk_i;
  wire fc_clk_o_n;
  wire fc_clk_o_p;
  wire fc_sig_i;
  wire fc_sig_o_n;
  wire fc_sig_o_p;
  wire sig_i;
  wire NLW_ODDRE1_clk_CLKDIV_UNCONNECTED;
  wire NLW_ODDRE1_clk_T_OUT_UNCONNECTED;
  wire [7:1]NLW_ODDRE1_clk_D_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_clk
       (.I(clk_i),
        .O(fc_clk_o_p),
        .OB(fc_clk_o_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_sig
       (.I(sig_i),
        .O(fc_sig_o_p),
        .OB(fc_sig_o_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "ODDRE1" *) 
  (* XILINX_TRANSFORM_PINMAP = "C:CLK SR:RST Q:OQ D1:D[0] D2:D[4]" *) 
  OSERDESE3 #(
    .INIT(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .ODDR_MODE("TRUE"),
    .OSERDES_T_BYPASS("TRUE"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    ODDRE1_clk
       (.CLK(fc_clk_i),
        .CLKDIV(NLW_ODDRE1_clk_CLKDIV_UNCONNECTED),
        .D({NLW_ODDRE1_clk_D_UNCONNECTED[7:5],1'b0,NLW_ODDRE1_clk_D_UNCONNECTED[3:1],1'b1}),
        .OQ(clk_i),
        .RST(1'b0),
        .T(1'b0),
        .T_OUT(NLW_ODDRE1_clk_T_OUT_UNCONNECTED));
  FDRE sig_i_reg
       (.C(fc_clk_i),
        .CE(1'b1),
        .D(fc_sig_i),
        .Q(sig_i),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
