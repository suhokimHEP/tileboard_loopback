// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Nov  4 11:55:23 2019
// Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_prbs15_bytegenerator_0_0/tester_prbs15_bytegenerator_0_0_sim_netlist.v
// Design      : tester_prbs15_bytegenerator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tester_prbs15_bytegenerator_0_0,prbs15_bytegenerator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "prbs15_bytegenerator,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module tester_prbs15_bytegenerator_0_0
   (clk,
    clk_div4,
    resetb,
    data_out_p,
    data_out_n);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetb:reset, FREQ_HZ 160000000, PHASE 0.0, CLK_DOMAIN tester_clk_wiz_0_0_clk_320, INSERT_VIP 0" *) input clk;
  input clk_div4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetb;
  output data_out_p;
  output data_out_n;

  wire clk;
  wire clk_div4;
  (* SLEW = "SLOW" *) wire data_out_n;
  (* SLEW = "SLOW" *) wire data_out_p;
  wire resetb;

  tester_prbs15_bytegenerator_0_0_prbs15_bytegenerator inst
       (.clk(clk),
        .clk_div4(clk_div4),
        .data_out_n(data_out_n),
        .data_out_p(data_out_p),
        .resetb(resetb));
endmodule

(* ORIG_REF_NAME = "prbs15_byte" *) 
module tester_prbs15_bytegenerator_0_0_prbs15_byte
   (Q,
    clk_div4,
    D);
  output [7:0]Q;
  input clk_div4;
  input [7:0]D;

  wire [7:0]D;
  wire [7:0]Q;
  wire clk_div4;
  wire [6:0]data_d;
  wire [7:0]prbs_out_i;

  FDRE \data_d_reg[0] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(D[0]),
        .Q(data_d[0]),
        .R(1'b0));
  FDRE \data_d_reg[1] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(D[1]),
        .Q(data_d[1]),
        .R(1'b0));
  FDRE \data_d_reg[2] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(D[2]),
        .Q(data_d[2]),
        .R(1'b0));
  FDRE \data_d_reg[3] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(D[3]),
        .Q(data_d[3]),
        .R(1'b0));
  FDRE \data_d_reg[4] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(D[4]),
        .Q(data_d[4]),
        .R(1'b0));
  FDRE \data_d_reg[5] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(D[5]),
        .Q(data_d[5]),
        .R(1'b0));
  FDRE \data_d_reg[6] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(D[6]),
        .Q(data_d[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \prbs_out[0]_i_1 
       (.I0(D[6]),
        .I1(D[7]),
        .O(prbs_out_i[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \prbs_out[1]_i_1 
       (.I0(D[7]),
        .I1(data_d[0]),
        .O(prbs_out_i[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \prbs_out[2]_i_1 
       (.I0(data_d[0]),
        .I1(data_d[1]),
        .O(prbs_out_i[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \prbs_out[3]_i_1 
       (.I0(data_d[1]),
        .I1(data_d[2]),
        .O(prbs_out_i[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \prbs_out[4]_i_1 
       (.I0(data_d[2]),
        .I1(data_d[3]),
        .O(prbs_out_i[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \prbs_out[5]_i_1 
       (.I0(data_d[3]),
        .I1(data_d[4]),
        .O(prbs_out_i[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \prbs_out[6]_i_1 
       (.I0(data_d[4]),
        .I1(data_d[5]),
        .O(prbs_out_i[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \prbs_out[7]_i_1 
       (.I0(data_d[5]),
        .I1(data_d[6]),
        .O(prbs_out_i[7]));
  FDRE \prbs_out_reg[0] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(prbs_out_i[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \prbs_out_reg[1] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(prbs_out_i[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \prbs_out_reg[2] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(prbs_out_i[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \prbs_out_reg[3] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(prbs_out_i[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \prbs_out_reg[4] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(prbs_out_i[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \prbs_out_reg[5] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(prbs_out_i[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \prbs_out_reg[6] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(prbs_out_i[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \prbs_out_reg[7] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(prbs_out_i[7]),
        .Q(Q[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "prbs15_bytegenerator" *) 
module tester_prbs15_bytegenerator_0_0_prbs15_bytegenerator
   (data_out_p,
    data_out_n,
    clk,
    clk_div4,
    resetb);
  output data_out_p;
  output data_out_n;
  input clk;
  input clk_div4;
  input resetb;

  wire clk;
  wire clk_div4;
  wire data_out;
  wire data_out_n;
  wire data_out_p;
  wire [7:0]prbs_out;
  wire [7:0]prbsbyte;
  wire \prbsbyte[0]_i_1_n_0 ;
  wire \prbsbyte[1]_i_1_n_0 ;
  wire \prbsbyte[2]_i_1_n_0 ;
  wire \prbsbyte[3]_i_1_n_0 ;
  wire \prbsbyte[4]_i_1_n_0 ;
  wire \prbsbyte[5]_i_1_n_0 ;
  wire \prbsbyte[6]_i_1_n_0 ;
  wire \prbsbyte[7]_i_1_n_0 ;
  wire \prbsbyte[7]_i_2_n_0 ;
  wire resetb;
  wire was_resetb;
  wire NLW_oserdes_inst_T_OUT_UNCONNECTED;

  tester_prbs15_bytegenerator_0_0_prbs15_byte byteGen
       (.D(prbsbyte),
        .Q(prbs_out),
        .clk_div4(clk_div4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE3 #(
    .DATA_WIDTH(8),
    .INIT(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b1),
    .ODDR_MODE("FALSE"),
    .OSERDES_D_BYPASS("FALSE"),
    .OSERDES_T_BYPASS("FALSE"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_VERSION(2.000000)) 
    oserdes_inst
       (.CLK(clk),
        .CLKDIV(clk_div4),
        .D(prbsbyte),
        .OQ(data_out),
        .RST(resetb),
        .T(1'b0),
        .T_OUT(NLW_oserdes_inst_T_OUT_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    outputbuf
       (.I(data_out),
        .O(data_out_p),
        .OB(data_out_n));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prbsbyte[0]_i_1 
       (.I0(was_resetb),
        .I1(prbs_out[0]),
        .O(\prbsbyte[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \prbsbyte[1]_i_1 
       (.I0(prbs_out[1]),
        .I1(was_resetb),
        .O(\prbsbyte[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prbsbyte[2]_i_1 
       (.I0(was_resetb),
        .I1(prbs_out[2]),
        .O(\prbsbyte[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prbsbyte[3]_i_1 
       (.I0(was_resetb),
        .I1(prbs_out[3]),
        .O(\prbsbyte[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prbsbyte[4]_i_1 
       (.I0(was_resetb),
        .I1(prbs_out[4]),
        .O(\prbsbyte[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prbsbyte[5]_i_1 
       (.I0(was_resetb),
        .I1(prbs_out[5]),
        .O(\prbsbyte[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prbsbyte[6]_i_1 
       (.I0(was_resetb),
        .I1(prbs_out[6]),
        .O(\prbsbyte[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \prbsbyte[7]_i_1 
       (.I0(resetb),
        .O(\prbsbyte[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \prbsbyte[7]_i_2 
       (.I0(was_resetb),
        .I1(prbs_out[7]),
        .O(\prbsbyte[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prbsbyte_reg[0] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(\prbsbyte[0]_i_1_n_0 ),
        .Q(prbsbyte[0]),
        .R(\prbsbyte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prbsbyte_reg[1] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(\prbsbyte[1]_i_1_n_0 ),
        .Q(prbsbyte[1]),
        .R(\prbsbyte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prbsbyte_reg[2] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(\prbsbyte[2]_i_1_n_0 ),
        .Q(prbsbyte[2]),
        .R(\prbsbyte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prbsbyte_reg[3] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(\prbsbyte[3]_i_1_n_0 ),
        .Q(prbsbyte[3]),
        .R(\prbsbyte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prbsbyte_reg[4] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(\prbsbyte[4]_i_1_n_0 ),
        .Q(prbsbyte[4]),
        .R(\prbsbyte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prbsbyte_reg[5] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(\prbsbyte[5]_i_1_n_0 ),
        .Q(prbsbyte[5]),
        .R(\prbsbyte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prbsbyte_reg[6] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(\prbsbyte[6]_i_1_n_0 ),
        .Q(prbsbyte[6]),
        .R(\prbsbyte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prbsbyte_reg[7] 
       (.C(clk_div4),
        .CE(1'b1),
        .D(\prbsbyte[7]_i_2_n_0 ),
        .Q(prbsbyte[7]),
        .R(\prbsbyte[7]_i_1_n_0 ));
  FDRE was_resetb_reg
       (.C(clk_div4),
        .CE(1'b1),
        .D(resetb),
        .Q(was_resetb),
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
