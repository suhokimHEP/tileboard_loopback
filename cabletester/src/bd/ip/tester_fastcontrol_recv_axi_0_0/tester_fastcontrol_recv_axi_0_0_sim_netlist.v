// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct 29 14:15:20 2019
// Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_fastcontrol_recv_axi_0_0/tester_fastcontrol_recv_axi_0_0_sim_netlist.v
// Design      : tester_fastcontrol_recv_axi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tester_fastcontrol_recv_axi_0_0,fastcontrol_recv_axi_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "fastcontrol_recv_axi_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module tester_fastcontrol_recv_axi_0_0
   (fast_control_clk,
    fast_control_stream,
    lhc_clk,
    fc_OrbitSync,
    fc_L1A,
    fc_OrbitCountReset_OrbitSync,
    fc_CalibrationReq,
    fc_CalibrationL1A,
    fc_LinkReset,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fast_control_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fast_control_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN tester_fastcontrol_axi_0_0_fast_control_clk, INSERT_VIP 0" *) input fast_control_clk;
  input fast_control_stream;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 lhc_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lhc_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN tester_fastcontrol_recv_axi_0_0_lhc_clk, INSERT_VIP 0" *) output lhc_clk;
  output fc_OrbitSync;
  output fc_L1A;
  output fc_OrbitCountReset_OrbitSync;
  output fc_CalibrationReq;
  output fc_CalibrationL1A;
  output fc_LinkReset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 99999985, PHASE 0.000, CLK_DOMAIN tester_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [7:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [7:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999985, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN tester_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire fast_control_clk;
  wire fast_control_stream;
  wire fc_CalibrationL1A;
  wire fc_CalibrationReq;
  wire fc_L1A;
  wire fc_LinkReset;
  wire fc_OrbitCountReset_OrbitSync;
  wire fc_OrbitSync;
  wire lhc_clk;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s00_axi_wready = s00_axi_awready;
  GND GND
       (.G(\<const0> ));
  tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0 inst
       (.fast_control_clk(fast_control_clk),
        .fast_control_stream(fast_control_stream),
        .fc_CalibrationL1A(fc_CalibrationL1A),
        .fc_CalibrationReq(fc_CalibrationReq),
        .fc_L1A(fc_L1A),
        .fc_LinkReset(fc_LinkReset),
        .fc_OrbitCountReset_OrbitSync(fc_OrbitCountReset_OrbitSync),
        .fc_OrbitSync(fc_OrbitSync),
        .lhc_clk(lhc_clk),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[6:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[6:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb[1:0]),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "ResetSync" *) 
module tester_fastcontrol_recv_axi_0_0_ResetSync
   (\ResetSync_reg_reg[1]_0 ,
    fast_control_clk,
    reset_decoder_n);
  output \ResetSync_reg_reg[1]_0 ;
  input fast_control_clk;
  input reset_decoder_n;

  wire [0:0]ResetSync_reg;
  wire \ResetSync_reg[1]_i_1_n_0 ;
  wire \ResetSync_reg_reg[1]_0 ;
  wire RstSync_b;
  wire fast_control_clk;
  wire reset_decoder_n;

  LUT1 #(
    .INIT(2'h1)) 
    \ResetSync_reg[1]_i_1 
       (.I0(reset_decoder_n),
        .O(\ResetSync_reg[1]_i_1_n_0 ));
  FDCE \ResetSync_reg_reg[0] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(\ResetSync_reg[1]_i_1_n_0 ),
        .D(1'b1),
        .Q(ResetSync_reg));
  FDCE \ResetSync_reg_reg[1] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(\ResetSync_reg[1]_i_1_n_0 ),
        .D(ResetSync_reg),
        .Q(RstSync_b));
  LUT1 #(
    .INIT(2'h1)) 
    cmd_OrbitSync40_d_i_1
       (.I0(RstSync_b),
        .O(\ResetSync_reg_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "clk40_decoder_FSM" *) 
module tester_fastcontrol_recv_axi_0_0_clk40_decoder_FSM
   (sync_err_reg,
    D,
    \FSM_sequential_state_reg[1]_0 ,
    sync_err_reg_0,
    sync_err,
    Q,
    \count_down_reg[2] ,
    \FSM_sequential_state_reg[1]_1 ,
    fast_control_clk,
    \FSM_sequential_state_reg[1]_2 );
  output sync_err_reg;
  output [2:0]D;
  output [1:0]\FSM_sequential_state_reg[1]_0 ;
  input sync_err_reg_0;
  input sync_err;
  input [2:0]Q;
  input \count_down_reg[2] ;
  input [1:0]\FSM_sequential_state_reg[1]_1 ;
  input fast_control_clk;
  input \FSM_sequential_state_reg[1]_2 ;

  wire [2:0]D;
  wire [1:0]\FSM_sequential_state_reg[1]_0 ;
  wire [1:0]\FSM_sequential_state_reg[1]_1 ;
  wire \FSM_sequential_state_reg[1]_2 ;
  wire [2:0]Q;
  wire \count_down_reg[2] ;
  wire fast_control_clk;
  wire sync_err;
  wire sync_err_i_3_n_0;
  wire sync_err_reg;
  wire sync_err_reg_0;

  (* FSM_ENCODED_STATES = "IDLE:00,SYNC_TX_1:01,SYNC_TX_2:10,START_CLK:11" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1]_2 ),
        .D(\FSM_sequential_state_reg[1]_1 [0]),
        .Q(\FSM_sequential_state_reg[1]_0 [0]));
  (* FSM_ENCODED_STATES = "IDLE:00,SYNC_TX_1:01,SYNC_TX_2:10,START_CLK:11" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1]_2 ),
        .D(\FSM_sequential_state_reg[1]_1 [1]),
        .Q(\FSM_sequential_state_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'h4040404040404000)) 
    \count_down[0]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_sequential_state_reg[1]_0 [0]),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(Q[1]),
        .I4(\count_down_reg[2] ),
        .I5(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF00000000000E000)) 
    \count_down[1]_i_1 
       (.I0(\count_down_reg[2] ),
        .I1(Q[2]),
        .I2(\FSM_sequential_state_reg[1]_0 [1]),
        .I3(\FSM_sequential_state_reg[1]_0 [0]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hC000C000C0002000)) 
    \count_down[2]_i_1 
       (.I0(\count_down_reg[2] ),
        .I1(Q[2]),
        .I2(\FSM_sequential_state_reg[1]_0 [0]),
        .I3(\FSM_sequential_state_reg[1]_0 [1]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCCCCCC5)) 
    sync_err_i_1
       (.I0(sync_err_reg_0),
        .I1(sync_err),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(sync_err_i_3_n_0),
        .O(sync_err_reg));
  LUT2 #(
    .INIT(4'h7)) 
    sync_err_i_3
       (.I0(\FSM_sequential_state_reg[1]_0 [0]),
        .I1(\FSM_sequential_state_reg[1]_0 [1]),
        .O(sync_err_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "clk40_decoder_v2" *) 
module tester_fastcontrol_recv_axi_0_0_clk40_decoder_v2
   (clk40_div,
    sync_err,
    Q,
    fast_control_clk,
    \FSM_sequential_state_reg[1] ,
    sync_err_reg_0,
    \count_down_reg[2]_0 ,
    D);
  output clk40_div;
  output sync_err;
  output [1:0]Q;
  input fast_control_clk;
  input \FSM_sequential_state_reg[1] ;
  input sync_err_reg_0;
  input \count_down_reg[2]_0 ;
  input [1:0]D;

  wire [1:0]D;
  wire \FSM_sequential_state_reg[1] ;
  wire [1:0]Q;
  wire clk40_decoder_FSM_inst_n_0;
  wire clk40_decoder_FSM_inst_n_1;
  wire clk40_decoder_FSM_inst_n_2;
  wire clk40_decoder_FSM_inst_n_3;
  wire clk40_div;
  wire \count_down_reg[2]_0 ;
  wire \count_down_reg_n_0_[0] ;
  wire \count_down_reg_n_0_[1] ;
  wire fast_control_clk;
  wire p_0_in;
  wire sync_err;
  wire sync_err_reg_0;

  FDCE Clk_40_decod_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1] ),
        .D(p_0_in),
        .Q(clk40_div));
  tester_fastcontrol_recv_axi_0_0_clk40_decoder_FSM clk40_decoder_FSM_inst
       (.D({clk40_decoder_FSM_inst_n_1,clk40_decoder_FSM_inst_n_2,clk40_decoder_FSM_inst_n_3}),
        .\FSM_sequential_state_reg[1]_0 (Q),
        .\FSM_sequential_state_reg[1]_1 (D),
        .\FSM_sequential_state_reg[1]_2 (\FSM_sequential_state_reg[1] ),
        .Q({p_0_in,\count_down_reg_n_0_[1] ,\count_down_reg_n_0_[0] }),
        .\count_down_reg[2] (\count_down_reg[2]_0 ),
        .fast_control_clk(fast_control_clk),
        .sync_err(sync_err),
        .sync_err_reg(clk40_decoder_FSM_inst_n_0),
        .sync_err_reg_0(sync_err_reg_0));
  FDCE \count_down_reg[0] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1] ),
        .D(clk40_decoder_FSM_inst_n_3),
        .Q(\count_down_reg_n_0_[0] ));
  FDCE \count_down_reg[1] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1] ),
        .D(clk40_decoder_FSM_inst_n_2),
        .Q(\count_down_reg_n_0_[1] ));
  FDCE \count_down_reg[2] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg[1] ),
        .D(clk40_decoder_FSM_inst_n_1),
        .Q(p_0_in));
  FDPE sync_err_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(clk40_decoder_FSM_inst_n_0),
        .PRE(\FSM_sequential_state_reg[1] ),
        .Q(sync_err));
endmodule

(* ORIG_REF_NAME = "fast_cmd_clk40_decoder" *) 
module tester_fastcontrol_recv_axi_0_0_fast_cmd_clk40_decoder
   (Clk_40_decod_reg,
    fc_OrbitSync,
    fc_L1A,
    fc_OrbitCountReset_OrbitSync,
    fc_CalibrationReq,
    fc_CalibrationL1A,
    fc_LinkReset,
    S,
    cmd_ReSync40_d_reg,
    cmd_CalibrationL1A40_d_reg,
    cmd_CalibrationReq40_d_reg,
    cmd_OrbitCountReset40_d_reg,
    cmd_OrbitSync40_d_reg,
    fast_control_clk,
    polarity,
    fast_control_stream,
    edge_select,
    D,
    \counter_reg[7] ,
    \counter_reg[7]_0 ,
    \counter_reg[7]_1 ,
    \counter_reg[7]_2 ,
    \counter_reg[7]_3 ,
    reset_decoder_n);
  output Clk_40_decod_reg;
  output fc_OrbitSync;
  output fc_L1A;
  output fc_OrbitCountReset_OrbitSync;
  output fc_CalibrationReq;
  output fc_CalibrationL1A;
  output fc_LinkReset;
  output [0:0]S;
  output [0:0]cmd_ReSync40_d_reg;
  output [0:0]cmd_CalibrationL1A40_d_reg;
  output [0:0]cmd_CalibrationReq40_d_reg;
  output [0:0]cmd_OrbitCountReset40_d_reg;
  output [0:0]cmd_OrbitSync40_d_reg;
  input fast_control_clk;
  input polarity;
  input fast_control_stream;
  input edge_select;
  input [0:0]D;
  input [0:0]\counter_reg[7] ;
  input [0:0]\counter_reg[7]_0 ;
  input [0:0]\counter_reg[7]_1 ;
  input [0:0]\counter_reg[7]_2 ;
  input [0:0]\counter_reg[7]_3 ;
  input reset_decoder_n;

  wire Clk_40_decod_reg;
  wire [0:0]D;
  wire ResetSync_inst_n_0;
  wire [0:0]S;
  wire [1:0]\clk40_decoder_FSM_inst/nxtState ;
  wire [1:0]\clk40_decoder_FSM_inst/state ;
  wire clk40_div;
  wire [0:0]cmd_CalibrationL1A40_d_reg;
  wire [0:0]cmd_CalibrationReq40_d_reg;
  wire [0:0]cmd_OrbitCountReset40_d_reg;
  wire [0:0]cmd_OrbitSync40_d_reg;
  wire [0:0]cmd_ReSync40_d_reg;
  wire [0:0]\counter_reg[7] ;
  wire [0:0]\counter_reg[7]_0 ;
  wire [0:0]\counter_reg[7]_1 ;
  wire [0:0]\counter_reg[7]_2 ;
  wire [0:0]\counter_reg[7]_3 ;
  wire edge_select;
  wire fast_cmd_decoder_inst_n_14;
  wire fast_cmd_decoder_inst_n_15;
  wire fast_control_clk;
  wire fast_control_stream;
  wire fc_CalibrationL1A;
  wire fc_CalibrationReq;
  wire fc_L1A;
  wire fc_LinkReset;
  wire fc_OrbitCountReset_OrbitSync;
  wire fc_OrbitSync;
  wire polarity;
  wire reset_decoder_n;
  wire sync_err;

  tester_fastcontrol_recv_axi_0_0_ResetSync ResetSync_inst
       (.\ResetSync_reg_reg[1]_0 (ResetSync_inst_n_0),
        .fast_control_clk(fast_control_clk),
        .reset_decoder_n(reset_decoder_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC")) 
    buf_40
       (.CE(1'b1),
        .I(clk40_div),
        .O(Clk_40_decod_reg));
  tester_fastcontrol_recv_axi_0_0_clk40_decoder_v2 clk40_decoder_inst
       (.D(\clk40_decoder_FSM_inst/nxtState ),
        .\FSM_sequential_state_reg[1] (ResetSync_inst_n_0),
        .Q(\clk40_decoder_FSM_inst/state ),
        .clk40_div(clk40_div),
        .\count_down_reg[2]_0 (fast_cmd_decoder_inst_n_14),
        .fast_control_clk(fast_control_clk),
        .sync_err(sync_err),
        .sync_err_reg_0(fast_cmd_decoder_inst_n_15));
  tester_fastcontrol_recv_axi_0_0_fast_cmd_decoder fast_cmd_decoder_inst
       (.D(D),
        .Q(\clk40_decoder_FSM_inst/state ),
        .S(S),
        .cmd_CalibrationL1A40_d_reg_0(cmd_CalibrationL1A40_d_reg),
        .cmd_CalibrationL1A40_d_reg_1(Clk_40_decod_reg),
        .cmd_CalibrationReq40_d_reg_0(cmd_CalibrationReq40_d_reg),
        .cmd_OrbitCountReset40_d_reg_0(cmd_OrbitCountReset40_d_reg),
        .cmd_OrbitSync40_d_reg_0(cmd_OrbitSync40_d_reg),
        .cmd_OrbitSync40_d_reg_1(ResetSync_inst_n_0),
        .cmd_ReSync40_d_reg_0(cmd_ReSync40_d_reg),
        .\counter_reg[7] (\counter_reg[7] ),
        .\counter_reg[7]_0 (\counter_reg[7]_0 ),
        .\counter_reg[7]_1 (\counter_reg[7]_1 ),
        .\counter_reg[7]_2 (\counter_reg[7]_2 ),
        .\counter_reg[7]_3 (\counter_reg[7]_3 ),
        .edge_select(edge_select),
        .fast_control_clk(fast_control_clk),
        .fast_control_stream(fast_control_stream),
        .fc_CalibrationL1A(fc_CalibrationL1A),
        .fc_CalibrationReq(fc_CalibrationReq),
        .fc_L1A(fc_L1A),
        .fc_LinkReset(fc_LinkReset),
        .fc_OrbitCountReset_OrbitSync(fc_OrbitCountReset_OrbitSync),
        .fc_OrbitSync(fc_OrbitSync),
        .\inbuffer_reg[3]_0 (\clk40_decoder_FSM_inst/nxtState ),
        .\inbuffer_reg[3]_1 (fast_cmd_decoder_inst_n_14),
        .\inbuffer_reg[5]_0 (fast_cmd_decoder_inst_n_15),
        .polarity(polarity),
        .sync_err(sync_err));
endmodule

(* ORIG_REF_NAME = "fast_cmd_decoder" *) 
module tester_fastcontrol_recv_axi_0_0_fast_cmd_decoder
   (fc_OrbitSync,
    fc_L1A,
    fc_OrbitCountReset_OrbitSync,
    fc_CalibrationReq,
    fc_CalibrationL1A,
    fc_LinkReset,
    S,
    cmd_ReSync40_d_reg_0,
    cmd_CalibrationL1A40_d_reg_0,
    cmd_CalibrationReq40_d_reg_0,
    cmd_OrbitCountReset40_d_reg_0,
    cmd_OrbitSync40_d_reg_0,
    \inbuffer_reg[3]_0 ,
    \inbuffer_reg[3]_1 ,
    \inbuffer_reg[5]_0 ,
    fast_control_clk,
    cmd_OrbitSync40_d_reg_1,
    cmd_CalibrationL1A40_d_reg_1,
    polarity,
    fast_control_stream,
    edge_select,
    D,
    \counter_reg[7] ,
    \counter_reg[7]_0 ,
    \counter_reg[7]_1 ,
    \counter_reg[7]_2 ,
    \counter_reg[7]_3 ,
    Q,
    sync_err);
  output fc_OrbitSync;
  output fc_L1A;
  output fc_OrbitCountReset_OrbitSync;
  output fc_CalibrationReq;
  output fc_CalibrationL1A;
  output fc_LinkReset;
  output [0:0]S;
  output [0:0]cmd_ReSync40_d_reg_0;
  output [0:0]cmd_CalibrationL1A40_d_reg_0;
  output [0:0]cmd_CalibrationReq40_d_reg_0;
  output [0:0]cmd_OrbitCountReset40_d_reg_0;
  output [0:0]cmd_OrbitSync40_d_reg_0;
  output [1:0]\inbuffer_reg[3]_0 ;
  output \inbuffer_reg[3]_1 ;
  output \inbuffer_reg[5]_0 ;
  input fast_control_clk;
  input cmd_OrbitSync40_d_reg_1;
  input cmd_CalibrationL1A40_d_reg_1;
  input polarity;
  input fast_control_stream;
  input edge_select;
  input [0:0]D;
  input [0:0]\counter_reg[7] ;
  input [0:0]\counter_reg[7]_0 ;
  input [0:0]\counter_reg[7]_1 ;
  input [0:0]\counter_reg[7]_2 ;
  input [0:0]\counter_reg[7]_3 ;
  input [1:0]Q;
  input sync_err;

  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]S;
  wire cmd_CalibrationL1A40_d_0;
  wire [0:0]cmd_CalibrationL1A40_d_reg_0;
  wire cmd_CalibrationL1A40_d_reg_1;
  wire cmd_CalibrationL1A_d;
  wire cmd_CalibrationL1A_d_i_1_n_0;
  wire cmd_CalibrationReq40_d_0;
  wire [0:0]cmd_CalibrationReq40_d_reg_0;
  wire cmd_CalibrationReq_d;
  wire cmd_CalibrationReq_d_i_1_n_0;
  wire cmd_L1A_Full40_d_0;
  wire cmd_L1A_Full_d;
  wire cmd_L1A_Full_d_i_1_n_0;
  wire cmd_OrbitCountReset40_d_0;
  wire [0:0]cmd_OrbitCountReset40_d_reg_0;
  wire cmd_OrbitCountReset_d;
  wire cmd_OrbitCountReset_d_i_1_n_0;
  wire cmd_OrbitSync40_d_0;
  wire [0:0]cmd_OrbitSync40_d_reg_0;
  wire cmd_OrbitSync40_d_reg_1;
  wire cmd_OrbitSync_d;
  wire cmd_OrbitSync_d_i_2_n_0;
  wire cmd_ReSync40_d_0;
  wire [0:0]cmd_ReSync40_d_reg_0;
  wire cmd_ReSync_d;
  wire cmd_ReSync_d_0;
  wire cmd_ReSync_d_i_1_n_0;
  wire [0:0]\counter_reg[7] ;
  wire [0:0]\counter_reg[7]_0 ;
  wire [0:0]\counter_reg[7]_1 ;
  wire [0:0]\counter_reg[7]_2 ;
  wire [0:0]\counter_reg[7]_3 ;
  wire edge_select;
  wire fast_control_clk;
  wire fast_control_stream;
  wire fc_CalibrationL1A;
  wire fc_CalibrationReq;
  wire fc_L1A;
  wire fc_LinkReset;
  wire fc_OrbitCountReset_OrbitSync;
  wire fc_OrbitSync;
  wire in_f0;
  wire in_f0_i_1_n_0;
  wire in_f1;
  wire in_f2;
  wire in_r;
  wire in_r0;
  wire [1:0]\inbuffer_reg[3]_0 ;
  wire \inbuffer_reg[3]_1 ;
  wire \inbuffer_reg[5]_0 ;
  wire \inbuffer_reg_n_0_[0] ;
  wire \inbuffer_reg_n_0_[1] ;
  wire \inbuffer_reg_n_0_[2] ;
  wire \inbuffer_reg_n_0_[6] ;
  wire [2:0]p_0_in;
  wire [0:0]p_1_out;
  wire polarity;
  wire sync_err;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBAAA9AAA)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(Q[0]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(Q[1]),
        .O(\inbuffer_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\inbuffer_reg[3]_0 [1]));
  FDCE cmd_CalibrationL1A40_d_0_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_CalibrationL1A_d),
        .Q(cmd_CalibrationL1A40_d_0));
  FDCE cmd_CalibrationL1A40_d_reg
       (.C(cmd_CalibrationL1A40_d_reg_1),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_CalibrationL1A40_d_0),
        .Q(fc_CalibrationL1A));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    cmd_CalibrationL1A_d_i_1
       (.I0(p_0_in[0]),
        .I1(\inbuffer_reg_n_0_[2] ),
        .I2(\inbuffer_reg_n_0_[0] ),
        .I3(\inbuffer_reg_n_0_[1] ),
        .O(cmd_CalibrationL1A_d_i_1_n_0));
  FDCE cmd_CalibrationL1A_d_reg
       (.C(fast_control_clk),
        .CE(cmd_ReSync_d_0),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_CalibrationL1A_d_i_1_n_0),
        .Q(cmd_CalibrationL1A_d));
  FDCE cmd_CalibrationReq40_d_0_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_CalibrationReq_d),
        .Q(cmd_CalibrationReq40_d_0));
  FDCE cmd_CalibrationReq40_d_reg
       (.C(cmd_CalibrationL1A40_d_reg_1),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_CalibrationReq40_d_0),
        .Q(fc_CalibrationReq));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    cmd_CalibrationReq_d_i_1
       (.I0(\inbuffer_reg_n_0_[1] ),
        .I1(\inbuffer_reg_n_0_[0] ),
        .I2(\inbuffer_reg_n_0_[2] ),
        .I3(p_0_in[0]),
        .O(cmd_CalibrationReq_d_i_1_n_0));
  FDCE cmd_CalibrationReq_d_reg
       (.C(fast_control_clk),
        .CE(cmd_ReSync_d_0),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_CalibrationReq_d_i_1_n_0),
        .Q(cmd_CalibrationReq_d));
  FDCE cmd_L1A_Full40_d_0_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_L1A_Full_d),
        .Q(cmd_L1A_Full40_d_0));
  FDCE cmd_L1A_Full40_d_reg
       (.C(cmd_CalibrationL1A40_d_reg_1),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_L1A_Full40_d_0),
        .Q(fc_L1A));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h24)) 
    cmd_L1A_Full_d_i_1
       (.I0(\inbuffer_reg_n_0_[1] ),
        .I1(\inbuffer_reg_n_0_[2] ),
        .I2(p_0_in[0]),
        .O(cmd_L1A_Full_d_i_1_n_0));
  FDCE cmd_L1A_Full_d_reg
       (.C(fast_control_clk),
        .CE(cmd_ReSync_d_0),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_L1A_Full_d_i_1_n_0),
        .Q(cmd_L1A_Full_d));
  FDCE cmd_OrbitCountReset40_d_0_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_OrbitCountReset_d),
        .Q(cmd_OrbitCountReset40_d_0));
  FDCE cmd_OrbitCountReset40_d_reg
       (.C(cmd_CalibrationL1A40_d_reg_1),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_OrbitCountReset40_d_0),
        .Q(fc_OrbitCountReset_OrbitSync));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    cmd_OrbitCountReset_d_i_1
       (.I0(\inbuffer_reg_n_0_[1] ),
        .I1(\inbuffer_reg_n_0_[0] ),
        .I2(p_0_in[0]),
        .I3(\inbuffer_reg_n_0_[2] ),
        .O(cmd_OrbitCountReset_d_i_1_n_0));
  FDCE cmd_OrbitCountReset_d_reg
       (.C(fast_control_clk),
        .CE(cmd_ReSync_d_0),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_OrbitCountReset_d_i_1_n_0),
        .Q(cmd_OrbitCountReset_d));
  FDCE cmd_OrbitSync40_d_0_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_OrbitSync_d),
        .Q(cmd_OrbitSync40_d_0));
  FDCE cmd_OrbitSync40_d_reg
       (.C(cmd_CalibrationL1A40_d_reg_1),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_OrbitSync40_d_0),
        .Q(fc_OrbitSync));
  LUT3 #(
    .INIT(8'h08)) 
    cmd_OrbitSync_d_i_1
       (.I0(\inbuffer_reg_n_0_[6] ),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .O(cmd_ReSync_d_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    cmd_OrbitSync_d_i_2
       (.I0(\inbuffer_reg_n_0_[0] ),
        .I1(p_0_in[0]),
        .O(cmd_OrbitSync_d_i_2_n_0));
  FDCE cmd_OrbitSync_d_reg
       (.C(fast_control_clk),
        .CE(cmd_ReSync_d_0),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_OrbitSync_d_i_2_n_0),
        .Q(cmd_OrbitSync_d));
  FDCE cmd_ReSync40_d_0_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_ReSync_d),
        .Q(cmd_ReSync40_d_0));
  FDCE cmd_ReSync40_d_reg
       (.C(cmd_CalibrationL1A40_d_reg_1),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_ReSync40_d_0),
        .Q(fc_LinkReset));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    cmd_ReSync_d_i_1
       (.I0(p_0_in[0]),
        .I1(\inbuffer_reg_n_0_[1] ),
        .I2(\inbuffer_reg_n_0_[0] ),
        .O(cmd_ReSync_d_i_1_n_0));
  FDCE cmd_ReSync_d_reg
       (.C(fast_control_clk),
        .CE(cmd_ReSync_d_0),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(cmd_ReSync_d_i_1_n_0),
        .Q(cmd_ReSync_d));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h40FF)) 
    \count_down[2]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(sync_err),
        .O(\inbuffer_reg[3]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2 
       (.I0(fc_LinkReset),
        .I1(\counter_reg[7] ),
        .O(cmd_ReSync40_d_reg_0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2__0 
       (.I0(fc_CalibrationL1A),
        .I1(\counter_reg[7]_0 ),
        .O(cmd_CalibrationL1A40_d_reg_0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2__1 
       (.I0(fc_CalibrationReq),
        .I1(\counter_reg[7]_1 ),
        .O(cmd_CalibrationReq40_d_reg_0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2__2 
       (.I0(fc_OrbitCountReset_OrbitSync),
        .I1(\counter_reg[7]_2 ),
        .O(cmd_OrbitCountReset40_d_reg_0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2__3 
       (.I0(fc_OrbitSync),
        .I1(\counter_reg[7]_3 ),
        .O(cmd_OrbitSync40_d_reg_0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_3 
       (.I0(fc_L1A),
        .I1(D),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    in_f0_i_1
       (.I0(polarity),
        .I1(fast_control_stream),
        .O(in_f0_i_1_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    in_f0_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(in_f0_i_1_n_0),
        .Q(in_f0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    in_f1_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(in_f0),
        .Q(in_f1));
  FDCE in_f2_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(in_f1),
        .Q(in_f2));
  FDCE in_r0_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(in_f0_i_1_n_0),
        .Q(in_r0));
  FDCE in_r_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(in_r0),
        .Q(in_r));
  LUT3 #(
    .INIT(8'hB8)) 
    \inbuffer[0]_i_1 
       (.I0(in_r),
        .I1(edge_select),
        .I2(in_f2),
        .O(p_1_out));
  FDCE \inbuffer_reg[0] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(p_1_out),
        .Q(\inbuffer_reg_n_0_[0] ));
  FDCE \inbuffer_reg[1] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(\inbuffer_reg_n_0_[0] ),
        .Q(\inbuffer_reg_n_0_[1] ));
  FDCE \inbuffer_reg[2] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(\inbuffer_reg_n_0_[1] ),
        .Q(\inbuffer_reg_n_0_[2] ));
  FDCE \inbuffer_reg[3] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(\inbuffer_reg_n_0_[2] ),
        .Q(p_0_in[0]));
  FDCE \inbuffer_reg[4] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(p_0_in[0]),
        .Q(p_0_in[1]));
  FDCE \inbuffer_reg[5] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]));
  FDCE \inbuffer_reg[6] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .CLR(cmd_OrbitSync40_d_reg_1),
        .D(p_0_in[2]),
        .Q(\inbuffer_reg_n_0_[6] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    sync_err_i_2
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .O(\inbuffer_reg[5]_0 ));
endmodule

(* ORIG_REF_NAME = "fastcontrol_recv_axi_v1_0" *) 
module tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0
   (lhc_clk,
    fc_OrbitSync,
    fc_L1A,
    fc_OrbitCountReset_OrbitSync,
    fc_CalibrationReq,
    fc_CalibrationL1A,
    fc_LinkReset,
    s00_axi_awready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    fast_control_clk,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    fast_control_stream,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_aresetn);
  output lhc_clk;
  output fc_OrbitSync;
  output fc_L1A;
  output fc_OrbitCountReset_OrbitSync;
  output fc_CalibrationReq;
  output fc_CalibrationL1A;
  output fc_LinkReset;
  output s00_axi_awready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input fast_control_clk;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [4:0]s00_axi_araddr;
  input fast_control_stream;
  input [4:0]s00_axi_awaddr;
  input [1:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_aresetn;

  wire fast_control_clk;
  wire fast_control_stream;
  wire fc_CalibrationL1A;
  wire fc_CalibrationReq;
  wire fc_L1A;
  wire fc_LinkReset;
  wire fc_OrbitCountReset_OrbitSync;
  wire fc_OrbitSync;
  wire lhc_clk;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [1:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0_S00_AXI fastcontrol_recv_axi_v1_0_S00_AXI_inst
       (.fast_control_clk(fast_control_clk),
        .fast_control_stream(fast_control_stream),
        .fc_CalibrationL1A(fc_CalibrationL1A),
        .fc_CalibrationReq(fc_CalibrationReq),
        .fc_L1A(fc_L1A),
        .fc_LinkReset(fc_LinkReset),
        .fc_OrbitCountReset_OrbitSync(fc_OrbitCountReset_OrbitSync),
        .fc_OrbitSync(fc_OrbitSync),
        .lhc_clk(lhc_clk),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "fastcontrol_recv_axi_v1_0_S00_AXI" *) 
module tester_fastcontrol_recv_axi_0_0_fastcontrol_recv_axi_v1_0_S00_AXI
   (lhc_clk,
    fc_OrbitSync,
    fc_L1A,
    fc_OrbitCountReset_OrbitSync,
    fc_CalibrationReq,
    fc_CalibrationL1A,
    fc_LinkReset,
    s00_axi_awready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    fast_control_clk,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    fast_control_stream,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_aresetn);
  output lhc_clk;
  output fc_OrbitSync;
  output fc_L1A;
  output fc_OrbitCountReset_OrbitSync;
  output fc_CalibrationReq;
  output fc_CalibrationL1A;
  output fc_LinkReset;
  output s00_axi_awready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input fast_control_clk;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [4:0]s00_axi_araddr;
  input fast_control_stream;
  input [4:0]s00_axi_awaddr;
  input [1:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_aresetn;

  wire \FSM_sequential_axi_state[0]_i_1_n_0 ;
  wire \FSM_sequential_axi_state[0]_i_2_n_0 ;
  wire \FSM_sequential_axi_state[1]_i_1_n_0 ;
  wire \FSM_sequential_axi_state[2]_i_1_n_0 ;
  wire \FSM_sequential_axi_state[2]_i_2_n_0 ;
  wire axi_arready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_rdata0;
  wire axi_rvalid0;
  wire [2:0]axi_state;
  wire axi_wready0;
  wire fast_control_clk;
  wire fast_control_stream;
  wire fc_CalibrationL1A;
  wire fc_CalibrationReq;
  wire fc_L1A;
  wire fc_LinkReset;
  wire fc_OrbitCountReset_OrbitSync;
  wire fc_OrbitSync;
  wire [31:0]fc_input;
  wire [4:0]fc_raddr;
  wire fc_raddr0;
  wire fc_reset;
  wire fc_reset0;
  wire fc_reset2;
  wire fc_reset_i_2_n_0;
  wire fc_reset_i_3_n_0;
  wire fc_reset_i_6_n_0;
  wire fc_reset_i_7_n_0;
  wire [4:0]fc_waddr;
  wire fc_waddr0;
  wire fc_we__1;
  wire [31:0]io_r_data;
  wire lhc_clk;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [1:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  LUT5 #(
    .INIT(32'hFF2F0020)) 
    \FSM_sequential_axi_state[0]_i_1 
       (.I0(s00_axi_rready),
        .I1(axi_state[0]),
        .I2(axi_state[2]),
        .I3(axi_state[1]),
        .I4(\FSM_sequential_axi_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_axi_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF5FF350FF5FF3500)) 
    \FSM_sequential_axi_state[0]_i_2 
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_state[1]),
        .I3(axi_state[0]),
        .I4(axi_state[2]),
        .I5(s00_axi_bready),
        .O(\FSM_sequential_axi_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h50505040)) 
    \FSM_sequential_axi_state[1]_i_1 
       (.I0(axi_state[2]),
        .I1(s00_axi_arvalid),
        .I2(axi_state[0]),
        .I3(s00_axi_awvalid),
        .I4(axi_state[1]),
        .O(\FSM_sequential_axi_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_axi_state[2]_i_1 
       (.I0(axi_state[0]),
        .I1(axi_state[1]),
        .I2(axi_state[2]),
        .O(\FSM_sequential_axi_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCFC4CCC4)) 
    \FSM_sequential_axi_state[2]_i_2 
       (.I0(s00_axi_rready),
        .I1(axi_state[2]),
        .I2(axi_state[1]),
        .I3(axi_state[0]),
        .I4(s00_axi_arvalid),
        .O(\FSM_sequential_axi_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_WAIT_R:101,STATE_LATCH_R:110,STATE_DONE_R:100,STATE_LATCH_W:011,STATE_DO_W:010,STATE_DONE_W:000,STATE_IDLE:001" *) 
  FDSE \FSM_sequential_axi_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_axi_state[2]_i_1_n_0 ),
        .D(\FSM_sequential_axi_state[0]_i_1_n_0 ),
        .Q(axi_state[0]),
        .S(axi_bvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "STATE_WAIT_R:101,STATE_LATCH_R:110,STATE_DONE_R:100,STATE_LATCH_W:011,STATE_DO_W:010,STATE_DONE_W:000,STATE_IDLE:001" *) 
  FDRE \FSM_sequential_axi_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_axi_state[2]_i_1_n_0 ),
        .D(\FSM_sequential_axi_state[1]_i_1_n_0 ),
        .Q(axi_state[1]),
        .R(axi_bvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "STATE_WAIT_R:101,STATE_LATCH_R:110,STATE_DONE_R:100,STATE_LATCH_W:011,STATE_DO_W:010,STATE_DONE_W:000,STATE_IDLE:001" *) 
  FDRE \FSM_sequential_axi_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_axi_state[2]_i_1_n_0 ),
        .D(\FSM_sequential_axi_state[2]_i_2_n_0 ),
        .Q(axi_state[2]),
        .R(axi_bvalid_i_1_n_0));
  tester_fastcontrol_recv_axi_0_0_hgcal_fc_recv_manager FastControl
       (.Clk_40_decod_reg(lhc_clk),
        .Q(fc_waddr),
        .fast_control_clk(fast_control_clk),
        .fast_control_stream(fast_control_stream),
        .fc_CalibrationL1A(fc_CalibrationL1A),
        .fc_CalibrationReq(fc_CalibrationReq),
        .fc_L1A(fc_L1A),
        .fc_LinkReset(fc_LinkReset),
        .fc_OrbitCountReset_OrbitSync(fc_OrbitCountReset_OrbitSync),
        .fc_OrbitSync(fc_OrbitSync),
        .fc_reset(fc_reset),
        .fc_we__1(fc_we__1),
        .\gen_write[0].CtlReg_reg[0][16]_0 ({axi_state[2],axi_state[0]}),
        .\gen_write[1].CtlReg_reg[1][31]_0 (fc_input),
        .\io_r_data_reg[0]_0 (fc_raddr),
        .\io_r_data_reg[31]_0 (io_r_data),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_wstrb(s00_axi_wstrb));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_state[2]),
        .I2(axi_state[0]),
        .I3(axi_state[1]),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_bvalid_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_bvalid_i_1_n_0));
  LUT5 #(
    .INIT(32'h5555C000)) 
    axi_bvalid_i_2
       (.I0(s00_axi_bready),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awready),
        .I4(s00_axi_bvalid),
        .O(axi_bvalid_i_2_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_2_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_bvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_state[2]),
        .I1(axi_state[1]),
        .O(axi_rdata0));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(io_r_data[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .O(axi_rvalid0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid0),
        .Q(s00_axi_rvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000)) 
    axi_wready_i_1
       (.I0(axi_state[2]),
        .I1(axi_state[0]),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_awready),
        .R(1'b0));
  FDRE \fc_input_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[0]),
        .Q(fc_input[0]),
        .R(1'b0));
  FDRE \fc_input_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[10]),
        .Q(fc_input[10]),
        .R(1'b0));
  FDRE \fc_input_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[11]),
        .Q(fc_input[11]),
        .R(1'b0));
  FDRE \fc_input_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[12]),
        .Q(fc_input[12]),
        .R(1'b0));
  FDRE \fc_input_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[13]),
        .Q(fc_input[13]),
        .R(1'b0));
  FDRE \fc_input_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[14]),
        .Q(fc_input[14]),
        .R(1'b0));
  FDRE \fc_input_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[15]),
        .Q(fc_input[15]),
        .R(1'b0));
  FDRE \fc_input_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[16]),
        .Q(fc_input[16]),
        .R(1'b0));
  FDRE \fc_input_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[17]),
        .Q(fc_input[17]),
        .R(1'b0));
  FDRE \fc_input_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[18]),
        .Q(fc_input[18]),
        .R(1'b0));
  FDRE \fc_input_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[19]),
        .Q(fc_input[19]),
        .R(1'b0));
  FDRE \fc_input_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[1]),
        .Q(fc_input[1]),
        .R(1'b0));
  FDRE \fc_input_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[20]),
        .Q(fc_input[20]),
        .R(1'b0));
  FDRE \fc_input_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[21]),
        .Q(fc_input[21]),
        .R(1'b0));
  FDRE \fc_input_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[22]),
        .Q(fc_input[22]),
        .R(1'b0));
  FDRE \fc_input_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[23]),
        .Q(fc_input[23]),
        .R(1'b0));
  FDRE \fc_input_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[24]),
        .Q(fc_input[24]),
        .R(1'b0));
  FDRE \fc_input_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[25]),
        .Q(fc_input[25]),
        .R(1'b0));
  FDRE \fc_input_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[26]),
        .Q(fc_input[26]),
        .R(1'b0));
  FDRE \fc_input_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[27]),
        .Q(fc_input[27]),
        .R(1'b0));
  FDRE \fc_input_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[28]),
        .Q(fc_input[28]),
        .R(1'b0));
  FDRE \fc_input_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[29]),
        .Q(fc_input[29]),
        .R(1'b0));
  FDRE \fc_input_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[2]),
        .Q(fc_input[2]),
        .R(1'b0));
  FDRE \fc_input_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[30]),
        .Q(fc_input[30]),
        .R(1'b0));
  FDRE \fc_input_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[31]),
        .Q(fc_input[31]),
        .R(1'b0));
  FDRE \fc_input_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[3]),
        .Q(fc_input[3]),
        .R(1'b0));
  FDRE \fc_input_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[4]),
        .Q(fc_input[4]),
        .R(1'b0));
  FDRE \fc_input_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[5]),
        .Q(fc_input[5]),
        .R(1'b0));
  FDRE \fc_input_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[6]),
        .Q(fc_input[6]),
        .R(1'b0));
  FDRE \fc_input_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[7]),
        .Q(fc_input[7]),
        .R(1'b0));
  FDRE \fc_input_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[8]),
        .Q(fc_input[8]),
        .R(1'b0));
  FDRE \fc_input_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_axi_wdata[9]),
        .Q(fc_input[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0400)) 
    \fc_raddr[4]_i_1 
       (.I0(axi_state[2]),
        .I1(axi_state[0]),
        .I2(axi_state[1]),
        .I3(s00_axi_arvalid),
        .O(fc_raddr0));
  FDRE \fc_raddr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(fc_raddr0),
        .D(s00_axi_araddr[0]),
        .Q(fc_raddr[0]),
        .R(1'b0));
  FDRE \fc_raddr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(fc_raddr0),
        .D(s00_axi_araddr[1]),
        .Q(fc_raddr[1]),
        .R(1'b0));
  FDRE \fc_raddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(fc_raddr0),
        .D(s00_axi_araddr[2]),
        .Q(fc_raddr[2]),
        .R(1'b0));
  FDRE \fc_raddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(fc_raddr0),
        .D(s00_axi_araddr[3]),
        .Q(fc_raddr[3]),
        .R(1'b0));
  FDRE \fc_raddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(fc_raddr0),
        .D(s00_axi_araddr[4]),
        .Q(fc_raddr[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    fc_reset_i_1
       (.I0(fc_reset_i_2_n_0),
        .I1(fc_reset_i_3_n_0),
        .I2(fc_reset2),
        .I3(fc_we__1),
        .I4(fc_reset_i_6_n_0),
        .I5(fc_reset_i_7_n_0),
        .O(fc_reset0));
  LUT4 #(
    .INIT(16'h8000)) 
    fc_reset_i_2
       (.I0(s00_axi_wdata[15]),
        .I1(s00_axi_wdata[14]),
        .I2(s00_axi_wdata[13]),
        .I3(s00_axi_wdata[12]),
        .O(fc_reset_i_2_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    fc_reset_i_3
       (.I0(s00_axi_wdata[11]),
        .I1(s00_axi_wdata[10]),
        .I2(s00_axi_wdata[9]),
        .I3(s00_axi_wdata[8]),
        .O(fc_reset_i_3_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    fc_reset_i_4
       (.I0(fc_waddr[0]),
        .I1(fc_waddr[1]),
        .I2(fc_waddr[2]),
        .I3(fc_waddr[4]),
        .I4(fc_waddr[3]),
        .O(fc_reset2));
  LUT4 #(
    .INIT(16'h8000)) 
    fc_reset_i_6
       (.I0(s00_axi_wdata[1]),
        .I1(s00_axi_wdata[0]),
        .I2(s00_axi_wdata[3]),
        .I3(s00_axi_wdata[2]),
        .O(fc_reset_i_6_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    fc_reset_i_7
       (.I0(s00_axi_wdata[7]),
        .I1(s00_axi_wdata[6]),
        .I2(s00_axi_wdata[5]),
        .I3(s00_axi_wdata[4]),
        .O(fc_reset_i_7_n_0));
  FDSE fc_reset_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fc_reset0),
        .Q(fc_reset),
        .S(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    \fc_waddr[4]_i_1 
       (.I0(axi_state[2]),
        .I1(axi_state[0]),
        .I2(axi_state[1]),
        .I3(s00_axi_awvalid),
        .O(fc_waddr0));
  FDRE \fc_waddr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(fc_waddr0),
        .D(s00_axi_awaddr[0]),
        .Q(fc_waddr[0]),
        .R(1'b0));
  FDRE \fc_waddr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(fc_waddr0),
        .D(s00_axi_awaddr[1]),
        .Q(fc_waddr[1]),
        .R(1'b0));
  FDRE \fc_waddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(fc_waddr0),
        .D(s00_axi_awaddr[2]),
        .Q(fc_waddr[2]),
        .R(1'b0));
  FDRE \fc_waddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(fc_waddr0),
        .D(s00_axi_awaddr[3]),
        .Q(fc_waddr[3]),
        .R(1'b0));
  FDRE \fc_waddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(fc_waddr0),
        .D(s00_axi_awaddr[4]),
        .Q(fc_waddr[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_counter" *) 
module tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter
   (D,
    Q,
    clear,
    \counter_reg[0]_0 ,
    fc_CalibrationL1A,
    S,
    s00_axi_aclk);
  output [0:0]D;
  output [31:0]Q;
  input clear;
  input \counter_reg[0]_0 ;
  input fc_CalibrationL1A;
  input [0:0]S;
  input s00_axi_aclk;

  wire [0:0]D;
  wire [31:0]Q;
  wire [0:0]S;
  wire clear;
  wire [31:1]counter_reg;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_i_1__0_n_0 ;
  wire \counter_reg[0]_i_1__0_n_1 ;
  wire \counter_reg[0]_i_1__0_n_10 ;
  wire \counter_reg[0]_i_1__0_n_11 ;
  wire \counter_reg[0]_i_1__0_n_12 ;
  wire \counter_reg[0]_i_1__0_n_13 ;
  wire \counter_reg[0]_i_1__0_n_14 ;
  wire \counter_reg[0]_i_1__0_n_15 ;
  wire \counter_reg[0]_i_1__0_n_2 ;
  wire \counter_reg[0]_i_1__0_n_3 ;
  wire \counter_reg[0]_i_1__0_n_4 ;
  wire \counter_reg[0]_i_1__0_n_5 ;
  wire \counter_reg[0]_i_1__0_n_6 ;
  wire \counter_reg[0]_i_1__0_n_7 ;
  wire \counter_reg[0]_i_1__0_n_8 ;
  wire \counter_reg[0]_i_1__0_n_9 ;
  wire \counter_reg[16]_i_1__1_n_0 ;
  wire \counter_reg[16]_i_1__1_n_1 ;
  wire \counter_reg[16]_i_1__1_n_10 ;
  wire \counter_reg[16]_i_1__1_n_11 ;
  wire \counter_reg[16]_i_1__1_n_12 ;
  wire \counter_reg[16]_i_1__1_n_13 ;
  wire \counter_reg[16]_i_1__1_n_14 ;
  wire \counter_reg[16]_i_1__1_n_15 ;
  wire \counter_reg[16]_i_1__1_n_2 ;
  wire \counter_reg[16]_i_1__1_n_3 ;
  wire \counter_reg[16]_i_1__1_n_4 ;
  wire \counter_reg[16]_i_1__1_n_5 ;
  wire \counter_reg[16]_i_1__1_n_6 ;
  wire \counter_reg[16]_i_1__1_n_7 ;
  wire \counter_reg[16]_i_1__1_n_8 ;
  wire \counter_reg[16]_i_1__1_n_9 ;
  wire \counter_reg[24]_i_1__1_n_1 ;
  wire \counter_reg[24]_i_1__1_n_10 ;
  wire \counter_reg[24]_i_1__1_n_11 ;
  wire \counter_reg[24]_i_1__1_n_12 ;
  wire \counter_reg[24]_i_1__1_n_13 ;
  wire \counter_reg[24]_i_1__1_n_14 ;
  wire \counter_reg[24]_i_1__1_n_15 ;
  wire \counter_reg[24]_i_1__1_n_2 ;
  wire \counter_reg[24]_i_1__1_n_3 ;
  wire \counter_reg[24]_i_1__1_n_4 ;
  wire \counter_reg[24]_i_1__1_n_5 ;
  wire \counter_reg[24]_i_1__1_n_6 ;
  wire \counter_reg[24]_i_1__1_n_7 ;
  wire \counter_reg[24]_i_1__1_n_8 ;
  wire \counter_reg[24]_i_1__1_n_9 ;
  wire \counter_reg[8]_i_1__1_n_0 ;
  wire \counter_reg[8]_i_1__1_n_1 ;
  wire \counter_reg[8]_i_1__1_n_10 ;
  wire \counter_reg[8]_i_1__1_n_11 ;
  wire \counter_reg[8]_i_1__1_n_12 ;
  wire \counter_reg[8]_i_1__1_n_13 ;
  wire \counter_reg[8]_i_1__1_n_14 ;
  wire \counter_reg[8]_i_1__1_n_15 ;
  wire \counter_reg[8]_i_1__1_n_2 ;
  wire \counter_reg[8]_i_1__1_n_3 ;
  wire \counter_reg[8]_i_1__1_n_4 ;
  wire \counter_reg[8]_i_1__1_n_5 ;
  wire \counter_reg[8]_i_1__1_n_6 ;
  wire \counter_reg[8]_i_1__1_n_7 ;
  wire \counter_reg[8]_i_1__1_n_8 ;
  wire \counter_reg[8]_i_1__1_n_9 ;
  wire fc_CalibrationL1A;
  wire s00_axi_aclk;
  wire [7:7]\NLW_counter_reg[24]_i_1__1_CO_UNCONNECTED ;

  FDRE \counter_reg[0] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_1__0 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1__0_n_0 ,\counter_reg[0]_i_1__0_n_1 ,\counter_reg[0]_i_1__0_n_2 ,\counter_reg[0]_i_1__0_n_3 ,\counter_reg[0]_i_1__0_n_4 ,\counter_reg[0]_i_1__0_n_5 ,\counter_reg[0]_i_1__0_n_6 ,\counter_reg[0]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fc_CalibrationL1A}),
        .O({\counter_reg[0]_i_1__0_n_8 ,\counter_reg[0]_i_1__0_n_9 ,\counter_reg[0]_i_1__0_n_10 ,\counter_reg[0]_i_1__0_n_11 ,\counter_reg[0]_i_1__0_n_12 ,\counter_reg[0]_i_1__0_n_13 ,\counter_reg[0]_i_1__0_n_14 ,\counter_reg[0]_i_1__0_n_15 }),
        .S({counter_reg[7:1],S}));
  FDRE \counter_reg[10] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_15 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY8 \counter_reg[16]_i_1__1 
       (.CI(\counter_reg[8]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[16]_i_1__1_n_0 ,\counter_reg[16]_i_1__1_n_1 ,\counter_reg[16]_i_1__1_n_2 ,\counter_reg[16]_i_1__1_n_3 ,\counter_reg[16]_i_1__1_n_4 ,\counter_reg[16]_i_1__1_n_5 ,\counter_reg[16]_i_1__1_n_6 ,\counter_reg[16]_i_1__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__1_n_8 ,\counter_reg[16]_i_1__1_n_9 ,\counter_reg[16]_i_1__1_n_10 ,\counter_reg[16]_i_1__1_n_11 ,\counter_reg[16]_i_1__1_n_12 ,\counter_reg[16]_i_1__1_n_13 ,\counter_reg[16]_i_1__1_n_14 ,\counter_reg[16]_i_1__1_n_15 }),
        .S(counter_reg[23:16]));
  FDRE \counter_reg[17] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_15 ),
        .Q(counter_reg[24]),
        .R(clear));
  CARRY8 \counter_reg[24]_i_1__1 
       (.CI(\counter_reg[16]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[24]_i_1__1_CO_UNCONNECTED [7],\counter_reg[24]_i_1__1_n_1 ,\counter_reg[24]_i_1__1_n_2 ,\counter_reg[24]_i_1__1_n_3 ,\counter_reg[24]_i_1__1_n_4 ,\counter_reg[24]_i_1__1_n_5 ,\counter_reg[24]_i_1__1_n_6 ,\counter_reg[24]_i_1__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1__1_n_8 ,\counter_reg[24]_i_1__1_n_9 ,\counter_reg[24]_i_1__1_n_10 ,\counter_reg[24]_i_1__1_n_11 ,\counter_reg[24]_i_1__1_n_12 ,\counter_reg[24]_i_1__1_n_13 ,\counter_reg[24]_i_1__1_n_14 ,\counter_reg[24]_i_1__1_n_15 }),
        .S(counter_reg[31:24]));
  FDRE \counter_reg[25] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_15 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY8 \counter_reg[8]_i_1__1 
       (.CI(\counter_reg[0]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_1__1_n_0 ,\counter_reg[8]_i_1__1_n_1 ,\counter_reg[8]_i_1__1_n_2 ,\counter_reg[8]_i_1__1_n_3 ,\counter_reg[8]_i_1__1_n_4 ,\counter_reg[8]_i_1__1_n_5 ,\counter_reg[8]_i_1__1_n_6 ,\counter_reg[8]_i_1__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__1_n_8 ,\counter_reg[8]_i_1__1_n_9 ,\counter_reg[8]_i_1__1_n_10 ,\counter_reg[8]_i_1__1_n_11 ,\counter_reg[8]_i_1__1_n_12 ,\counter_reg[8]_i_1__1_n_13 ,\counter_reg[8]_i_1__1_n_14 ,\counter_reg[8]_i_1__1_n_15 }),
        .S(counter_reg[15:8]));
  FDRE \counter_reg[9] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_14 ),
        .Q(counter_reg[9]),
        .R(clear));
  FDRE \value_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \value_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \value_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \value_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \value_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \value_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \value_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \value_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \value_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \value_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \value_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \value_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \value_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \value_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \value_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \value_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \value_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \value_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \value_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \value_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \value_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \value_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \value_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \value_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \value_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \value_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \value_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \value_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \value_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \value_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \value_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \value_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_counter" *) 
module tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_0
   (D,
    \fc_raddr_reg[4] ,
    clear,
    \counter_reg[31]_0 ,
    \io_r_data_reg[0] ,
    CtlReg,
    \io_r_data_reg[31] ,
    Q,
    \io_r_data_reg[0]_0 ,
    \io_r_data_reg[31]_0 ,
    \io_r_data_reg[30] ,
    \io_r_data_reg[29] ,
    \io_r_data_reg[28] ,
    \io_r_data_reg[27] ,
    \io_r_data_reg[26] ,
    \io_r_data_reg[25] ,
    \io_r_data_reg[24] ,
    \io_r_data_reg[23] ,
    \io_r_data_reg[22] ,
    \io_r_data_reg[21] ,
    \io_r_data_reg[20] ,
    \io_r_data_reg[19] ,
    \io_r_data_reg[18] ,
    \io_r_data_reg[17] ,
    \io_r_data_reg[16] ,
    \io_r_data_reg[15] ,
    \io_r_data_reg[14] ,
    \io_r_data_reg[13] ,
    \io_r_data_reg[12] ,
    \io_r_data_reg[11] ,
    \io_r_data_reg[10] ,
    \io_r_data_reg[9] ,
    \io_r_data_reg[8] ,
    \io_r_data_reg[7] ,
    \io_r_data_reg[6] ,
    \io_r_data_reg[5] ,
    \io_r_data_reg[4] ,
    \io_r_data_reg[3] ,
    \io_r_data_reg[2] ,
    \io_r_data_reg[1] ,
    \io_r_data_reg[0]_1 ,
    \io_r_data[31]_i_3_0 ,
    \io_r_data[31]_i_3_1 ,
    fc_CalibrationReq,
    S,
    s00_axi_aclk);
  output [0:0]D;
  output [31:0]\fc_raddr_reg[4] ;
  input clear;
  input \counter_reg[31]_0 ;
  input \io_r_data_reg[0] ;
  input [31:0]CtlReg;
  input \io_r_data_reg[31] ;
  input [31:0]Q;
  input [3:0]\io_r_data_reg[0]_0 ;
  input \io_r_data_reg[31]_0 ;
  input \io_r_data_reg[30] ;
  input \io_r_data_reg[29] ;
  input \io_r_data_reg[28] ;
  input \io_r_data_reg[27] ;
  input \io_r_data_reg[26] ;
  input \io_r_data_reg[25] ;
  input \io_r_data_reg[24] ;
  input \io_r_data_reg[23] ;
  input \io_r_data_reg[22] ;
  input \io_r_data_reg[21] ;
  input \io_r_data_reg[20] ;
  input \io_r_data_reg[19] ;
  input \io_r_data_reg[18] ;
  input \io_r_data_reg[17] ;
  input \io_r_data_reg[16] ;
  input \io_r_data_reg[15] ;
  input \io_r_data_reg[14] ;
  input \io_r_data_reg[13] ;
  input \io_r_data_reg[12] ;
  input \io_r_data_reg[11] ;
  input \io_r_data_reg[10] ;
  input \io_r_data_reg[9] ;
  input \io_r_data_reg[8] ;
  input \io_r_data_reg[7] ;
  input \io_r_data_reg[6] ;
  input \io_r_data_reg[5] ;
  input \io_r_data_reg[4] ;
  input \io_r_data_reg[3] ;
  input \io_r_data_reg[2] ;
  input \io_r_data_reg[1] ;
  input \io_r_data_reg[0]_1 ;
  input [31:0]\io_r_data[31]_i_3_0 ;
  input [31:0]\io_r_data[31]_i_3_1 ;
  input fc_CalibrationReq;
  input [0:0]S;
  input s00_axi_aclk;

  wire [31:0]CtlReg;
  wire [0:0]D;
  wire [31:0]Q;
  wire [0:0]S;
  wire [31:0]StatusReg__353;
  wire clear;
  wire [31:1]counter_reg;
  wire \counter_reg[0]_i_1__1_n_0 ;
  wire \counter_reg[0]_i_1__1_n_1 ;
  wire \counter_reg[0]_i_1__1_n_10 ;
  wire \counter_reg[0]_i_1__1_n_11 ;
  wire \counter_reg[0]_i_1__1_n_12 ;
  wire \counter_reg[0]_i_1__1_n_13 ;
  wire \counter_reg[0]_i_1__1_n_14 ;
  wire \counter_reg[0]_i_1__1_n_15 ;
  wire \counter_reg[0]_i_1__1_n_2 ;
  wire \counter_reg[0]_i_1__1_n_3 ;
  wire \counter_reg[0]_i_1__1_n_4 ;
  wire \counter_reg[0]_i_1__1_n_5 ;
  wire \counter_reg[0]_i_1__1_n_6 ;
  wire \counter_reg[0]_i_1__1_n_7 ;
  wire \counter_reg[0]_i_1__1_n_8 ;
  wire \counter_reg[0]_i_1__1_n_9 ;
  wire \counter_reg[16]_i_1__2_n_0 ;
  wire \counter_reg[16]_i_1__2_n_1 ;
  wire \counter_reg[16]_i_1__2_n_10 ;
  wire \counter_reg[16]_i_1__2_n_11 ;
  wire \counter_reg[16]_i_1__2_n_12 ;
  wire \counter_reg[16]_i_1__2_n_13 ;
  wire \counter_reg[16]_i_1__2_n_14 ;
  wire \counter_reg[16]_i_1__2_n_15 ;
  wire \counter_reg[16]_i_1__2_n_2 ;
  wire \counter_reg[16]_i_1__2_n_3 ;
  wire \counter_reg[16]_i_1__2_n_4 ;
  wire \counter_reg[16]_i_1__2_n_5 ;
  wire \counter_reg[16]_i_1__2_n_6 ;
  wire \counter_reg[16]_i_1__2_n_7 ;
  wire \counter_reg[16]_i_1__2_n_8 ;
  wire \counter_reg[16]_i_1__2_n_9 ;
  wire \counter_reg[24]_i_1__2_n_1 ;
  wire \counter_reg[24]_i_1__2_n_10 ;
  wire \counter_reg[24]_i_1__2_n_11 ;
  wire \counter_reg[24]_i_1__2_n_12 ;
  wire \counter_reg[24]_i_1__2_n_13 ;
  wire \counter_reg[24]_i_1__2_n_14 ;
  wire \counter_reg[24]_i_1__2_n_15 ;
  wire \counter_reg[24]_i_1__2_n_2 ;
  wire \counter_reg[24]_i_1__2_n_3 ;
  wire \counter_reg[24]_i_1__2_n_4 ;
  wire \counter_reg[24]_i_1__2_n_5 ;
  wire \counter_reg[24]_i_1__2_n_6 ;
  wire \counter_reg[24]_i_1__2_n_7 ;
  wire \counter_reg[24]_i_1__2_n_8 ;
  wire \counter_reg[24]_i_1__2_n_9 ;
  wire \counter_reg[31]_0 ;
  wire \counter_reg[8]_i_1__2_n_0 ;
  wire \counter_reg[8]_i_1__2_n_1 ;
  wire \counter_reg[8]_i_1__2_n_10 ;
  wire \counter_reg[8]_i_1__2_n_11 ;
  wire \counter_reg[8]_i_1__2_n_12 ;
  wire \counter_reg[8]_i_1__2_n_13 ;
  wire \counter_reg[8]_i_1__2_n_14 ;
  wire \counter_reg[8]_i_1__2_n_15 ;
  wire \counter_reg[8]_i_1__2_n_2 ;
  wire \counter_reg[8]_i_1__2_n_3 ;
  wire \counter_reg[8]_i_1__2_n_4 ;
  wire \counter_reg[8]_i_1__2_n_5 ;
  wire \counter_reg[8]_i_1__2_n_6 ;
  wire \counter_reg[8]_i_1__2_n_7 ;
  wire \counter_reg[8]_i_1__2_n_8 ;
  wire \counter_reg[8]_i_1__2_n_9 ;
  wire fc_CalibrationReq;
  wire [31:0]\fc_raddr_reg[4] ;
  wire \io_r_data[0]_i_4_n_0 ;
  wire \io_r_data[10]_i_4_n_0 ;
  wire \io_r_data[11]_i_4_n_0 ;
  wire \io_r_data[12]_i_4_n_0 ;
  wire \io_r_data[13]_i_4_n_0 ;
  wire \io_r_data[14]_i_4_n_0 ;
  wire \io_r_data[15]_i_4_n_0 ;
  wire \io_r_data[16]_i_4_n_0 ;
  wire \io_r_data[17]_i_4_n_0 ;
  wire \io_r_data[18]_i_4_n_0 ;
  wire \io_r_data[19]_i_4_n_0 ;
  wire \io_r_data[1]_i_4_n_0 ;
  wire \io_r_data[20]_i_4_n_0 ;
  wire \io_r_data[21]_i_4_n_0 ;
  wire \io_r_data[22]_i_4_n_0 ;
  wire \io_r_data[23]_i_4_n_0 ;
  wire \io_r_data[24]_i_4_n_0 ;
  wire \io_r_data[25]_i_4_n_0 ;
  wire \io_r_data[26]_i_4_n_0 ;
  wire \io_r_data[27]_i_4_n_0 ;
  wire \io_r_data[28]_i_4_n_0 ;
  wire \io_r_data[29]_i_4_n_0 ;
  wire \io_r_data[2]_i_4_n_0 ;
  wire \io_r_data[30]_i_4_n_0 ;
  wire [31:0]\io_r_data[31]_i_3_0 ;
  wire [31:0]\io_r_data[31]_i_3_1 ;
  wire \io_r_data[31]_i_5_n_0 ;
  wire \io_r_data[3]_i_4_n_0 ;
  wire \io_r_data[4]_i_4_n_0 ;
  wire \io_r_data[5]_i_4_n_0 ;
  wire \io_r_data[6]_i_4_n_0 ;
  wire \io_r_data[7]_i_4_n_0 ;
  wire \io_r_data[8]_i_4_n_0 ;
  wire \io_r_data[9]_i_4_n_0 ;
  wire \io_r_data_reg[0] ;
  wire [3:0]\io_r_data_reg[0]_0 ;
  wire \io_r_data_reg[0]_1 ;
  wire \io_r_data_reg[10] ;
  wire \io_r_data_reg[11] ;
  wire \io_r_data_reg[12] ;
  wire \io_r_data_reg[13] ;
  wire \io_r_data_reg[14] ;
  wire \io_r_data_reg[15] ;
  wire \io_r_data_reg[16] ;
  wire \io_r_data_reg[17] ;
  wire \io_r_data_reg[18] ;
  wire \io_r_data_reg[19] ;
  wire \io_r_data_reg[1] ;
  wire \io_r_data_reg[20] ;
  wire \io_r_data_reg[21] ;
  wire \io_r_data_reg[22] ;
  wire \io_r_data_reg[23] ;
  wire \io_r_data_reg[24] ;
  wire \io_r_data_reg[25] ;
  wire \io_r_data_reg[26] ;
  wire \io_r_data_reg[27] ;
  wire \io_r_data_reg[28] ;
  wire \io_r_data_reg[29] ;
  wire \io_r_data_reg[2] ;
  wire \io_r_data_reg[30] ;
  wire \io_r_data_reg[31] ;
  wire \io_r_data_reg[31]_0 ;
  wire \io_r_data_reg[3] ;
  wire \io_r_data_reg[4] ;
  wire \io_r_data_reg[5] ;
  wire \io_r_data_reg[6] ;
  wire \io_r_data_reg[7] ;
  wire \io_r_data_reg[8] ;
  wire \io_r_data_reg[9] ;
  wire s00_axi_aclk;
  wire \value_reg_n_0_[0] ;
  wire \value_reg_n_0_[10] ;
  wire \value_reg_n_0_[11] ;
  wire \value_reg_n_0_[12] ;
  wire \value_reg_n_0_[13] ;
  wire \value_reg_n_0_[14] ;
  wire \value_reg_n_0_[15] ;
  wire \value_reg_n_0_[16] ;
  wire \value_reg_n_0_[17] ;
  wire \value_reg_n_0_[18] ;
  wire \value_reg_n_0_[19] ;
  wire \value_reg_n_0_[1] ;
  wire \value_reg_n_0_[20] ;
  wire \value_reg_n_0_[21] ;
  wire \value_reg_n_0_[22] ;
  wire \value_reg_n_0_[23] ;
  wire \value_reg_n_0_[24] ;
  wire \value_reg_n_0_[25] ;
  wire \value_reg_n_0_[26] ;
  wire \value_reg_n_0_[27] ;
  wire \value_reg_n_0_[28] ;
  wire \value_reg_n_0_[29] ;
  wire \value_reg_n_0_[2] ;
  wire \value_reg_n_0_[30] ;
  wire \value_reg_n_0_[31] ;
  wire \value_reg_n_0_[3] ;
  wire \value_reg_n_0_[4] ;
  wire \value_reg_n_0_[5] ;
  wire \value_reg_n_0_[6] ;
  wire \value_reg_n_0_[7] ;
  wire \value_reg_n_0_[8] ;
  wire \value_reg_n_0_[9] ;
  wire [7:7]\NLW_counter_reg[24]_i_1__2_CO_UNCONNECTED ;

  FDRE \counter_reg[0] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_1__1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1__1_n_0 ,\counter_reg[0]_i_1__1_n_1 ,\counter_reg[0]_i_1__1_n_2 ,\counter_reg[0]_i_1__1_n_3 ,\counter_reg[0]_i_1__1_n_4 ,\counter_reg[0]_i_1__1_n_5 ,\counter_reg[0]_i_1__1_n_6 ,\counter_reg[0]_i_1__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fc_CalibrationReq}),
        .O({\counter_reg[0]_i_1__1_n_8 ,\counter_reg[0]_i_1__1_n_9 ,\counter_reg[0]_i_1__1_n_10 ,\counter_reg[0]_i_1__1_n_11 ,\counter_reg[0]_i_1__1_n_12 ,\counter_reg[0]_i_1__1_n_13 ,\counter_reg[0]_i_1__1_n_14 ,\counter_reg[0]_i_1__1_n_15 }),
        .S({counter_reg[7:1],S}));
  FDRE \counter_reg[10] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_15 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY8 \counter_reg[16]_i_1__2 
       (.CI(\counter_reg[8]_i_1__2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[16]_i_1__2_n_0 ,\counter_reg[16]_i_1__2_n_1 ,\counter_reg[16]_i_1__2_n_2 ,\counter_reg[16]_i_1__2_n_3 ,\counter_reg[16]_i_1__2_n_4 ,\counter_reg[16]_i_1__2_n_5 ,\counter_reg[16]_i_1__2_n_6 ,\counter_reg[16]_i_1__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__2_n_8 ,\counter_reg[16]_i_1__2_n_9 ,\counter_reg[16]_i_1__2_n_10 ,\counter_reg[16]_i_1__2_n_11 ,\counter_reg[16]_i_1__2_n_12 ,\counter_reg[16]_i_1__2_n_13 ,\counter_reg[16]_i_1__2_n_14 ,\counter_reg[16]_i_1__2_n_15 }),
        .S(counter_reg[23:16]));
  FDRE \counter_reg[17] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_15 ),
        .Q(counter_reg[24]),
        .R(clear));
  CARRY8 \counter_reg[24]_i_1__2 
       (.CI(\counter_reg[16]_i_1__2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[24]_i_1__2_CO_UNCONNECTED [7],\counter_reg[24]_i_1__2_n_1 ,\counter_reg[24]_i_1__2_n_2 ,\counter_reg[24]_i_1__2_n_3 ,\counter_reg[24]_i_1__2_n_4 ,\counter_reg[24]_i_1__2_n_5 ,\counter_reg[24]_i_1__2_n_6 ,\counter_reg[24]_i_1__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1__2_n_8 ,\counter_reg[24]_i_1__2_n_9 ,\counter_reg[24]_i_1__2_n_10 ,\counter_reg[24]_i_1__2_n_11 ,\counter_reg[24]_i_1__2_n_12 ,\counter_reg[24]_i_1__2_n_13 ,\counter_reg[24]_i_1__2_n_14 ,\counter_reg[24]_i_1__2_n_15 }),
        .S(counter_reg[31:24]));
  FDRE \counter_reg[25] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_15 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY8 \counter_reg[8]_i_1__2 
       (.CI(\counter_reg[0]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_1__2_n_0 ,\counter_reg[8]_i_1__2_n_1 ,\counter_reg[8]_i_1__2_n_2 ,\counter_reg[8]_i_1__2_n_3 ,\counter_reg[8]_i_1__2_n_4 ,\counter_reg[8]_i_1__2_n_5 ,\counter_reg[8]_i_1__2_n_6 ,\counter_reg[8]_i_1__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__2_n_8 ,\counter_reg[8]_i_1__2_n_9 ,\counter_reg[8]_i_1__2_n_10 ,\counter_reg[8]_i_1__2_n_11 ,\counter_reg[8]_i_1__2_n_12 ,\counter_reg[8]_i_1__2_n_13 ,\counter_reg[8]_i_1__2_n_14 ,\counter_reg[8]_i_1__2_n_15 }),
        .S(counter_reg[15:8]));
  FDRE \counter_reg[9] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_14 ),
        .Q(counter_reg[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[0]_i_2 
       (.I0(\io_r_data[0]_i_4_n_0 ),
        .I1(\io_r_data_reg[0]_1 ),
        .I2(Q[0]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[0]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[0]_i_4 
       (.I0(\value_reg_n_0_[0] ),
        .I1(\io_r_data[31]_i_3_0 [0]),
        .I2(\io_r_data[31]_i_3_1 [0]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[10]_i_2 
       (.I0(\io_r_data[10]_i_4_n_0 ),
        .I1(\io_r_data_reg[10] ),
        .I2(Q[10]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[10]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[10]_i_4 
       (.I0(\value_reg_n_0_[10] ),
        .I1(\io_r_data[31]_i_3_0 [10]),
        .I2(\io_r_data[31]_i_3_1 [10]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[11]_i_2 
       (.I0(\io_r_data[11]_i_4_n_0 ),
        .I1(\io_r_data_reg[11] ),
        .I2(Q[11]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[11]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[11]_i_4 
       (.I0(\value_reg_n_0_[11] ),
        .I1(\io_r_data[31]_i_3_0 [11]),
        .I2(\io_r_data[31]_i_3_1 [11]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[12]_i_2 
       (.I0(\io_r_data[12]_i_4_n_0 ),
        .I1(\io_r_data_reg[12] ),
        .I2(Q[12]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[12]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[12]_i_4 
       (.I0(\value_reg_n_0_[12] ),
        .I1(\io_r_data[31]_i_3_0 [12]),
        .I2(\io_r_data[31]_i_3_1 [12]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[13]_i_2 
       (.I0(\io_r_data[13]_i_4_n_0 ),
        .I1(\io_r_data_reg[13] ),
        .I2(Q[13]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[13]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[13]_i_4 
       (.I0(\value_reg_n_0_[13] ),
        .I1(\io_r_data[31]_i_3_0 [13]),
        .I2(\io_r_data[31]_i_3_1 [13]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[14]_i_2 
       (.I0(\io_r_data[14]_i_4_n_0 ),
        .I1(\io_r_data_reg[14] ),
        .I2(Q[14]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[14]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[14]_i_4 
       (.I0(\value_reg_n_0_[14] ),
        .I1(\io_r_data[31]_i_3_0 [14]),
        .I2(\io_r_data[31]_i_3_1 [14]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[15]_i_2 
       (.I0(\io_r_data[15]_i_4_n_0 ),
        .I1(\io_r_data_reg[15] ),
        .I2(Q[15]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[15]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[15]_i_4 
       (.I0(\value_reg_n_0_[15] ),
        .I1(\io_r_data[31]_i_3_0 [15]),
        .I2(\io_r_data[31]_i_3_1 [15]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[16]_i_2 
       (.I0(\io_r_data[16]_i_4_n_0 ),
        .I1(\io_r_data_reg[16] ),
        .I2(Q[16]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[16]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[16]_i_4 
       (.I0(\value_reg_n_0_[16] ),
        .I1(\io_r_data[31]_i_3_0 [16]),
        .I2(\io_r_data[31]_i_3_1 [16]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[17]_i_2 
       (.I0(\io_r_data[17]_i_4_n_0 ),
        .I1(\io_r_data_reg[17] ),
        .I2(Q[17]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[17]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[17]_i_4 
       (.I0(\value_reg_n_0_[17] ),
        .I1(\io_r_data[31]_i_3_0 [17]),
        .I2(\io_r_data[31]_i_3_1 [17]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[18]_i_2 
       (.I0(\io_r_data[18]_i_4_n_0 ),
        .I1(\io_r_data_reg[18] ),
        .I2(Q[18]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[18]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[18]_i_4 
       (.I0(\value_reg_n_0_[18] ),
        .I1(\io_r_data[31]_i_3_0 [18]),
        .I2(\io_r_data[31]_i_3_1 [18]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[19]_i_2 
       (.I0(\io_r_data[19]_i_4_n_0 ),
        .I1(\io_r_data_reg[19] ),
        .I2(Q[19]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[19]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[19]_i_4 
       (.I0(\value_reg_n_0_[19] ),
        .I1(\io_r_data[31]_i_3_0 [19]),
        .I2(\io_r_data[31]_i_3_1 [19]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[1]_i_2 
       (.I0(\io_r_data[1]_i_4_n_0 ),
        .I1(\io_r_data_reg[1] ),
        .I2(Q[1]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[1]_i_4 
       (.I0(\value_reg_n_0_[1] ),
        .I1(\io_r_data[31]_i_3_0 [1]),
        .I2(\io_r_data[31]_i_3_1 [1]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[20]_i_2 
       (.I0(\io_r_data[20]_i_4_n_0 ),
        .I1(\io_r_data_reg[20] ),
        .I2(Q[20]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[20]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[20]_i_4 
       (.I0(\value_reg_n_0_[20] ),
        .I1(\io_r_data[31]_i_3_0 [20]),
        .I2(\io_r_data[31]_i_3_1 [20]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[21]_i_2 
       (.I0(\io_r_data[21]_i_4_n_0 ),
        .I1(\io_r_data_reg[21] ),
        .I2(Q[21]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[21]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[21]_i_4 
       (.I0(\value_reg_n_0_[21] ),
        .I1(\io_r_data[31]_i_3_0 [21]),
        .I2(\io_r_data[31]_i_3_1 [21]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[22]_i_2 
       (.I0(\io_r_data[22]_i_4_n_0 ),
        .I1(\io_r_data_reg[22] ),
        .I2(Q[22]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[22]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[22]_i_4 
       (.I0(\value_reg_n_0_[22] ),
        .I1(\io_r_data[31]_i_3_0 [22]),
        .I2(\io_r_data[31]_i_3_1 [22]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[23]_i_2 
       (.I0(\io_r_data[23]_i_4_n_0 ),
        .I1(\io_r_data_reg[23] ),
        .I2(Q[23]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[23]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[23]_i_4 
       (.I0(\value_reg_n_0_[23] ),
        .I1(\io_r_data[31]_i_3_0 [23]),
        .I2(\io_r_data[31]_i_3_1 [23]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[24]_i_2 
       (.I0(\io_r_data[24]_i_4_n_0 ),
        .I1(\io_r_data_reg[24] ),
        .I2(Q[24]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[24]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[24]_i_4 
       (.I0(\value_reg_n_0_[24] ),
        .I1(\io_r_data[31]_i_3_0 [24]),
        .I2(\io_r_data[31]_i_3_1 [24]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[25]_i_2 
       (.I0(\io_r_data[25]_i_4_n_0 ),
        .I1(\io_r_data_reg[25] ),
        .I2(Q[25]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[25]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[25]_i_4 
       (.I0(\value_reg_n_0_[25] ),
        .I1(\io_r_data[31]_i_3_0 [25]),
        .I2(\io_r_data[31]_i_3_1 [25]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[26]_i_2 
       (.I0(\io_r_data[26]_i_4_n_0 ),
        .I1(\io_r_data_reg[26] ),
        .I2(Q[26]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[26]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[26]_i_4 
       (.I0(\value_reg_n_0_[26] ),
        .I1(\io_r_data[31]_i_3_0 [26]),
        .I2(\io_r_data[31]_i_3_1 [26]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[27]_i_2 
       (.I0(\io_r_data[27]_i_4_n_0 ),
        .I1(\io_r_data_reg[27] ),
        .I2(Q[27]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[27]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[27]_i_4 
       (.I0(\value_reg_n_0_[27] ),
        .I1(\io_r_data[31]_i_3_0 [27]),
        .I2(\io_r_data[31]_i_3_1 [27]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[28]_i_2 
       (.I0(\io_r_data[28]_i_4_n_0 ),
        .I1(\io_r_data_reg[28] ),
        .I2(Q[28]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[28]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[28]_i_4 
       (.I0(\value_reg_n_0_[28] ),
        .I1(\io_r_data[31]_i_3_0 [28]),
        .I2(\io_r_data[31]_i_3_1 [28]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[29]_i_2 
       (.I0(\io_r_data[29]_i_4_n_0 ),
        .I1(\io_r_data_reg[29] ),
        .I2(Q[29]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[29]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[29]_i_4 
       (.I0(\value_reg_n_0_[29] ),
        .I1(\io_r_data[31]_i_3_0 [29]),
        .I2(\io_r_data[31]_i_3_1 [29]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[2]_i_2 
       (.I0(\io_r_data[2]_i_4_n_0 ),
        .I1(\io_r_data_reg[2] ),
        .I2(Q[2]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[2]_i_4 
       (.I0(\value_reg_n_0_[2] ),
        .I1(\io_r_data[31]_i_3_0 [2]),
        .I2(\io_r_data[31]_i_3_1 [2]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[30]_i_2 
       (.I0(\io_r_data[30]_i_4_n_0 ),
        .I1(\io_r_data_reg[30] ),
        .I2(Q[30]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[30]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[30]_i_4 
       (.I0(\value_reg_n_0_[30] ),
        .I1(\io_r_data[31]_i_3_0 [30]),
        .I2(\io_r_data[31]_i_3_1 [30]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[31]_i_3 
       (.I0(\io_r_data[31]_i_5_n_0 ),
        .I1(\io_r_data_reg[31] ),
        .I2(Q[31]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[31]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[31]_i_5 
       (.I0(\value_reg_n_0_[31] ),
        .I1(\io_r_data[31]_i_3_0 [31]),
        .I2(\io_r_data[31]_i_3_1 [31]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[3]_i_2 
       (.I0(\io_r_data[3]_i_4_n_0 ),
        .I1(\io_r_data_reg[3] ),
        .I2(Q[3]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[3]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[3]_i_4 
       (.I0(\value_reg_n_0_[3] ),
        .I1(\io_r_data[31]_i_3_0 [3]),
        .I2(\io_r_data[31]_i_3_1 [3]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[4]_i_2 
       (.I0(\io_r_data[4]_i_4_n_0 ),
        .I1(\io_r_data_reg[4] ),
        .I2(Q[4]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[4]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[4]_i_4 
       (.I0(\value_reg_n_0_[4] ),
        .I1(\io_r_data[31]_i_3_0 [4]),
        .I2(\io_r_data[31]_i_3_1 [4]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[5]_i_2 
       (.I0(\io_r_data[5]_i_4_n_0 ),
        .I1(\io_r_data_reg[5] ),
        .I2(Q[5]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[5]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[5]_i_4 
       (.I0(\value_reg_n_0_[5] ),
        .I1(\io_r_data[31]_i_3_0 [5]),
        .I2(\io_r_data[31]_i_3_1 [5]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[6]_i_2 
       (.I0(\io_r_data[6]_i_4_n_0 ),
        .I1(\io_r_data_reg[6] ),
        .I2(Q[6]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[6]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[6]_i_4 
       (.I0(\value_reg_n_0_[6] ),
        .I1(\io_r_data[31]_i_3_0 [6]),
        .I2(\io_r_data[31]_i_3_1 [6]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[7]_i_2 
       (.I0(\io_r_data[7]_i_4_n_0 ),
        .I1(\io_r_data_reg[7] ),
        .I2(Q[7]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[7]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[7]_i_4 
       (.I0(\value_reg_n_0_[7] ),
        .I1(\io_r_data[31]_i_3_0 [7]),
        .I2(\io_r_data[31]_i_3_1 [7]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[8]_i_2 
       (.I0(\io_r_data[8]_i_4_n_0 ),
        .I1(\io_r_data_reg[8] ),
        .I2(Q[8]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[8]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[8]_i_4 
       (.I0(\value_reg_n_0_[8] ),
        .I1(\io_r_data[31]_i_3_0 [8]),
        .I2(\io_r_data[31]_i_3_1 [8]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACC0000AACC00)) 
    \io_r_data[9]_i_2 
       (.I0(\io_r_data[9]_i_4_n_0 ),
        .I1(\io_r_data_reg[9] ),
        .I2(Q[9]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data_reg[0]_0 [3]),
        .I5(\io_r_data_reg[31]_0 ),
        .O(StatusReg__353[9]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \io_r_data[9]_i_4 
       (.I0(\value_reg_n_0_[9] ),
        .I1(\io_r_data[31]_i_3_0 [9]),
        .I2(\io_r_data[31]_i_3_1 [9]),
        .I3(\io_r_data_reg[0]_0 [0]),
        .I4(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[9]_i_4_n_0 ));
  MUXF7 \io_r_data_reg[0]_i_1 
       (.I0(StatusReg__353[0]),
        .I1(CtlReg[0]),
        .O(\fc_raddr_reg[4] [0]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[10]_i_1 
       (.I0(StatusReg__353[10]),
        .I1(CtlReg[10]),
        .O(\fc_raddr_reg[4] [10]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[11]_i_1 
       (.I0(StatusReg__353[11]),
        .I1(CtlReg[11]),
        .O(\fc_raddr_reg[4] [11]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[12]_i_1 
       (.I0(StatusReg__353[12]),
        .I1(CtlReg[12]),
        .O(\fc_raddr_reg[4] [12]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[13]_i_1 
       (.I0(StatusReg__353[13]),
        .I1(CtlReg[13]),
        .O(\fc_raddr_reg[4] [13]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[14]_i_1 
       (.I0(StatusReg__353[14]),
        .I1(CtlReg[14]),
        .O(\fc_raddr_reg[4] [14]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[15]_i_1 
       (.I0(StatusReg__353[15]),
        .I1(CtlReg[15]),
        .O(\fc_raddr_reg[4] [15]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[16]_i_1 
       (.I0(StatusReg__353[16]),
        .I1(CtlReg[16]),
        .O(\fc_raddr_reg[4] [16]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[17]_i_1 
       (.I0(StatusReg__353[17]),
        .I1(CtlReg[17]),
        .O(\fc_raddr_reg[4] [17]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[18]_i_1 
       (.I0(StatusReg__353[18]),
        .I1(CtlReg[18]),
        .O(\fc_raddr_reg[4] [18]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[19]_i_1 
       (.I0(StatusReg__353[19]),
        .I1(CtlReg[19]),
        .O(\fc_raddr_reg[4] [19]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[1]_i_1 
       (.I0(StatusReg__353[1]),
        .I1(CtlReg[1]),
        .O(\fc_raddr_reg[4] [1]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[20]_i_1 
       (.I0(StatusReg__353[20]),
        .I1(CtlReg[20]),
        .O(\fc_raddr_reg[4] [20]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[21]_i_1 
       (.I0(StatusReg__353[21]),
        .I1(CtlReg[21]),
        .O(\fc_raddr_reg[4] [21]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[22]_i_1 
       (.I0(StatusReg__353[22]),
        .I1(CtlReg[22]),
        .O(\fc_raddr_reg[4] [22]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[23]_i_1 
       (.I0(StatusReg__353[23]),
        .I1(CtlReg[23]),
        .O(\fc_raddr_reg[4] [23]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[24]_i_1 
       (.I0(StatusReg__353[24]),
        .I1(CtlReg[24]),
        .O(\fc_raddr_reg[4] [24]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[25]_i_1 
       (.I0(StatusReg__353[25]),
        .I1(CtlReg[25]),
        .O(\fc_raddr_reg[4] [25]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[26]_i_1 
       (.I0(StatusReg__353[26]),
        .I1(CtlReg[26]),
        .O(\fc_raddr_reg[4] [26]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[27]_i_1 
       (.I0(StatusReg__353[27]),
        .I1(CtlReg[27]),
        .O(\fc_raddr_reg[4] [27]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[28]_i_1 
       (.I0(StatusReg__353[28]),
        .I1(CtlReg[28]),
        .O(\fc_raddr_reg[4] [28]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[29]_i_1 
       (.I0(StatusReg__353[29]),
        .I1(CtlReg[29]),
        .O(\fc_raddr_reg[4] [29]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[2]_i_1 
       (.I0(StatusReg__353[2]),
        .I1(CtlReg[2]),
        .O(\fc_raddr_reg[4] [2]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[30]_i_1 
       (.I0(StatusReg__353[30]),
        .I1(CtlReg[30]),
        .O(\fc_raddr_reg[4] [30]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[31]_i_1 
       (.I0(StatusReg__353[31]),
        .I1(CtlReg[31]),
        .O(\fc_raddr_reg[4] [31]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[3]_i_1 
       (.I0(StatusReg__353[3]),
        .I1(CtlReg[3]),
        .O(\fc_raddr_reg[4] [3]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[4]_i_1 
       (.I0(StatusReg__353[4]),
        .I1(CtlReg[4]),
        .O(\fc_raddr_reg[4] [4]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[5]_i_1 
       (.I0(StatusReg__353[5]),
        .I1(CtlReg[5]),
        .O(\fc_raddr_reg[4] [5]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[6]_i_1 
       (.I0(StatusReg__353[6]),
        .I1(CtlReg[6]),
        .O(\fc_raddr_reg[4] [6]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[7]_i_1 
       (.I0(StatusReg__353[7]),
        .I1(CtlReg[7]),
        .O(\fc_raddr_reg[4] [7]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[8]_i_1 
       (.I0(StatusReg__353[8]),
        .I1(CtlReg[8]),
        .O(\fc_raddr_reg[4] [8]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[9]_i_1 
       (.I0(StatusReg__353[9]),
        .I1(CtlReg[9]),
        .O(\fc_raddr_reg[4] [9]),
        .S(\io_r_data_reg[0] ));
  FDRE \value_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(\value_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \value_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[10]),
        .Q(\value_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \value_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[11]),
        .Q(\value_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \value_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[12]),
        .Q(\value_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \value_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[13]),
        .Q(\value_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \value_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[14]),
        .Q(\value_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \value_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[15]),
        .Q(\value_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \value_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[16]),
        .Q(\value_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \value_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[17]),
        .Q(\value_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \value_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[18]),
        .Q(\value_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \value_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[19]),
        .Q(\value_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \value_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[1]),
        .Q(\value_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \value_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[20]),
        .Q(\value_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \value_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[21]),
        .Q(\value_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \value_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[22]),
        .Q(\value_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \value_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[23]),
        .Q(\value_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \value_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[24]),
        .Q(\value_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \value_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[25]),
        .Q(\value_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \value_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[26]),
        .Q(\value_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \value_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[27]),
        .Q(\value_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \value_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[28]),
        .Q(\value_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \value_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[29]),
        .Q(\value_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \value_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[2]),
        .Q(\value_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \value_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[30]),
        .Q(\value_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \value_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[31]),
        .Q(\value_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \value_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[3]),
        .Q(\value_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \value_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[4]),
        .Q(\value_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \value_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[5]),
        .Q(\value_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \value_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[6]),
        .Q(\value_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \value_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[7]),
        .Q(\value_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \value_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[8]),
        .Q(\value_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \value_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[9]),
        .Q(\value_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_counter" *) 
module tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_1
   (D,
    Q,
    clear,
    \counter_reg[0]_0 ,
    fc_L1A,
    S,
    s00_axi_aclk);
  output [0:0]D;
  output [31:0]Q;
  input clear;
  input \counter_reg[0]_0 ;
  input fc_L1A;
  input [0:0]S;
  input s00_axi_aclk;

  wire [0:0]D;
  wire [31:0]Q;
  wire [0:0]S;
  wire clear;
  wire [31:1]counter_reg;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_10 ;
  wire \counter_reg[0]_i_2_n_11 ;
  wire \counter_reg[0]_i_2_n_12 ;
  wire \counter_reg[0]_i_2_n_13 ;
  wire \counter_reg[0]_i_2_n_14 ;
  wire \counter_reg[0]_i_2_n_15 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[0]_i_2_n_8 ;
  wire \counter_reg[0]_i_2_n_9 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_10 ;
  wire \counter_reg[16]_i_1_n_11 ;
  wire \counter_reg[16]_i_1_n_12 ;
  wire \counter_reg[16]_i_1_n_13 ;
  wire \counter_reg[16]_i_1_n_14 ;
  wire \counter_reg[16]_i_1_n_15 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_8 ;
  wire \counter_reg[16]_i_1_n_9 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_10 ;
  wire \counter_reg[24]_i_1_n_11 ;
  wire \counter_reg[24]_i_1_n_12 ;
  wire \counter_reg[24]_i_1_n_13 ;
  wire \counter_reg[24]_i_1_n_14 ;
  wire \counter_reg[24]_i_1_n_15 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_8 ;
  wire \counter_reg[24]_i_1_n_9 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_10 ;
  wire \counter_reg[8]_i_1_n_11 ;
  wire \counter_reg[8]_i_1_n_12 ;
  wire \counter_reg[8]_i_1_n_13 ;
  wire \counter_reg[8]_i_1_n_14 ;
  wire \counter_reg[8]_i_1_n_15 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_8 ;
  wire \counter_reg[8]_i_1_n_9 ;
  wire fc_L1A;
  wire s00_axi_aclk;
  wire [7:7]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;

  FDRE \counter_reg[0] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 ,\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fc_L1A}),
        .O({\counter_reg[0]_i_2_n_8 ,\counter_reg[0]_i_2_n_9 ,\counter_reg[0]_i_2_n_10 ,\counter_reg[0]_i_2_n_11 ,\counter_reg[0]_i_2_n_12 ,\counter_reg[0]_i_2_n_13 ,\counter_reg[0]_i_2_n_14 ,\counter_reg[0]_i_2_n_15 }),
        .S({counter_reg[7:1],S}));
  FDRE \counter_reg[10] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_15 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY8 \counter_reg[16]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 ,\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_8 ,\counter_reg[16]_i_1_n_9 ,\counter_reg[16]_i_1_n_10 ,\counter_reg[16]_i_1_n_11 ,\counter_reg[16]_i_1_n_12 ,\counter_reg[16]_i_1_n_13 ,\counter_reg[16]_i_1_n_14 ,\counter_reg[16]_i_1_n_15 }),
        .S(counter_reg[23:16]));
  FDRE \counter_reg[17] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_15 ),
        .Q(counter_reg[24]),
        .R(clear));
  CARRY8 \counter_reg[24]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [7],\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 ,\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_8 ,\counter_reg[24]_i_1_n_9 ,\counter_reg[24]_i_1_n_10 ,\counter_reg[24]_i_1_n_11 ,\counter_reg[24]_i_1_n_12 ,\counter_reg[24]_i_1_n_13 ,\counter_reg[24]_i_1_n_14 ,\counter_reg[24]_i_1_n_15 }),
        .S(counter_reg[31:24]));
  FDRE \counter_reg[25] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_15 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY8 \counter_reg[8]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 ,\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_8 ,\counter_reg[8]_i_1_n_9 ,\counter_reg[8]_i_1_n_10 ,\counter_reg[8]_i_1_n_11 ,\counter_reg[8]_i_1_n_12 ,\counter_reg[8]_i_1_n_13 ,\counter_reg[8]_i_1_n_14 ,\counter_reg[8]_i_1_n_15 }),
        .S(counter_reg[15:8]));
  FDRE \counter_reg[9] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_14 ),
        .Q(counter_reg[9]),
        .R(clear));
  FDRE \value_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \value_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \value_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \value_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \value_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \value_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \value_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \value_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \value_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \value_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \value_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \value_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \value_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \value_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \value_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \value_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \value_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \value_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \value_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \value_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \value_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \value_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \value_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \value_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \value_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \value_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \value_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \value_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \value_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \value_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \value_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \value_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_counter" *) 
module tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_2
   (D,
    Q,
    clear,
    \counter_reg[31]_0 ,
    fc_LinkReset,
    S,
    s00_axi_aclk);
  output [0:0]D;
  output [31:0]Q;
  input clear;
  input \counter_reg[31]_0 ;
  input fc_LinkReset;
  input [0:0]S;
  input s00_axi_aclk;

  wire [0:0]D;
  wire [31:0]Q;
  wire [0:0]S;
  wire clear;
  wire [31:1]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_10 ;
  wire \counter_reg[0]_i_1_n_11 ;
  wire \counter_reg[0]_i_1_n_12 ;
  wire \counter_reg[0]_i_1_n_13 ;
  wire \counter_reg[0]_i_1_n_14 ;
  wire \counter_reg[0]_i_1_n_15 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[0]_i_1_n_8 ;
  wire \counter_reg[0]_i_1_n_9 ;
  wire \counter_reg[16]_i_1__0_n_0 ;
  wire \counter_reg[16]_i_1__0_n_1 ;
  wire \counter_reg[16]_i_1__0_n_10 ;
  wire \counter_reg[16]_i_1__0_n_11 ;
  wire \counter_reg[16]_i_1__0_n_12 ;
  wire \counter_reg[16]_i_1__0_n_13 ;
  wire \counter_reg[16]_i_1__0_n_14 ;
  wire \counter_reg[16]_i_1__0_n_15 ;
  wire \counter_reg[16]_i_1__0_n_2 ;
  wire \counter_reg[16]_i_1__0_n_3 ;
  wire \counter_reg[16]_i_1__0_n_4 ;
  wire \counter_reg[16]_i_1__0_n_5 ;
  wire \counter_reg[16]_i_1__0_n_6 ;
  wire \counter_reg[16]_i_1__0_n_7 ;
  wire \counter_reg[16]_i_1__0_n_8 ;
  wire \counter_reg[16]_i_1__0_n_9 ;
  wire \counter_reg[24]_i_1__0_n_1 ;
  wire \counter_reg[24]_i_1__0_n_10 ;
  wire \counter_reg[24]_i_1__0_n_11 ;
  wire \counter_reg[24]_i_1__0_n_12 ;
  wire \counter_reg[24]_i_1__0_n_13 ;
  wire \counter_reg[24]_i_1__0_n_14 ;
  wire \counter_reg[24]_i_1__0_n_15 ;
  wire \counter_reg[24]_i_1__0_n_2 ;
  wire \counter_reg[24]_i_1__0_n_3 ;
  wire \counter_reg[24]_i_1__0_n_4 ;
  wire \counter_reg[24]_i_1__0_n_5 ;
  wire \counter_reg[24]_i_1__0_n_6 ;
  wire \counter_reg[24]_i_1__0_n_7 ;
  wire \counter_reg[24]_i_1__0_n_8 ;
  wire \counter_reg[24]_i_1__0_n_9 ;
  wire \counter_reg[31]_0 ;
  wire \counter_reg[8]_i_1__0_n_0 ;
  wire \counter_reg[8]_i_1__0_n_1 ;
  wire \counter_reg[8]_i_1__0_n_10 ;
  wire \counter_reg[8]_i_1__0_n_11 ;
  wire \counter_reg[8]_i_1__0_n_12 ;
  wire \counter_reg[8]_i_1__0_n_13 ;
  wire \counter_reg[8]_i_1__0_n_14 ;
  wire \counter_reg[8]_i_1__0_n_15 ;
  wire \counter_reg[8]_i_1__0_n_2 ;
  wire \counter_reg[8]_i_1__0_n_3 ;
  wire \counter_reg[8]_i_1__0_n_4 ;
  wire \counter_reg[8]_i_1__0_n_5 ;
  wire \counter_reg[8]_i_1__0_n_6 ;
  wire \counter_reg[8]_i_1__0_n_7 ;
  wire \counter_reg[8]_i_1__0_n_8 ;
  wire \counter_reg[8]_i_1__0_n_9 ;
  wire fc_LinkReset;
  wire s00_axi_aclk;
  wire [7:7]\NLW_counter_reg[24]_i_1__0_CO_UNCONNECTED ;

  FDRE \counter_reg[0] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 ,\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fc_LinkReset}),
        .O({\counter_reg[0]_i_1_n_8 ,\counter_reg[0]_i_1_n_9 ,\counter_reg[0]_i_1_n_10 ,\counter_reg[0]_i_1_n_11 ,\counter_reg[0]_i_1_n_12 ,\counter_reg[0]_i_1_n_13 ,\counter_reg[0]_i_1_n_14 ,\counter_reg[0]_i_1_n_15 }),
        .S({counter_reg[7:1],S}));
  FDRE \counter_reg[10] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_15 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY8 \counter_reg[16]_i_1__0 
       (.CI(\counter_reg[8]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[16]_i_1__0_n_0 ,\counter_reg[16]_i_1__0_n_1 ,\counter_reg[16]_i_1__0_n_2 ,\counter_reg[16]_i_1__0_n_3 ,\counter_reg[16]_i_1__0_n_4 ,\counter_reg[16]_i_1__0_n_5 ,\counter_reg[16]_i_1__0_n_6 ,\counter_reg[16]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__0_n_8 ,\counter_reg[16]_i_1__0_n_9 ,\counter_reg[16]_i_1__0_n_10 ,\counter_reg[16]_i_1__0_n_11 ,\counter_reg[16]_i_1__0_n_12 ,\counter_reg[16]_i_1__0_n_13 ,\counter_reg[16]_i_1__0_n_14 ,\counter_reg[16]_i_1__0_n_15 }),
        .S(counter_reg[23:16]));
  FDRE \counter_reg[17] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_15 ),
        .Q(counter_reg[24]),
        .R(clear));
  CARRY8 \counter_reg[24]_i_1__0 
       (.CI(\counter_reg[16]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[24]_i_1__0_CO_UNCONNECTED [7],\counter_reg[24]_i_1__0_n_1 ,\counter_reg[24]_i_1__0_n_2 ,\counter_reg[24]_i_1__0_n_3 ,\counter_reg[24]_i_1__0_n_4 ,\counter_reg[24]_i_1__0_n_5 ,\counter_reg[24]_i_1__0_n_6 ,\counter_reg[24]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1__0_n_8 ,\counter_reg[24]_i_1__0_n_9 ,\counter_reg[24]_i_1__0_n_10 ,\counter_reg[24]_i_1__0_n_11 ,\counter_reg[24]_i_1__0_n_12 ,\counter_reg[24]_i_1__0_n_13 ,\counter_reg[24]_i_1__0_n_14 ,\counter_reg[24]_i_1__0_n_15 }),
        .S(counter_reg[31:24]));
  FDRE \counter_reg[25] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_15 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY8 \counter_reg[8]_i_1__0 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_1__0_n_0 ,\counter_reg[8]_i_1__0_n_1 ,\counter_reg[8]_i_1__0_n_2 ,\counter_reg[8]_i_1__0_n_3 ,\counter_reg[8]_i_1__0_n_4 ,\counter_reg[8]_i_1__0_n_5 ,\counter_reg[8]_i_1__0_n_6 ,\counter_reg[8]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__0_n_8 ,\counter_reg[8]_i_1__0_n_9 ,\counter_reg[8]_i_1__0_n_10 ,\counter_reg[8]_i_1__0_n_11 ,\counter_reg[8]_i_1__0_n_12 ,\counter_reg[8]_i_1__0_n_13 ,\counter_reg[8]_i_1__0_n_14 ,\counter_reg[8]_i_1__0_n_15 }),
        .S(counter_reg[15:8]));
  FDRE \counter_reg[9] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_14 ),
        .Q(counter_reg[9]),
        .R(clear));
  FDRE \value_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \value_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \value_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \value_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \value_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \value_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \value_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \value_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \value_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \value_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \value_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \value_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \value_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \value_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \value_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \value_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \value_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \value_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \value_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \value_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \value_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \value_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \value_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \value_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \value_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \value_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \value_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \value_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \value_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \value_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \value_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \value_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_counter" *) 
module tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_3
   (D,
    Q,
    clear,
    \counter_reg[0]_0 ,
    fc_OrbitCountReset_OrbitSync,
    S,
    s00_axi_aclk);
  output [0:0]D;
  output [31:0]Q;
  input clear;
  input \counter_reg[0]_0 ;
  input fc_OrbitCountReset_OrbitSync;
  input [0:0]S;
  input s00_axi_aclk;

  wire [0:0]D;
  wire [31:0]Q;
  wire [0:0]S;
  wire clear;
  wire [31:1]counter_reg;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_i_1__2_n_0 ;
  wire \counter_reg[0]_i_1__2_n_1 ;
  wire \counter_reg[0]_i_1__2_n_10 ;
  wire \counter_reg[0]_i_1__2_n_11 ;
  wire \counter_reg[0]_i_1__2_n_12 ;
  wire \counter_reg[0]_i_1__2_n_13 ;
  wire \counter_reg[0]_i_1__2_n_14 ;
  wire \counter_reg[0]_i_1__2_n_15 ;
  wire \counter_reg[0]_i_1__2_n_2 ;
  wire \counter_reg[0]_i_1__2_n_3 ;
  wire \counter_reg[0]_i_1__2_n_4 ;
  wire \counter_reg[0]_i_1__2_n_5 ;
  wire \counter_reg[0]_i_1__2_n_6 ;
  wire \counter_reg[0]_i_1__2_n_7 ;
  wire \counter_reg[0]_i_1__2_n_8 ;
  wire \counter_reg[0]_i_1__2_n_9 ;
  wire \counter_reg[16]_i_1__3_n_0 ;
  wire \counter_reg[16]_i_1__3_n_1 ;
  wire \counter_reg[16]_i_1__3_n_10 ;
  wire \counter_reg[16]_i_1__3_n_11 ;
  wire \counter_reg[16]_i_1__3_n_12 ;
  wire \counter_reg[16]_i_1__3_n_13 ;
  wire \counter_reg[16]_i_1__3_n_14 ;
  wire \counter_reg[16]_i_1__3_n_15 ;
  wire \counter_reg[16]_i_1__3_n_2 ;
  wire \counter_reg[16]_i_1__3_n_3 ;
  wire \counter_reg[16]_i_1__3_n_4 ;
  wire \counter_reg[16]_i_1__3_n_5 ;
  wire \counter_reg[16]_i_1__3_n_6 ;
  wire \counter_reg[16]_i_1__3_n_7 ;
  wire \counter_reg[16]_i_1__3_n_8 ;
  wire \counter_reg[16]_i_1__3_n_9 ;
  wire \counter_reg[24]_i_1__3_n_1 ;
  wire \counter_reg[24]_i_1__3_n_10 ;
  wire \counter_reg[24]_i_1__3_n_11 ;
  wire \counter_reg[24]_i_1__3_n_12 ;
  wire \counter_reg[24]_i_1__3_n_13 ;
  wire \counter_reg[24]_i_1__3_n_14 ;
  wire \counter_reg[24]_i_1__3_n_15 ;
  wire \counter_reg[24]_i_1__3_n_2 ;
  wire \counter_reg[24]_i_1__3_n_3 ;
  wire \counter_reg[24]_i_1__3_n_4 ;
  wire \counter_reg[24]_i_1__3_n_5 ;
  wire \counter_reg[24]_i_1__3_n_6 ;
  wire \counter_reg[24]_i_1__3_n_7 ;
  wire \counter_reg[24]_i_1__3_n_8 ;
  wire \counter_reg[24]_i_1__3_n_9 ;
  wire \counter_reg[8]_i_1__3_n_0 ;
  wire \counter_reg[8]_i_1__3_n_1 ;
  wire \counter_reg[8]_i_1__3_n_10 ;
  wire \counter_reg[8]_i_1__3_n_11 ;
  wire \counter_reg[8]_i_1__3_n_12 ;
  wire \counter_reg[8]_i_1__3_n_13 ;
  wire \counter_reg[8]_i_1__3_n_14 ;
  wire \counter_reg[8]_i_1__3_n_15 ;
  wire \counter_reg[8]_i_1__3_n_2 ;
  wire \counter_reg[8]_i_1__3_n_3 ;
  wire \counter_reg[8]_i_1__3_n_4 ;
  wire \counter_reg[8]_i_1__3_n_5 ;
  wire \counter_reg[8]_i_1__3_n_6 ;
  wire \counter_reg[8]_i_1__3_n_7 ;
  wire \counter_reg[8]_i_1__3_n_8 ;
  wire \counter_reg[8]_i_1__3_n_9 ;
  wire fc_OrbitCountReset_OrbitSync;
  wire s00_axi_aclk;
  wire [7:7]\NLW_counter_reg[24]_i_1__3_CO_UNCONNECTED ;

  FDRE \counter_reg[0] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_1__2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1__2_n_0 ,\counter_reg[0]_i_1__2_n_1 ,\counter_reg[0]_i_1__2_n_2 ,\counter_reg[0]_i_1__2_n_3 ,\counter_reg[0]_i_1__2_n_4 ,\counter_reg[0]_i_1__2_n_5 ,\counter_reg[0]_i_1__2_n_6 ,\counter_reg[0]_i_1__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fc_OrbitCountReset_OrbitSync}),
        .O({\counter_reg[0]_i_1__2_n_8 ,\counter_reg[0]_i_1__2_n_9 ,\counter_reg[0]_i_1__2_n_10 ,\counter_reg[0]_i_1__2_n_11 ,\counter_reg[0]_i_1__2_n_12 ,\counter_reg[0]_i_1__2_n_13 ,\counter_reg[0]_i_1__2_n_14 ,\counter_reg[0]_i_1__2_n_15 }),
        .S({counter_reg[7:1],S}));
  FDRE \counter_reg[10] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_15 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY8 \counter_reg[16]_i_1__3 
       (.CI(\counter_reg[8]_i_1__3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[16]_i_1__3_n_0 ,\counter_reg[16]_i_1__3_n_1 ,\counter_reg[16]_i_1__3_n_2 ,\counter_reg[16]_i_1__3_n_3 ,\counter_reg[16]_i_1__3_n_4 ,\counter_reg[16]_i_1__3_n_5 ,\counter_reg[16]_i_1__3_n_6 ,\counter_reg[16]_i_1__3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__3_n_8 ,\counter_reg[16]_i_1__3_n_9 ,\counter_reg[16]_i_1__3_n_10 ,\counter_reg[16]_i_1__3_n_11 ,\counter_reg[16]_i_1__3_n_12 ,\counter_reg[16]_i_1__3_n_13 ,\counter_reg[16]_i_1__3_n_14 ,\counter_reg[16]_i_1__3_n_15 }),
        .S(counter_reg[23:16]));
  FDRE \counter_reg[17] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_15 ),
        .Q(counter_reg[24]),
        .R(clear));
  CARRY8 \counter_reg[24]_i_1__3 
       (.CI(\counter_reg[16]_i_1__3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[24]_i_1__3_CO_UNCONNECTED [7],\counter_reg[24]_i_1__3_n_1 ,\counter_reg[24]_i_1__3_n_2 ,\counter_reg[24]_i_1__3_n_3 ,\counter_reg[24]_i_1__3_n_4 ,\counter_reg[24]_i_1__3_n_5 ,\counter_reg[24]_i_1__3_n_6 ,\counter_reg[24]_i_1__3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1__3_n_8 ,\counter_reg[24]_i_1__3_n_9 ,\counter_reg[24]_i_1__3_n_10 ,\counter_reg[24]_i_1__3_n_11 ,\counter_reg[24]_i_1__3_n_12 ,\counter_reg[24]_i_1__3_n_13 ,\counter_reg[24]_i_1__3_n_14 ,\counter_reg[24]_i_1__3_n_15 }),
        .S(counter_reg[31:24]));
  FDRE \counter_reg[25] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_15 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY8 \counter_reg[8]_i_1__3 
       (.CI(\counter_reg[0]_i_1__2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_1__3_n_0 ,\counter_reg[8]_i_1__3_n_1 ,\counter_reg[8]_i_1__3_n_2 ,\counter_reg[8]_i_1__3_n_3 ,\counter_reg[8]_i_1__3_n_4 ,\counter_reg[8]_i_1__3_n_5 ,\counter_reg[8]_i_1__3_n_6 ,\counter_reg[8]_i_1__3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__3_n_8 ,\counter_reg[8]_i_1__3_n_9 ,\counter_reg[8]_i_1__3_n_10 ,\counter_reg[8]_i_1__3_n_11 ,\counter_reg[8]_i_1__3_n_12 ,\counter_reg[8]_i_1__3_n_13 ,\counter_reg[8]_i_1__3_n_14 ,\counter_reg[8]_i_1__3_n_15 }),
        .S(counter_reg[15:8]));
  FDRE \counter_reg[9] 
       (.C(\counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_14 ),
        .Q(counter_reg[9]),
        .R(clear));
  FDRE \value_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \value_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \value_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \value_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \value_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \value_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \value_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \value_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \value_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \value_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \value_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \value_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \value_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \value_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \value_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \value_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \value_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \value_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \value_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \value_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \value_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \value_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \value_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \value_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \value_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \value_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \value_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \value_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \value_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \value_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \value_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \value_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_counter" *) 
module tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_4
   (D,
    clear,
    \value_reg[31]_0 ,
    \value_reg[30]_0 ,
    \value_reg[29]_0 ,
    \value_reg[28]_0 ,
    \value_reg[27]_0 ,
    \value_reg[26]_0 ,
    \value_reg[25]_0 ,
    \value_reg[24]_0 ,
    \value_reg[23]_0 ,
    \value_reg[22]_0 ,
    \value_reg[21]_0 ,
    \value_reg[20]_0 ,
    \value_reg[19]_0 ,
    \value_reg[18]_0 ,
    \value_reg[17]_0 ,
    \value_reg[16]_0 ,
    \value_reg[15]_0 ,
    \value_reg[14]_0 ,
    \value_reg[13]_0 ,
    \value_reg[12]_0 ,
    \value_reg[11]_0 ,
    \value_reg[10]_0 ,
    \value_reg[9]_0 ,
    \value_reg[8]_0 ,
    \value_reg[7]_0 ,
    \value_reg[6]_0 ,
    \value_reg[5]_0 ,
    \value_reg[4]_0 ,
    \value_reg[3]_0 ,
    \value_reg[2]_0 ,
    \value_reg[1]_0 ,
    \value_reg[0]_0 ,
    \counter_reg[31]_0 ,
    Q,
    \io_r_data[31]_i_3 ,
    \io_r_data[31]_i_3_0 ,
    fc_OrbitSync,
    S,
    reset_counters_40_n,
    s00_axi_aclk);
  output [0:0]D;
  output clear;
  output \value_reg[31]_0 ;
  output \value_reg[30]_0 ;
  output \value_reg[29]_0 ;
  output \value_reg[28]_0 ;
  output \value_reg[27]_0 ;
  output \value_reg[26]_0 ;
  output \value_reg[25]_0 ;
  output \value_reg[24]_0 ;
  output \value_reg[23]_0 ;
  output \value_reg[22]_0 ;
  output \value_reg[21]_0 ;
  output \value_reg[20]_0 ;
  output \value_reg[19]_0 ;
  output \value_reg[18]_0 ;
  output \value_reg[17]_0 ;
  output \value_reg[16]_0 ;
  output \value_reg[15]_0 ;
  output \value_reg[14]_0 ;
  output \value_reg[13]_0 ;
  output \value_reg[12]_0 ;
  output \value_reg[11]_0 ;
  output \value_reg[10]_0 ;
  output \value_reg[9]_0 ;
  output \value_reg[8]_0 ;
  output \value_reg[7]_0 ;
  output \value_reg[6]_0 ;
  output \value_reg[5]_0 ;
  output \value_reg[4]_0 ;
  output \value_reg[3]_0 ;
  output \value_reg[2]_0 ;
  output \value_reg[1]_0 ;
  output \value_reg[0]_0 ;
  input \counter_reg[31]_0 ;
  input [31:0]Q;
  input [31:0]\io_r_data[31]_i_3 ;
  input [1:0]\io_r_data[31]_i_3_0 ;
  input fc_OrbitSync;
  input [0:0]S;
  input reset_counters_40_n;
  input s00_axi_aclk;

  wire [0:0]D;
  wire [31:0]Q;
  wire [0:0]S;
  wire clear;
  wire [31:1]counter_reg;
  wire \counter_reg[0]_i_1__3_n_0 ;
  wire \counter_reg[0]_i_1__3_n_1 ;
  wire \counter_reg[0]_i_1__3_n_10 ;
  wire \counter_reg[0]_i_1__3_n_11 ;
  wire \counter_reg[0]_i_1__3_n_12 ;
  wire \counter_reg[0]_i_1__3_n_13 ;
  wire \counter_reg[0]_i_1__3_n_14 ;
  wire \counter_reg[0]_i_1__3_n_15 ;
  wire \counter_reg[0]_i_1__3_n_2 ;
  wire \counter_reg[0]_i_1__3_n_3 ;
  wire \counter_reg[0]_i_1__3_n_4 ;
  wire \counter_reg[0]_i_1__3_n_5 ;
  wire \counter_reg[0]_i_1__3_n_6 ;
  wire \counter_reg[0]_i_1__3_n_7 ;
  wire \counter_reg[0]_i_1__3_n_8 ;
  wire \counter_reg[0]_i_1__3_n_9 ;
  wire \counter_reg[16]_i_1__4_n_0 ;
  wire \counter_reg[16]_i_1__4_n_1 ;
  wire \counter_reg[16]_i_1__4_n_10 ;
  wire \counter_reg[16]_i_1__4_n_11 ;
  wire \counter_reg[16]_i_1__4_n_12 ;
  wire \counter_reg[16]_i_1__4_n_13 ;
  wire \counter_reg[16]_i_1__4_n_14 ;
  wire \counter_reg[16]_i_1__4_n_15 ;
  wire \counter_reg[16]_i_1__4_n_2 ;
  wire \counter_reg[16]_i_1__4_n_3 ;
  wire \counter_reg[16]_i_1__4_n_4 ;
  wire \counter_reg[16]_i_1__4_n_5 ;
  wire \counter_reg[16]_i_1__4_n_6 ;
  wire \counter_reg[16]_i_1__4_n_7 ;
  wire \counter_reg[16]_i_1__4_n_8 ;
  wire \counter_reg[16]_i_1__4_n_9 ;
  wire \counter_reg[24]_i_1__4_n_1 ;
  wire \counter_reg[24]_i_1__4_n_10 ;
  wire \counter_reg[24]_i_1__4_n_11 ;
  wire \counter_reg[24]_i_1__4_n_12 ;
  wire \counter_reg[24]_i_1__4_n_13 ;
  wire \counter_reg[24]_i_1__4_n_14 ;
  wire \counter_reg[24]_i_1__4_n_15 ;
  wire \counter_reg[24]_i_1__4_n_2 ;
  wire \counter_reg[24]_i_1__4_n_3 ;
  wire \counter_reg[24]_i_1__4_n_4 ;
  wire \counter_reg[24]_i_1__4_n_5 ;
  wire \counter_reg[24]_i_1__4_n_6 ;
  wire \counter_reg[24]_i_1__4_n_7 ;
  wire \counter_reg[24]_i_1__4_n_8 ;
  wire \counter_reg[24]_i_1__4_n_9 ;
  wire \counter_reg[31]_0 ;
  wire \counter_reg[8]_i_1__4_n_0 ;
  wire \counter_reg[8]_i_1__4_n_1 ;
  wire \counter_reg[8]_i_1__4_n_10 ;
  wire \counter_reg[8]_i_1__4_n_11 ;
  wire \counter_reg[8]_i_1__4_n_12 ;
  wire \counter_reg[8]_i_1__4_n_13 ;
  wire \counter_reg[8]_i_1__4_n_14 ;
  wire \counter_reg[8]_i_1__4_n_15 ;
  wire \counter_reg[8]_i_1__4_n_2 ;
  wire \counter_reg[8]_i_1__4_n_3 ;
  wire \counter_reg[8]_i_1__4_n_4 ;
  wire \counter_reg[8]_i_1__4_n_5 ;
  wire \counter_reg[8]_i_1__4_n_6 ;
  wire \counter_reg[8]_i_1__4_n_7 ;
  wire \counter_reg[8]_i_1__4_n_8 ;
  wire \counter_reg[8]_i_1__4_n_9 ;
  wire fc_OrbitSync;
  wire [31:0]\io_r_data[31]_i_3 ;
  wire [1:0]\io_r_data[31]_i_3_0 ;
  wire reset_counters_40_n;
  wire s00_axi_aclk;
  wire [31:0]value;
  wire \value_reg[0]_0 ;
  wire \value_reg[10]_0 ;
  wire \value_reg[11]_0 ;
  wire \value_reg[12]_0 ;
  wire \value_reg[13]_0 ;
  wire \value_reg[14]_0 ;
  wire \value_reg[15]_0 ;
  wire \value_reg[16]_0 ;
  wire \value_reg[17]_0 ;
  wire \value_reg[18]_0 ;
  wire \value_reg[19]_0 ;
  wire \value_reg[1]_0 ;
  wire \value_reg[20]_0 ;
  wire \value_reg[21]_0 ;
  wire \value_reg[22]_0 ;
  wire \value_reg[23]_0 ;
  wire \value_reg[24]_0 ;
  wire \value_reg[25]_0 ;
  wire \value_reg[26]_0 ;
  wire \value_reg[27]_0 ;
  wire \value_reg[28]_0 ;
  wire \value_reg[29]_0 ;
  wire \value_reg[2]_0 ;
  wire \value_reg[30]_0 ;
  wire \value_reg[31]_0 ;
  wire \value_reg[3]_0 ;
  wire \value_reg[4]_0 ;
  wire \value_reg[5]_0 ;
  wire \value_reg[6]_0 ;
  wire \value_reg[7]_0 ;
  wire \value_reg[8]_0 ;
  wire \value_reg[9]_0 ;
  wire [7:7]\NLW_counter_reg[24]_i_1__4_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(reset_counters_40_n),
        .O(clear));
  FDRE \counter_reg[0] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_1__3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1__3_n_0 ,\counter_reg[0]_i_1__3_n_1 ,\counter_reg[0]_i_1__3_n_2 ,\counter_reg[0]_i_1__3_n_3 ,\counter_reg[0]_i_1__3_n_4 ,\counter_reg[0]_i_1__3_n_5 ,\counter_reg[0]_i_1__3_n_6 ,\counter_reg[0]_i_1__3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fc_OrbitSync}),
        .O({\counter_reg[0]_i_1__3_n_8 ,\counter_reg[0]_i_1__3_n_9 ,\counter_reg[0]_i_1__3_n_10 ,\counter_reg[0]_i_1__3_n_11 ,\counter_reg[0]_i_1__3_n_12 ,\counter_reg[0]_i_1__3_n_13 ,\counter_reg[0]_i_1__3_n_14 ,\counter_reg[0]_i_1__3_n_15 }),
        .S({counter_reg[7:1],S}));
  FDRE \counter_reg[10] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_15 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY8 \counter_reg[16]_i_1__4 
       (.CI(\counter_reg[8]_i_1__4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[16]_i_1__4_n_0 ,\counter_reg[16]_i_1__4_n_1 ,\counter_reg[16]_i_1__4_n_2 ,\counter_reg[16]_i_1__4_n_3 ,\counter_reg[16]_i_1__4_n_4 ,\counter_reg[16]_i_1__4_n_5 ,\counter_reg[16]_i_1__4_n_6 ,\counter_reg[16]_i_1__4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__4_n_8 ,\counter_reg[16]_i_1__4_n_9 ,\counter_reg[16]_i_1__4_n_10 ,\counter_reg[16]_i_1__4_n_11 ,\counter_reg[16]_i_1__4_n_12 ,\counter_reg[16]_i_1__4_n_13 ,\counter_reg[16]_i_1__4_n_14 ,\counter_reg[16]_i_1__4_n_15 }),
        .S(counter_reg[23:16]));
  FDRE \counter_reg[17] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_15 ),
        .Q(counter_reg[24]),
        .R(clear));
  CARRY8 \counter_reg[24]_i_1__4 
       (.CI(\counter_reg[16]_i_1__4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[24]_i_1__4_CO_UNCONNECTED [7],\counter_reg[24]_i_1__4_n_1 ,\counter_reg[24]_i_1__4_n_2 ,\counter_reg[24]_i_1__4_n_3 ,\counter_reg[24]_i_1__4_n_4 ,\counter_reg[24]_i_1__4_n_5 ,\counter_reg[24]_i_1__4_n_6 ,\counter_reg[24]_i_1__4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1__4_n_8 ,\counter_reg[24]_i_1__4_n_9 ,\counter_reg[24]_i_1__4_n_10 ,\counter_reg[24]_i_1__4_n_11 ,\counter_reg[24]_i_1__4_n_12 ,\counter_reg[24]_i_1__4_n_13 ,\counter_reg[24]_i_1__4_n_14 ,\counter_reg[24]_i_1__4_n_15 }),
        .S(counter_reg[31:24]));
  FDRE \counter_reg[25] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_15 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY8 \counter_reg[8]_i_1__4 
       (.CI(\counter_reg[0]_i_1__3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_1__4_n_0 ,\counter_reg[8]_i_1__4_n_1 ,\counter_reg[8]_i_1__4_n_2 ,\counter_reg[8]_i_1__4_n_3 ,\counter_reg[8]_i_1__4_n_4 ,\counter_reg[8]_i_1__4_n_5 ,\counter_reg[8]_i_1__4_n_6 ,\counter_reg[8]_i_1__4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__4_n_8 ,\counter_reg[8]_i_1__4_n_9 ,\counter_reg[8]_i_1__4_n_10 ,\counter_reg[8]_i_1__4_n_11 ,\counter_reg[8]_i_1__4_n_12 ,\counter_reg[8]_i_1__4_n_13 ,\counter_reg[8]_i_1__4_n_14 ,\counter_reg[8]_i_1__4_n_15 }),
        .S(counter_reg[15:8]));
  FDRE \counter_reg[9] 
       (.C(\counter_reg[31]_0 ),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_14 ),
        .Q(counter_reg[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[0]_i_5 
       (.I0(value[0]),
        .I1(Q[0]),
        .I2(\io_r_data[31]_i_3 [0]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[10]_i_5 
       (.I0(value[10]),
        .I1(Q[10]),
        .I2(\io_r_data[31]_i_3 [10]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[11]_i_5 
       (.I0(value[11]),
        .I1(Q[11]),
        .I2(\io_r_data[31]_i_3 [11]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[11]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[12]_i_5 
       (.I0(value[12]),
        .I1(Q[12]),
        .I2(\io_r_data[31]_i_3 [12]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[12]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[13]_i_5 
       (.I0(value[13]),
        .I1(Q[13]),
        .I2(\io_r_data[31]_i_3 [13]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[14]_i_5 
       (.I0(value[14]),
        .I1(Q[14]),
        .I2(\io_r_data[31]_i_3 [14]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[14]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[15]_i_5 
       (.I0(value[15]),
        .I1(Q[15]),
        .I2(\io_r_data[31]_i_3 [15]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[16]_i_5 
       (.I0(value[16]),
        .I1(Q[16]),
        .I2(\io_r_data[31]_i_3 [16]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[16]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[17]_i_5 
       (.I0(value[17]),
        .I1(Q[17]),
        .I2(\io_r_data[31]_i_3 [17]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[17]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[18]_i_5 
       (.I0(value[18]),
        .I1(Q[18]),
        .I2(\io_r_data[31]_i_3 [18]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[18]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[19]_i_5 
       (.I0(value[19]),
        .I1(Q[19]),
        .I2(\io_r_data[31]_i_3 [19]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[19]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[1]_i_5 
       (.I0(value[1]),
        .I1(Q[1]),
        .I2(\io_r_data[31]_i_3 [1]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[20]_i_5 
       (.I0(value[20]),
        .I1(Q[20]),
        .I2(\io_r_data[31]_i_3 [20]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[20]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[21]_i_5 
       (.I0(value[21]),
        .I1(Q[21]),
        .I2(\io_r_data[31]_i_3 [21]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[21]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[22]_i_5 
       (.I0(value[22]),
        .I1(Q[22]),
        .I2(\io_r_data[31]_i_3 [22]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[22]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[23]_i_5 
       (.I0(value[23]),
        .I1(Q[23]),
        .I2(\io_r_data[31]_i_3 [23]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[23]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[24]_i_5 
       (.I0(value[24]),
        .I1(Q[24]),
        .I2(\io_r_data[31]_i_3 [24]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[24]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[25]_i_5 
       (.I0(value[25]),
        .I1(Q[25]),
        .I2(\io_r_data[31]_i_3 [25]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[25]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[26]_i_5 
       (.I0(value[26]),
        .I1(Q[26]),
        .I2(\io_r_data[31]_i_3 [26]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[26]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[27]_i_5 
       (.I0(value[27]),
        .I1(Q[27]),
        .I2(\io_r_data[31]_i_3 [27]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[27]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[28]_i_5 
       (.I0(value[28]),
        .I1(Q[28]),
        .I2(\io_r_data[31]_i_3 [28]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[28]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[29]_i_5 
       (.I0(value[29]),
        .I1(Q[29]),
        .I2(\io_r_data[31]_i_3 [29]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[29]_0 ));
  LUT5 #(
    .INIT(32'hCAFFCA0F)) 
    \io_r_data[2]_i_5 
       (.I0(value[2]),
        .I1(\io_r_data[31]_i_3 [2]),
        .I2(\io_r_data[31]_i_3_0 [0]),
        .I3(\io_r_data[31]_i_3_0 [1]),
        .I4(Q[2]),
        .O(\value_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[30]_i_5 
       (.I0(value[30]),
        .I1(Q[30]),
        .I2(\io_r_data[31]_i_3 [30]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[30]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[31]_i_6 
       (.I0(value[31]),
        .I1(Q[31]),
        .I2(\io_r_data[31]_i_3 [31]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[31]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[3]_i_5 
       (.I0(value[3]),
        .I1(Q[3]),
        .I2(\io_r_data[31]_i_3 [3]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[4]_i_5 
       (.I0(value[4]),
        .I1(Q[4]),
        .I2(\io_r_data[31]_i_3 [4]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[5]_i_5 
       (.I0(value[5]),
        .I1(Q[5]),
        .I2(\io_r_data[31]_i_3 [5]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[6]_i_5 
       (.I0(value[6]),
        .I1(Q[6]),
        .I2(\io_r_data[31]_i_3 [6]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[7]_i_5 
       (.I0(value[7]),
        .I1(Q[7]),
        .I2(\io_r_data[31]_i_3 [7]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[8]_i_5 
       (.I0(value[8]),
        .I1(Q[8]),
        .I2(\io_r_data[31]_i_3 [8]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \io_r_data[9]_i_5 
       (.I0(value[9]),
        .I1(Q[9]),
        .I2(\io_r_data[31]_i_3 [9]),
        .I3(\io_r_data[31]_i_3_0 [0]),
        .I4(\io_r_data[31]_i_3_0 [1]),
        .O(\value_reg[9]_0 ));
  FDRE \value_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(value[0]),
        .R(1'b0));
  FDRE \value_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[10]),
        .Q(value[10]),
        .R(1'b0));
  FDRE \value_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[11]),
        .Q(value[11]),
        .R(1'b0));
  FDRE \value_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[12]),
        .Q(value[12]),
        .R(1'b0));
  FDRE \value_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[13]),
        .Q(value[13]),
        .R(1'b0));
  FDRE \value_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[14]),
        .Q(value[14]),
        .R(1'b0));
  FDRE \value_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[15]),
        .Q(value[15]),
        .R(1'b0));
  FDRE \value_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[16]),
        .Q(value[16]),
        .R(1'b0));
  FDRE \value_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[17]),
        .Q(value[17]),
        .R(1'b0));
  FDRE \value_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[18]),
        .Q(value[18]),
        .R(1'b0));
  FDRE \value_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[19]),
        .Q(value[19]),
        .R(1'b0));
  FDRE \value_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[1]),
        .Q(value[1]),
        .R(1'b0));
  FDRE \value_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[20]),
        .Q(value[20]),
        .R(1'b0));
  FDRE \value_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[21]),
        .Q(value[21]),
        .R(1'b0));
  FDRE \value_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[22]),
        .Q(value[22]),
        .R(1'b0));
  FDRE \value_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[23]),
        .Q(value[23]),
        .R(1'b0));
  FDRE \value_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[24]),
        .Q(value[24]),
        .R(1'b0));
  FDRE \value_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[25]),
        .Q(value[25]),
        .R(1'b0));
  FDRE \value_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[26]),
        .Q(value[26]),
        .R(1'b0));
  FDRE \value_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[27]),
        .Q(value[27]),
        .R(1'b0));
  FDRE \value_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[28]),
        .Q(value[28]),
        .R(1'b0));
  FDRE \value_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[29]),
        .Q(value[29]),
        .R(1'b0));
  FDRE \value_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[2]),
        .Q(value[2]),
        .R(1'b0));
  FDRE \value_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[30]),
        .Q(value[30]),
        .R(1'b0));
  FDRE \value_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[31]),
        .Q(value[31]),
        .R(1'b0));
  FDRE \value_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[3]),
        .Q(value[3]),
        .R(1'b0));
  FDRE \value_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[4]),
        .Q(value[4]),
        .R(1'b0));
  FDRE \value_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[5]),
        .Q(value[5]),
        .R(1'b0));
  FDRE \value_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[6]),
        .Q(value[6]),
        .R(1'b0));
  FDRE \value_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[7]),
        .Q(value[7]),
        .R(1'b0));
  FDRE \value_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[8]),
        .Q(value[8]),
        .R(1'b0));
  FDRE \value_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[9]),
        .Q(value[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_recv_manager" *) 
module tester_fastcontrol_recv_axi_0_0_hgcal_fc_recv_manager
   (Clk_40_decod_reg,
    fc_OrbitSync,
    fc_L1A,
    fc_OrbitCountReset_OrbitSync,
    fc_CalibrationReq,
    fc_CalibrationL1A,
    fc_LinkReset,
    fc_we__1,
    \io_r_data_reg[31]_0 ,
    fast_control_clk,
    fc_reset,
    s00_axi_aclk,
    Q,
    \gen_write[1].CtlReg_reg[1][31]_0 ,
    s00_axi_wstrb,
    \gen_write[0].CtlReg_reg[0][16]_0 ,
    \io_r_data_reg[0]_0 ,
    fast_control_stream);
  output Clk_40_decod_reg;
  output fc_OrbitSync;
  output fc_L1A;
  output fc_OrbitCountReset_OrbitSync;
  output fc_CalibrationReq;
  output fc_CalibrationL1A;
  output fc_LinkReset;
  output fc_we__1;
  output [31:0]\io_r_data_reg[31]_0 ;
  input fast_control_clk;
  input fc_reset;
  input s00_axi_aclk;
  input [4:0]Q;
  input [31:0]\gen_write[1].CtlReg_reg[1][31]_0 ;
  input [1:0]s00_axi_wstrb;
  input [1:0]\gen_write[0].CtlReg_reg[0][16]_0 ;
  input [4:0]\io_r_data_reg[0]_0 ;
  input fast_control_stream;

  wire Clk_40_decod_reg;
  wire [31:0]CtlReg;
  wire [4:0]Q;
  wire clear;
  wire count_cl1_n_1;
  wire count_cl1_n_10;
  wire count_cl1_n_11;
  wire count_cl1_n_12;
  wire count_cl1_n_13;
  wire count_cl1_n_14;
  wire count_cl1_n_15;
  wire count_cl1_n_16;
  wire count_cl1_n_17;
  wire count_cl1_n_18;
  wire count_cl1_n_19;
  wire count_cl1_n_2;
  wire count_cl1_n_20;
  wire count_cl1_n_21;
  wire count_cl1_n_22;
  wire count_cl1_n_23;
  wire count_cl1_n_24;
  wire count_cl1_n_25;
  wire count_cl1_n_26;
  wire count_cl1_n_27;
  wire count_cl1_n_28;
  wire count_cl1_n_29;
  wire count_cl1_n_3;
  wire count_cl1_n_30;
  wire count_cl1_n_31;
  wire count_cl1_n_32;
  wire count_cl1_n_4;
  wire count_cl1_n_5;
  wire count_cl1_n_6;
  wire count_cl1_n_7;
  wire count_cl1_n_8;
  wire count_cl1_n_9;
  wire count_cr_n_1;
  wire count_cr_n_10;
  wire count_cr_n_11;
  wire count_cr_n_12;
  wire count_cr_n_13;
  wire count_cr_n_14;
  wire count_cr_n_15;
  wire count_cr_n_16;
  wire count_cr_n_17;
  wire count_cr_n_18;
  wire count_cr_n_19;
  wire count_cr_n_2;
  wire count_cr_n_20;
  wire count_cr_n_21;
  wire count_cr_n_22;
  wire count_cr_n_23;
  wire count_cr_n_24;
  wire count_cr_n_25;
  wire count_cr_n_26;
  wire count_cr_n_27;
  wire count_cr_n_28;
  wire count_cr_n_29;
  wire count_cr_n_3;
  wire count_cr_n_30;
  wire count_cr_n_31;
  wire count_cr_n_32;
  wire count_cr_n_4;
  wire count_cr_n_5;
  wire count_cr_n_6;
  wire count_cr_n_7;
  wire count_cr_n_8;
  wire count_cr_n_9;
  wire count_l1_n_1;
  wire count_l1_n_10;
  wire count_l1_n_11;
  wire count_l1_n_12;
  wire count_l1_n_13;
  wire count_l1_n_14;
  wire count_l1_n_15;
  wire count_l1_n_16;
  wire count_l1_n_17;
  wire count_l1_n_18;
  wire count_l1_n_19;
  wire count_l1_n_2;
  wire count_l1_n_20;
  wire count_l1_n_21;
  wire count_l1_n_22;
  wire count_l1_n_23;
  wire count_l1_n_24;
  wire count_l1_n_25;
  wire count_l1_n_26;
  wire count_l1_n_27;
  wire count_l1_n_28;
  wire count_l1_n_29;
  wire count_l1_n_3;
  wire count_l1_n_30;
  wire count_l1_n_31;
  wire count_l1_n_32;
  wire count_l1_n_4;
  wire count_l1_n_5;
  wire count_l1_n_6;
  wire count_l1_n_7;
  wire count_l1_n_8;
  wire count_l1_n_9;
  wire count_lr_n_1;
  wire count_lr_n_10;
  wire count_lr_n_11;
  wire count_lr_n_12;
  wire count_lr_n_13;
  wire count_lr_n_14;
  wire count_lr_n_15;
  wire count_lr_n_16;
  wire count_lr_n_17;
  wire count_lr_n_18;
  wire count_lr_n_19;
  wire count_lr_n_2;
  wire count_lr_n_20;
  wire count_lr_n_21;
  wire count_lr_n_22;
  wire count_lr_n_23;
  wire count_lr_n_24;
  wire count_lr_n_25;
  wire count_lr_n_26;
  wire count_lr_n_27;
  wire count_lr_n_28;
  wire count_lr_n_29;
  wire count_lr_n_3;
  wire count_lr_n_30;
  wire count_lr_n_31;
  wire count_lr_n_32;
  wire count_lr_n_4;
  wire count_lr_n_5;
  wire count_lr_n_6;
  wire count_lr_n_7;
  wire count_lr_n_8;
  wire count_lr_n_9;
  wire count_ocr_n_1;
  wire count_ocr_n_10;
  wire count_ocr_n_11;
  wire count_ocr_n_12;
  wire count_ocr_n_13;
  wire count_ocr_n_14;
  wire count_ocr_n_15;
  wire count_ocr_n_16;
  wire count_ocr_n_17;
  wire count_ocr_n_18;
  wire count_ocr_n_19;
  wire count_ocr_n_2;
  wire count_ocr_n_20;
  wire count_ocr_n_21;
  wire count_ocr_n_22;
  wire count_ocr_n_23;
  wire count_ocr_n_24;
  wire count_ocr_n_25;
  wire count_ocr_n_26;
  wire count_ocr_n_27;
  wire count_ocr_n_28;
  wire count_ocr_n_29;
  wire count_ocr_n_3;
  wire count_ocr_n_30;
  wire count_ocr_n_31;
  wire count_ocr_n_32;
  wire count_ocr_n_4;
  wire count_ocr_n_5;
  wire count_ocr_n_6;
  wire count_ocr_n_7;
  wire count_ocr_n_8;
  wire count_ocr_n_9;
  wire count_os_n_10;
  wire count_os_n_11;
  wire count_os_n_12;
  wire count_os_n_13;
  wire count_os_n_14;
  wire count_os_n_15;
  wire count_os_n_16;
  wire count_os_n_17;
  wire count_os_n_18;
  wire count_os_n_19;
  wire count_os_n_2;
  wire count_os_n_20;
  wire count_os_n_21;
  wire count_os_n_22;
  wire count_os_n_23;
  wire count_os_n_24;
  wire count_os_n_25;
  wire count_os_n_26;
  wire count_os_n_27;
  wire count_os_n_28;
  wire count_os_n_29;
  wire count_os_n_3;
  wire count_os_n_30;
  wire count_os_n_31;
  wire count_os_n_32;
  wire count_os_n_33;
  wire count_os_n_4;
  wire count_os_n_5;
  wire count_os_n_6;
  wire count_os_n_7;
  wire count_os_n_8;
  wire count_os_n_9;
  wire [0:0]counter_reg;
  wire [0:0]counter_reg_0;
  wire [0:0]counter_reg_1;
  wire [0:0]counter_reg_2;
  wire [0:0]counter_reg_3;
  wire [0:0]counter_reg_4;
  wire decoder_n_10;
  wire decoder_n_11;
  wire decoder_n_12;
  wire decoder_n_7;
  wire decoder_n_8;
  wire decoder_n_9;
  wire edge_select;
  wire fast_control_clk;
  wire fast_control_stream;
  wire fc_CalibrationL1A;
  wire fc_CalibrationReq;
  wire fc_L1A;
  wire fc_LinkReset;
  wire fc_OrbitCountReset_OrbitSync;
  wire fc_OrbitSync;
  wire fc_reset;
  wire fc_we__1;
  wire \gen_write[0].CtlReg[0][15]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][16]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][17]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][18]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][19]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][20]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][21]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][22]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][23]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][24]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][25]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][26]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][27]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][28]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][29]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][30]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][31]_i_1_n_0 ;
  wire \gen_write[0].CtlReg[0][31]_i_2_n_0 ;
  wire [1:0]\gen_write[0].CtlReg_reg[0][16]_0 ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][0] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][10] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][11] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][12] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][13] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][14] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][15] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][16] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][17] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][18] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][19] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][1] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][20] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][21] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][22] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][23] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][24] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][25] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][26] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][27] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][2] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][30] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][31] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][3] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][4] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][5] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][6] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][7] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][8] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][9] ;
  wire \gen_write[1].CtlReg[1][31]_i_1_n_0 ;
  wire [31:0]\gen_write[1].CtlReg_reg[1] ;
  wire [31:0]\gen_write[1].CtlReg_reg[1][31]_0 ;
  wire \gen_write[2].CtlReg[2][31]_i_1_n_0 ;
  wire [31:0]\gen_write[2].CtlReg_reg[2] ;
  wire \gen_write[3].CtlReg[3][31]_i_1_n_0 ;
  wire [31:0]\gen_write[3].CtlReg_reg[3] ;
  wire \io_r_data[31]_i_2_n_0 ;
  wire \io_r_data[31]_i_7_n_0 ;
  wire [4:0]\io_r_data_reg[0]_0 ;
  wire [31:0]\io_r_data_reg[31]_0 ;
  wire [31:0]kcapture;
  wire [31:0]kcapture_io;
  wire [7:0]p_0_in__0;
  wire polarity;
  wire reset_40;
  wire \reset_counter[7]_i_1_n_0 ;
  wire \reset_counter[7]_i_4_n_0 ;
  wire [7:7]reset_counter_reg__0;
  wire \reset_counter_reg_n_0_[0] ;
  wire \reset_counter_reg_n_0_[1] ;
  wire \reset_counter_reg_n_0_[2] ;
  wire \reset_counter_reg_n_0_[3] ;
  wire \reset_counter_reg_n_0_[4] ;
  wire \reset_counter_reg_n_0_[5] ;
  wire \reset_counter_reg_n_0_[6] ;
  wire reset_counters_40_n;
  wire reset_counters_40_n_i_1_n_0;
  wire reset_counters_io;
  wire reset_decoder_io;
  wire reset_decoder_n;
  wire reset_io;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_wstrb;
  wire sel;

  tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter count_cl1
       (.D(counter_reg),
        .Q({count_cl1_n_1,count_cl1_n_2,count_cl1_n_3,count_cl1_n_4,count_cl1_n_5,count_cl1_n_6,count_cl1_n_7,count_cl1_n_8,count_cl1_n_9,count_cl1_n_10,count_cl1_n_11,count_cl1_n_12,count_cl1_n_13,count_cl1_n_14,count_cl1_n_15,count_cl1_n_16,count_cl1_n_17,count_cl1_n_18,count_cl1_n_19,count_cl1_n_20,count_cl1_n_21,count_cl1_n_22,count_cl1_n_23,count_cl1_n_24,count_cl1_n_25,count_cl1_n_26,count_cl1_n_27,count_cl1_n_28,count_cl1_n_29,count_cl1_n_30,count_cl1_n_31,count_cl1_n_32}),
        .S(decoder_n_9),
        .clear(clear),
        .\counter_reg[0]_0 (Clk_40_decod_reg),
        .fc_CalibrationL1A(fc_CalibrationL1A),
        .s00_axi_aclk(s00_axi_aclk));
  tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_0 count_cr
       (.CtlReg(CtlReg),
        .D(counter_reg_0),
        .Q({count_l1_n_1,count_l1_n_2,count_l1_n_3,count_l1_n_4,count_l1_n_5,count_l1_n_6,count_l1_n_7,count_l1_n_8,count_l1_n_9,count_l1_n_10,count_l1_n_11,count_l1_n_12,count_l1_n_13,count_l1_n_14,count_l1_n_15,count_l1_n_16,count_l1_n_17,count_l1_n_18,count_l1_n_19,count_l1_n_20,count_l1_n_21,count_l1_n_22,count_l1_n_23,count_l1_n_24,count_l1_n_25,count_l1_n_26,count_l1_n_27,count_l1_n_28,count_l1_n_29,count_l1_n_30,count_l1_n_31,count_l1_n_32}),
        .S(decoder_n_10),
        .clear(clear),
        .\counter_reg[31]_0 (Clk_40_decod_reg),
        .fc_CalibrationReq(fc_CalibrationReq),
        .\fc_raddr_reg[4] ({count_cr_n_1,count_cr_n_2,count_cr_n_3,count_cr_n_4,count_cr_n_5,count_cr_n_6,count_cr_n_7,count_cr_n_8,count_cr_n_9,count_cr_n_10,count_cr_n_11,count_cr_n_12,count_cr_n_13,count_cr_n_14,count_cr_n_15,count_cr_n_16,count_cr_n_17,count_cr_n_18,count_cr_n_19,count_cr_n_20,count_cr_n_21,count_cr_n_22,count_cr_n_23,count_cr_n_24,count_cr_n_25,count_cr_n_26,count_cr_n_27,count_cr_n_28,count_cr_n_29,count_cr_n_30,count_cr_n_31,count_cr_n_32}),
        .\io_r_data[31]_i_3_0 ({count_lr_n_1,count_lr_n_2,count_lr_n_3,count_lr_n_4,count_lr_n_5,count_lr_n_6,count_lr_n_7,count_lr_n_8,count_lr_n_9,count_lr_n_10,count_lr_n_11,count_lr_n_12,count_lr_n_13,count_lr_n_14,count_lr_n_15,count_lr_n_16,count_lr_n_17,count_lr_n_18,count_lr_n_19,count_lr_n_20,count_lr_n_21,count_lr_n_22,count_lr_n_23,count_lr_n_24,count_lr_n_25,count_lr_n_26,count_lr_n_27,count_lr_n_28,count_lr_n_29,count_lr_n_30,count_lr_n_31,count_lr_n_32}),
        .\io_r_data[31]_i_3_1 ({count_cl1_n_1,count_cl1_n_2,count_cl1_n_3,count_cl1_n_4,count_cl1_n_5,count_cl1_n_6,count_cl1_n_7,count_cl1_n_8,count_cl1_n_9,count_cl1_n_10,count_cl1_n_11,count_cl1_n_12,count_cl1_n_13,count_cl1_n_14,count_cl1_n_15,count_cl1_n_16,count_cl1_n_17,count_cl1_n_18,count_cl1_n_19,count_cl1_n_20,count_cl1_n_21,count_cl1_n_22,count_cl1_n_23,count_cl1_n_24,count_cl1_n_25,count_cl1_n_26,count_cl1_n_27,count_cl1_n_28,count_cl1_n_29,count_cl1_n_30,count_cl1_n_31,count_cl1_n_32}),
        .\io_r_data_reg[0] (\io_r_data[31]_i_2_n_0 ),
        .\io_r_data_reg[0]_0 (\io_r_data_reg[0]_0 [3:0]),
        .\io_r_data_reg[0]_1 (count_os_n_33),
        .\io_r_data_reg[10] (count_os_n_23),
        .\io_r_data_reg[11] (count_os_n_22),
        .\io_r_data_reg[12] (count_os_n_21),
        .\io_r_data_reg[13] (count_os_n_20),
        .\io_r_data_reg[14] (count_os_n_19),
        .\io_r_data_reg[15] (count_os_n_18),
        .\io_r_data_reg[16] (count_os_n_17),
        .\io_r_data_reg[17] (count_os_n_16),
        .\io_r_data_reg[18] (count_os_n_15),
        .\io_r_data_reg[19] (count_os_n_14),
        .\io_r_data_reg[1] (count_os_n_32),
        .\io_r_data_reg[20] (count_os_n_13),
        .\io_r_data_reg[21] (count_os_n_12),
        .\io_r_data_reg[22] (count_os_n_11),
        .\io_r_data_reg[23] (count_os_n_10),
        .\io_r_data_reg[24] (count_os_n_9),
        .\io_r_data_reg[25] (count_os_n_8),
        .\io_r_data_reg[26] (count_os_n_7),
        .\io_r_data_reg[27] (count_os_n_6),
        .\io_r_data_reg[28] (count_os_n_5),
        .\io_r_data_reg[29] (count_os_n_4),
        .\io_r_data_reg[2] (count_os_n_31),
        .\io_r_data_reg[30] (count_os_n_3),
        .\io_r_data_reg[31] (count_os_n_2),
        .\io_r_data_reg[31]_0 (\io_r_data[31]_i_7_n_0 ),
        .\io_r_data_reg[3] (count_os_n_30),
        .\io_r_data_reg[4] (count_os_n_29),
        .\io_r_data_reg[5] (count_os_n_28),
        .\io_r_data_reg[6] (count_os_n_27),
        .\io_r_data_reg[7] (count_os_n_26),
        .\io_r_data_reg[8] (count_os_n_25),
        .\io_r_data_reg[9] (count_os_n_24),
        .s00_axi_aclk(s00_axi_aclk));
  tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_1 count_l1
       (.D(counter_reg_1),
        .Q({count_l1_n_1,count_l1_n_2,count_l1_n_3,count_l1_n_4,count_l1_n_5,count_l1_n_6,count_l1_n_7,count_l1_n_8,count_l1_n_9,count_l1_n_10,count_l1_n_11,count_l1_n_12,count_l1_n_13,count_l1_n_14,count_l1_n_15,count_l1_n_16,count_l1_n_17,count_l1_n_18,count_l1_n_19,count_l1_n_20,count_l1_n_21,count_l1_n_22,count_l1_n_23,count_l1_n_24,count_l1_n_25,count_l1_n_26,count_l1_n_27,count_l1_n_28,count_l1_n_29,count_l1_n_30,count_l1_n_31,count_l1_n_32}),
        .S(decoder_n_7),
        .clear(clear),
        .\counter_reg[0]_0 (Clk_40_decod_reg),
        .fc_L1A(fc_L1A),
        .s00_axi_aclk(s00_axi_aclk));
  tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_2 count_lr
       (.D(counter_reg_2),
        .Q({count_lr_n_1,count_lr_n_2,count_lr_n_3,count_lr_n_4,count_lr_n_5,count_lr_n_6,count_lr_n_7,count_lr_n_8,count_lr_n_9,count_lr_n_10,count_lr_n_11,count_lr_n_12,count_lr_n_13,count_lr_n_14,count_lr_n_15,count_lr_n_16,count_lr_n_17,count_lr_n_18,count_lr_n_19,count_lr_n_20,count_lr_n_21,count_lr_n_22,count_lr_n_23,count_lr_n_24,count_lr_n_25,count_lr_n_26,count_lr_n_27,count_lr_n_28,count_lr_n_29,count_lr_n_30,count_lr_n_31,count_lr_n_32}),
        .S(decoder_n_8),
        .clear(clear),
        .\counter_reg[31]_0 (Clk_40_decod_reg),
        .fc_LinkReset(fc_LinkReset),
        .s00_axi_aclk(s00_axi_aclk));
  tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_3 count_ocr
       (.D(counter_reg_3),
        .Q({count_ocr_n_1,count_ocr_n_2,count_ocr_n_3,count_ocr_n_4,count_ocr_n_5,count_ocr_n_6,count_ocr_n_7,count_ocr_n_8,count_ocr_n_9,count_ocr_n_10,count_ocr_n_11,count_ocr_n_12,count_ocr_n_13,count_ocr_n_14,count_ocr_n_15,count_ocr_n_16,count_ocr_n_17,count_ocr_n_18,count_ocr_n_19,count_ocr_n_20,count_ocr_n_21,count_ocr_n_22,count_ocr_n_23,count_ocr_n_24,count_ocr_n_25,count_ocr_n_26,count_ocr_n_27,count_ocr_n_28,count_ocr_n_29,count_ocr_n_30,count_ocr_n_31,count_ocr_n_32}),
        .S(decoder_n_11),
        .clear(clear),
        .\counter_reg[0]_0 (Clk_40_decod_reg),
        .fc_OrbitCountReset_OrbitSync(fc_OrbitCountReset_OrbitSync),
        .s00_axi_aclk(s00_axi_aclk));
  tester_fastcontrol_recv_axi_0_0_hgcal_fc_manager_counter_4 count_os
       (.D(counter_reg_4),
        .Q(kcapture_io),
        .S(decoder_n_12),
        .clear(clear),
        .\counter_reg[31]_0 (Clk_40_decod_reg),
        .fc_OrbitSync(fc_OrbitSync),
        .\io_r_data[31]_i_3 ({count_ocr_n_1,count_ocr_n_2,count_ocr_n_3,count_ocr_n_4,count_ocr_n_5,count_ocr_n_6,count_ocr_n_7,count_ocr_n_8,count_ocr_n_9,count_ocr_n_10,count_ocr_n_11,count_ocr_n_12,count_ocr_n_13,count_ocr_n_14,count_ocr_n_15,count_ocr_n_16,count_ocr_n_17,count_ocr_n_18,count_ocr_n_19,count_ocr_n_20,count_ocr_n_21,count_ocr_n_22,count_ocr_n_23,count_ocr_n_24,count_ocr_n_25,count_ocr_n_26,count_ocr_n_27,count_ocr_n_28,count_ocr_n_29,count_ocr_n_30,count_ocr_n_31,count_ocr_n_32}),
        .\io_r_data[31]_i_3_0 (\io_r_data_reg[0]_0 [1:0]),
        .reset_counters_40_n(reset_counters_40_n),
        .s00_axi_aclk(s00_axi_aclk),
        .\value_reg[0]_0 (count_os_n_33),
        .\value_reg[10]_0 (count_os_n_23),
        .\value_reg[11]_0 (count_os_n_22),
        .\value_reg[12]_0 (count_os_n_21),
        .\value_reg[13]_0 (count_os_n_20),
        .\value_reg[14]_0 (count_os_n_19),
        .\value_reg[15]_0 (count_os_n_18),
        .\value_reg[16]_0 (count_os_n_17),
        .\value_reg[17]_0 (count_os_n_16),
        .\value_reg[18]_0 (count_os_n_15),
        .\value_reg[19]_0 (count_os_n_14),
        .\value_reg[1]_0 (count_os_n_32),
        .\value_reg[20]_0 (count_os_n_13),
        .\value_reg[21]_0 (count_os_n_12),
        .\value_reg[22]_0 (count_os_n_11),
        .\value_reg[23]_0 (count_os_n_10),
        .\value_reg[24]_0 (count_os_n_9),
        .\value_reg[25]_0 (count_os_n_8),
        .\value_reg[26]_0 (count_os_n_7),
        .\value_reg[27]_0 (count_os_n_6),
        .\value_reg[28]_0 (count_os_n_5),
        .\value_reg[29]_0 (count_os_n_4),
        .\value_reg[2]_0 (count_os_n_31),
        .\value_reg[30]_0 (count_os_n_3),
        .\value_reg[31]_0 (count_os_n_2),
        .\value_reg[3]_0 (count_os_n_30),
        .\value_reg[4]_0 (count_os_n_29),
        .\value_reg[5]_0 (count_os_n_28),
        .\value_reg[6]_0 (count_os_n_27),
        .\value_reg[7]_0 (count_os_n_26),
        .\value_reg[8]_0 (count_os_n_25),
        .\value_reg[9]_0 (count_os_n_24));
  tester_fastcontrol_recv_axi_0_0_fast_cmd_clk40_decoder decoder
       (.Clk_40_decod_reg(Clk_40_decod_reg),
        .D(counter_reg_1),
        .S(decoder_n_7),
        .cmd_CalibrationL1A40_d_reg(decoder_n_9),
        .cmd_CalibrationReq40_d_reg(decoder_n_10),
        .cmd_OrbitCountReset40_d_reg(decoder_n_11),
        .cmd_OrbitSync40_d_reg(decoder_n_12),
        .cmd_ReSync40_d_reg(decoder_n_8),
        .\counter_reg[7] (counter_reg_2),
        .\counter_reg[7]_0 (counter_reg),
        .\counter_reg[7]_1 (counter_reg_0),
        .\counter_reg[7]_2 (counter_reg_3),
        .\counter_reg[7]_3 (counter_reg_4),
        .edge_select(edge_select),
        .fast_control_clk(fast_control_clk),
        .fast_control_stream(fast_control_stream),
        .fc_CalibrationL1A(fc_CalibrationL1A),
        .fc_CalibrationReq(fc_CalibrationReq),
        .fc_L1A(fc_L1A),
        .fc_LinkReset(fc_LinkReset),
        .fc_OrbitCountReset_OrbitSync(fc_OrbitCountReset_OrbitSync),
        .fc_OrbitSync(fc_OrbitSync),
        .polarity(polarity),
        .reset_decoder_n(reset_decoder_n));
  FDRE edge_select_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg_reg_n_0_[0][0] ),
        .Q(edge_select),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    fc_reset_i_5
       (.I0(s00_axi_wstrb[1]),
        .I1(s00_axi_wstrb[0]),
        .I2(\gen_write[0].CtlReg_reg[0][16]_0 [1]),
        .I3(\gen_write[0].CtlReg_reg[0][16]_0 [0]),
        .O(fc_we__1));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gen_write[0].CtlReg[0][15]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(fc_we__1),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\gen_write[0].CtlReg[0][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][16]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [16]),
        .O(\gen_write[0].CtlReg[0][16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][17]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [17]),
        .O(\gen_write[0].CtlReg[0][17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][18]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [18]),
        .O(\gen_write[0].CtlReg[0][18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][19]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [19]),
        .O(\gen_write[0].CtlReg[0][19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][20]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [20]),
        .O(\gen_write[0].CtlReg[0][20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][21]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [21]),
        .O(\gen_write[0].CtlReg[0][21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][22]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [22]),
        .O(\gen_write[0].CtlReg[0][22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][23]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [23]),
        .O(\gen_write[0].CtlReg[0][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][24]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [24]),
        .O(\gen_write[0].CtlReg[0][24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][25]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [25]),
        .O(\gen_write[0].CtlReg[0][25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][26]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [26]),
        .O(\gen_write[0].CtlReg[0][26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][27]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [27]),
        .O(\gen_write[0].CtlReg[0][27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][28]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [28]),
        .O(\gen_write[0].CtlReg[0][28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][29]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [29]),
        .O(\gen_write[0].CtlReg[0][29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][30]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [30]),
        .O(\gen_write[0].CtlReg[0][30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \gen_write[0].CtlReg[0][31]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [31]),
        .O(\gen_write[0].CtlReg[0][31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \gen_write[0].CtlReg[0][31]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\gen_write[0].CtlReg[0][31]_i_2_n_0 ));
  FDRE \gen_write[0].CtlReg_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [0]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][0] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][10] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [10]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][10] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][11] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [11]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][11] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][12] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [12]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][12] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][13] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [13]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][13] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][14] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [14]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][14] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][15] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [15]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][15] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][16]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][16] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][17]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][17] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][18]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][18] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][19]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][19] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [1]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][1] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][20]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][20] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][21]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][21] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][22]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][22] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][23]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][23] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][24]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][24] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][25]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][25] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][26]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][26] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][27]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][27] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][28]_i_1_n_0 ),
        .Q(reset_counters_io),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][29]_i_1_n_0 ),
        .Q(reset_decoder_io),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [2]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][2] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][30]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][30] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][31]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][31] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [3]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][3] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [4]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][4] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [5]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][5] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [6]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][6] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [7]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][7] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][8] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [8]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][8] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][9] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [9]),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][9] ),
        .R(reset_io));
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_write[1].CtlReg[1][31]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\gen_write[1].CtlReg[1][31]_i_1_n_0 ));
  FDRE \gen_write[1].CtlReg_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [0]),
        .Q(\gen_write[1].CtlReg_reg[1] [0]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][10] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [10]),
        .Q(\gen_write[1].CtlReg_reg[1] [10]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][11] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [11]),
        .Q(\gen_write[1].CtlReg_reg[1] [11]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][12] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [12]),
        .Q(\gen_write[1].CtlReg_reg[1] [12]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][13] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [13]),
        .Q(\gen_write[1].CtlReg_reg[1] [13]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][14] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [14]),
        .Q(\gen_write[1].CtlReg_reg[1] [14]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][15] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [15]),
        .Q(\gen_write[1].CtlReg_reg[1] [15]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][16] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [16]),
        .Q(\gen_write[1].CtlReg_reg[1] [16]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][17] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [17]),
        .Q(\gen_write[1].CtlReg_reg[1] [17]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][18] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [18]),
        .Q(\gen_write[1].CtlReg_reg[1] [18]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][19] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [19]),
        .Q(\gen_write[1].CtlReg_reg[1] [19]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [1]),
        .Q(\gen_write[1].CtlReg_reg[1] [1]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][20] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [20]),
        .Q(\gen_write[1].CtlReg_reg[1] [20]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][21] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [21]),
        .Q(\gen_write[1].CtlReg_reg[1] [21]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][22] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [22]),
        .Q(\gen_write[1].CtlReg_reg[1] [22]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][23] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [23]),
        .Q(\gen_write[1].CtlReg_reg[1] [23]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][24] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [24]),
        .Q(\gen_write[1].CtlReg_reg[1] [24]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][25] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [25]),
        .Q(\gen_write[1].CtlReg_reg[1] [25]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][26] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [26]),
        .Q(\gen_write[1].CtlReg_reg[1] [26]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][27] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [27]),
        .Q(\gen_write[1].CtlReg_reg[1] [27]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][28] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [28]),
        .Q(\gen_write[1].CtlReg_reg[1] [28]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][29] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [29]),
        .Q(\gen_write[1].CtlReg_reg[1] [29]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [2]),
        .Q(\gen_write[1].CtlReg_reg[1] [2]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][30] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [30]),
        .Q(\gen_write[1].CtlReg_reg[1] [30]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][31] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [31]),
        .Q(\gen_write[1].CtlReg_reg[1] [31]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [3]),
        .Q(\gen_write[1].CtlReg_reg[1] [3]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [4]),
        .Q(\gen_write[1].CtlReg_reg[1] [4]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [5]),
        .Q(\gen_write[1].CtlReg_reg[1] [5]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [6]),
        .Q(\gen_write[1].CtlReg_reg[1] [6]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [7]),
        .Q(\gen_write[1].CtlReg_reg[1] [7]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][8] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [8]),
        .Q(\gen_write[1].CtlReg_reg[1] [8]),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][9] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[1].CtlReg[1][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [9]),
        .Q(\gen_write[1].CtlReg_reg[1] [9]),
        .R(reset_io));
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_write[2].CtlReg[2][31]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\gen_write[2].CtlReg[2][31]_i_1_n_0 ));
  FDRE \gen_write[2].CtlReg_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [0]),
        .Q(\gen_write[2].CtlReg_reg[2] [0]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][10] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [10]),
        .Q(\gen_write[2].CtlReg_reg[2] [10]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][11] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [11]),
        .Q(\gen_write[2].CtlReg_reg[2] [11]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][12] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [12]),
        .Q(\gen_write[2].CtlReg_reg[2] [12]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][13] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [13]),
        .Q(\gen_write[2].CtlReg_reg[2] [13]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][14] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [14]),
        .Q(\gen_write[2].CtlReg_reg[2] [14]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][15] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [15]),
        .Q(\gen_write[2].CtlReg_reg[2] [15]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][16] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [16]),
        .Q(\gen_write[2].CtlReg_reg[2] [16]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][17] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [17]),
        .Q(\gen_write[2].CtlReg_reg[2] [17]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][18] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [18]),
        .Q(\gen_write[2].CtlReg_reg[2] [18]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][19] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [19]),
        .Q(\gen_write[2].CtlReg_reg[2] [19]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [1]),
        .Q(\gen_write[2].CtlReg_reg[2] [1]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][20] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [20]),
        .Q(\gen_write[2].CtlReg_reg[2] [20]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][21] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [21]),
        .Q(\gen_write[2].CtlReg_reg[2] [21]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][22] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [22]),
        .Q(\gen_write[2].CtlReg_reg[2] [22]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][23] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [23]),
        .Q(\gen_write[2].CtlReg_reg[2] [23]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][24] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [24]),
        .Q(\gen_write[2].CtlReg_reg[2] [24]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][25] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [25]),
        .Q(\gen_write[2].CtlReg_reg[2] [25]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][26] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [26]),
        .Q(\gen_write[2].CtlReg_reg[2] [26]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][27] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [27]),
        .Q(\gen_write[2].CtlReg_reg[2] [27]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][28] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [28]),
        .Q(\gen_write[2].CtlReg_reg[2] [28]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][29] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [29]),
        .Q(\gen_write[2].CtlReg_reg[2] [29]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [2]),
        .Q(\gen_write[2].CtlReg_reg[2] [2]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][30] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [30]),
        .Q(\gen_write[2].CtlReg_reg[2] [30]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][31] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [31]),
        .Q(\gen_write[2].CtlReg_reg[2] [31]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [3]),
        .Q(\gen_write[2].CtlReg_reg[2] [3]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [4]),
        .Q(\gen_write[2].CtlReg_reg[2] [4]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [5]),
        .Q(\gen_write[2].CtlReg_reg[2] [5]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [6]),
        .Q(\gen_write[2].CtlReg_reg[2] [6]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [7]),
        .Q(\gen_write[2].CtlReg_reg[2] [7]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][8] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [8]),
        .Q(\gen_write[2].CtlReg_reg[2] [8]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][9] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [9]),
        .Q(\gen_write[2].CtlReg_reg[2] [9]),
        .R(reset_io));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_write[3].CtlReg[3][31]_i_1 
       (.I0(\gen_write[0].CtlReg[0][31]_i_2_n_0 ),
        .I1(fc_we__1),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\gen_write[3].CtlReg[3][31]_i_1_n_0 ));
  FDRE \gen_write[3].CtlReg_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [0]),
        .Q(\gen_write[3].CtlReg_reg[3] [0]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][10] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [10]),
        .Q(\gen_write[3].CtlReg_reg[3] [10]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][11] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [11]),
        .Q(\gen_write[3].CtlReg_reg[3] [11]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][12] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [12]),
        .Q(\gen_write[3].CtlReg_reg[3] [12]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][13] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [13]),
        .Q(\gen_write[3].CtlReg_reg[3] [13]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][14] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [14]),
        .Q(\gen_write[3].CtlReg_reg[3] [14]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][15] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [15]),
        .Q(\gen_write[3].CtlReg_reg[3] [15]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][16] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [16]),
        .Q(\gen_write[3].CtlReg_reg[3] [16]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][17] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [17]),
        .Q(\gen_write[3].CtlReg_reg[3] [17]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][18] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [18]),
        .Q(\gen_write[3].CtlReg_reg[3] [18]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][19] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [19]),
        .Q(\gen_write[3].CtlReg_reg[3] [19]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [1]),
        .Q(\gen_write[3].CtlReg_reg[3] [1]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][20] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [20]),
        .Q(\gen_write[3].CtlReg_reg[3] [20]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][21] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [21]),
        .Q(\gen_write[3].CtlReg_reg[3] [21]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][22] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [22]),
        .Q(\gen_write[3].CtlReg_reg[3] [22]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][23] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [23]),
        .Q(\gen_write[3].CtlReg_reg[3] [23]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][24] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [24]),
        .Q(\gen_write[3].CtlReg_reg[3] [24]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][25] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [25]),
        .Q(\gen_write[3].CtlReg_reg[3] [25]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][26] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [26]),
        .Q(\gen_write[3].CtlReg_reg[3] [26]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][27] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [27]),
        .Q(\gen_write[3].CtlReg_reg[3] [27]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][28] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [28]),
        .Q(\gen_write[3].CtlReg_reg[3] [28]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][29] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [29]),
        .Q(\gen_write[3].CtlReg_reg[3] [29]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [2]),
        .Q(\gen_write[3].CtlReg_reg[3] [2]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][30] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [30]),
        .Q(\gen_write[3].CtlReg_reg[3] [30]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][31] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [31]),
        .Q(\gen_write[3].CtlReg_reg[3] [31]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [3]),
        .Q(\gen_write[3].CtlReg_reg[3] [3]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [4]),
        .Q(\gen_write[3].CtlReg_reg[3] [4]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [5]),
        .Q(\gen_write[3].CtlReg_reg[3] [5]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [6]),
        .Q(\gen_write[3].CtlReg_reg[3] [6]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [7]),
        .Q(\gen_write[3].CtlReg_reg[3] [7]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][8] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [8]),
        .Q(\gen_write[3].CtlReg_reg[3] [8]),
        .R(reset_io));
  FDRE \gen_write[3].CtlReg_reg[3][9] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[3].CtlReg[3][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [9]),
        .Q(\gen_write[3].CtlReg_reg[3] [9]),
        .R(reset_io));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[0]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [0]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][0] ),
        .I2(\gen_write[3].CtlReg_reg[3] [0]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [0]),
        .O(CtlReg[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[10]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [10]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][10] ),
        .I2(\gen_write[3].CtlReg_reg[3] [10]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [10]),
        .O(CtlReg[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[11]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [11]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][11] ),
        .I2(\gen_write[3].CtlReg_reg[3] [11]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [11]),
        .O(CtlReg[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[12]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [12]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][12] ),
        .I2(\gen_write[3].CtlReg_reg[3] [12]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [12]),
        .O(CtlReg[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[13]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [13]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][13] ),
        .I2(\gen_write[3].CtlReg_reg[3] [13]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [13]),
        .O(CtlReg[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[14]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [14]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][14] ),
        .I2(\gen_write[3].CtlReg_reg[3] [14]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [14]),
        .O(CtlReg[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[15]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [15]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][15] ),
        .I2(\gen_write[3].CtlReg_reg[3] [15]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [15]),
        .O(CtlReg[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[16]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [16]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][16] ),
        .I2(\gen_write[3].CtlReg_reg[3] [16]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [16]),
        .O(CtlReg[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[17]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [17]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][17] ),
        .I2(\gen_write[3].CtlReg_reg[3] [17]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [17]),
        .O(CtlReg[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[18]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [18]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][18] ),
        .I2(\gen_write[3].CtlReg_reg[3] [18]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [18]),
        .O(CtlReg[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[19]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [19]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][19] ),
        .I2(\gen_write[3].CtlReg_reg[3] [19]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [19]),
        .O(CtlReg[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[1]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [1]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][1] ),
        .I2(\gen_write[3].CtlReg_reg[3] [1]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [1]),
        .O(CtlReg[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[20]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [20]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][20] ),
        .I2(\gen_write[3].CtlReg_reg[3] [20]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [20]),
        .O(CtlReg[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[21]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [21]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][21] ),
        .I2(\gen_write[3].CtlReg_reg[3] [21]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [21]),
        .O(CtlReg[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[22]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [22]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][22] ),
        .I2(\gen_write[3].CtlReg_reg[3] [22]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [22]),
        .O(CtlReg[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[23]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [23]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][23] ),
        .I2(\gen_write[3].CtlReg_reg[3] [23]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [23]),
        .O(CtlReg[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[24]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [24]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][24] ),
        .I2(\gen_write[3].CtlReg_reg[3] [24]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [24]),
        .O(CtlReg[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[25]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [25]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][25] ),
        .I2(\gen_write[3].CtlReg_reg[3] [25]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [25]),
        .O(CtlReg[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[26]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [26]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][26] ),
        .I2(\gen_write[3].CtlReg_reg[3] [26]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [26]),
        .O(CtlReg[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[27]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [27]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][27] ),
        .I2(\gen_write[3].CtlReg_reg[3] [27]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [27]),
        .O(CtlReg[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[28]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [28]),
        .I1(reset_counters_io),
        .I2(\gen_write[3].CtlReg_reg[3] [28]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [28]),
        .O(CtlReg[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[29]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [29]),
        .I1(reset_decoder_io),
        .I2(\gen_write[3].CtlReg_reg[3] [29]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [29]),
        .O(CtlReg[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[2]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [2]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][2] ),
        .I2(\gen_write[3].CtlReg_reg[3] [2]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [2]),
        .O(CtlReg[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[30]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [30]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][30] ),
        .I2(\gen_write[3].CtlReg_reg[3] [30]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [30]),
        .O(CtlReg[30]));
  LUT3 #(
    .INIT(8'h01)) 
    \io_r_data[31]_i_2 
       (.I0(\io_r_data_reg[0]_0 [4]),
        .I1(\io_r_data_reg[0]_0 [3]),
        .I2(\io_r_data_reg[0]_0 [2]),
        .O(\io_r_data[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[31]_i_4 
       (.I0(\gen_write[1].CtlReg_reg[1] [31]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][31] ),
        .I2(\gen_write[3].CtlReg_reg[3] [31]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [31]),
        .O(CtlReg[31]));
  LUT2 #(
    .INIT(4'h2)) 
    \io_r_data[31]_i_7 
       (.I0(\io_r_data_reg[0]_0 [0]),
        .I1(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[3]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [3]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][3] ),
        .I2(\gen_write[3].CtlReg_reg[3] [3]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [3]),
        .O(CtlReg[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[4]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [4]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][4] ),
        .I2(\gen_write[3].CtlReg_reg[3] [4]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [4]),
        .O(CtlReg[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[5]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [5]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][5] ),
        .I2(\gen_write[3].CtlReg_reg[3] [5]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [5]),
        .O(CtlReg[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[6]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [6]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][6] ),
        .I2(\gen_write[3].CtlReg_reg[3] [6]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [6]),
        .O(CtlReg[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[7]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [7]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][7] ),
        .I2(\gen_write[3].CtlReg_reg[3] [7]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [7]),
        .O(CtlReg[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[8]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [8]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][8] ),
        .I2(\gen_write[3].CtlReg_reg[3] [8]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [8]),
        .O(CtlReg[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \io_r_data[9]_i_3 
       (.I0(\gen_write[1].CtlReg_reg[1] [9]),
        .I1(\gen_write[0].CtlReg_reg_n_0_[0][9] ),
        .I2(\gen_write[3].CtlReg_reg[3] [9]),
        .I3(\io_r_data_reg[0]_0 [1]),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[2].CtlReg_reg[2] [9]),
        .O(CtlReg[9]));
  FDRE \io_r_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_32),
        .Q(\io_r_data_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \io_r_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_22),
        .Q(\io_r_data_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \io_r_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_21),
        .Q(\io_r_data_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \io_r_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_20),
        .Q(\io_r_data_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \io_r_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_19),
        .Q(\io_r_data_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \io_r_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_18),
        .Q(\io_r_data_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \io_r_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_17),
        .Q(\io_r_data_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \io_r_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_16),
        .Q(\io_r_data_reg[31]_0 [16]),
        .R(1'b0));
  FDRE \io_r_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_15),
        .Q(\io_r_data_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \io_r_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_14),
        .Q(\io_r_data_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \io_r_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_13),
        .Q(\io_r_data_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \io_r_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_31),
        .Q(\io_r_data_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \io_r_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_12),
        .Q(\io_r_data_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \io_r_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_11),
        .Q(\io_r_data_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \io_r_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_10),
        .Q(\io_r_data_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \io_r_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_9),
        .Q(\io_r_data_reg[31]_0 [23]),
        .R(1'b0));
  FDRE \io_r_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_8),
        .Q(\io_r_data_reg[31]_0 [24]),
        .R(1'b0));
  FDRE \io_r_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_7),
        .Q(\io_r_data_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \io_r_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_6),
        .Q(\io_r_data_reg[31]_0 [26]),
        .R(1'b0));
  FDRE \io_r_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_5),
        .Q(\io_r_data_reg[31]_0 [27]),
        .R(1'b0));
  FDRE \io_r_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_4),
        .Q(\io_r_data_reg[31]_0 [28]),
        .R(1'b0));
  FDRE \io_r_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_3),
        .Q(\io_r_data_reg[31]_0 [29]),
        .R(1'b0));
  FDRE \io_r_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_30),
        .Q(\io_r_data_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \io_r_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_2),
        .Q(\io_r_data_reg[31]_0 [30]),
        .R(1'b0));
  FDRE \io_r_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_1),
        .Q(\io_r_data_reg[31]_0 [31]),
        .R(1'b0));
  FDRE \io_r_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_29),
        .Q(\io_r_data_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \io_r_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_28),
        .Q(\io_r_data_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \io_r_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_27),
        .Q(\io_r_data_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \io_r_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_26),
        .Q(\io_r_data_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \io_r_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_25),
        .Q(\io_r_data_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \io_r_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_24),
        .Q(\io_r_data_reg[31]_0 [8]),
        .R(1'b0));
  FDRE \io_r_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_cr_n_23),
        .Q(\io_r_data_reg[31]_0 [9]),
        .R(1'b0));
  FDRE \kcapture_io_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[0]),
        .Q(kcapture_io[0]),
        .R(1'b0));
  FDRE \kcapture_io_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[10]),
        .Q(kcapture_io[10]),
        .R(1'b0));
  FDRE \kcapture_io_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[11]),
        .Q(kcapture_io[11]),
        .R(1'b0));
  FDRE \kcapture_io_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[12]),
        .Q(kcapture_io[12]),
        .R(1'b0));
  FDRE \kcapture_io_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[13]),
        .Q(kcapture_io[13]),
        .R(1'b0));
  FDRE \kcapture_io_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[14]),
        .Q(kcapture_io[14]),
        .R(1'b0));
  FDRE \kcapture_io_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[15]),
        .Q(kcapture_io[15]),
        .R(1'b0));
  FDRE \kcapture_io_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[16]),
        .Q(kcapture_io[16]),
        .R(1'b0));
  FDRE \kcapture_io_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[17]),
        .Q(kcapture_io[17]),
        .R(1'b0));
  FDRE \kcapture_io_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[18]),
        .Q(kcapture_io[18]),
        .R(1'b0));
  FDRE \kcapture_io_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[19]),
        .Q(kcapture_io[19]),
        .R(1'b0));
  FDRE \kcapture_io_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[1]),
        .Q(kcapture_io[1]),
        .R(1'b0));
  FDRE \kcapture_io_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[20]),
        .Q(kcapture_io[20]),
        .R(1'b0));
  FDRE \kcapture_io_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[21]),
        .Q(kcapture_io[21]),
        .R(1'b0));
  FDRE \kcapture_io_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[22]),
        .Q(kcapture_io[22]),
        .R(1'b0));
  FDRE \kcapture_io_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[23]),
        .Q(kcapture_io[23]),
        .R(1'b0));
  FDRE \kcapture_io_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[24]),
        .Q(kcapture_io[24]),
        .R(1'b0));
  FDRE \kcapture_io_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[25]),
        .Q(kcapture_io[25]),
        .R(1'b0));
  FDRE \kcapture_io_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[26]),
        .Q(kcapture_io[26]),
        .R(1'b0));
  FDRE \kcapture_io_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[27]),
        .Q(kcapture_io[27]),
        .R(1'b0));
  FDRE \kcapture_io_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[28]),
        .Q(kcapture_io[28]),
        .R(1'b0));
  FDRE \kcapture_io_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[29]),
        .Q(kcapture_io[29]),
        .R(1'b0));
  FDRE \kcapture_io_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[2]),
        .Q(kcapture_io[2]),
        .R(1'b0));
  FDRE \kcapture_io_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[30]),
        .Q(kcapture_io[30]),
        .R(1'b0));
  FDRE \kcapture_io_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[31]),
        .Q(kcapture_io[31]),
        .R(1'b0));
  FDRE \kcapture_io_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[3]),
        .Q(kcapture_io[3]),
        .R(1'b0));
  FDRE \kcapture_io_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[4]),
        .Q(kcapture_io[4]),
        .R(1'b0));
  FDRE \kcapture_io_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[5]),
        .Q(kcapture_io[5]),
        .R(1'b0));
  FDRE \kcapture_io_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[6]),
        .Q(kcapture_io[6]),
        .R(1'b0));
  FDRE \kcapture_io_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[7]),
        .Q(kcapture_io[7]),
        .R(1'b0));
  FDRE \kcapture_io_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[8]),
        .Q(kcapture_io[8]),
        .R(1'b0));
  FDRE \kcapture_io_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(kcapture[9]),
        .Q(kcapture_io[9]),
        .R(1'b0));
  FDRE \kcapture_reg[0] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(fast_control_stream),
        .Q(kcapture[0]),
        .R(1'b0));
  FDRE \kcapture_reg[10] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[9]),
        .Q(kcapture[10]),
        .R(1'b0));
  FDRE \kcapture_reg[11] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[10]),
        .Q(kcapture[11]),
        .R(1'b0));
  FDRE \kcapture_reg[12] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[11]),
        .Q(kcapture[12]),
        .R(1'b0));
  FDRE \kcapture_reg[13] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[12]),
        .Q(kcapture[13]),
        .R(1'b0));
  FDRE \kcapture_reg[14] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[13]),
        .Q(kcapture[14]),
        .R(1'b0));
  FDRE \kcapture_reg[15] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[14]),
        .Q(kcapture[15]),
        .R(1'b0));
  FDRE \kcapture_reg[16] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[15]),
        .Q(kcapture[16]),
        .R(1'b0));
  FDRE \kcapture_reg[17] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[16]),
        .Q(kcapture[17]),
        .R(1'b0));
  FDRE \kcapture_reg[18] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[17]),
        .Q(kcapture[18]),
        .R(1'b0));
  FDRE \kcapture_reg[19] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[18]),
        .Q(kcapture[19]),
        .R(1'b0));
  FDRE \kcapture_reg[1] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[0]),
        .Q(kcapture[1]),
        .R(1'b0));
  FDRE \kcapture_reg[20] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[19]),
        .Q(kcapture[20]),
        .R(1'b0));
  FDRE \kcapture_reg[21] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[20]),
        .Q(kcapture[21]),
        .R(1'b0));
  FDRE \kcapture_reg[22] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[21]),
        .Q(kcapture[22]),
        .R(1'b0));
  FDRE \kcapture_reg[23] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[22]),
        .Q(kcapture[23]),
        .R(1'b0));
  FDRE \kcapture_reg[24] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[23]),
        .Q(kcapture[24]),
        .R(1'b0));
  FDRE \kcapture_reg[25] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[24]),
        .Q(kcapture[25]),
        .R(1'b0));
  FDRE \kcapture_reg[26] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[25]),
        .Q(kcapture[26]),
        .R(1'b0));
  FDRE \kcapture_reg[27] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[26]),
        .Q(kcapture[27]),
        .R(1'b0));
  FDRE \kcapture_reg[28] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[27]),
        .Q(kcapture[28]),
        .R(1'b0));
  FDRE \kcapture_reg[29] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[28]),
        .Q(kcapture[29]),
        .R(1'b0));
  FDRE \kcapture_reg[2] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[1]),
        .Q(kcapture[2]),
        .R(1'b0));
  FDRE \kcapture_reg[30] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[29]),
        .Q(kcapture[30]),
        .R(1'b0));
  FDRE \kcapture_reg[31] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[30]),
        .Q(kcapture[31]),
        .R(1'b0));
  FDRE \kcapture_reg[3] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[2]),
        .Q(kcapture[3]),
        .R(1'b0));
  FDRE \kcapture_reg[4] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[3]),
        .Q(kcapture[4]),
        .R(1'b0));
  FDRE \kcapture_reg[5] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[4]),
        .Q(kcapture[5]),
        .R(1'b0));
  FDRE \kcapture_reg[6] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[5]),
        .Q(kcapture[6]),
        .R(1'b0));
  FDRE \kcapture_reg[7] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[6]),
        .Q(kcapture[7]),
        .R(1'b0));
  FDRE \kcapture_reg[8] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[7]),
        .Q(kcapture[8]),
        .R(1'b0));
  FDRE \kcapture_reg[9] 
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(kcapture[8]),
        .Q(kcapture[9]),
        .R(1'b0));
  FDRE polarity_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg_reg_n_0_[0][1] ),
        .Q(polarity),
        .R(1'b0));
  FDRE reset_40_reg
       (.C(Clk_40_decod_reg),
        .CE(1'b1),
        .D(fc_reset),
        .Q(reset_40),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \reset_counter[0]_i_1 
       (.I0(\reset_counter_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reset_counter[1]_i_1 
       (.I0(\reset_counter_reg_n_0_[0] ),
        .I1(\reset_counter_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \reset_counter[2]_i_1 
       (.I0(\reset_counter_reg_n_0_[0] ),
        .I1(\reset_counter_reg_n_0_[1] ),
        .I2(\reset_counter_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \reset_counter[3]_i_1 
       (.I0(\reset_counter_reg_n_0_[1] ),
        .I1(\reset_counter_reg_n_0_[0] ),
        .I2(\reset_counter_reg_n_0_[2] ),
        .I3(\reset_counter_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \reset_counter[4]_i_1 
       (.I0(\reset_counter_reg_n_0_[2] ),
        .I1(\reset_counter_reg_n_0_[0] ),
        .I2(\reset_counter_reg_n_0_[1] ),
        .I3(\reset_counter_reg_n_0_[3] ),
        .I4(\reset_counter_reg_n_0_[4] ),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \reset_counter[5]_i_1 
       (.I0(\reset_counter_reg_n_0_[3] ),
        .I1(\reset_counter_reg_n_0_[1] ),
        .I2(\reset_counter_reg_n_0_[0] ),
        .I3(\reset_counter_reg_n_0_[2] ),
        .I4(\reset_counter_reg_n_0_[4] ),
        .I5(\reset_counter_reg_n_0_[5] ),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reset_counter[6]_i_1 
       (.I0(\reset_counter[7]_i_4_n_0 ),
        .I1(\reset_counter_reg_n_0_[6] ),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \reset_counter[7]_i_1 
       (.I0(fc_reset),
        .I1(reset_decoder_io),
        .O(\reset_counter[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \reset_counter[7]_i_2 
       (.I0(reset_counter_reg__0),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reset_counter[7]_i_3 
       (.I0(\reset_counter[7]_i_4_n_0 ),
        .I1(\reset_counter_reg_n_0_[6] ),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \reset_counter[7]_i_4 
       (.I0(\reset_counter_reg_n_0_[5] ),
        .I1(\reset_counter_reg_n_0_[3] ),
        .I2(\reset_counter_reg_n_0_[1] ),
        .I3(\reset_counter_reg_n_0_[0] ),
        .I4(\reset_counter_reg_n_0_[2] ),
        .I5(\reset_counter_reg_n_0_[4] ),
        .O(\reset_counter[7]_i_4_n_0 ));
  FDRE \reset_counter_reg[0] 
       (.C(fast_control_clk),
        .CE(sel),
        .D(p_0_in__0[0]),
        .Q(\reset_counter_reg_n_0_[0] ),
        .R(\reset_counter[7]_i_1_n_0 ));
  FDRE \reset_counter_reg[1] 
       (.C(fast_control_clk),
        .CE(sel),
        .D(p_0_in__0[1]),
        .Q(\reset_counter_reg_n_0_[1] ),
        .R(\reset_counter[7]_i_1_n_0 ));
  FDRE \reset_counter_reg[2] 
       (.C(fast_control_clk),
        .CE(sel),
        .D(p_0_in__0[2]),
        .Q(\reset_counter_reg_n_0_[2] ),
        .R(\reset_counter[7]_i_1_n_0 ));
  FDRE \reset_counter_reg[3] 
       (.C(fast_control_clk),
        .CE(sel),
        .D(p_0_in__0[3]),
        .Q(\reset_counter_reg_n_0_[3] ),
        .R(\reset_counter[7]_i_1_n_0 ));
  FDRE \reset_counter_reg[4] 
       (.C(fast_control_clk),
        .CE(sel),
        .D(p_0_in__0[4]),
        .Q(\reset_counter_reg_n_0_[4] ),
        .R(\reset_counter[7]_i_1_n_0 ));
  FDRE \reset_counter_reg[5] 
       (.C(fast_control_clk),
        .CE(sel),
        .D(p_0_in__0[5]),
        .Q(\reset_counter_reg_n_0_[5] ),
        .R(\reset_counter[7]_i_1_n_0 ));
  FDRE \reset_counter_reg[6] 
       (.C(fast_control_clk),
        .CE(sel),
        .D(p_0_in__0[6]),
        .Q(\reset_counter_reg_n_0_[6] ),
        .R(\reset_counter[7]_i_1_n_0 ));
  FDRE \reset_counter_reg[7] 
       (.C(fast_control_clk),
        .CE(sel),
        .D(p_0_in__0[7]),
        .Q(reset_counter_reg__0),
        .R(\reset_counter[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    reset_counters_40_n_i_1
       (.I0(reset_40),
        .O(reset_counters_40_n_i_1_n_0));
  FDCE reset_counters_40_n_reg
       (.C(Clk_40_decod_reg),
        .CE(1'b1),
        .CLR(reset_counters_io),
        .D(reset_counters_40_n_i_1_n_0),
        .Q(reset_counters_40_n));
  FDRE reset_decoder_n_reg
       (.C(fast_control_clk),
        .CE(1'b1),
        .D(reset_counter_reg__0),
        .Q(reset_decoder_n),
        .R(1'b0));
  FDRE reset_io_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fc_reset),
        .Q(reset_io),
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
