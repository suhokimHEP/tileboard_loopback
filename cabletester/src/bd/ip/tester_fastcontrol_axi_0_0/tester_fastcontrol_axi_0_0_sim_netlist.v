// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct 29 14:15:22 2019
// Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_fastcontrol_axi_0_0/tester_fastcontrol_axi_0_0_sim_netlist.v
// Design      : tester_fastcontrol_axi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tester_fastcontrol_axi_0_0,fastcontrol_axi_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "fastcontrol_axi_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module tester_fastcontrol_axi_0_0
   (ext_lhc_clk,
    ext_lhc_clk_X8,
    fast_control_clk,
    fast_control_stream,
    fc_debug_lhc_clk,
    fc_debug_non_idle_now,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ext_lhc_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ext_lhc_clk, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN tester_clk_wiz_0_0_clk_320, INSERT_VIP 0" *) input ext_lhc_clk;
  input ext_lhc_clk_X8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fast_control_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fast_control_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN tester_fastcontrol_axi_0_0_fast_control_clk, INSERT_VIP 0" *) output fast_control_clk;
  output fast_control_stream;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fc_debug_lhc_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fc_debug_lhc_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN tester_fastcontrol_axi_0_0_fc_debug_lhc_clk, INSERT_VIP 0" *) output fc_debug_lhc_clk;
  output fc_debug_non_idle_now;
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
  wire ext_lhc_clk;
  wire ext_lhc_clk_X8;
  wire fast_control_stream;
  wire fc_debug_non_idle_now;
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

  assign fast_control_clk = ext_lhc_clk_X8;
  assign fc_debug_lhc_clk = ext_lhc_clk;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s00_axi_wready = s00_axi_awready;
  GND GND
       (.G(\<const0> ));
  tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0 inst
       (.ext_lhc_clk(ext_lhc_clk),
        .ext_lhc_clk_X8(ext_lhc_clk_X8),
        .fast_control_stream(fast_control_stream),
        .fc_debug_non_idle_now(fc_debug_non_idle_now),
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

(* ORIG_REF_NAME = "fastcontrol_axi_v1_0" *) 
module tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0
   (fc_debug_non_idle_now,
    fast_control_stream,
    s00_axi_awready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    ext_lhc_clk,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    ext_lhc_clk_X8,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_aresetn);
  output fc_debug_non_idle_now;
  output fast_control_stream;
  output s00_axi_awready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input ext_lhc_clk;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [4:0]s00_axi_araddr;
  input ext_lhc_clk_X8;
  input [4:0]s00_axi_awaddr;
  input [1:0]s00_axi_wstrb;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_aresetn;

  wire ext_lhc_clk;
  wire ext_lhc_clk_X8;
  wire fast_control_stream;
  wire fc_debug_non_idle_now;
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

  tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0_S00_AXI fastcontrol_axi_v1_0_S00_AXI_inst
       (.ext_lhc_clk(ext_lhc_clk),
        .ext_lhc_clk_X8(ext_lhc_clk_X8),
        .fast_control_stream(fast_control_stream),
        .fc_debug_non_idle_now(fc_debug_non_idle_now),
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

(* ORIG_REF_NAME = "fastcontrol_axi_v1_0_S00_AXI" *) 
module tester_fastcontrol_axi_0_0_fastcontrol_axi_v1_0_S00_AXI
   (fc_debug_non_idle_now,
    fast_control_stream,
    s00_axi_awready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    ext_lhc_clk,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    ext_lhc_clk_X8,
    s00_axi_awaddr,
    s00_axi_wstrb,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_aresetn);
  output fc_debug_non_idle_now;
  output fast_control_stream;
  output s00_axi_awready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input ext_lhc_clk;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [4:0]s00_axi_araddr;
  input ext_lhc_clk_X8;
  input [4:0]s00_axi_awaddr;
  input [1:0]s00_axi_wstrb;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_aresetn;

  wire \FSM_sequential_axi_state[0]_i_1_n_0 ;
  wire \FSM_sequential_axi_state[0]_i_2_n_0 ;
  wire \FSM_sequential_axi_state[1]_i_1_n_0 ;
  wire \FSM_sequential_axi_state[2]_i_1_n_0 ;
  wire \FSM_sequential_axi_state[2]_i_2_n_0 ;
  wire FastControlSerializer_n_1;
  wire FastControl_n_2;
  wire FastControl_n_3;
  wire FastControl_n_4;
  wire FastControl_n_5;
  wire FastControl_n_6;
  wire axi_arready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_rdata0;
  wire axi_rvalid0;
  wire [2:0]axi_state;
  wire axi_wready0;
  wire enable_fc;
  wire ext_lhc_clk;
  wire ext_lhc_clk_X8;
  wire fast_control_stream;
  wire fc_debug_non_idle_now;
  wire [31:0]fc_input;
  wire [3:3]fc_raddr;
  wire fc_raddr0;
  wire \fc_raddr_reg_n_0_[0] ;
  wire \fc_raddr_reg_n_0_[1] ;
  wire \fc_raddr_reg_n_0_[2] ;
  wire \fc_raddr_reg_n_0_[4] ;
  wire fc_reset;
  wire fc_reset0;
  wire fc_reset_i_2_n_0;
  wire fc_reset_i_3_n_0;
  wire fc_reset_i_4_n_0;
  wire fc_reset_i_5_n_0;
  wire fc_reset_i_6_n_0;
  wire [4:0]fc_waddr;
  wire fc_waddr0;
  wire [31:0]io_r_data;
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
    .INIT(64'hFF0FFF003333FFAA)) 
    \FSM_sequential_axi_state[0]_i_2 
       (.I0(s00_axi_bready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_wvalid),
        .I3(axi_state[2]),
        .I4(axi_state[0]),
        .I5(axi_state[1]),
        .O(\FSM_sequential_axi_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44444440)) 
    \FSM_sequential_axi_state[1]_i_1 
       (.I0(axi_state[2]),
        .I1(axi_state[0]),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_arvalid),
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
    .INIT(32'hFDFD3000)) 
    \FSM_sequential_axi_state[2]_i_2 
       (.I0(s00_axi_rready),
        .I1(axi_state[1]),
        .I2(axi_state[0]),
        .I3(s00_axi_arvalid),
        .I4(axi_state[2]),
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
  tester_fastcontrol_axi_0_0_hgcal_fc_manager FastControl
       (.Q(fc_waddr),
        .\cmd_reg[0] (FastControl_n_5),
        .\cmd_reg[1] (FastControl_n_4),
        .\cmd_reg[2] (FastControl_n_3),
        .\cmd_reg[3] (FastControl_n_2),
        .enable_fc(enable_fc),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_debug_non_idle_now(fc_debug_non_idle_now),
        .fc_reset(fc_reset),
        .\gen_write[0].CtlReg_reg[0][1]_0 ({axi_state[2],axi_state[0]}),
        .\gen_write[1].CtlReg_reg[1][31]_0 (fc_input),
        .\io_r_data_reg[0]_0 ({\fc_raddr_reg_n_0_[4] ,fc_raddr,\fc_raddr_reg_n_0_[2] ,\fc_raddr_reg_n_0_[1] ,\fc_raddr_reg_n_0_[0] }),
        .\io_r_data_reg[31]_0 (io_r_data),
        .\latch_fast_control_reg[1] (FastControlSerializer_n_1),
        .\phase_reg[0] (FastControl_n_6),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_wstrb(s00_axi_wstrb));
  tester_fastcontrol_axi_0_0_hgcal_fc_simple_serializer FastControlSerializer
       (.Q(FastControlSerializer_n_1),
        .enable_fc(enable_fc),
        .ext_lhc_clk(ext_lhc_clk),
        .ext_lhc_clk_X8(ext_lhc_clk_X8),
        .fast_control_stream(fast_control_stream),
        .fc_reset(fc_reset),
        .\latch_fast_control_reg[1]_0 (FastControl_n_6),
        .\latch_fast_control_reg[1]_1 (FastControl_n_5),
        .\latch_fast_control_reg[2]_0 (FastControl_n_4),
        .\latch_fast_control_reg[3]_0 (FastControl_n_3),
        .\latch_fast_control_reg[4]_0 (FastControl_n_2));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7000)) 
    axi_arready_i_1
       (.I0(axi_state[0]),
        .I1(axi_state[1]),
        .I2(axi_state[2]),
        .I3(s00_axi_arvalid),
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
    .INIT(32'h74444444)) 
    axi_bvalid_i_2
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_rvalid0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid0),
        .Q(s00_axi_rvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_state[2]),
        .I3(axi_state[0]),
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
    .INIT(16'h0008)) 
    \fc_raddr[4]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_state[0]),
        .I2(axi_state[1]),
        .I3(axi_state[2]),
        .O(fc_raddr0));
  FDRE \fc_raddr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(fc_raddr0),
        .D(s00_axi_araddr[0]),
        .Q(\fc_raddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \fc_raddr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(fc_raddr0),
        .D(s00_axi_araddr[1]),
        .Q(\fc_raddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \fc_raddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(fc_raddr0),
        .D(s00_axi_araddr[2]),
        .Q(\fc_raddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \fc_raddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(fc_raddr0),
        .D(s00_axi_araddr[3]),
        .Q(fc_raddr),
        .R(1'b0));
  FDRE \fc_raddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(fc_raddr0),
        .D(s00_axi_araddr[4]),
        .Q(\fc_raddr_reg_n_0_[4] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    fc_reset_i_1
       (.I0(fc_reset_i_2_n_0),
        .I1(s00_axi_wdata[5]),
        .I2(s00_axi_wdata[14]),
        .I3(s00_axi_wdata[2]),
        .I4(fc_reset_i_3_n_0),
        .I5(fc_reset_i_4_n_0),
        .O(fc_reset0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    fc_reset_i_2
       (.I0(axi_state[2]),
        .I1(axi_state[0]),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_wstrb[1]),
        .O(fc_reset_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    fc_reset_i_3
       (.I0(s00_axi_wdata[4]),
        .I1(s00_axi_wdata[1]),
        .I2(s00_axi_wdata[11]),
        .I3(fc_waddr[3]),
        .O(fc_reset_i_3_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    fc_reset_i_4
       (.I0(fc_reset_i_5_n_0),
        .I1(fc_reset_i_6_n_0),
        .I2(s00_axi_wdata[0]),
        .I3(fc_waddr[4]),
        .I4(s00_axi_wdata[9]),
        .I5(fc_waddr[0]),
        .O(fc_reset_i_4_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    fc_reset_i_5
       (.I0(s00_axi_wdata[15]),
        .I1(s00_axi_wdata[6]),
        .I2(fc_waddr[2]),
        .I3(s00_axi_wdata[12]),
        .I4(s00_axi_wdata[7]),
        .I5(s00_axi_wdata[13]),
        .O(fc_reset_i_5_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    fc_reset_i_6
       (.I0(s00_axi_wdata[8]),
        .I1(s00_axi_wdata[3]),
        .I2(s00_axi_wdata[10]),
        .I3(fc_waddr[1]),
        .O(fc_reset_i_6_n_0));
  FDSE fc_reset_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fc_reset0),
        .Q(fc_reset),
        .S(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    \fc_waddr[4]_i_1 
       (.I0(axi_state[1]),
        .I1(axi_state[0]),
        .I2(s00_axi_awvalid),
        .I3(axi_state[2]),
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

(* ORIG_REF_NAME = "hgcal_fast_control_encode" *) 
module tester_fastcontrol_axi_0_0_hgcal_fast_control_encode
   (\cmd_reg[3]_0 ,
    \cmd_reg[2]_0 ,
    \cmd_reg[1]_0 ,
    \cmd_reg[0]_0 ,
    DI,
    debug_non_idle_now0,
    S,
    \cmd_reg[3]_1 ,
    ext_lhc_clk,
    \cmd_reg[2]_1 ,
    \cmd_reg[1]_1 ,
    \cmd_reg[0]_1 ,
    invalid_r_reg_0,
    idleonly,
    enable_fc,
    D);
  output \cmd_reg[3]_0 ;
  output \cmd_reg[2]_0 ;
  output \cmd_reg[1]_0 ;
  output \cmd_reg[0]_0 ;
  output [0:0]DI;
  output debug_non_idle_now0;
  output [0:0]S;
  input \cmd_reg[3]_1 ;
  input ext_lhc_clk;
  input \cmd_reg[2]_1 ;
  input \cmd_reg[1]_1 ;
  input \cmd_reg[0]_1 ;
  input invalid_r_reg_0;
  input idleonly;
  input enable_fc;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \cmd_reg[0]_0 ;
  wire \cmd_reg[0]_1 ;
  wire \cmd_reg[1]_0 ;
  wire \cmd_reg[1]_1 ;
  wire \cmd_reg[2]_0 ;
  wire \cmd_reg[2]_1 ;
  wire \cmd_reg[3]_0 ;
  wire \cmd_reg[3]_1 ;
  wire debug_non_idle_now0;
  wire enable_fc;
  wire ext_lhc_clk;
  wire idleonly;
  wire invalid_r_reg_0;

  FDRE \cmd_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\cmd_reg[0]_1 ),
        .Q(\cmd_reg[0]_0 ),
        .R(1'b0));
  FDRE \cmd_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\cmd_reg[1]_1 ),
        .Q(\cmd_reg[1]_0 ),
        .R(1'b0));
  FDRE \cmd_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\cmd_reg[2]_1 ),
        .Q(\cmd_reg[2]_0 ),
        .R(1'b0));
  FDRE \cmd_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\cmd_reg[3]_1 ),
        .Q(\cmd_reg[3]_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2__5 
       (.I0(DI),
        .I1(D),
        .O(S));
  LUT6 #(
    .INIT(64'h0F000F000F000E00)) 
    debug_non_idle_now_i_1
       (.I0(\cmd_reg[1]_0 ),
        .I1(\cmd_reg[0]_0 ),
        .I2(idleonly),
        .I3(enable_fc),
        .I4(\cmd_reg[3]_0 ),
        .I5(\cmd_reg[2]_0 ),
        .O(debug_non_idle_now0));
  FDRE invalid_r_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(invalid_r_reg_0),
        .Q(DI),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager
   (enable_fc,
    fc_debug_non_idle_now,
    \cmd_reg[3] ,
    \cmd_reg[2] ,
    \cmd_reg[1] ,
    \cmd_reg[0] ,
    \phase_reg[0] ,
    \io_r_data_reg[31]_0 ,
    ext_lhc_clk,
    fc_reset,
    s00_axi_aclk,
    Q,
    \latch_fast_control_reg[1] ,
    \gen_write[1].CtlReg_reg[1][31]_0 ,
    \io_r_data_reg[0]_0 ,
    s00_axi_wstrb,
    \gen_write[0].CtlReg_reg[0][1]_0 );
  output enable_fc;
  output fc_debug_non_idle_now;
  output \cmd_reg[3] ;
  output \cmd_reg[2] ;
  output \cmd_reg[1] ;
  output \cmd_reg[0] ;
  output \phase_reg[0] ;
  output [31:0]\io_r_data_reg[31]_0 ;
  input ext_lhc_clk;
  input fc_reset;
  input s00_axi_aclk;
  input [4:0]Q;
  input [0:0]\latch_fast_control_reg[1] ;
  input [31:0]\gen_write[1].CtlReg_reg[1][31]_0 ;
  input [4:0]\io_r_data_reg[0]_0 ;
  input [1:0]s00_axi_wstrb;
  input [1:0]\gen_write[0].CtlReg_reg[0][1]_0 ;

  wire [4:0]Q;
  wire [11:0]bx;
  wire \bx[11]_i_2_n_0 ;
  wire \bx[11]_i_3_n_0 ;
  wire \bx[11]_i_4_n_0 ;
  wire \bx[11]_i_5_n_0 ;
  wire \bx[9]_i_2_n_0 ;
  wire [11:0]bx_1;
  wire [11:0]bx_target;
  wire calib_ctl_n_10;
  wire calib_ctl_n_12;
  wire calib_ctl_n_13;
  wire calib_ctl_n_14;
  wire calib_ctl_n_15;
  wire calib_ctl_n_2;
  wire calib_ctl_n_4;
  wire calib_ctl_n_5;
  wire calib_ctl_n_6;
  wire calib_ctl_n_7;
  wire calib_ctl_n_8;
  wire calib_l1a_as_normal;
  wire clear;
  wire \cmd_reg[0] ;
  wire \cmd_reg[1] ;
  wire \cmd_reg[2] ;
  wire \cmd_reg[3] ;
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
  wire count_ds_n_1;
  wire count_ds_n_10;
  wire count_ds_n_11;
  wire count_ds_n_12;
  wire count_ds_n_13;
  wire count_ds_n_14;
  wire count_ds_n_15;
  wire count_ds_n_16;
  wire count_ds_n_17;
  wire count_ds_n_18;
  wire count_ds_n_19;
  wire count_ds_n_2;
  wire count_ds_n_20;
  wire count_ds_n_21;
  wire count_ds_n_22;
  wire count_ds_n_23;
  wire count_ds_n_24;
  wire count_ds_n_25;
  wire count_ds_n_26;
  wire count_ds_n_27;
  wire count_ds_n_28;
  wire count_ds_n_29;
  wire count_ds_n_3;
  wire count_ds_n_30;
  wire count_ds_n_31;
  wire count_ds_n_32;
  wire count_ds_n_4;
  wire count_ds_n_5;
  wire count_ds_n_6;
  wire count_ds_n_7;
  wire count_ds_n_8;
  wire count_ds_n_9;
  wire count_it_n_1;
  wire count_it_n_10;
  wire count_it_n_11;
  wire count_it_n_12;
  wire count_it_n_13;
  wire count_it_n_14;
  wire count_it_n_15;
  wire count_it_n_16;
  wire count_it_n_17;
  wire count_it_n_18;
  wire count_it_n_19;
  wire count_it_n_2;
  wire count_it_n_20;
  wire count_it_n_21;
  wire count_it_n_22;
  wire count_it_n_23;
  wire count_it_n_24;
  wire count_it_n_25;
  wire count_it_n_26;
  wire count_it_n_27;
  wire count_it_n_28;
  wire count_it_n_29;
  wire count_it_n_3;
  wire count_it_n_30;
  wire count_it_n_31;
  wire count_it_n_32;
  wire count_it_n_4;
  wire count_it_n_5;
  wire count_it_n_6;
  wire count_it_n_7;
  wire count_it_n_8;
  wire count_it_n_9;
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
  wire count_os_n_1;
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
  wire count_os_n_4;
  wire count_os_n_5;
  wire count_os_n_6;
  wire count_os_n_7;
  wire count_os_n_8;
  wire count_os_n_9;
  wire [0:0]counter_reg;
  wire [0:0]counter_reg_1;
  wire [0:0]counter_reg_2;
  wire [0:0]counter_reg_3;
  wire [0:0]counter_reg_4;
  wire [0:0]counter_reg_5;
  wire [0:0]counter_reg_6;
  wire [0:0]counter_reg_7;
  wire [0:0]counter_reg_8;
  wire [31:20]data15;
  wire debug_non_idle_now0;
  wire enable_calibrationl1a;
  wire enable_fc;
  wire enable_l1agen_A;
  wire enable_l1agen_B;
  wire enable_orbitsync;
  wire enable_periodic_calib;
  wire encoder_n_6;
  wire ext_lhc_clk;
  wire fc_calibrationl1a;
  wire fc_calibrationreq;
  wire fc_daqresync;
  wire fc_debug_non_idle_now;
  wire fc_internaltest;
  wire fc_l1a;
  wire fc_l1a_for_calib;
  wire fc_l1agen_A;
  wire fc_l1agen_B;
  wire fc_linkreset;
  wire fc_orbitcountreset;
  wire fc_orbitsync;
  wire fc_reset;
  wire \gen_write[0].CtlReg[0][0]_i_1_n_0 ;
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
  wire [1:0]\gen_write[0].CtlReg_reg[0][1]_0 ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][0] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][10] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][11] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][12] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][13] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][14] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][15] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][22] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][23] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][24] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][25] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][26] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][29] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][30] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][31] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][7] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][8] ;
  wire \gen_write[0].CtlReg_reg_n_0_[0][9] ;
  wire \gen_write[1].CtlReg[1][31]_i_2_n_0 ;
  wire [31:0]\gen_write[1].CtlReg_reg[1][31]_0 ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][0] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][10] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][11] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][12] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][13] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][14] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][15] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][16] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][17] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][18] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][19] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][1] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][20] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][21] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][22] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][23] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][24] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][25] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][26] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][27] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][28] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][29] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][30] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][31] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][3] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][4] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][5] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][6] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][7] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][8] ;
  wire \gen_write[1].CtlReg_reg_n_0_[1][9] ;
  wire \gen_write[2].CtlReg[2][31]_i_1_n_0 ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][0] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][10] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][11] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][1] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][25] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][26] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][27] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][28] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][29] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][2] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][30] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][31] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][3] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][4] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][5] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][6] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][7] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][8] ;
  wire \gen_write[2].CtlReg_reg_n_0_[2][9] ;
  wire \gen_write[3].CtlReg[3][31]_i_1_n_0 ;
  wire [31:0]\gen_write[3].CtlReg_reg[3] ;
  wire \gen_write[4].CtlReg[4][31]_i_1_n_0 ;
  wire \gen_write[4].CtlReg_reg_n_0_[4][0] ;
  wire \gen_write[4].CtlReg_reg_n_0_[4][10] ;
  wire \gen_write[4].CtlReg_reg_n_0_[4][11] ;
  wire \gen_write[4].CtlReg_reg_n_0_[4][1] ;
  wire \gen_write[4].CtlReg_reg_n_0_[4][2] ;
  wire \gen_write[4].CtlReg_reg_n_0_[4][3] ;
  wire \gen_write[4].CtlReg_reg_n_0_[4][4] ;
  wire \gen_write[4].CtlReg_reg_n_0_[4][5] ;
  wire \gen_write[4].CtlReg_reg_n_0_[4][6] ;
  wire \gen_write[4].CtlReg_reg_n_0_[4][7] ;
  wire \gen_write[4].CtlReg_reg_n_0_[4][8] ;
  wire \gen_write[4].CtlReg_reg_n_0_[4][9] ;
  wire \gen_write[5].CtlReg[5][31]_i_1_n_0 ;
  wire [31:0]\gen_write[5].CtlReg_reg[5] ;
  wire idleonly;
  wire in;
  wire \io_r_data[0]_i_3_n_0 ;
  wire \io_r_data[0]_i_5_n_0 ;
  wire \io_r_data[10]_i_3_n_0 ;
  wire \io_r_data[10]_i_5_n_0 ;
  wire \io_r_data[11]_i_3_n_0 ;
  wire \io_r_data[11]_i_5_n_0 ;
  wire \io_r_data[12]_i_3_n_0 ;
  wire \io_r_data[12]_i_5_n_0 ;
  wire \io_r_data[13]_i_3_n_0 ;
  wire \io_r_data[13]_i_5_n_0 ;
  wire \io_r_data[14]_i_3_n_0 ;
  wire \io_r_data[14]_i_5_n_0 ;
  wire \io_r_data[15]_i_3_n_0 ;
  wire \io_r_data[15]_i_5_n_0 ;
  wire \io_r_data[16]_i_3_n_0 ;
  wire \io_r_data[16]_i_5_n_0 ;
  wire \io_r_data[17]_i_3_n_0 ;
  wire \io_r_data[17]_i_5_n_0 ;
  wire \io_r_data[18]_i_3_n_0 ;
  wire \io_r_data[18]_i_5_n_0 ;
  wire \io_r_data[19]_i_3_n_0 ;
  wire \io_r_data[19]_i_5_n_0 ;
  wire \io_r_data[1]_i_3_n_0 ;
  wire \io_r_data[1]_i_5_n_0 ;
  wire \io_r_data[20]_i_3_n_0 ;
  wire \io_r_data[20]_i_5_n_0 ;
  wire \io_r_data[21]_i_3_n_0 ;
  wire \io_r_data[21]_i_5_n_0 ;
  wire \io_r_data[22]_i_3_n_0 ;
  wire \io_r_data[22]_i_5_n_0 ;
  wire \io_r_data[23]_i_3_n_0 ;
  wire \io_r_data[23]_i_5_n_0 ;
  wire \io_r_data[24]_i_3_n_0 ;
  wire \io_r_data[24]_i_5_n_0 ;
  wire \io_r_data[25]_i_3_n_0 ;
  wire \io_r_data[25]_i_5_n_0 ;
  wire \io_r_data[26]_i_3_n_0 ;
  wire \io_r_data[26]_i_5_n_0 ;
  wire \io_r_data[27]_i_3_n_0 ;
  wire \io_r_data[27]_i_5_n_0 ;
  wire \io_r_data[28]_i_3_n_0 ;
  wire \io_r_data[28]_i_5_n_0 ;
  wire \io_r_data[29]_i_3_n_0 ;
  wire \io_r_data[29]_i_5_n_0 ;
  wire \io_r_data[2]_i_3_n_0 ;
  wire \io_r_data[2]_i_5_n_0 ;
  wire \io_r_data[30]_i_3_n_0 ;
  wire \io_r_data[30]_i_5_n_0 ;
  wire \io_r_data[31]_i_1_n_0 ;
  wire \io_r_data[31]_i_3_n_0 ;
  wire \io_r_data[31]_i_5_n_0 ;
  wire \io_r_data[31]_i_6_n_0 ;
  wire \io_r_data[31]_i_8_n_0 ;
  wire \io_r_data[3]_i_3_n_0 ;
  wire \io_r_data[3]_i_5_n_0 ;
  wire \io_r_data[4]_i_3_n_0 ;
  wire \io_r_data[4]_i_5_n_0 ;
  wire \io_r_data[5]_i_3_n_0 ;
  wire \io_r_data[5]_i_5_n_0 ;
  wire \io_r_data[6]_i_3_n_0 ;
  wire \io_r_data[6]_i_5_n_0 ;
  wire \io_r_data[7]_i_3_n_0 ;
  wire \io_r_data[7]_i_5_n_0 ;
  wire \io_r_data[8]_i_3_n_0 ;
  wire \io_r_data[8]_i_5_n_0 ;
  wire \io_r_data[9]_i_3_n_0 ;
  wire \io_r_data[9]_i_5_n_0 ;
  wire [4:0]\io_r_data_reg[0]_0 ;
  wire [31:0]\io_r_data_reg[31]_0 ;
  wire l1agen_B_n_3;
  wire l1agen_B_n_5;
  wire [0:0]\latch_fast_control_reg[1] ;
  wire link_daq_resync;
  wire link_reset_pending;
  wire nextos;
  wire orbit_ctl_n_3;
  wire orbit_ctl_n_4;
  wire orbit_ctl_n_5;
  wire orbit_ctl_n_6;
  wire p_0_in;
  wire p_0_in0;
  wire p_0_in_0;
  wire periodic_counter;
  wire [19:0]periodic_prescale;
  wire \phase_reg[0] ;
  wire req_daqresync;
  wire req_internal_test;
  wire req_linkreset;
  wire req_orbitcountreset;
  wire req_single_calib;
  wire req_single_l1agen_A;
  wire req_single_l1agen_B;
  wire reset_40;
  wire reset_counters_40_n;
  wire reset_counters_40_n_i_1_n_0;
  wire reset_counters_io;
  wire reset_io;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_wstrb;
  wire ss_daqresync_n_2;
  wire ss_daqresync_n_3;
  wire ss_internaltest_n_1;
  wire ss_internaltest_n_2;
  wire ss_linkreset_n_2;
  wire [31:0]value;
  wire veto_l1agen_A;
  wire veto_l1agen_B;
  wire will_fire;
  wire will_fire_0;

  LUT1 #(
    .INIT(2'h1)) 
    \bx[0]_i_1 
       (.I0(bx[0]),
        .O(bx_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bx[10]_i_1 
       (.I0(\bx[11]_i_3_n_0 ),
        .I1(\bx[11]_i_2_n_0 ),
        .I2(bx[10]),
        .O(bx_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \bx[11]_i_1 
       (.I0(\bx[11]_i_2_n_0 ),
        .I1(bx[10]),
        .I2(bx[11]),
        .I3(\bx[11]_i_3_n_0 ),
        .O(bx_1[11]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \bx[11]_i_2 
       (.I0(bx[9]),
        .I1(\bx[9]_i_2_n_0 ),
        .I2(bx[5]),
        .I3(bx[6]),
        .I4(bx[7]),
        .I5(bx[8]),
        .O(\bx[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \bx[11]_i_3 
       (.I0(\bx[11]_i_4_n_0 ),
        .I1(bx[6]),
        .I2(bx[5]),
        .I3(bx[7]),
        .I4(bx[0]),
        .I5(\bx[11]_i_5_n_0 ),
        .O(\bx[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \bx[11]_i_4 
       (.I0(bx[4]),
        .I1(bx[2]),
        .I2(bx[3]),
        .I3(bx[9]),
        .O(\bx[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bx[11]_i_5 
       (.I0(bx[8]),
        .I1(bx[1]),
        .I2(bx[11]),
        .I3(bx[10]),
        .O(\bx[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bx[1]_i_1 
       (.I0(bx[0]),
        .I1(bx[1]),
        .O(bx_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \bx[2]_i_1 
       (.I0(\bx[11]_i_3_n_0 ),
        .I1(bx[0]),
        .I2(bx[1]),
        .I3(bx[2]),
        .O(bx_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \bx[3]_i_1 
       (.I0(\bx[11]_i_3_n_0 ),
        .I1(bx[1]),
        .I2(bx[0]),
        .I3(bx[2]),
        .I4(bx[3]),
        .O(bx_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \bx[4]_i_1 
       (.I0(bx[4]),
        .I1(bx[2]),
        .I2(bx[0]),
        .I3(bx[1]),
        .I4(bx[3]),
        .O(bx_1[4]));
  LUT3 #(
    .INIT(8'h82)) 
    \bx[5]_i_1 
       (.I0(\bx[11]_i_3_n_0 ),
        .I1(\bx[9]_i_2_n_0 ),
        .I2(bx[5]),
        .O(bx_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \bx[6]_i_1 
       (.I0(\bx[11]_i_3_n_0 ),
        .I1(\bx[9]_i_2_n_0 ),
        .I2(bx[5]),
        .I3(bx[6]),
        .O(bx_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \bx[7]_i_1 
       (.I0(\bx[11]_i_3_n_0 ),
        .I1(bx[6]),
        .I2(bx[5]),
        .I3(\bx[9]_i_2_n_0 ),
        .I4(bx[7]),
        .O(bx_1[7]));
  LUT6 #(
    .INIT(64'h8AAAAAAA20000000)) 
    \bx[8]_i_1 
       (.I0(\bx[11]_i_3_n_0 ),
        .I1(\bx[9]_i_2_n_0 ),
        .I2(bx[5]),
        .I3(bx[6]),
        .I4(bx[7]),
        .I5(bx[8]),
        .O(bx_1[8]));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \bx[9]_i_1 
       (.I0(bx[9]),
        .I1(\bx[9]_i_2_n_0 ),
        .I2(bx[5]),
        .I3(bx[6]),
        .I4(bx[7]),
        .I5(bx[8]),
        .O(bx_1[9]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bx[9]_i_2 
       (.I0(bx[3]),
        .I1(bx[1]),
        .I2(bx[0]),
        .I3(bx[2]),
        .I4(bx[4]),
        .O(\bx[9]_i_2_n_0 ));
  FDRE \bx_io_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bx[0]),
        .Q(data15[20]),
        .R(1'b0));
  FDRE \bx_io_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bx[10]),
        .Q(data15[30]),
        .R(1'b0));
  FDRE \bx_io_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bx[11]),
        .Q(data15[31]),
        .R(1'b0));
  FDRE \bx_io_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bx[1]),
        .Q(data15[21]),
        .R(1'b0));
  FDRE \bx_io_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bx[2]),
        .Q(data15[22]),
        .R(1'b0));
  FDRE \bx_io_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bx[3]),
        .Q(data15[23]),
        .R(1'b0));
  FDRE \bx_io_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bx[4]),
        .Q(data15[24]),
        .R(1'b0));
  FDRE \bx_io_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bx[5]),
        .Q(data15[25]),
        .R(1'b0));
  FDRE \bx_io_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bx[6]),
        .Q(data15[26]),
        .R(1'b0));
  FDRE \bx_io_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bx[7]),
        .Q(data15[27]),
        .R(1'b0));
  FDRE \bx_io_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bx[8]),
        .Q(data15[28]),
        .R(1'b0));
  FDRE \bx_io_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bx[9]),
        .Q(data15[29]),
        .R(1'b0));
  FDRE \bx_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(bx_1[0]),
        .Q(bx[0]),
        .R(reset_40));
  FDRE \bx_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(bx_1[10]),
        .Q(bx[10]),
        .R(reset_40));
  FDRE \bx_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(bx_1[11]),
        .Q(bx[11]),
        .R(reset_40));
  FDRE \bx_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(bx_1[1]),
        .Q(bx[1]),
        .R(reset_40));
  FDRE \bx_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(bx_1[2]),
        .Q(bx[2]),
        .R(reset_40));
  FDRE \bx_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(bx_1[3]),
        .Q(bx[3]),
        .R(reset_40));
  FDRE \bx_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(bx_1[4]),
        .Q(bx[4]),
        .R(reset_40));
  FDRE \bx_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(bx_1[5]),
        .Q(bx[5]),
        .R(reset_40));
  FDRE \bx_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(bx_1[6]),
        .Q(bx[6]),
        .R(reset_40));
  FDRE \bx_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(bx_1[7]),
        .Q(bx[7]),
        .R(reset_40));
  FDRE \bx_reg[8] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(bx_1[8]),
        .Q(bx[8]),
        .R(reset_40));
  FDRE \bx_reg[9] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(bx_1[9]),
        .Q(bx[9]),
        .R(reset_40));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_calib calib_ctl
       (.D(counter_reg_5),
        .DI(calib_ctl_n_12),
        .Q(req_single_calib),
        .S(calib_ctl_n_13),
        .\cmd_reg[2] (l1agen_B_n_3),
        .\counter_reg[7] ({calib_l1a_as_normal,bx_target,\gen_write[2].CtlReg_reg_n_0_[2][11] ,\gen_write[2].CtlReg_reg_n_0_[2][10] ,\gen_write[2].CtlReg_reg_n_0_[2][9] ,\gen_write[2].CtlReg_reg_n_0_[2][8] ,\gen_write[2].CtlReg_reg_n_0_[2][7] ,\gen_write[2].CtlReg_reg_n_0_[2][6] ,\gen_write[2].CtlReg_reg_n_0_[2][5] ,\gen_write[2].CtlReg_reg_n_0_[2][4] ,\gen_write[2].CtlReg_reg_n_0_[2][3] ,\gen_write[2].CtlReg_reg_n_0_[2][2] ,\gen_write[2].CtlReg_reg_n_0_[2][1] ,\gen_write[2].CtlReg_reg_n_0_[2][0] }),
        .\counter_reg[7]_0 (counter_reg),
        .\counter_reg[7]_1 (counter_reg_1),
        .enable_calibrationl1a(enable_calibrationl1a),
        .enable_periodic_calib(enable_periodic_calib),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_calibrationl1a(fc_calibrationl1a),
        .fc_calibrationreq(fc_calibrationreq),
        .fc_daqresync(fc_daqresync),
        .fc_internaltest(fc_internaltest),
        .fc_l1a(fc_l1a),
        .fc_l1a_for_calib(fc_l1a_for_calib),
        .fc_l1agen_A(fc_l1agen_A),
        .fc_l1agen_B(fc_l1agen_B),
        .fc_linkreset(fc_linkreset),
        .fc_orbitcountreset(fc_orbitcountreset),
        .fc_orbitsync(fc_orbitsync),
        .fire_reg(calib_ctl_n_2),
        .fire_reg_0(calib_ctl_n_4),
        .fire_reg_1(calib_ctl_n_5),
        .fire_reg_2(calib_ctl_n_6),
        .fire_reg_3(calib_ctl_n_7),
        .fire_reg_4(calib_ctl_n_8),
        .fire_reg_5(calib_ctl_n_15),
        .fire_reg_6(ss_internaltest_n_1),
        .\gen_write[2].CtlReg_reg[2][24] (calib_ctl_n_14),
        .invalid_r_reg(orbit_ctl_n_3),
        .invalid_r_reg_0(orbit_ctl_n_4),
        .link_daq_resync(link_daq_resync),
        .link_reset_pending(link_reset_pending),
        .nextos(nextos),
        .pending_reg(calib_ctl_n_10),
        .pending_reg_0(bx),
        .periodic_counter(periodic_counter),
        .periodic_counter0_carry_0(\gen_write[3].CtlReg_reg[3] [19:0]),
        .reset_40(reset_40),
        .veto_l1agen_A(veto_l1agen_A),
        .veto_l1agen_B(veto_l1agen_B),
        .will_fire(will_fire_0),
        .will_fire_0(will_fire));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter count_cl1
       (.D(counter_reg),
        .DI(calib_ctl_n_12),
        .Q({count_cl1_n_1,count_cl1_n_2,count_cl1_n_3,count_cl1_n_4,count_cl1_n_5,count_cl1_n_6,count_cl1_n_7,count_cl1_n_8,count_cl1_n_9,count_cl1_n_10,count_cl1_n_11,count_cl1_n_12,count_cl1_n_13,count_cl1_n_14,count_cl1_n_15,count_cl1_n_16,count_cl1_n_17,count_cl1_n_18,count_cl1_n_19,count_cl1_n_20,count_cl1_n_21,count_cl1_n_22,count_cl1_n_23,count_cl1_n_24,count_cl1_n_25,count_cl1_n_26,count_cl1_n_27,count_cl1_n_28,count_cl1_n_29,count_cl1_n_30,count_cl1_n_31,count_cl1_n_32}),
        .clear(clear),
        .\counter_reg[7]_0 (calib_ctl_n_14),
        .ext_lhc_clk(ext_lhc_clk),
        .s00_axi_aclk(s00_axi_aclk));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_0 count_cr
       (.D(counter_reg_1),
        .Q({count_cr_n_1,count_cr_n_2,count_cr_n_3,count_cr_n_4,count_cr_n_5,count_cr_n_6,count_cr_n_7,count_cr_n_8,count_cr_n_9,count_cr_n_10,count_cr_n_11,count_cr_n_12,count_cr_n_13,count_cr_n_14,count_cr_n_15,count_cr_n_16,count_cr_n_17,count_cr_n_18,count_cr_n_19,count_cr_n_20,count_cr_n_21,count_cr_n_22,count_cr_n_23,count_cr_n_24,count_cr_n_25,count_cr_n_26,count_cr_n_27,count_cr_n_28,count_cr_n_29,count_cr_n_30,count_cr_n_31,count_cr_n_32}),
        .clear(clear),
        .\counter_reg[7]_0 (calib_ctl_n_15),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_calibrationreq(fc_calibrationreq),
        .s00_axi_aclk(s00_axi_aclk));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_1 count_ds
       (.D(counter_reg_2),
        .Q({count_lr_n_1,count_lr_n_2,count_lr_n_3,count_lr_n_4,count_lr_n_5,count_lr_n_6,count_lr_n_7,count_lr_n_8,count_lr_n_9,count_lr_n_10,count_lr_n_11,count_lr_n_12,count_lr_n_13,count_lr_n_14,count_lr_n_15,count_lr_n_16,count_lr_n_17,count_lr_n_18,count_lr_n_19,count_lr_n_20,count_lr_n_21,count_lr_n_22,count_lr_n_23,count_lr_n_24,count_lr_n_25,count_lr_n_26,count_lr_n_27,count_lr_n_28,count_lr_n_29,count_lr_n_30,count_lr_n_31,count_lr_n_32}),
        .S(ss_daqresync_n_3),
        .clear(clear),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_daqresync(fc_daqresync),
        .\io_r_data_reg[31]_i_7 (\io_r_data_reg[0]_0 [1:0]),
        .\io_r_data_reg[31]_i_7_0 ({count_cl1_n_1,count_cl1_n_2,count_cl1_n_3,count_cl1_n_4,count_cl1_n_5,count_cl1_n_6,count_cl1_n_7,count_cl1_n_8,count_cl1_n_9,count_cl1_n_10,count_cl1_n_11,count_cl1_n_12,count_cl1_n_13,count_cl1_n_14,count_cl1_n_15,count_cl1_n_16,count_cl1_n_17,count_cl1_n_18,count_cl1_n_19,count_cl1_n_20,count_cl1_n_21,count_cl1_n_22,count_cl1_n_23,count_cl1_n_24,count_cl1_n_25,count_cl1_n_26,count_cl1_n_27,count_cl1_n_28,count_cl1_n_29,count_cl1_n_30,count_cl1_n_31,count_cl1_n_32}),
        .\io_r_data_reg[31]_i_7_1 ({count_cr_n_1,count_cr_n_2,count_cr_n_3,count_cr_n_4,count_cr_n_5,count_cr_n_6,count_cr_n_7,count_cr_n_8,count_cr_n_9,count_cr_n_10,count_cr_n_11,count_cr_n_12,count_cr_n_13,count_cr_n_14,count_cr_n_15,count_cr_n_16,count_cr_n_17,count_cr_n_18,count_cr_n_19,count_cr_n_20,count_cr_n_21,count_cr_n_22,count_cr_n_23,count_cr_n_24,count_cr_n_25,count_cr_n_26,count_cr_n_27,count_cr_n_28,count_cr_n_29,count_cr_n_30,count_cr_n_31,count_cr_n_32}),
        .s00_axi_aclk(s00_axi_aclk),
        .\value_reg[0]_0 (count_ds_n_32),
        .\value_reg[10]_0 (count_ds_n_22),
        .\value_reg[11]_0 (count_ds_n_21),
        .\value_reg[12]_0 (count_ds_n_20),
        .\value_reg[13]_0 (count_ds_n_19),
        .\value_reg[14]_0 (count_ds_n_18),
        .\value_reg[15]_0 (count_ds_n_17),
        .\value_reg[16]_0 (count_ds_n_16),
        .\value_reg[17]_0 (count_ds_n_15),
        .\value_reg[18]_0 (count_ds_n_14),
        .\value_reg[19]_0 (count_ds_n_13),
        .\value_reg[1]_0 (count_ds_n_31),
        .\value_reg[20]_0 (count_ds_n_12),
        .\value_reg[21]_0 (count_ds_n_11),
        .\value_reg[22]_0 (count_ds_n_10),
        .\value_reg[23]_0 (count_ds_n_9),
        .\value_reg[24]_0 (count_ds_n_8),
        .\value_reg[25]_0 (count_ds_n_7),
        .\value_reg[26]_0 (count_ds_n_6),
        .\value_reg[27]_0 (count_ds_n_5),
        .\value_reg[28]_0 (count_ds_n_4),
        .\value_reg[29]_0 (count_ds_n_3),
        .\value_reg[2]_0 (count_ds_n_30),
        .\value_reg[30]_0 (count_ds_n_2),
        .\value_reg[31]_0 (count_ds_n_1),
        .\value_reg[3]_0 (count_ds_n_29),
        .\value_reg[4]_0 (count_ds_n_28),
        .\value_reg[5]_0 (count_ds_n_27),
        .\value_reg[6]_0 (count_ds_n_26),
        .\value_reg[7]_0 (count_ds_n_25),
        .\value_reg[8]_0 (count_ds_n_24),
        .\value_reg[9]_0 (count_ds_n_23));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_2 count_err
       (.D(counter_reg_3),
        .DI(in),
        .Q(value),
        .S(encoder_n_6),
        .clear(clear),
        .ext_lhc_clk(ext_lhc_clk),
        .reset_counters_40_n(reset_counters_40_n),
        .s00_axi_aclk(s00_axi_aclk));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_3 count_it
       (.D(counter_reg_4),
        .Q({count_it_n_1,count_it_n_2,count_it_n_3,count_it_n_4,count_it_n_5,count_it_n_6,count_it_n_7,count_it_n_8,count_it_n_9,count_it_n_10,count_it_n_11,count_it_n_12,count_it_n_13,count_it_n_14,count_it_n_15,count_it_n_16,count_it_n_17,count_it_n_18,count_it_n_19,count_it_n_20,count_it_n_21,count_it_n_22,count_it_n_23,count_it_n_24,count_it_n_25,count_it_n_26,count_it_n_27,count_it_n_28,count_it_n_29,count_it_n_30,count_it_n_31,count_it_n_32}),
        .S(ss_internaltest_n_2),
        .clear(clear),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_internaltest(fc_internaltest),
        .s00_axi_aclk(s00_axi_aclk));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_4 count_l1
       (.D(counter_reg_5),
        .DI(l1agen_B_n_5),
        .Q({count_it_n_1,count_it_n_2,count_it_n_3,count_it_n_4,count_it_n_6,count_it_n_7,count_it_n_8,count_it_n_11,count_it_n_12,count_it_n_13,count_it_n_15,count_it_n_16,count_it_n_17,count_it_n_20,count_it_n_22,count_it_n_23,count_it_n_24,count_it_n_25,count_it_n_26,count_it_n_28,count_it_n_29,count_it_n_30,count_it_n_32}),
        .S(calib_ctl_n_13),
        .clear(clear),
        .ext_lhc_clk(ext_lhc_clk),
        .\fc_raddr_reg[3] ({count_l1_n_1,count_l1_n_2,count_l1_n_3,count_l1_n_4,count_l1_n_5,count_l1_n_6,count_l1_n_7,count_l1_n_8,count_l1_n_9,count_l1_n_10,count_l1_n_11,count_l1_n_12,count_l1_n_13,count_l1_n_14,count_l1_n_15,count_l1_n_16,count_l1_n_17,count_l1_n_18,count_l1_n_19,count_l1_n_20,count_l1_n_21,count_l1_n_22,count_l1_n_23}),
        .\io_r_data_reg[0] (\io_r_data[31]_i_3_n_0 ),
        .\io_r_data_reg[0]_0 (\io_r_data[0]_i_3_n_0 ),
        .\io_r_data_reg[0]_1 (count_ocr_n_32),
        .\io_r_data_reg[10] (\io_r_data[10]_i_3_n_0 ),
        .\io_r_data_reg[10]_0 (count_ocr_n_24),
        .\io_r_data_reg[12] (\io_r_data[12]_i_3_n_0 ),
        .\io_r_data_reg[12]_0 (count_ocr_n_23),
        .\io_r_data_reg[15] (\io_r_data[15]_i_3_n_0 ),
        .\io_r_data_reg[15]_0 (count_ocr_n_22),
        .\io_r_data_reg[16] (\io_r_data[16]_i_3_n_0 ),
        .\io_r_data_reg[16]_0 (count_ocr_n_21),
        .\io_r_data_reg[17] (\io_r_data[17]_i_3_n_0 ),
        .\io_r_data_reg[17]_0 (count_ocr_n_20),
        .\io_r_data_reg[19] (\io_r_data[19]_i_3_n_0 ),
        .\io_r_data_reg[19]_0 (count_ocr_n_19),
        .\io_r_data_reg[20] (\io_r_data[20]_i_3_n_0 ),
        .\io_r_data_reg[20]_0 (count_ocr_n_18),
        .\io_r_data_reg[21] (\io_r_data[21]_i_3_n_0 ),
        .\io_r_data_reg[21]_0 (count_ocr_n_17),
        .\io_r_data_reg[24] (\io_r_data[24]_i_3_n_0 ),
        .\io_r_data_reg[24]_0 (count_ocr_n_16),
        .\io_r_data_reg[25] (\io_r_data[25]_i_3_n_0 ),
        .\io_r_data_reg[25]_0 (count_ocr_n_15),
        .\io_r_data_reg[26] (\io_r_data[26]_i_3_n_0 ),
        .\io_r_data_reg[26]_0 (count_ocr_n_14),
        .\io_r_data_reg[28] (\io_r_data[28]_i_3_n_0 ),
        .\io_r_data_reg[28]_0 (count_ocr_n_13),
        .\io_r_data_reg[29] (\io_r_data[29]_i_3_n_0 ),
        .\io_r_data_reg[29]_0 (count_ocr_n_12),
        .\io_r_data_reg[2] (\io_r_data[2]_i_3_n_0 ),
        .\io_r_data_reg[2]_0 (count_ocr_n_31),
        .\io_r_data_reg[30] (\io_r_data[30]_i_3_n_0 ),
        .\io_r_data_reg[30]_0 ({\io_r_data_reg[0]_0 [3],\io_r_data_reg[0]_0 [0]}),
        .\io_r_data_reg[30]_1 (count_ocr_n_11),
        .\io_r_data_reg[31] (\io_r_data[31]_i_5_n_0 ),
        .\io_r_data_reg[31]_0 (\io_r_data[31]_i_6_n_0 ),
        .\io_r_data_reg[31]_1 (count_ocr_n_10),
        .\io_r_data_reg[3] (\io_r_data[3]_i_3_n_0 ),
        .\io_r_data_reg[3]_0 (count_ocr_n_30),
        .\io_r_data_reg[4] (\io_r_data[4]_i_3_n_0 ),
        .\io_r_data_reg[4]_0 (count_ocr_n_29),
        .\io_r_data_reg[6] (\io_r_data[6]_i_3_n_0 ),
        .\io_r_data_reg[6]_0 (count_ocr_n_28),
        .\io_r_data_reg[7] (\io_r_data[7]_i_3_n_0 ),
        .\io_r_data_reg[7]_0 (count_ocr_n_27),
        .\io_r_data_reg[8] (\io_r_data[8]_i_3_n_0 ),
        .\io_r_data_reg[8]_0 (count_ocr_n_26),
        .\io_r_data_reg[9] (\io_r_data[9]_i_3_n_0 ),
        .\io_r_data_reg[9]_0 (count_ocr_n_25),
        .s00_axi_aclk(s00_axi_aclk),
        .\value_reg[27]_0 ({count_l1_n_24,count_l1_n_25,count_l1_n_26,count_l1_n_27,count_l1_n_28,count_l1_n_29,count_l1_n_30,count_l1_n_31,count_l1_n_32}));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_5 count_lr
       (.D(counter_reg_6),
        .Q({count_lr_n_1,count_lr_n_2,count_lr_n_3,count_lr_n_4,count_lr_n_5,count_lr_n_6,count_lr_n_7,count_lr_n_8,count_lr_n_9,count_lr_n_10,count_lr_n_11,count_lr_n_12,count_lr_n_13,count_lr_n_14,count_lr_n_15,count_lr_n_16,count_lr_n_17,count_lr_n_18,count_lr_n_19,count_lr_n_20,count_lr_n_21,count_lr_n_22,count_lr_n_23,count_lr_n_24,count_lr_n_25,count_lr_n_26,count_lr_n_27,count_lr_n_28,count_lr_n_29,count_lr_n_30,count_lr_n_31,count_lr_n_32}),
        .S(ss_linkreset_n_2),
        .clear(clear),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_linkreset(fc_linkreset),
        .s00_axi_aclk(s00_axi_aclk));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_6 count_ocr
       (.D(counter_reg_7),
        .Q({count_os_n_1,count_os_n_2,count_os_n_3,count_os_n_4,count_os_n_5,count_os_n_6,count_os_n_7,count_os_n_8,count_os_n_9,count_os_n_10,count_os_n_11,count_os_n_12,count_os_n_13,count_os_n_14,count_os_n_15,count_os_n_16,count_os_n_17,count_os_n_18,count_os_n_19,count_os_n_20,count_os_n_21,count_os_n_22,count_os_n_23,count_os_n_24,count_os_n_25,count_os_n_26,count_os_n_27,count_os_n_28,count_os_n_29,count_os_n_30,count_os_n_31,count_os_n_32}),
        .S(orbit_ctl_n_5),
        .clear(clear),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_orbitcountreset(fc_orbitcountreset),
        .\fc_raddr_reg[2] (count_ocr_n_10),
        .\fc_raddr_reg[2]_0 (count_ocr_n_11),
        .\fc_raddr_reg[2]_1 (count_ocr_n_12),
        .\fc_raddr_reg[2]_10 (count_ocr_n_21),
        .\fc_raddr_reg[2]_11 (count_ocr_n_22),
        .\fc_raddr_reg[2]_12 (count_ocr_n_23),
        .\fc_raddr_reg[2]_13 (count_ocr_n_24),
        .\fc_raddr_reg[2]_14 (count_ocr_n_25),
        .\fc_raddr_reg[2]_15 (count_ocr_n_26),
        .\fc_raddr_reg[2]_16 (count_ocr_n_27),
        .\fc_raddr_reg[2]_17 (count_ocr_n_28),
        .\fc_raddr_reg[2]_18 (count_ocr_n_29),
        .\fc_raddr_reg[2]_19 (count_ocr_n_30),
        .\fc_raddr_reg[2]_2 (count_ocr_n_13),
        .\fc_raddr_reg[2]_20 (count_ocr_n_31),
        .\fc_raddr_reg[2]_21 (count_ocr_n_32),
        .\fc_raddr_reg[2]_3 (count_ocr_n_14),
        .\fc_raddr_reg[2]_4 (count_ocr_n_15),
        .\fc_raddr_reg[2]_5 (count_ocr_n_16),
        .\fc_raddr_reg[2]_6 (count_ocr_n_17),
        .\fc_raddr_reg[2]_7 (count_ocr_n_18),
        .\fc_raddr_reg[2]_8 (count_ocr_n_19),
        .\fc_raddr_reg[2]_9 (count_ocr_n_20),
        .\fc_raddr_reg[3] ({count_ocr_n_1,count_ocr_n_2,count_ocr_n_3,count_ocr_n_4,count_ocr_n_5,count_ocr_n_6,count_ocr_n_7,count_ocr_n_8,count_ocr_n_9}),
        .\io_r_data[0]_i_2 (count_ds_n_32),
        .\io_r_data[10]_i_2 (count_ds_n_22),
        .\io_r_data[11]_i_2_0 (count_ds_n_21),
        .\io_r_data[12]_i_2 (count_ds_n_20),
        .\io_r_data[13]_i_2_0 (count_ds_n_19),
        .\io_r_data[14]_i_2_0 (count_ds_n_18),
        .\io_r_data[15]_i_2 (count_ds_n_17),
        .\io_r_data[16]_i_2 (count_ds_n_16),
        .\io_r_data[17]_i_2 (count_ds_n_15),
        .\io_r_data[18]_i_2_0 (count_ds_n_14),
        .\io_r_data[19]_i_2 (count_ds_n_13),
        .\io_r_data[1]_i_2_0 (count_ds_n_31),
        .\io_r_data[20]_i_2 (count_ds_n_12),
        .\io_r_data[21]_i_2 (count_ds_n_11),
        .\io_r_data[22]_i_2_0 (count_ds_n_10),
        .\io_r_data[23]_i_2_0 (count_ds_n_9),
        .\io_r_data[24]_i_2 (count_ds_n_8),
        .\io_r_data[25]_i_2 (count_ds_n_7),
        .\io_r_data[26]_i_2 (count_ds_n_6),
        .\io_r_data[27]_i_2_0 (count_ds_n_5),
        .\io_r_data[28]_i_2 (count_ds_n_4),
        .\io_r_data[29]_i_2 (count_ds_n_3),
        .\io_r_data[2]_i_2 (count_ds_n_30),
        .\io_r_data[30]_i_2 (count_ds_n_2),
        .\io_r_data[31]_i_4 (count_ds_n_1),
        .\io_r_data[3]_i_2 (count_ds_n_29),
        .\io_r_data[4]_i_2 (count_ds_n_28),
        .\io_r_data[5]_i_2_0 (count_ds_n_27),
        .\io_r_data[6]_i_2 (count_ds_n_26),
        .\io_r_data[7]_i_2 (count_ds_n_25),
        .\io_r_data[8]_i_2 (count_ds_n_24),
        .\io_r_data[9]_i_2 (count_ds_n_23),
        .\io_r_data_reg[11] (\io_r_data[11]_i_3_n_0 ),
        .\io_r_data_reg[13] (\io_r_data[13]_i_3_n_0 ),
        .\io_r_data_reg[14] (\io_r_data[14]_i_3_n_0 ),
        .\io_r_data_reg[18] (\io_r_data[18]_i_3_n_0 ),
        .\io_r_data_reg[1] (\io_r_data[1]_i_3_n_0 ),
        .\io_r_data_reg[1]_0 (\io_r_data[31]_i_6_n_0 ),
        .\io_r_data_reg[22] (\io_r_data[22]_i_3_n_0 ),
        .\io_r_data_reg[23] (\io_r_data[23]_i_3_n_0 ),
        .\io_r_data_reg[27] (\io_r_data[31]_i_3_n_0 ),
        .\io_r_data_reg[27]_0 (\io_r_data[27]_i_3_n_0 ),
        .\io_r_data_reg[27]_1 (\io_r_data_reg[0]_0 [3:0]),
        .\io_r_data_reg[27]_2 ({count_l1_n_24,count_l1_n_25,count_l1_n_26,count_l1_n_27,count_l1_n_28,count_l1_n_29,count_l1_n_30,count_l1_n_31,count_l1_n_32}),
        .\io_r_data_reg[27]_3 ({count_it_n_5,count_it_n_9,count_it_n_10,count_it_n_14,count_it_n_18,count_it_n_19,count_it_n_21,count_it_n_27,count_it_n_31}),
        .\io_r_data_reg[31]_i_7_0 (value),
        .\io_r_data_reg[31]_i_7_1 (data15),
        .\io_r_data_reg[5] (\io_r_data[5]_i_3_n_0 ),
        .s00_axi_aclk(s00_axi_aclk));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_7 count_os
       (.D(counter_reg_8),
        .Q({count_os_n_1,count_os_n_2,count_os_n_3,count_os_n_4,count_os_n_5,count_os_n_6,count_os_n_7,count_os_n_8,count_os_n_9,count_os_n_10,count_os_n_11,count_os_n_12,count_os_n_13,count_os_n_14,count_os_n_15,count_os_n_16,count_os_n_17,count_os_n_18,count_os_n_19,count_os_n_20,count_os_n_21,count_os_n_22,count_os_n_23,count_os_n_24,count_os_n_25,count_os_n_26,count_os_n_27,count_os_n_28,count_os_n_29,count_os_n_30,count_os_n_31,count_os_n_32}),
        .S(orbit_ctl_n_6),
        .clear(clear),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_orbitsync(fc_orbitsync),
        .s00_axi_aclk(s00_axi_aclk));
  FDRE debug_non_idle_now_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(debug_non_idle_now0),
        .Q(fc_debug_non_idle_now),
        .R(1'b0));
  FDRE enable_fc_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg_reg_n_0_[0][0] ),
        .Q(enable_fc),
        .R(1'b0));
  tester_fastcontrol_axi_0_0_hgcal_fast_control_encode encoder
       (.D(counter_reg_3),
        .DI(in),
        .S(encoder_n_6),
        .\cmd_reg[0]_0 (\cmd_reg[0] ),
        .\cmd_reg[0]_1 (calib_ctl_n_6),
        .\cmd_reg[1]_0 (\cmd_reg[1] ),
        .\cmd_reg[1]_1 (calib_ctl_n_5),
        .\cmd_reg[2]_0 (\cmd_reg[2] ),
        .\cmd_reg[2]_1 (calib_ctl_n_7),
        .\cmd_reg[3]_0 (\cmd_reg[3] ),
        .\cmd_reg[3]_1 (calib_ctl_n_2),
        .debug_non_idle_now0(debug_non_idle_now0),
        .enable_fc(enable_fc),
        .ext_lhc_clk(ext_lhc_clk),
        .idleonly(idleonly),
        .invalid_r_reg_0(calib_ctl_n_4));
  LUT6 #(
    .INIT(64'hFFFF0001FFFE0000)) 
    \gen_write[0].CtlReg[0][0]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[0].CtlReg_reg_n_0_[0][0] ),
        .I5(\gen_write[1].CtlReg_reg[1][31]_0 [0]),
        .O(\gen_write[0].CtlReg[0][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_write[0].CtlReg[0][15]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .O(\gen_write[0].CtlReg[0][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][16]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [16]),
        .O(\gen_write[0].CtlReg[0][16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][17]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [17]),
        .O(\gen_write[0].CtlReg[0][17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][18]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [18]),
        .O(\gen_write[0].CtlReg[0][18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][19]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [19]),
        .O(\gen_write[0].CtlReg[0][19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][20]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [20]),
        .O(\gen_write[0].CtlReg[0][20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][21]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [21]),
        .O(\gen_write[0].CtlReg[0][21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][22]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [22]),
        .O(\gen_write[0].CtlReg[0][22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][23]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [23]),
        .O(\gen_write[0].CtlReg[0][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][24]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [24]),
        .O(\gen_write[0].CtlReg[0][24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][25]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [25]),
        .O(\gen_write[0].CtlReg[0][25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][26]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [26]),
        .O(\gen_write[0].CtlReg[0][26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][27]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [27]),
        .O(\gen_write[0].CtlReg[0][27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][28]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [28]),
        .O(\gen_write[0].CtlReg[0][28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][29]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [29]),
        .O(\gen_write[0].CtlReg[0][29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][30]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [30]),
        .O(\gen_write[0].CtlReg[0][30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \gen_write[0].CtlReg[0][31]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\gen_write[1].CtlReg_reg[1][31]_0 [31]),
        .O(\gen_write[0].CtlReg[0][31]_i_1_n_0 ));
  FDSE \gen_write[0].CtlReg_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][0]_i_1_n_0 ),
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][0] ),
        .S(reset_io));
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
        .Q(req_single_calib),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][17]_i_1_n_0 ),
        .Q(req_orbitcountreset),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][18]_i_1_n_0 ),
        .Q(req_linkreset),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][19]_i_1_n_0 ),
        .Q(req_daqresync),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [1]),
        .Q(p_0_in),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][20]_i_1_n_0 ),
        .Q(req_single_l1agen_A),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_write[0].CtlReg[0][21]_i_1_n_0 ),
        .Q(req_single_l1agen_B),
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
        .Q(req_internal_test),
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
        .Q(\gen_write[0].CtlReg_reg_n_0_[0][29] ),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [2]),
        .Q(enable_orbitsync),
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
        .Q(enable_periodic_calib),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [4]),
        .Q(enable_calibrationl1a),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [5]),
        .Q(enable_l1agen_A),
        .R(reset_io));
  FDRE \gen_write[0].CtlReg_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[0].CtlReg[0][15]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [6]),
        .Q(enable_l1agen_B),
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
    .INIT(16'h0002)) 
    \gen_write[1].CtlReg[1][31]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .I3(Q[1]),
        .O(p_0_in_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \gen_write[1].CtlReg[1][31]_i_2 
       (.I0(s00_axi_wstrb[1]),
        .I1(s00_axi_wstrb[0]),
        .I2(\gen_write[0].CtlReg_reg[0][1]_0 [0]),
        .I3(\gen_write[0].CtlReg_reg[0][1]_0 [1]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\gen_write[1].CtlReg[1][31]_i_2_n_0 ));
  FDRE \gen_write[1].CtlReg_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [0]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][0] ),
        .R(reset_io));
  FDSE \gen_write[1].CtlReg_reg[1][10] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [10]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][10] ),
        .S(reset_io));
  FDSE \gen_write[1].CtlReg_reg[1][11] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [11]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][11] ),
        .S(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][12] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [12]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][12] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][13] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [13]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][13] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][14] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [14]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][14] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][15] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [15]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][15] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][16] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [16]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][16] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][17] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [17]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][17] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][18] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [18]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][18] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][19] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [19]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][19] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [1]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][1] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][20] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [20]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][20] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][21] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [21]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][21] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][22] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [22]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][22] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][23] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [23]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][23] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][24] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [24]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][24] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][25] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [25]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][25] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][26] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [26]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][26] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][27] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [27]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][27] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][28] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [28]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][28] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][29] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [29]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][29] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [2]),
        .Q(p_0_in0),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][30] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [30]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][30] ),
        .R(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][31] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [31]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][31] ),
        .R(reset_io));
  FDSE \gen_write[1].CtlReg_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [3]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][3] ),
        .S(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [4]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][4] ),
        .R(reset_io));
  FDSE \gen_write[1].CtlReg_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [5]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][5] ),
        .S(reset_io));
  FDSE \gen_write[1].CtlReg_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [6]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][6] ),
        .S(reset_io));
  FDSE \gen_write[1].CtlReg_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [7]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][7] ),
        .S(reset_io));
  FDSE \gen_write[1].CtlReg_reg[1][8] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [8]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][8] ),
        .S(reset_io));
  FDRE \gen_write[1].CtlReg_reg[1][9] 
       (.C(s00_axi_aclk),
        .CE(p_0_in_0),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [9]),
        .Q(\gen_write[1].CtlReg_reg_n_0_[1][9] ),
        .R(reset_io));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_write[2].CtlReg[2][31]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .O(\gen_write[2].CtlReg[2][31]_i_1_n_0 ));
  FDRE \gen_write[2].CtlReg_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [0]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][0] ),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][10] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [10]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][10] ),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][11] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [11]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][11] ),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][12] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [12]),
        .Q(bx_target[0]),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][13] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [13]),
        .Q(bx_target[1]),
        .R(reset_io));
  FDSE \gen_write[2].CtlReg_reg[2][14] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [14]),
        .Q(bx_target[2]),
        .S(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][15] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [15]),
        .Q(bx_target[3]),
        .R(reset_io));
  FDSE \gen_write[2].CtlReg_reg[2][16] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [16]),
        .Q(bx_target[4]),
        .S(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][17] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [17]),
        .Q(bx_target[5]),
        .R(reset_io));
  FDSE \gen_write[2].CtlReg_reg[2][18] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [18]),
        .Q(bx_target[6]),
        .S(reset_io));
  FDSE \gen_write[2].CtlReg_reg[2][19] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [19]),
        .Q(bx_target[7]),
        .S(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [1]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][1] ),
        .R(reset_io));
  FDSE \gen_write[2].CtlReg_reg[2][20] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [20]),
        .Q(bx_target[8]),
        .S(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][21] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [21]),
        .Q(bx_target[9]),
        .R(reset_io));
  FDSE \gen_write[2].CtlReg_reg[2][22] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [22]),
        .Q(bx_target[10]),
        .S(reset_io));
  FDSE \gen_write[2].CtlReg_reg[2][23] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [23]),
        .Q(bx_target[11]),
        .S(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][24] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [24]),
        .Q(calib_l1a_as_normal),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][25] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [25]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][25] ),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][26] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [26]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][26] ),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][27] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [27]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][27] ),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][28] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [28]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][28] ),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][29] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [29]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][29] ),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [2]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][2] ),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][30] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [30]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][30] ),
        .R(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][31] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [31]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][31] ),
        .R(reset_io));
  FDSE \gen_write[2].CtlReg_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [3]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][3] ),
        .S(reset_io));
  FDRE \gen_write[2].CtlReg_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [4]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][4] ),
        .R(reset_io));
  FDSE \gen_write[2].CtlReg_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [5]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][5] ),
        .S(reset_io));
  FDSE \gen_write[2].CtlReg_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [6]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][6] ),
        .S(reset_io));
  FDSE \gen_write[2].CtlReg_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [7]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][7] ),
        .S(reset_io));
  FDSE \gen_write[2].CtlReg_reg[2][8] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [8]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][8] ),
        .S(reset_io));
  FDSE \gen_write[2].CtlReg_reg[2][9] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[2].CtlReg[2][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [9]),
        .Q(\gen_write[2].CtlReg_reg_n_0_[2][9] ),
        .S(reset_io));
  LUT4 #(
    .INIT(16'h0008)) 
    \gen_write[3].CtlReg[3][31]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
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
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_write[4].CtlReg[4][31]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .O(\gen_write[4].CtlReg[4][31]_i_1_n_0 ));
  FDRE \gen_write[4].CtlReg_reg[4][0] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [0]),
        .Q(\gen_write[4].CtlReg_reg_n_0_[4][0] ),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][10] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [10]),
        .Q(\gen_write[4].CtlReg_reg_n_0_[4][10] ),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][11] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [11]),
        .Q(\gen_write[4].CtlReg_reg_n_0_[4][11] ),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][12] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [12]),
        .Q(periodic_prescale[0]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][13] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [13]),
        .Q(periodic_prescale[1]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][14] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [14]),
        .Q(periodic_prescale[2]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][15] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [15]),
        .Q(periodic_prescale[3]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][16] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [16]),
        .Q(periodic_prescale[4]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][17] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [17]),
        .Q(periodic_prescale[5]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][18] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [18]),
        .Q(periodic_prescale[6]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][19] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [19]),
        .Q(periodic_prescale[7]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][1] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [1]),
        .Q(\gen_write[4].CtlReg_reg_n_0_[4][1] ),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][20] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [20]),
        .Q(periodic_prescale[8]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][21] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [21]),
        .Q(periodic_prescale[9]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][22] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [22]),
        .Q(periodic_prescale[10]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][23] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [23]),
        .Q(periodic_prescale[11]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][24] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [24]),
        .Q(periodic_prescale[12]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][25] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [25]),
        .Q(periodic_prescale[13]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][26] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [26]),
        .Q(periodic_prescale[14]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][27] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [27]),
        .Q(periodic_prescale[15]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][28] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [28]),
        .Q(periodic_prescale[16]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][29] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [29]),
        .Q(periodic_prescale[17]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][2] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [2]),
        .Q(\gen_write[4].CtlReg_reg_n_0_[4][2] ),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][30] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [30]),
        .Q(periodic_prescale[18]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][31] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [31]),
        .Q(periodic_prescale[19]),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][3] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [3]),
        .Q(\gen_write[4].CtlReg_reg_n_0_[4][3] ),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][4] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [4]),
        .Q(\gen_write[4].CtlReg_reg_n_0_[4][4] ),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][5] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [5]),
        .Q(\gen_write[4].CtlReg_reg_n_0_[4][5] ),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][6] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [6]),
        .Q(\gen_write[4].CtlReg_reg_n_0_[4][6] ),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][7] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [7]),
        .Q(\gen_write[4].CtlReg_reg_n_0_[4][7] ),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][8] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [8]),
        .Q(\gen_write[4].CtlReg_reg_n_0_[4][8] ),
        .R(reset_io));
  FDRE \gen_write[4].CtlReg_reg[4][9] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[4].CtlReg[4][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [9]),
        .Q(\gen_write[4].CtlReg_reg_n_0_[4][9] ),
        .R(reset_io));
  LUT4 #(
    .INIT(16'h0020)) 
    \gen_write[5].CtlReg[5][31]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\gen_write[1].CtlReg[1][31]_i_2_n_0 ),
        .O(\gen_write[5].CtlReg[5][31]_i_1_n_0 ));
  FDRE \gen_write[5].CtlReg_reg[5][0] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [0]),
        .Q(\gen_write[5].CtlReg_reg[5] [0]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][10] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [10]),
        .Q(\gen_write[5].CtlReg_reg[5] [10]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][11] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [11]),
        .Q(\gen_write[5].CtlReg_reg[5] [11]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][12] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [12]),
        .Q(\gen_write[5].CtlReg_reg[5] [12]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][13] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [13]),
        .Q(\gen_write[5].CtlReg_reg[5] [13]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][14] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [14]),
        .Q(\gen_write[5].CtlReg_reg[5] [14]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][15] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [15]),
        .Q(\gen_write[5].CtlReg_reg[5] [15]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][16] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [16]),
        .Q(\gen_write[5].CtlReg_reg[5] [16]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][17] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [17]),
        .Q(\gen_write[5].CtlReg_reg[5] [17]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][18] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [18]),
        .Q(\gen_write[5].CtlReg_reg[5] [18]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][19] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [19]),
        .Q(\gen_write[5].CtlReg_reg[5] [19]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][1] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [1]),
        .Q(\gen_write[5].CtlReg_reg[5] [1]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][20] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [20]),
        .Q(\gen_write[5].CtlReg_reg[5] [20]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][21] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [21]),
        .Q(\gen_write[5].CtlReg_reg[5] [21]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][22] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [22]),
        .Q(\gen_write[5].CtlReg_reg[5] [22]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][23] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [23]),
        .Q(\gen_write[5].CtlReg_reg[5] [23]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][24] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [24]),
        .Q(\gen_write[5].CtlReg_reg[5] [24]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][25] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [25]),
        .Q(\gen_write[5].CtlReg_reg[5] [25]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][26] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [26]),
        .Q(\gen_write[5].CtlReg_reg[5] [26]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][27] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [27]),
        .Q(\gen_write[5].CtlReg_reg[5] [27]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][28] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [28]),
        .Q(\gen_write[5].CtlReg_reg[5] [28]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][29] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [29]),
        .Q(\gen_write[5].CtlReg_reg[5] [29]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][2] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [2]),
        .Q(\gen_write[5].CtlReg_reg[5] [2]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][30] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [30]),
        .Q(\gen_write[5].CtlReg_reg[5] [30]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][31] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [31]),
        .Q(\gen_write[5].CtlReg_reg[5] [31]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][3] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [3]),
        .Q(\gen_write[5].CtlReg_reg[5] [3]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][4] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [4]),
        .Q(\gen_write[5].CtlReg_reg[5] [4]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][5] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [5]),
        .Q(\gen_write[5].CtlReg_reg[5] [5]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][6] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [6]),
        .Q(\gen_write[5].CtlReg_reg[5] [6]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][7] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [7]),
        .Q(\gen_write[5].CtlReg_reg[5] [7]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][8] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [8]),
        .Q(\gen_write[5].CtlReg_reg[5] [8]),
        .R(reset_io));
  FDRE \gen_write[5].CtlReg_reg[5][9] 
       (.C(s00_axi_aclk),
        .CE(\gen_write[5].CtlReg[5][31]_i_1_n_0 ),
        .D(\gen_write[1].CtlReg_reg[1][31]_0 [9]),
        .Q(\gen_write[5].CtlReg_reg[5] [9]),
        .R(reset_io));
  FDRE idleonly_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(idleonly),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[0]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [0]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(\gen_write[4].CtlReg_reg_n_0_[4][0] ),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[0]_i_5_n_0 ),
        .O(\io_r_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[0]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [0]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][0] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][0] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][0] ),
        .O(\io_r_data[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[10]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [10]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(\gen_write[4].CtlReg_reg_n_0_[4][10] ),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[10]_i_5_n_0 ),
        .O(\io_r_data[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[10]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [10]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][10] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][10] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][10] ),
        .O(\io_r_data[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[11]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [11]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(\gen_write[4].CtlReg_reg_n_0_[4][11] ),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[11]_i_5_n_0 ),
        .O(\io_r_data[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[11]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [11]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][11] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][11] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][11] ),
        .O(\io_r_data[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[12]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [12]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[0]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[12]_i_5_n_0 ),
        .O(\io_r_data[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[12]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [12]),
        .I1(bx_target[0]),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][12] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][12] ),
        .O(\io_r_data[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[13]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [13]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[1]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[13]_i_5_n_0 ),
        .O(\io_r_data[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[13]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [13]),
        .I1(bx_target[1]),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][13] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][13] ),
        .O(\io_r_data[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[14]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [14]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[2]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[14]_i_5_n_0 ),
        .O(\io_r_data[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[14]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [14]),
        .I1(bx_target[2]),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][14] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][14] ),
        .O(\io_r_data[14]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[15]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [15]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[3]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[15]_i_5_n_0 ),
        .O(\io_r_data[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[15]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [15]),
        .I1(bx_target[3]),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][15] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][15] ),
        .O(\io_r_data[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[16]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [16]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[4]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[16]_i_5_n_0 ),
        .O(\io_r_data[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[16]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [16]),
        .I1(bx_target[4]),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][16] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(req_single_calib),
        .O(\io_r_data[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[17]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [17]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[5]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[17]_i_5_n_0 ),
        .O(\io_r_data[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[17]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [17]),
        .I1(bx_target[5]),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][17] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(req_orbitcountreset),
        .O(\io_r_data[17]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[18]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [18]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[6]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[18]_i_5_n_0 ),
        .O(\io_r_data[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[18]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [18]),
        .I1(bx_target[6]),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][18] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(req_linkreset),
        .O(\io_r_data[18]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[19]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [19]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[7]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[19]_i_5_n_0 ),
        .O(\io_r_data[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[19]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [19]),
        .I1(bx_target[7]),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][19] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(req_daqresync),
        .O(\io_r_data[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[1]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [1]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(\gen_write[4].CtlReg_reg_n_0_[4][1] ),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[1]_i_5_n_0 ),
        .O(\io_r_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[1]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [1]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][1] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][1] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(p_0_in),
        .O(\io_r_data[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[20]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [20]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[8]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[20]_i_5_n_0 ),
        .O(\io_r_data[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[20]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [20]),
        .I1(bx_target[8]),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][20] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(req_single_l1agen_A),
        .O(\io_r_data[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[21]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [21]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[9]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[21]_i_5_n_0 ),
        .O(\io_r_data[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[21]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [21]),
        .I1(bx_target[9]),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][21] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(req_single_l1agen_B),
        .O(\io_r_data[21]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[22]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [22]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[10]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[22]_i_5_n_0 ),
        .O(\io_r_data[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[22]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [22]),
        .I1(bx_target[10]),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][22] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][22] ),
        .O(\io_r_data[22]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[23]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [23]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[11]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[23]_i_5_n_0 ),
        .O(\io_r_data[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[23]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [23]),
        .I1(bx_target[11]),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][23] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][23] ),
        .O(\io_r_data[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[24]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [24]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[12]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[24]_i_5_n_0 ),
        .O(\io_r_data[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[24]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [24]),
        .I1(calib_l1a_as_normal),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][24] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][24] ),
        .O(\io_r_data[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[25]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [25]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[13]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[25]_i_5_n_0 ),
        .O(\io_r_data[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[25]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [25]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][25] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][25] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][25] ),
        .O(\io_r_data[25]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[26]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [26]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[14]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[26]_i_5_n_0 ),
        .O(\io_r_data[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[26]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [26]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][26] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][26] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][26] ),
        .O(\io_r_data[26]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[27]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [27]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[15]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[27]_i_5_n_0 ),
        .O(\io_r_data[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[27]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [27]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][27] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][27] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(req_internal_test),
        .O(\io_r_data[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[28]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [28]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[16]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[28]_i_5_n_0 ),
        .O(\io_r_data[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[28]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [28]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][28] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][28] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(reset_counters_io),
        .O(\io_r_data[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[29]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [29]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[17]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[29]_i_5_n_0 ),
        .O(\io_r_data[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[29]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [29]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][29] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][29] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][29] ),
        .O(\io_r_data[29]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[2]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [2]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(\gen_write[4].CtlReg_reg_n_0_[4][2] ),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[2]_i_5_n_0 ),
        .O(\io_r_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[2]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [2]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][2] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(p_0_in0),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(enable_orbitsync),
        .O(\io_r_data[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[30]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [30]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[18]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[30]_i_5_n_0 ),
        .O(\io_r_data[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[30]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [30]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][30] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][30] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][30] ),
        .O(\io_r_data[30]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \io_r_data[31]_i_1 
       (.I0(\io_r_data_reg[0]_0 [3]),
        .I1(\io_r_data_reg[0]_0 [4]),
        .O(\io_r_data[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \io_r_data[31]_i_3 
       (.I0(\io_r_data_reg[0]_0 [3]),
        .I1(\io_r_data_reg[0]_0 [4]),
        .O(\io_r_data[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[31]_i_5 
       (.I0(\gen_write[5].CtlReg_reg[5] [31]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(periodic_prescale[19]),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[31]_i_8_n_0 ),
        .O(\io_r_data[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \io_r_data[31]_i_6 
       (.I0(\io_r_data_reg[0]_0 [2]),
        .I1(\io_r_data_reg[0]_0 [3]),
        .I2(\io_r_data_reg[0]_0 [1]),
        .O(\io_r_data[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[31]_i_8 
       (.I0(\gen_write[3].CtlReg_reg[3] [31]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][31] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][31] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][31] ),
        .O(\io_r_data[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[3]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [3]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(\gen_write[4].CtlReg_reg_n_0_[4][3] ),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[3]_i_5_n_0 ),
        .O(\io_r_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[3]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [3]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][3] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][3] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(enable_periodic_calib),
        .O(\io_r_data[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[4]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [4]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(\gen_write[4].CtlReg_reg_n_0_[4][4] ),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[4]_i_5_n_0 ),
        .O(\io_r_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[4]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [4]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][4] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][4] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(enable_calibrationl1a),
        .O(\io_r_data[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[5]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [5]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(\gen_write[4].CtlReg_reg_n_0_[4][5] ),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[5]_i_5_n_0 ),
        .O(\io_r_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[5]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [5]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][5] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][5] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(enable_l1agen_A),
        .O(\io_r_data[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[6]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [6]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(\gen_write[4].CtlReg_reg_n_0_[4][6] ),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[6]_i_5_n_0 ),
        .O(\io_r_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[6]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [6]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][6] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][6] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(enable_l1agen_B),
        .O(\io_r_data[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[7]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [7]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(\gen_write[4].CtlReg_reg_n_0_[4][7] ),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[7]_i_5_n_0 ),
        .O(\io_r_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[7]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [7]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][7] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][7] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][7] ),
        .O(\io_r_data[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[8]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [8]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(\gen_write[4].CtlReg_reg_n_0_[4][8] ),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[8]_i_5_n_0 ),
        .O(\io_r_data[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[8]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [8]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][8] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][8] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][8] ),
        .O(\io_r_data[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \io_r_data[9]_i_3 
       (.I0(\gen_write[5].CtlReg_reg[5] [9]),
        .I1(\io_r_data_reg[0]_0 [0]),
        .I2(\gen_write[4].CtlReg_reg_n_0_[4][9] ),
        .I3(\io_r_data_reg[0]_0 [2]),
        .I4(\io_r_data[9]_i_5_n_0 ),
        .O(\io_r_data[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[9]_i_5 
       (.I0(\gen_write[3].CtlReg_reg[3] [9]),
        .I1(\gen_write[2].CtlReg_reg_n_0_[2][9] ),
        .I2(\io_r_data_reg[0]_0 [1]),
        .I3(\gen_write[1].CtlReg_reg_n_0_[1][9] ),
        .I4(\io_r_data_reg[0]_0 [0]),
        .I5(\gen_write[0].CtlReg_reg_n_0_[0][9] ),
        .O(\io_r_data[9]_i_5_n_0 ));
  FDRE \io_r_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_23),
        .Q(\io_r_data_reg[31]_0 [0]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_15),
        .Q(\io_r_data_reg[31]_0 [10]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_ocr_n_7),
        .Q(\io_r_data_reg[31]_0 [11]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_14),
        .Q(\io_r_data_reg[31]_0 [12]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_ocr_n_6),
        .Q(\io_r_data_reg[31]_0 [13]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_ocr_n_5),
        .Q(\io_r_data_reg[31]_0 [14]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_13),
        .Q(\io_r_data_reg[31]_0 [15]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_12),
        .Q(\io_r_data_reg[31]_0 [16]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_11),
        .Q(\io_r_data_reg[31]_0 [17]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_ocr_n_4),
        .Q(\io_r_data_reg[31]_0 [18]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_10),
        .Q(\io_r_data_reg[31]_0 [19]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_ocr_n_9),
        .Q(\io_r_data_reg[31]_0 [1]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_9),
        .Q(\io_r_data_reg[31]_0 [20]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_8),
        .Q(\io_r_data_reg[31]_0 [21]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_ocr_n_3),
        .Q(\io_r_data_reg[31]_0 [22]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_ocr_n_2),
        .Q(\io_r_data_reg[31]_0 [23]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_7),
        .Q(\io_r_data_reg[31]_0 [24]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_6),
        .Q(\io_r_data_reg[31]_0 [25]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_5),
        .Q(\io_r_data_reg[31]_0 [26]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_ocr_n_1),
        .Q(\io_r_data_reg[31]_0 [27]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_4),
        .Q(\io_r_data_reg[31]_0 [28]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_3),
        .Q(\io_r_data_reg[31]_0 [29]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_22),
        .Q(\io_r_data_reg[31]_0 [2]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_2),
        .Q(\io_r_data_reg[31]_0 [30]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_1),
        .Q(\io_r_data_reg[31]_0 [31]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_21),
        .Q(\io_r_data_reg[31]_0 [3]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_20),
        .Q(\io_r_data_reg[31]_0 [4]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_ocr_n_8),
        .Q(\io_r_data_reg[31]_0 [5]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_19),
        .Q(\io_r_data_reg[31]_0 [6]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_18),
        .Q(\io_r_data_reg[31]_0 [7]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_17),
        .Q(\io_r_data_reg[31]_0 [8]),
        .R(\io_r_data[31]_i_1_n_0 ));
  FDRE \io_r_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_l1_n_16),
        .Q(\io_r_data_reg[31]_0 [9]),
        .R(\io_r_data[31]_i_1_n_0 ));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a l1agen_A
       (.Q(req_single_l1agen_A),
        .enable_l1agen_A(enable_l1agen_A),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_l1agen_A(fc_l1agen_A),
        .pending_i_3__0(bx),
        .periodic_counter(periodic_counter),
        .periodic_counter0_carry_0({periodic_prescale,\gen_write[4].CtlReg_reg_n_0_[4][11] ,\gen_write[4].CtlReg_reg_n_0_[4][10] ,\gen_write[4].CtlReg_reg_n_0_[4][9] ,\gen_write[4].CtlReg_reg_n_0_[4][8] ,\gen_write[4].CtlReg_reg_n_0_[4][7] ,\gen_write[4].CtlReg_reg_n_0_[4][6] ,\gen_write[4].CtlReg_reg_n_0_[4][5] ,\gen_write[4].CtlReg_reg_n_0_[4][4] ,\gen_write[4].CtlReg_reg_n_0_[4][3] ,\gen_write[4].CtlReg_reg_n_0_[4][2] ,\gen_write[4].CtlReg_reg_n_0_[4][1] ,\gen_write[4].CtlReg_reg_n_0_[4][0] }),
        .reset_40(reset_40),
        .veto_l1agen_A(veto_l1agen_A));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a_8 l1agen_B
       (.DI(l1agen_B_n_5),
        .Q(req_single_l1agen_B),
        .enable_l1agen_B(enable_l1agen_B),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_daqresync(fc_daqresync),
        .fc_internaltest(fc_internaltest),
        .fc_l1a(fc_l1a),
        .fc_l1a_for_calib(fc_l1a_for_calib),
        .fc_l1agen_A(fc_l1agen_A),
        .fc_l1agen_B(fc_l1agen_B),
        .fc_linkreset(fc_linkreset),
        .fc_orbitcountreset(fc_orbitcountreset),
        .fire_reg(l1agen_B_n_3),
        .pending_reg(bx),
        .periodic_counter(periodic_counter),
        .periodic_counter0_carry_0(\gen_write[5].CtlReg_reg[5] ),
        .reset_40(reset_40),
        .veto_l1agen_B(veto_l1agen_B));
  LUT3 #(
    .INIT(8'h8A)) 
    \latch_fast_control[4]_i_1 
       (.I0(\latch_fast_control_reg[1] ),
        .I1(idleonly),
        .I2(enable_fc),
        .O(\phase_reg[0] ));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_orbitsync orbit_ctl
       (.D(counter_reg_7),
        .Q(req_orbitcountreset),
        .S(orbit_ctl_n_5),
        .\counter_reg[7] (counter_reg_8),
        .enable_orbitsync(enable_orbitsync),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_calibrationl1a(fc_calibrationl1a),
        .fc_calibrationreq(fc_calibrationreq),
        .fc_daqresync(fc_daqresync),
        .fc_internaltest(fc_internaltest),
        .fc_l1a(fc_l1a),
        .fc_linkreset(fc_linkreset),
        .fc_orbitcountreset(fc_orbitcountreset),
        .fc_orbitsync(fc_orbitsync),
        .fire_reg(orbit_ctl_n_3),
        .fire_reg_0(orbit_ctl_n_4),
        .fire_reg_1(orbit_ctl_n_6),
        .invalid_r_reg(ss_daqresync_n_2),
        .invalid_r_reg_0(calib_ctl_n_8),
        .nextos(nextos),
        .pending_i_3__2(bx),
        .reset_40(reset_40),
        .\start_sequence_40_reg[11] ({\gen_write[1].CtlReg_reg_n_0_[1][11] ,\gen_write[1].CtlReg_reg_n_0_[1][10] ,\gen_write[1].CtlReg_reg_n_0_[1][9] ,\gen_write[1].CtlReg_reg_n_0_[1][8] ,\gen_write[1].CtlReg_reg_n_0_[1][7] ,\gen_write[1].CtlReg_reg_n_0_[1][6] ,\gen_write[1].CtlReg_reg_n_0_[1][5] ,\gen_write[1].CtlReg_reg_n_0_[1][4] ,\gen_write[1].CtlReg_reg_n_0_[1][3] ,p_0_in0,\gen_write[1].CtlReg_reg_n_0_[1][1] ,\gen_write[1].CtlReg_reg_n_0_[1][0] }));
  FDRE reset_40_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(fc_reset),
        .Q(reset_40),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_counters_40_n_i_1
       (.I0(reset_40),
        .O(reset_counters_40_n_i_1_n_0));
  FDCE reset_counters_40_n_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .CLR(reset_counters_io),
        .D(reset_counters_40_n_i_1_n_0),
        .Q(reset_counters_40_n));
  FDRE reset_io_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fc_reset),
        .Q(reset_io),
        .R(1'b0));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot ss_daqresync
       (.D(counter_reg_2),
        .Q(req_daqresync),
        .S(ss_daqresync_n_3),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_daqresync(fc_daqresync),
        .fc_l1a_for_calib(fc_l1a_for_calib),
        .fc_l1agen_A(fc_l1agen_A),
        .fc_l1agen_B(fc_l1agen_B),
        .fire_reg_0(ss_daqresync_n_2),
        .link_daq_resync(link_daq_resync),
        .pending_reg_0(calib_ctl_n_10),
        .reset_40(reset_40));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_9 ss_internaltest
       (.D(counter_reg_4),
        .Q(req_internal_test),
        .S(ss_internaltest_n_2),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_internaltest(fc_internaltest),
        .link_daq_resync(link_daq_resync),
        .pending_reg_0(ss_internaltest_n_1),
        .pending_reg_1(calib_ctl_n_10),
        .reset_40(reset_40),
        .will_fire(will_fire_0));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_10 ss_linkreset
       (.D(counter_reg_6),
        .Q(req_linkreset),
        .S(ss_linkreset_n_2),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_linkreset(fc_linkreset),
        .link_reset_pending(link_reset_pending),
        .reset_40(reset_40),
        .will_fire(will_fire));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_bxtimed" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed
   (fire_reg_0,
    latched_req,
    fire_reg_1,
    fire_reg_2,
    S,
    Q,
    ext_lhc_clk,
    pending0,
    reset_40,
    enable_orbitsync,
    fc_l1a,
    fc_daqresync,
    invalid_r_reg,
    fc_internaltest,
    invalid_r_reg_0,
    fc_linkreset,
    D);
  output fire_reg_0;
  output latched_req;
  output fire_reg_1;
  output fire_reg_2;
  output [0:0]S;
  input [0:0]Q;
  input ext_lhc_clk;
  input pending0;
  input reset_40;
  input enable_orbitsync;
  input fc_l1a;
  input fc_daqresync;
  input invalid_r_reg;
  input fc_internaltest;
  input invalid_r_reg_0;
  input fc_linkreset;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]S;
  wire enable_orbitsync;
  wire ext_lhc_clk;
  wire fc_daqresync;
  wire fc_internaltest;
  wire fc_l1a;
  wire fc_linkreset;
  wire fire_reg_0;
  wire fire_reg_1;
  wire fire_reg_2;
  wire invalid_r_reg;
  wire invalid_r_reg_0;
  wire latched_req;
  wire latched_req_i_1_n_0;
  wire pending;
  wire pending0;
  wire req_async_40;
  wire reset_40;
  wire was_req_40;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDPE_re
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(Q),
        .PRE(Q),
        .Q(req_async_40));
  LUT2 #(
    .INIT(4'hE)) 
    \cmd[3]_i_6 
       (.I0(fire_reg_0),
        .I1(fc_linkreset),
        .O(fire_reg_2));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2__3 
       (.I0(fire_reg_0),
        .I1(D),
        .O(S));
  FDRE fire_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(pending),
        .Q(fire_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000020200000203)) 
    invalid_r_i_2
       (.I0(fc_l1a),
        .I1(fc_daqresync),
        .I2(fire_reg_2),
        .I3(invalid_r_reg),
        .I4(fc_internaltest),
        .I5(invalid_r_reg_0),
        .O(fire_reg_1));
  LUT6 #(
    .INIT(64'h0000000044440400)) 
    latched_req_i_1
       (.I0(reset_40),
        .I1(enable_orbitsync),
        .I2(was_req_40),
        .I3(req_async_40),
        .I4(latched_req),
        .I5(fire_reg_0),
        .O(latched_req_i_1_n_0));
  FDRE latched_req_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(latched_req_i_1_n_0),
        .Q(latched_req),
        .R(1'b0));
  FDRE pending_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(pending0),
        .Q(pending),
        .R(1'b0));
  FDRE was_req_40_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(req_async_40),
        .Q(was_req_40),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_bxtimed" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_11
   (nextos,
    fire_reg_0,
    fire_reg_1,
    pending0,
    fire_reg_2,
    ext_lhc_clk,
    \start_sequence_40_reg[11]_0 ,
    invalid_r_reg,
    invalid_r_reg_0,
    fc_calibrationreq,
    fc_calibrationl1a,
    fc_internaltest,
    latched_req,
    pending_i_3__2_0,
    enable_orbitsync,
    reset_40,
    \counter_reg[7] );
  output nextos;
  output fire_reg_0;
  output fire_reg_1;
  output pending0;
  output [0:0]fire_reg_2;
  input ext_lhc_clk;
  input [11:0]\start_sequence_40_reg[11]_0 ;
  input invalid_r_reg;
  input invalid_r_reg_0;
  input fc_calibrationreq;
  input fc_calibrationl1a;
  input fc_internaltest;
  input latched_req;
  input [11:0]pending_i_3__2_0;
  input enable_orbitsync;
  input reset_40;
  input [0:0]\counter_reg[7] ;

  wire [0:0]\counter_reg[7] ;
  wire enable_orbitsync;
  wire ext_lhc_clk;
  wire fc_calibrationl1a;
  wire fc_calibrationreq;
  wire fc_internaltest;
  wire fire_reg_0;
  wire fire_reg_1;
  wire [0:0]fire_reg_2;
  wire invalid_r_reg;
  wire invalid_r_reg_0;
  wire latched_req;
  wire latched_req_0;
  wire latched_req_i_1__1_n_0;
  wire nextos;
  wire pending0;
  wire pending0_1;
  wire pending_i_2__2_n_0;
  wire [11:0]pending_i_3__2_0;
  wire pending_i_3__2_n_0;
  wire pending_i_4__2_n_0;
  wire pending_i_5__2_n_0;
  wire pending_i_6__2_n_0;
  wire pending_i_7__2_n_0;
  wire pending_i_8__2_n_0;
  wire reset_40;
  wire [11:0]start_sequence_40;
  wire \start_sequence_40[0]_i_1_n_0 ;
  wire \start_sequence_40[10]_i_1_n_0 ;
  wire \start_sequence_40[10]_i_2_n_0 ;
  wire \start_sequence_40[11]_i_1_n_0 ;
  wire \start_sequence_40[11]_i_2_n_0 ;
  wire \start_sequence_40[1]_i_1_n_0 ;
  wire \start_sequence_40[2]_i_1_n_0 ;
  wire \start_sequence_40[3]_i_1_n_0 ;
  wire \start_sequence_40[4]_i_1_n_0 ;
  wire \start_sequence_40[5]_i_1_n_0 ;
  wire \start_sequence_40[6]_i_1__1_n_0 ;
  wire \start_sequence_40[7]_i_1_n_0 ;
  wire \start_sequence_40[8]_i_1__1_n_0 ;
  wire \start_sequence_40[9]_i_1_n_0 ;
  wire \start_sequence_40[9]_i_2_n_0 ;
  wire \start_sequence_40[9]_i_3_n_0 ;
  wire \start_sequence_40[9]_i_4_n_0 ;
  wire [11:0]\start_sequence_40_reg[11]_0 ;

  LUT6 #(
    .INIT(64'h0000000100000100)) 
    \cmd[3]_i_2 
       (.I0(fire_reg_0),
        .I1(invalid_r_reg),
        .I2(invalid_r_reg_0),
        .I3(fc_calibrationreq),
        .I4(fc_calibrationl1a),
        .I5(fc_internaltest),
        .O(fire_reg_1));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2__4 
       (.I0(fire_reg_0),
        .I1(\counter_reg[7] ),
        .O(fire_reg_2));
  FDRE fire_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(nextos),
        .Q(fire_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    latched_req_i_1__1
       (.I0(reset_40),
        .I1(enable_orbitsync),
        .I2(fire_reg_0),
        .O(latched_req_i_1__1_n_0));
  FDRE latched_req_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(latched_req_i_1__1_n_0),
        .Q(latched_req_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000002002)) 
    pending_i_1__5
       (.I0(latched_req),
        .I1(pending_i_2__2_n_0),
        .I2(pending_i_3__2_0[9]),
        .I3(start_sequence_40[9]),
        .I4(pending_i_3__2_n_0),
        .I5(pending_i_4__2_n_0),
        .O(pending0));
  LUT6 #(
    .INIT(64'h0000000000002002)) 
    pending_i_1__6
       (.I0(latched_req_0),
        .I1(pending_i_2__2_n_0),
        .I2(pending_i_3__2_0[9]),
        .I3(start_sequence_40[9]),
        .I4(pending_i_3__2_n_0),
        .I5(pending_i_4__2_n_0),
        .O(pending0_1));
  LUT5 #(
    .INIT(32'h7D7DFF7D)) 
    pending_i_2__2
       (.I0(enable_orbitsync),
        .I1(pending_i_3__2_0[10]),
        .I2(start_sequence_40[10]),
        .I3(start_sequence_40[7]),
        .I4(pending_i_3__2_0[7]),
        .O(pending_i_2__2_n_0));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    pending_i_3__2
       (.I0(pending_i_5__2_n_0),
        .I1(pending_i_6__2_n_0),
        .I2(start_sequence_40[3]),
        .I3(pending_i_3__2_0[3]),
        .I4(start_sequence_40[7]),
        .I5(pending_i_3__2_0[7]),
        .O(pending_i_3__2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF66F6)) 
    pending_i_4__2
       (.I0(pending_i_3__2_0[1]),
        .I1(start_sequence_40[1]),
        .I2(pending_i_3__2_0[5]),
        .I3(start_sequence_40[5]),
        .I4(pending_i_7__2_n_0),
        .I5(pending_i_8__2_n_0),
        .O(pending_i_4__2_n_0));
  LUT6 #(
    .INIT(64'h22F2FFFFFFFF22F2)) 
    pending_i_5__2
       (.I0(start_sequence_40[3]),
        .I1(pending_i_3__2_0[3]),
        .I2(start_sequence_40[11]),
        .I3(pending_i_3__2_0[11]),
        .I4(start_sequence_40[6]),
        .I5(pending_i_3__2_0[6]),
        .O(pending_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    pending_i_6__2
       (.I0(start_sequence_40[11]),
        .I1(pending_i_3__2_0[11]),
        .I2(start_sequence_40[0]),
        .I3(pending_i_3__2_0[0]),
        .O(pending_i_6__2_n_0));
  LUT6 #(
    .INIT(64'h66F666F6FFFF66F6)) 
    pending_i_7__2
       (.I0(start_sequence_40[2]),
        .I1(pending_i_3__2_0[2]),
        .I2(pending_i_3__2_0[8]),
        .I3(start_sequence_40[8]),
        .I4(start_sequence_40[5]),
        .I5(pending_i_3__2_0[5]),
        .O(pending_i_7__2_n_0));
  LUT6 #(
    .INIT(64'h2FF22FF2FFFF2FF2)) 
    pending_i_8__2
       (.I0(start_sequence_40[0]),
        .I1(pending_i_3__2_0[0]),
        .I2(start_sequence_40[4]),
        .I3(pending_i_3__2_0[4]),
        .I4(start_sequence_40[8]),
        .I5(pending_i_3__2_0[8]),
        .O(pending_i_8__2_n_0));
  FDRE pending_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(pending0_1),
        .Q(nextos),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \start_sequence_40[0]_i_1 
       (.I0(\start_sequence_40_reg[11]_0 [0]),
        .O(\start_sequence_40[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \start_sequence_40[10]_i_1 
       (.I0(\start_sequence_40_reg[11]_0 [10]),
        .I1(\start_sequence_40_reg[11]_0 [7]),
        .I2(\start_sequence_40_reg[11]_0 [6]),
        .I3(\start_sequence_40_reg[11]_0 [9]),
        .I4(\start_sequence_40_reg[11]_0 [8]),
        .I5(\start_sequence_40[10]_i_2_n_0 ),
        .O(\start_sequence_40[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \start_sequence_40[10]_i_2 
       (.I0(\start_sequence_40_reg[11]_0 [2]),
        .I1(\start_sequence_40_reg[11]_0 [3]),
        .I2(\start_sequence_40_reg[11]_0 [1]),
        .I3(\start_sequence_40_reg[11]_0 [0]),
        .I4(\start_sequence_40_reg[11]_0 [5]),
        .I5(\start_sequence_40_reg[11]_0 [4]),
        .O(\start_sequence_40[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \start_sequence_40[11]_i_1 
       (.I0(\start_sequence_40_reg[11]_0 [11]),
        .I1(\start_sequence_40_reg[11]_0 [10]),
        .I2(\start_sequence_40[11]_i_2_n_0 ),
        .O(\start_sequence_40[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \start_sequence_40[11]_i_2 
       (.I0(\start_sequence_40[10]_i_2_n_0 ),
        .I1(\start_sequence_40_reg[11]_0 [8]),
        .I2(\start_sequence_40_reg[11]_0 [9]),
        .I3(\start_sequence_40_reg[11]_0 [6]),
        .I4(\start_sequence_40_reg[11]_0 [7]),
        .O(\start_sequence_40[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \start_sequence_40[1]_i_1 
       (.I0(\start_sequence_40_reg[11]_0 [1]),
        .I1(\start_sequence_40_reg[11]_0 [0]),
        .O(\start_sequence_40[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h802A)) 
    \start_sequence_40[2]_i_1 
       (.I0(\start_sequence_40[9]_i_2_n_0 ),
        .I1(\start_sequence_40_reg[11]_0 [1]),
        .I2(\start_sequence_40_reg[11]_0 [0]),
        .I3(\start_sequence_40_reg[11]_0 [2]),
        .O(\start_sequence_40[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hEA15)) 
    \start_sequence_40[3]_i_1 
       (.I0(\start_sequence_40_reg[11]_0 [2]),
        .I1(\start_sequence_40_reg[11]_0 [0]),
        .I2(\start_sequence_40_reg[11]_0 [1]),
        .I3(\start_sequence_40_reg[11]_0 [3]),
        .O(\start_sequence_40[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA800000002A)) 
    \start_sequence_40[4]_i_1 
       (.I0(\start_sequence_40[9]_i_2_n_0 ),
        .I1(\start_sequence_40_reg[11]_0 [0]),
        .I2(\start_sequence_40_reg[11]_0 [1]),
        .I3(\start_sequence_40_reg[11]_0 [3]),
        .I4(\start_sequence_40_reg[11]_0 [2]),
        .I5(\start_sequence_40_reg[11]_0 [4]),
        .O(\start_sequence_40[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA95)) 
    \start_sequence_40[5]_i_1 
       (.I0(\start_sequence_40_reg[11]_0 [5]),
        .I1(\start_sequence_40_reg[11]_0 [0]),
        .I2(\start_sequence_40_reg[11]_0 [1]),
        .I3(\start_sequence_40_reg[11]_0 [3]),
        .I4(\start_sequence_40_reg[11]_0 [2]),
        .I5(\start_sequence_40_reg[11]_0 [4]),
        .O(\start_sequence_40[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \start_sequence_40[6]_i_1__1 
       (.I0(\start_sequence_40_reg[11]_0 [6]),
        .I1(\start_sequence_40[10]_i_2_n_0 ),
        .O(\start_sequence_40[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \start_sequence_40[7]_i_1 
       (.I0(\start_sequence_40_reg[11]_0 [7]),
        .I1(\start_sequence_40[10]_i_2_n_0 ),
        .I2(\start_sequence_40_reg[11]_0 [6]),
        .O(\start_sequence_40[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \start_sequence_40[8]_i_1__1 
       (.I0(\start_sequence_40_reg[11]_0 [8]),
        .I1(\start_sequence_40_reg[11]_0 [6]),
        .I2(\start_sequence_40_reg[11]_0 [7]),
        .I3(\start_sequence_40[10]_i_2_n_0 ),
        .O(\start_sequence_40[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \start_sequence_40[9]_i_1 
       (.I0(\start_sequence_40[9]_i_2_n_0 ),
        .I1(\start_sequence_40_reg[11]_0 [8]),
        .I2(\start_sequence_40_reg[11]_0 [6]),
        .I3(\start_sequence_40_reg[11]_0 [7]),
        .I4(\start_sequence_40[10]_i_2_n_0 ),
        .I5(\start_sequence_40_reg[11]_0 [9]),
        .O(\start_sequence_40[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \start_sequence_40[9]_i_2 
       (.I0(\start_sequence_40_reg[11]_0 [11]),
        .I1(\start_sequence_40_reg[11]_0 [10]),
        .I2(\start_sequence_40_reg[11]_0 [3]),
        .I3(\start_sequence_40_reg[11]_0 [2]),
        .I4(\start_sequence_40[9]_i_3_n_0 ),
        .I5(\start_sequence_40[9]_i_4_n_0 ),
        .O(\start_sequence_40[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \start_sequence_40[9]_i_3 
       (.I0(\start_sequence_40_reg[11]_0 [4]),
        .I1(\start_sequence_40_reg[11]_0 [5]),
        .O(\start_sequence_40[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \start_sequence_40[9]_i_4 
       (.I0(\start_sequence_40_reg[11]_0 [7]),
        .I1(\start_sequence_40_reg[11]_0 [6]),
        .I2(\start_sequence_40_reg[11]_0 [9]),
        .I3(\start_sequence_40_reg[11]_0 [8]),
        .O(\start_sequence_40[9]_i_4_n_0 ));
  FDRE \start_sequence_40_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[0]_i_1_n_0 ),
        .Q(start_sequence_40[0]),
        .R(1'b0));
  FDRE \start_sequence_40_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[10]_i_1_n_0 ),
        .Q(start_sequence_40[10]),
        .R(1'b0));
  FDRE \start_sequence_40_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[11]_i_1_n_0 ),
        .Q(start_sequence_40[11]),
        .R(1'b0));
  FDRE \start_sequence_40_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[1]_i_1_n_0 ),
        .Q(start_sequence_40[1]),
        .R(1'b0));
  FDRE \start_sequence_40_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[2]_i_1_n_0 ),
        .Q(start_sequence_40[2]),
        .R(1'b0));
  FDRE \start_sequence_40_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[3]_i_1_n_0 ),
        .Q(start_sequence_40[3]),
        .R(1'b0));
  FDRE \start_sequence_40_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[4]_i_1_n_0 ),
        .Q(start_sequence_40[4]),
        .R(1'b0));
  FDRE \start_sequence_40_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[5]_i_1_n_0 ),
        .Q(start_sequence_40[5]),
        .R(1'b0));
  FDRE \start_sequence_40_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[6]_i_1__1_n_0 ),
        .Q(start_sequence_40[6]),
        .R(1'b0));
  FDRE \start_sequence_40_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[7]_i_1_n_0 ),
        .Q(start_sequence_40[7]),
        .R(1'b0));
  FDRE \start_sequence_40_reg[8] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[8]_i_1__1_n_0 ),
        .Q(start_sequence_40[8]),
        .R(1'b0));
  FDRE \start_sequence_40_reg[9] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[9]_i_1_n_0 ),
        .Q(start_sequence_40[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_bxtimed" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_12
   (veto_l1agen_B,
    fire_reg_0,
    fire_reg_1,
    fc_l1a,
    DI,
    Q,
    ext_lhc_clk,
    reset_40,
    req_periodic,
    \start_sequence_40_reg[11]_0 ,
    pending_reg_0,
    fc_internaltest,
    fc_daqresync,
    fc_orbitcountreset,
    fc_linkreset,
    fc_l1agen_A,
    fc_l1a_for_calib);
  output veto_l1agen_B;
  output fire_reg_0;
  output fire_reg_1;
  output fc_l1a;
  output [0:0]DI;
  input [0:0]Q;
  input ext_lhc_clk;
  input reset_40;
  input req_periodic;
  input [11:0]\start_sequence_40_reg[11]_0 ;
  input [11:0]pending_reg_0;
  input fc_internaltest;
  input fc_daqresync;
  input fc_orbitcountreset;
  input fc_linkreset;
  input fc_l1agen_A;
  input fc_l1a_for_calib;

  wire [0:0]DI;
  wire [0:0]Q;
  wire ext_lhc_clk;
  wire fc_daqresync;
  wire fc_internaltest;
  wire fc_l1a;
  wire fc_l1a_for_calib;
  wire fc_l1agen_A;
  wire fc_linkreset;
  wire fc_orbitcountreset;
  wire fire_reg_0;
  wire fire_reg_1;
  wire latched_req;
  wire latched_req_i_1__4_n_0;
  wire pending0;
  wire pending_i_2__1_n_0;
  wire pending_i_3__1_n_0;
  wire pending_i_4__1_n_0;
  wire pending_i_5__1_n_0;
  wire pending_i_6__1_n_0;
  wire pending_i_7__1_n_0;
  wire pending_i_8__1_n_0;
  wire [11:0]pending_reg_0;
  wire req_async_40;
  wire req_periodic;
  wire reset_40;
  wire \start_sequence_40[0]_i_1__3_n_0 ;
  wire \start_sequence_40[10]_i_1__3_n_0 ;
  wire \start_sequence_40[11]_i_1__3_n_0 ;
  wire \start_sequence_40[11]_i_2__3_n_0 ;
  wire \start_sequence_40[11]_i_3__0_n_0 ;
  wire \start_sequence_40[1]_i_1__3_n_0 ;
  wire \start_sequence_40[2]_i_1__3_n_0 ;
  wire \start_sequence_40[3]_i_1__3_n_0 ;
  wire \start_sequence_40[4]_i_1__3_n_0 ;
  wire \start_sequence_40[5]_i_1__3_n_0 ;
  wire \start_sequence_40[6]_i_1__0_n_0 ;
  wire \start_sequence_40[7]_i_1__3_n_0 ;
  wire \start_sequence_40[8]_i_1__0_n_0 ;
  wire \start_sequence_40[9]_i_1__3_n_0 ;
  wire \start_sequence_40[9]_i_2__3_n_0 ;
  wire [11:0]\start_sequence_40_reg[11]_0 ;
  wire \start_sequence_40_reg_n_0_[0] ;
  wire \start_sequence_40_reg_n_0_[10] ;
  wire \start_sequence_40_reg_n_0_[11] ;
  wire \start_sequence_40_reg_n_0_[1] ;
  wire \start_sequence_40_reg_n_0_[2] ;
  wire \start_sequence_40_reg_n_0_[3] ;
  wire \start_sequence_40_reg_n_0_[4] ;
  wire \start_sequence_40_reg_n_0_[5] ;
  wire \start_sequence_40_reg_n_0_[6] ;
  wire \start_sequence_40_reg_n_0_[7] ;
  wire \start_sequence_40_reg_n_0_[8] ;
  wire \start_sequence_40_reg_n_0_[9] ;
  wire veto_l1agen_B;
  wire was_req_40;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDPE_re
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(Q),
        .PRE(Q),
        .Q(req_async_40));
  LUT5 #(
    .INIT(32'h00000002)) 
    \cmd[3]_i_3 
       (.I0(fc_l1a),
        .I1(fc_internaltest),
        .I2(fc_daqresync),
        .I3(fc_orbitcountreset),
        .I4(fc_linkreset),
        .O(fire_reg_1));
  LUT3 #(
    .INIT(8'hFE)) 
    \cmd[3]_i_8 
       (.I0(fire_reg_0),
        .I1(fc_l1agen_A),
        .I2(fc_l1a_for_calib),
        .O(fc_l1a));
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[0]_i_3__0 
       (.I0(fire_reg_0),
        .I1(fc_l1agen_A),
        .I2(fc_l1a_for_calib),
        .O(DI));
  FDRE fire_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(veto_l1agen_B),
        .Q(fire_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000055554454)) 
    latched_req_i_1__4
       (.I0(reset_40),
        .I1(req_periodic),
        .I2(req_async_40),
        .I3(was_req_40),
        .I4(latched_req),
        .I5(fire_reg_0),
        .O(latched_req_i_1__4_n_0));
  FDRE latched_req_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(latched_req_i_1__4_n_0),
        .Q(latched_req),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0004)) 
    pending_i_1__4
       (.I0(pending_i_2__1_n_0),
        .I1(pending_i_3__1_n_0),
        .I2(pending_i_4__1_n_0),
        .I3(pending_i_5__1_n_0),
        .O(pending0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    pending_i_2__1
       (.I0(pending_i_6__1_n_0),
        .I1(\start_sequence_40_reg_n_0_[4] ),
        .I2(pending_reg_0[4]),
        .I3(pending_reg_0[1]),
        .I4(\start_sequence_40_reg_n_0_[1] ),
        .I5(pending_i_7__1_n_0),
        .O(pending_i_2__1_n_0));
  LUT4 #(
    .INIT(16'hD00D)) 
    pending_i_3__1
       (.I0(\start_sequence_40_reg_n_0_[4] ),
        .I1(pending_reg_0[4]),
        .I2(pending_reg_0[6]),
        .I3(\start_sequence_40_reg_n_0_[6] ),
        .O(pending_i_3__1_n_0));
  LUT6 #(
    .INIT(64'hBAFFFFBAFFFFFFFF)) 
    pending_i_4__1
       (.I0(pending_i_8__1_n_0),
        .I1(\start_sequence_40_reg_n_0_[11] ),
        .I2(pending_reg_0[11]),
        .I3(\start_sequence_40_reg_n_0_[8] ),
        .I4(pending_reg_0[8]),
        .I5(latched_req),
        .O(pending_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    pending_i_5__1
       (.I0(\start_sequence_40_reg_n_0_[2] ),
        .I1(pending_reg_0[2]),
        .I2(pending_reg_0[10]),
        .I3(\start_sequence_40_reg_n_0_[10] ),
        .I4(pending_reg_0[9]),
        .I5(\start_sequence_40_reg_n_0_[9] ),
        .O(pending_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    pending_i_6__1
       (.I0(pending_reg_0[3]),
        .I1(\start_sequence_40_reg_n_0_[3] ),
        .I2(pending_reg_0[5]),
        .I3(\start_sequence_40_reg_n_0_[5] ),
        .O(pending_i_6__1_n_0));
  LUT6 #(
    .INIT(64'h66F666F6FFFF66F6)) 
    pending_i_7__1
       (.I0(\start_sequence_40_reg_n_0_[0] ),
        .I1(pending_reg_0[0]),
        .I2(pending_reg_0[3]),
        .I3(\start_sequence_40_reg_n_0_[3] ),
        .I4(pending_reg_0[1]),
        .I5(\start_sequence_40_reg_n_0_[1] ),
        .O(pending_i_7__1_n_0));
  LUT6 #(
    .INIT(64'h22F2FFFFFFFF22F2)) 
    pending_i_8__1
       (.I0(pending_reg_0[5]),
        .I1(\start_sequence_40_reg_n_0_[5] ),
        .I2(\start_sequence_40_reg_n_0_[11] ),
        .I3(pending_reg_0[11]),
        .I4(\start_sequence_40_reg_n_0_[7] ),
        .I5(pending_reg_0[7]),
        .O(pending_i_8__1_n_0));
  FDRE pending_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(pending0),
        .Q(veto_l1agen_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \start_sequence_40[0]_i_1__3 
       (.I0(\start_sequence_40_reg[11]_0 [0]),
        .O(\start_sequence_40[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA9AA)) 
    \start_sequence_40[10]_i_1__3 
       (.I0(\start_sequence_40_reg[11]_0 [10]),
        .I1(\start_sequence_40_reg[11]_0 [8]),
        .I2(\start_sequence_40_reg[11]_0 [9]),
        .I3(\start_sequence_40[11]_i_3__0_n_0 ),
        .I4(\start_sequence_40_reg[11]_0 [7]),
        .I5(\start_sequence_40_reg[11]_0 [6]),
        .O(\start_sequence_40[10]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \start_sequence_40[11]_i_1__3 
       (.I0(\start_sequence_40_reg[11]_0 [11]),
        .I1(\start_sequence_40[11]_i_2__3_n_0 ),
        .I2(\start_sequence_40[11]_i_3__0_n_0 ),
        .O(\start_sequence_40[11]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \start_sequence_40[11]_i_2__3 
       (.I0(\start_sequence_40_reg[11]_0 [7]),
        .I1(\start_sequence_40_reg[11]_0 [6]),
        .I2(\start_sequence_40_reg[11]_0 [8]),
        .I3(\start_sequence_40_reg[11]_0 [9]),
        .I4(\start_sequence_40_reg[11]_0 [10]),
        .O(\start_sequence_40[11]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    \start_sequence_40[11]_i_3__0 
       (.I0(\start_sequence_40_reg[11]_0 [2]),
        .I1(\start_sequence_40_reg[11]_0 [0]),
        .I2(\start_sequence_40_reg[11]_0 [1]),
        .I3(\start_sequence_40_reg[11]_0 [3]),
        .I4(\start_sequence_40_reg[11]_0 [5]),
        .I5(\start_sequence_40_reg[11]_0 [4]),
        .O(\start_sequence_40[11]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \start_sequence_40[1]_i_1__3 
       (.I0(\start_sequence_40_reg[11]_0 [1]),
        .I1(\start_sequence_40_reg[11]_0 [0]),
        .O(\start_sequence_40[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h802A)) 
    \start_sequence_40[2]_i_1__3 
       (.I0(\start_sequence_40[9]_i_2__3_n_0 ),
        .I1(\start_sequence_40_reg[11]_0 [1]),
        .I2(\start_sequence_40_reg[11]_0 [0]),
        .I3(\start_sequence_40_reg[11]_0 [2]),
        .O(\start_sequence_40[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hEA15)) 
    \start_sequence_40[3]_i_1__3 
       (.I0(\start_sequence_40_reg[11]_0 [2]),
        .I1(\start_sequence_40_reg[11]_0 [0]),
        .I2(\start_sequence_40_reg[11]_0 [1]),
        .I3(\start_sequence_40_reg[11]_0 [3]),
        .O(\start_sequence_40[3]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA88800000222)) 
    \start_sequence_40[4]_i_1__3 
       (.I0(\start_sequence_40[9]_i_2__3_n_0 ),
        .I1(\start_sequence_40_reg[11]_0 [3]),
        .I2(\start_sequence_40_reg[11]_0 [1]),
        .I3(\start_sequence_40_reg[11]_0 [0]),
        .I4(\start_sequence_40_reg[11]_0 [2]),
        .I5(\start_sequence_40_reg[11]_0 [4]),
        .O(\start_sequence_40[4]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA999)) 
    \start_sequence_40[5]_i_1__3 
       (.I0(\start_sequence_40_reg[11]_0 [5]),
        .I1(\start_sequence_40_reg[11]_0 [3]),
        .I2(\start_sequence_40_reg[11]_0 [1]),
        .I3(\start_sequence_40_reg[11]_0 [0]),
        .I4(\start_sequence_40_reg[11]_0 [2]),
        .I5(\start_sequence_40_reg[11]_0 [4]),
        .O(\start_sequence_40[5]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \start_sequence_40[6]_i_1__0 
       (.I0(\start_sequence_40_reg[11]_0 [6]),
        .I1(\start_sequence_40[11]_i_3__0_n_0 ),
        .O(\start_sequence_40[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \start_sequence_40[7]_i_1__3 
       (.I0(\start_sequence_40_reg[11]_0 [6]),
        .I1(\start_sequence_40[11]_i_3__0_n_0 ),
        .I2(\start_sequence_40_reg[11]_0 [7]),
        .O(\start_sequence_40[7]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hA9AA)) 
    \start_sequence_40[8]_i_1__0 
       (.I0(\start_sequence_40_reg[11]_0 [8]),
        .I1(\start_sequence_40_reg[11]_0 [6]),
        .I2(\start_sequence_40_reg[11]_0 [7]),
        .I3(\start_sequence_40[11]_i_3__0_n_0 ),
        .O(\start_sequence_40[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAA00020000)) 
    \start_sequence_40[9]_i_1__3 
       (.I0(\start_sequence_40[9]_i_2__3_n_0 ),
        .I1(\start_sequence_40_reg[11]_0 [8]),
        .I2(\start_sequence_40_reg[11]_0 [6]),
        .I3(\start_sequence_40_reg[11]_0 [7]),
        .I4(\start_sequence_40[11]_i_3__0_n_0 ),
        .I5(\start_sequence_40_reg[11]_0 [9]),
        .O(\start_sequence_40[9]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \start_sequence_40[9]_i_2__3 
       (.I0(\start_sequence_40[11]_i_2__3_n_0 ),
        .I1(\start_sequence_40_reg[11]_0 [3]),
        .I2(\start_sequence_40_reg[11]_0 [5]),
        .I3(\start_sequence_40_reg[11]_0 [4]),
        .I4(\start_sequence_40_reg[11]_0 [2]),
        .I5(\start_sequence_40_reg[11]_0 [11]),
        .O(\start_sequence_40[9]_i_2__3_n_0 ));
  FDRE \start_sequence_40_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[0]_i_1__3_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[10]_i_1__3_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[11]_i_1__3_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[1]_i_1__3_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[2]_i_1__3_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[3]_i_1__3_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[4]_i_1__3_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[5]_i_1__3_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[6]_i_1__0_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[7]_i_1__3_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[8] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[8]_i_1__0_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[9] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[9]_i_1__3_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[9] ),
        .R(1'b0));
  FDRE was_req_40_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(req_async_40),
        .Q(was_req_40),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_bxtimed" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_13
   (veto_l1agen_A,
    fc_l1agen_A,
    Q,
    ext_lhc_clk,
    reset_40,
    req_periodic,
    \start_sequence_40_reg[11]_0 ,
    pending_i_3__0_0);
  output veto_l1agen_A;
  output fc_l1agen_A;
  input [0:0]Q;
  input ext_lhc_clk;
  input reset_40;
  input req_periodic;
  input [11:0]\start_sequence_40_reg[11]_0 ;
  input [11:0]pending_i_3__0_0;

  wire [0:0]Q;
  wire ext_lhc_clk;
  wire fc_l1agen_A;
  wire latched_req;
  wire latched_req_i_1__3_n_0;
  wire pending0;
  wire pending_i_2__0_n_0;
  wire [11:0]pending_i_3__0_0;
  wire pending_i_3__0_n_0;
  wire pending_i_4__0_n_0;
  wire pending_i_5__0_n_0;
  wire pending_i_6__0_n_0;
  wire pending_i_7__0_n_0;
  wire pending_i_8__0_n_0;
  wire req_async_40;
  wire req_periodic;
  wire reset_40;
  wire \start_sequence_40[0]_i_1__2_n_0 ;
  wire \start_sequence_40[10]_i_1__2_n_0 ;
  wire \start_sequence_40[11]_i_1__2_n_0 ;
  wire \start_sequence_40[11]_i_2__2_n_0 ;
  wire \start_sequence_40[11]_i_3_n_0 ;
  wire \start_sequence_40[1]_i_1__2_n_0 ;
  wire \start_sequence_40[2]_i_1__2_n_0 ;
  wire \start_sequence_40[3]_i_1__2_n_0 ;
  wire \start_sequence_40[4]_i_1__2_n_0 ;
  wire \start_sequence_40[5]_i_1__2_n_0 ;
  wire \start_sequence_40[6]_i_1_n_0 ;
  wire \start_sequence_40[7]_i_1__2_n_0 ;
  wire \start_sequence_40[8]_i_1_n_0 ;
  wire \start_sequence_40[9]_i_1__2_n_0 ;
  wire \start_sequence_40[9]_i_2__2_n_0 ;
  wire [11:0]\start_sequence_40_reg[11]_0 ;
  wire \start_sequence_40_reg_n_0_[0] ;
  wire \start_sequence_40_reg_n_0_[10] ;
  wire \start_sequence_40_reg_n_0_[11] ;
  wire \start_sequence_40_reg_n_0_[1] ;
  wire \start_sequence_40_reg_n_0_[2] ;
  wire \start_sequence_40_reg_n_0_[3] ;
  wire \start_sequence_40_reg_n_0_[4] ;
  wire \start_sequence_40_reg_n_0_[5] ;
  wire \start_sequence_40_reg_n_0_[6] ;
  wire \start_sequence_40_reg_n_0_[7] ;
  wire \start_sequence_40_reg_n_0_[8] ;
  wire \start_sequence_40_reg_n_0_[9] ;
  wire veto_l1agen_A;
  wire was_req_40;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDPE_re
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(Q),
        .PRE(Q),
        .Q(req_async_40));
  FDRE fire_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(veto_l1agen_A),
        .Q(fc_l1agen_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000055554454)) 
    latched_req_i_1__3
       (.I0(reset_40),
        .I1(req_periodic),
        .I2(req_async_40),
        .I3(was_req_40),
        .I4(latched_req),
        .I5(fc_l1agen_A),
        .O(latched_req_i_1__3_n_0));
  FDRE latched_req_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(latched_req_i_1__3_n_0),
        .Q(latched_req),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000051000051)) 
    pending_i_1__3
       (.I0(pending_i_2__0_n_0),
        .I1(\start_sequence_40_reg_n_0_[4] ),
        .I2(pending_i_3__0_0[4]),
        .I3(\start_sequence_40_reg_n_0_[6] ),
        .I4(pending_i_3__0_0[6]),
        .I5(pending_i_3__0_n_0),
        .O(pending0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    pending_i_2__0
       (.I0(pending_i_4__0_n_0),
        .I1(pending_i_3__0_0[5]),
        .I2(\start_sequence_40_reg_n_0_[5] ),
        .I3(\start_sequence_40_reg_n_0_[4] ),
        .I4(pending_i_3__0_0[4]),
        .I5(pending_i_5__0_n_0),
        .O(pending_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFBE)) 
    pending_i_3__0
       (.I0(pending_i_6__0_n_0),
        .I1(pending_i_3__0_0[10]),
        .I2(\start_sequence_40_reg_n_0_[10] ),
        .I3(pending_i_7__0_n_0),
        .I4(pending_i_8__0_n_0),
        .O(pending_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    pending_i_4__0
       (.I0(pending_i_3__0_0[3]),
        .I1(\start_sequence_40_reg_n_0_[3] ),
        .I2(\start_sequence_40_reg_n_0_[2] ),
        .I3(pending_i_3__0_0[2]),
        .O(pending_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h22F2FFFFFFFF22F2)) 
    pending_i_5__0
       (.I0(pending_i_3__0_0[0]),
        .I1(\start_sequence_40_reg_n_0_[0] ),
        .I2(pending_i_3__0_0[3]),
        .I3(\start_sequence_40_reg_n_0_[3] ),
        .I4(\start_sequence_40_reg_n_0_[1] ),
        .I5(pending_i_3__0_0[1]),
        .O(pending_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h6F66FFFF)) 
    pending_i_6__0
       (.I0(\start_sequence_40_reg_n_0_[8] ),
        .I1(pending_i_3__0_0[8]),
        .I2(pending_i_3__0_0[2]),
        .I3(\start_sequence_40_reg_n_0_[2] ),
        .I4(latched_req),
        .O(pending_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    pending_i_7__0
       (.I0(\start_sequence_40_reg_n_0_[9] ),
        .I1(pending_i_3__0_0[9]),
        .I2(\start_sequence_40_reg_n_0_[7] ),
        .I3(pending_i_3__0_0[7]),
        .O(pending_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h2FF22FF2FFFF2FF2)) 
    pending_i_8__0
       (.I0(pending_i_3__0_0[5]),
        .I1(\start_sequence_40_reg_n_0_[5] ),
        .I2(\start_sequence_40_reg_n_0_[11] ),
        .I3(pending_i_3__0_0[11]),
        .I4(\start_sequence_40_reg_n_0_[0] ),
        .I5(pending_i_3__0_0[0]),
        .O(pending_i_8__0_n_0));
  FDRE pending_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(pending0),
        .Q(veto_l1agen_A),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \start_sequence_40[0]_i_1__2 
       (.I0(\start_sequence_40_reg[11]_0 [0]),
        .O(\start_sequence_40[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA9AA)) 
    \start_sequence_40[10]_i_1__2 
       (.I0(\start_sequence_40_reg[11]_0 [10]),
        .I1(\start_sequence_40_reg[11]_0 [8]),
        .I2(\start_sequence_40_reg[11]_0 [9]),
        .I3(\start_sequence_40[11]_i_3_n_0 ),
        .I4(\start_sequence_40_reg[11]_0 [7]),
        .I5(\start_sequence_40_reg[11]_0 [6]),
        .O(\start_sequence_40[10]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \start_sequence_40[11]_i_1__2 
       (.I0(\start_sequence_40_reg[11]_0 [11]),
        .I1(\start_sequence_40[11]_i_2__2_n_0 ),
        .I2(\start_sequence_40[11]_i_3_n_0 ),
        .O(\start_sequence_40[11]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \start_sequence_40[11]_i_2__2 
       (.I0(\start_sequence_40_reg[11]_0 [7]),
        .I1(\start_sequence_40_reg[11]_0 [6]),
        .I2(\start_sequence_40_reg[11]_0 [8]),
        .I3(\start_sequence_40_reg[11]_0 [9]),
        .I4(\start_sequence_40_reg[11]_0 [10]),
        .O(\start_sequence_40[11]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    \start_sequence_40[11]_i_3 
       (.I0(\start_sequence_40_reg[11]_0 [2]),
        .I1(\start_sequence_40_reg[11]_0 [0]),
        .I2(\start_sequence_40_reg[11]_0 [1]),
        .I3(\start_sequence_40_reg[11]_0 [3]),
        .I4(\start_sequence_40_reg[11]_0 [5]),
        .I5(\start_sequence_40_reg[11]_0 [4]),
        .O(\start_sequence_40[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \start_sequence_40[1]_i_1__2 
       (.I0(\start_sequence_40_reg[11]_0 [1]),
        .I1(\start_sequence_40_reg[11]_0 [0]),
        .O(\start_sequence_40[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h802A)) 
    \start_sequence_40[2]_i_1__2 
       (.I0(\start_sequence_40[9]_i_2__2_n_0 ),
        .I1(\start_sequence_40_reg[11]_0 [1]),
        .I2(\start_sequence_40_reg[11]_0 [0]),
        .I3(\start_sequence_40_reg[11]_0 [2]),
        .O(\start_sequence_40[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEA15)) 
    \start_sequence_40[3]_i_1__2 
       (.I0(\start_sequence_40_reg[11]_0 [2]),
        .I1(\start_sequence_40_reg[11]_0 [0]),
        .I2(\start_sequence_40_reg[11]_0 [1]),
        .I3(\start_sequence_40_reg[11]_0 [3]),
        .O(\start_sequence_40[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA88800000222)) 
    \start_sequence_40[4]_i_1__2 
       (.I0(\start_sequence_40[9]_i_2__2_n_0 ),
        .I1(\start_sequence_40_reg[11]_0 [3]),
        .I2(\start_sequence_40_reg[11]_0 [1]),
        .I3(\start_sequence_40_reg[11]_0 [0]),
        .I4(\start_sequence_40_reg[11]_0 [2]),
        .I5(\start_sequence_40_reg[11]_0 [4]),
        .O(\start_sequence_40[4]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA999)) 
    \start_sequence_40[5]_i_1__2 
       (.I0(\start_sequence_40_reg[11]_0 [5]),
        .I1(\start_sequence_40_reg[11]_0 [3]),
        .I2(\start_sequence_40_reg[11]_0 [1]),
        .I3(\start_sequence_40_reg[11]_0 [0]),
        .I4(\start_sequence_40_reg[11]_0 [2]),
        .I5(\start_sequence_40_reg[11]_0 [4]),
        .O(\start_sequence_40[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \start_sequence_40[6]_i_1 
       (.I0(\start_sequence_40_reg[11]_0 [6]),
        .I1(\start_sequence_40[11]_i_3_n_0 ),
        .O(\start_sequence_40[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \start_sequence_40[7]_i_1__2 
       (.I0(\start_sequence_40_reg[11]_0 [6]),
        .I1(\start_sequence_40[11]_i_3_n_0 ),
        .I2(\start_sequence_40_reg[11]_0 [7]),
        .O(\start_sequence_40[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA9AA)) 
    \start_sequence_40[8]_i_1 
       (.I0(\start_sequence_40_reg[11]_0 [8]),
        .I1(\start_sequence_40_reg[11]_0 [6]),
        .I2(\start_sequence_40_reg[11]_0 [7]),
        .I3(\start_sequence_40[11]_i_3_n_0 ),
        .O(\start_sequence_40[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAA00020000)) 
    \start_sequence_40[9]_i_1__2 
       (.I0(\start_sequence_40[9]_i_2__2_n_0 ),
        .I1(\start_sequence_40_reg[11]_0 [8]),
        .I2(\start_sequence_40_reg[11]_0 [6]),
        .I3(\start_sequence_40_reg[11]_0 [7]),
        .I4(\start_sequence_40[11]_i_3_n_0 ),
        .I5(\start_sequence_40_reg[11]_0 [9]),
        .O(\start_sequence_40[9]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \start_sequence_40[9]_i_2__2 
       (.I0(\start_sequence_40[11]_i_2__2_n_0 ),
        .I1(\start_sequence_40_reg[11]_0 [3]),
        .I2(\start_sequence_40_reg[11]_0 [5]),
        .I3(\start_sequence_40_reg[11]_0 [4]),
        .I4(\start_sequence_40_reg[11]_0 [2]),
        .I5(\start_sequence_40_reg[11]_0 [11]),
        .O(\start_sequence_40[9]_i_2__2_n_0 ));
  FDRE \start_sequence_40_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[0]_i_1__2_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[10]_i_1__2_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[11]_i_1__2_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[1]_i_1__2_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[2]_i_1__2_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[3]_i_1__2_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[4]_i_1__2_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[5]_i_1__2_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[6]_i_1_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[7]_i_1__2_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[8] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[8]_i_1_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[9] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[9]_i_1__2_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[9] ),
        .R(1'b0));
  FDRE was_req_40_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(req_async_40),
        .Q(was_req_40),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_bxtimed" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_14
   (fire_reg_0,
    fire_reg_1,
    fire_reg_2,
    fire_reg_3,
    fire_reg_4,
    fire_reg_5,
    fire_reg_6,
    will_fire,
    pending_reg_0,
    will_fire_0,
    fire_reg_7,
    Q,
    ext_lhc_clk,
    fc_internaltest,
    fc_orbitsync,
    invalid_r_reg,
    invalid_r_reg_0,
    reset_40,
    req_periodic,
    pending_i_3_0,
    invalid_r_reg_1,
    \cmd_reg[2] ,
    \cmd_reg[2]_0 ,
    invalid_r_reg_2,
    \cmd_reg[1] ,
    fc_orbitcountreset,
    fc_linkreset,
    fc_daqresync,
    fc_l1a,
    fire_reg_8,
    link_daq_resync,
    link_reset_pending,
    veto_l1agen_A,
    veto_l1,
    veto_l1agen_B,
    nextos,
    \counter_reg[7] );
  output fire_reg_0;
  output fire_reg_1;
  output fire_reg_2;
  output fire_reg_3;
  output fire_reg_4;
  output fire_reg_5;
  output fire_reg_6;
  output will_fire;
  output pending_reg_0;
  output will_fire_0;
  output [0:0]fire_reg_7;
  input [0:0]Q;
  input ext_lhc_clk;
  input fc_internaltest;
  input fc_orbitsync;
  input invalid_r_reg;
  input [12:0]invalid_r_reg_0;
  input reset_40;
  input req_periodic;
  input [11:0]pending_i_3_0;
  input invalid_r_reg_1;
  input \cmd_reg[2] ;
  input \cmd_reg[2]_0 ;
  input invalid_r_reg_2;
  input \cmd_reg[1] ;
  input fc_orbitcountreset;
  input fc_linkreset;
  input fc_daqresync;
  input fc_l1a;
  input fire_reg_8;
  input link_daq_resync;
  input link_reset_pending;
  input veto_l1agen_A;
  input veto_l1;
  input veto_l1agen_B;
  input nextos;
  input [0:0]\counter_reg[7] ;

  wire [0:0]Q;
  wire \cmd[1]_i_2_n_0 ;
  wire \cmd[2]_i_2_n_0 ;
  wire \cmd[3]_i_5_n_0 ;
  wire \cmd[3]_i_9_n_0 ;
  wire \cmd_reg[1] ;
  wire \cmd_reg[2] ;
  wire \cmd_reg[2]_0 ;
  wire [0:0]\counter_reg[7] ;
  wire ext_lhc_clk;
  wire fc_daqresync;
  wire fc_internaltest;
  wire fc_l1a;
  wire fc_linkreset;
  wire fc_orbitcountreset;
  wire fc_orbitsync;
  wire fire_reg_0;
  wire fire_reg_1;
  wire fire_reg_2;
  wire fire_reg_3;
  wire fire_reg_4;
  wire fire_reg_5;
  wire fire_reg_6;
  wire [0:0]fire_reg_7;
  wire fire_reg_8;
  wire invalid_r_i_3_n_0;
  wire invalid_r_reg;
  wire [12:0]invalid_r_reg_0;
  wire invalid_r_reg_1;
  wire invalid_r_reg_2;
  wire latched_req;
  wire latched_req_i_1__2_n_0;
  wire link_daq_resync;
  wire link_reset_pending;
  wire nextos;
  wire pending0;
  wire pending_i_2_n_0;
  wire [11:0]pending_i_3_0;
  wire pending_i_3_n_0;
  wire pending_i_4_n_0;
  wire pending_i_5_n_0;
  wire pending_i_6_n_0;
  wire pending_i_7_n_0;
  wire pending_i_8_n_0;
  wire pending_i_9_n_0;
  wire pending_reg_0;
  wire req_async_40;
  wire req_periodic;
  wire reset_40;
  wire \start_sequence_40[0]_i_1__0_n_0 ;
  wire \start_sequence_40[10]_i_1__0_n_0 ;
  wire \start_sequence_40[10]_i_2__0_n_0 ;
  wire \start_sequence_40[11]_i_1__0_n_0 ;
  wire \start_sequence_40[11]_i_2__0_n_0 ;
  wire \start_sequence_40[1]_i_1__0_n_0 ;
  wire \start_sequence_40[2]_i_1__0_n_0 ;
  wire \start_sequence_40[3]_i_1__0_n_0 ;
  wire \start_sequence_40[4]_i_1__0_n_0 ;
  wire \start_sequence_40[5]_i_1__0_n_0 ;
  wire \start_sequence_40[6]_i_1__2_n_0 ;
  wire \start_sequence_40[7]_i_1__0_n_0 ;
  wire \start_sequence_40[8]_i_1__2_n_0 ;
  wire \start_sequence_40[9]_i_1__0_n_0 ;
  wire \start_sequence_40[9]_i_2__0_n_0 ;
  wire \start_sequence_40[9]_i_3__0_n_0 ;
  wire \start_sequence_40[9]_i_4__0_n_0 ;
  wire \start_sequence_40_reg_n_0_[0] ;
  wire \start_sequence_40_reg_n_0_[10] ;
  wire \start_sequence_40_reg_n_0_[11] ;
  wire \start_sequence_40_reg_n_0_[1] ;
  wire \start_sequence_40_reg_n_0_[2] ;
  wire \start_sequence_40_reg_n_0_[3] ;
  wire \start_sequence_40_reg_n_0_[4] ;
  wire \start_sequence_40_reg_n_0_[5] ;
  wire \start_sequence_40_reg_n_0_[6] ;
  wire \start_sequence_40_reg_n_0_[7] ;
  wire \start_sequence_40_reg_n_0_[8] ;
  wire \start_sequence_40_reg_n_0_[9] ;
  wire veto_cr;
  wire veto_l1;
  wire veto_l1agen_A;
  wire veto_l1agen_B;
  wire was_req_40;
  wire will_fire;
  wire will_fire_0;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDPE_re
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(Q),
        .PRE(Q),
        .Q(req_async_40));
  LUT6 #(
    .INIT(64'hEEEFEEFEEEEEEEEE)) 
    \cmd[0]_i_1 
       (.I0(\cmd[2]_i_2_n_0 ),
        .I1(\cmd[3]_i_5_n_0 ),
        .I2(fire_reg_0),
        .I3(\cmd_reg[2]_0 ),
        .I4(fc_orbitsync),
        .I5(\cmd_reg[2] ),
        .O(fire_reg_4));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \cmd[1]_i_1 
       (.I0(\cmd[1]_i_2_n_0 ),
        .I1(\cmd_reg[2] ),
        .I2(\cmd_reg[1] ),
        .I3(\cmd[3]_i_5_n_0 ),
        .I4(\cmd[2]_i_2_n_0 ),
        .I5(fc_orbitcountreset),
        .O(fire_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \cmd[1]_i_2 
       (.I0(\cmd[3]_i_9_n_0 ),
        .I1(fc_daqresync),
        .I2(fc_linkreset),
        .I3(fc_orbitcountreset),
        .I4(fc_l1a),
        .O(\cmd[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF101010)) 
    \cmd[2]_i_1 
       (.I0(fire_reg_0),
        .I1(\cmd_reg[2]_0 ),
        .I2(\cmd_reg[2] ),
        .I3(fc_orbitcountreset),
        .I4(\cmd[2]_i_2_n_0 ),
        .I5(\cmd[3]_i_5_n_0 ),
        .O(fire_reg_5));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \cmd[2]_i_2 
       (.I0(fire_reg_6),
        .I1(fc_orbitsync),
        .I2(fc_linkreset),
        .I3(fc_daqresync),
        .I4(fc_internaltest),
        .I5(fc_l1a),
        .O(\cmd[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \cmd[2]_i_3 
       (.I0(fire_reg_0),
        .I1(invalid_r_reg_0[12]),
        .I2(invalid_r_reg),
        .O(fire_reg_6));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAEAEAA)) 
    \cmd[3]_i_1 
       (.I0(invalid_r_reg_1),
        .I1(\cmd_reg[2] ),
        .I2(fc_orbitsync),
        .I3(fire_reg_0),
        .I4(\cmd_reg[2]_0 ),
        .I5(\cmd[3]_i_5_n_0 ),
        .O(fire_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \cmd[3]_i_5 
       (.I0(\cmd[3]_i_9_n_0 ),
        .I1(fc_orbitcountreset),
        .I2(fc_linkreset),
        .I3(fc_daqresync),
        .I4(fc_l1a),
        .O(\cmd[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01010001)) 
    \cmd[3]_i_9 
       (.I0(fc_internaltest),
        .I1(fire_reg_0),
        .I2(fc_orbitsync),
        .I3(invalid_r_reg),
        .I4(invalid_r_reg_0[12]),
        .O(\cmd[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2__2 
       (.I0(fire_reg_0),
        .I1(\counter_reg[7] ),
        .O(fire_reg_7));
  LUT3 #(
    .INIT(8'h04)) 
    fire_i_1
       (.I0(pending_reg_0),
        .I1(fire_reg_8),
        .I2(link_daq_resync),
        .O(will_fire));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    fire_i_1__1
       (.I0(link_reset_pending),
        .I1(veto_l1agen_A),
        .I2(veto_cr),
        .I3(veto_l1),
        .I4(veto_l1agen_B),
        .I5(nextos),
        .O(will_fire_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    fire_i_2
       (.I0(link_reset_pending),
        .I1(veto_l1agen_A),
        .I2(veto_cr),
        .I3(veto_l1),
        .I4(veto_l1agen_B),
        .I5(nextos),
        .O(pending_reg_0));
  FDRE fire_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(veto_cr),
        .Q(fire_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000001010001)) 
    invalid_r_i_1
       (.I0(\cmd[3]_i_5_n_0 ),
        .I1(\cmd[2]_i_2_n_0 ),
        .I2(\cmd[1]_i_2_n_0 ),
        .I3(invalid_r_reg_2),
        .I4(invalid_r_i_3_n_0),
        .I5(invalid_r_reg_1),
        .O(fire_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h88E8)) 
    invalid_r_i_3
       (.I0(fc_orbitsync),
        .I1(fire_reg_0),
        .I2(invalid_r_reg),
        .I3(invalid_r_reg_0[12]),
        .O(invalid_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000055554454)) 
    latched_req_i_1__2
       (.I0(reset_40),
        .I1(req_periodic),
        .I2(req_async_40),
        .I3(was_req_40),
        .I4(latched_req),
        .I5(fire_reg_0),
        .O(latched_req_i_1__2_n_0));
  FDRE latched_req_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(latched_req_i_1__2_n_0),
        .Q(latched_req),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000051000051)) 
    pending_i_1__2
       (.I0(pending_i_2_n_0),
        .I1(\start_sequence_40_reg_n_0_[2] ),
        .I2(pending_i_3_0[2]),
        .I3(\start_sequence_40_reg_n_0_[3] ),
        .I4(pending_i_3_0[3]),
        .I5(pending_i_3_n_0),
        .O(pending0));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEEEFEE)) 
    pending_i_2
       (.I0(pending_i_4_n_0),
        .I1(pending_i_5_n_0),
        .I2(\start_sequence_40_reg_n_0_[1] ),
        .I3(pending_i_3_0[1]),
        .I4(\start_sequence_40_reg_n_0_[2] ),
        .I5(pending_i_3_0[2]),
        .O(pending_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBE)) 
    pending_i_3
       (.I0(pending_i_6_n_0),
        .I1(pending_i_3_0[9]),
        .I2(\start_sequence_40_reg_n_0_[9] ),
        .I3(pending_i_7_n_0),
        .I4(pending_i_8_n_0),
        .I5(pending_i_9_n_0),
        .O(pending_i_3_n_0));
  LUT6 #(
    .INIT(64'h66F666F6FFFF66F6)) 
    pending_i_4
       (.I0(\start_sequence_40_reg_n_0_[6] ),
        .I1(pending_i_3_0[6]),
        .I2(pending_i_3_0[11]),
        .I3(\start_sequence_40_reg_n_0_[11] ),
        .I4(\start_sequence_40_reg_n_0_[5] ),
        .I5(pending_i_3_0[5]),
        .O(pending_i_4_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    pending_i_5
       (.I0(pending_i_3_0[4]),
        .I1(\start_sequence_40_reg_n_0_[4] ),
        .I2(\start_sequence_40_reg_n_0_[10] ),
        .I3(pending_i_3_0[10]),
        .O(pending_i_5_n_0));
  LUT5 #(
    .INIT(32'h6F66FFFF)) 
    pending_i_6
       (.I0(\start_sequence_40_reg_n_0_[8] ),
        .I1(pending_i_3_0[8]),
        .I2(\start_sequence_40_reg_n_0_[5] ),
        .I3(pending_i_3_0[5]),
        .I4(latched_req),
        .O(pending_i_6_n_0));
  LUT6 #(
    .INIT(64'h2FF22FF2FFFF2FF2)) 
    pending_i_7
       (.I0(pending_i_3_0[4]),
        .I1(\start_sequence_40_reg_n_0_[4] ),
        .I2(pending_i_3_0[0]),
        .I3(\start_sequence_40_reg_n_0_[0] ),
        .I4(pending_i_3_0[7]),
        .I5(\start_sequence_40_reg_n_0_[7] ),
        .O(pending_i_7_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    pending_i_8
       (.I0(pending_i_3_0[10]),
        .I1(\start_sequence_40_reg_n_0_[10] ),
        .I2(pending_i_3_0[1]),
        .I3(\start_sequence_40_reg_n_0_[1] ),
        .O(pending_i_8_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    pending_i_9
       (.I0(pending_i_3_0[11]),
        .I1(\start_sequence_40_reg_n_0_[11] ),
        .I2(pending_i_3_0[7]),
        .I3(\start_sequence_40_reg_n_0_[7] ),
        .O(pending_i_9_n_0));
  FDRE pending_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(pending0),
        .Q(veto_cr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \start_sequence_40[0]_i_1__0 
       (.I0(invalid_r_reg_0[0]),
        .O(\start_sequence_40[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \start_sequence_40[10]_i_1__0 
       (.I0(invalid_r_reg_0[10]),
        .I1(invalid_r_reg_0[7]),
        .I2(invalid_r_reg_0[6]),
        .I3(invalid_r_reg_0[9]),
        .I4(invalid_r_reg_0[8]),
        .I5(\start_sequence_40[10]_i_2__0_n_0 ),
        .O(\start_sequence_40[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \start_sequence_40[10]_i_2__0 
       (.I0(invalid_r_reg_0[2]),
        .I1(invalid_r_reg_0[3]),
        .I2(invalid_r_reg_0[1]),
        .I3(invalid_r_reg_0[0]),
        .I4(invalid_r_reg_0[5]),
        .I5(invalid_r_reg_0[4]),
        .O(\start_sequence_40[10]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \start_sequence_40[11]_i_1__0 
       (.I0(invalid_r_reg_0[11]),
        .I1(invalid_r_reg_0[10]),
        .I2(\start_sequence_40[11]_i_2__0_n_0 ),
        .O(\start_sequence_40[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \start_sequence_40[11]_i_2__0 
       (.I0(\start_sequence_40[10]_i_2__0_n_0 ),
        .I1(invalid_r_reg_0[8]),
        .I2(invalid_r_reg_0[9]),
        .I3(invalid_r_reg_0[6]),
        .I4(invalid_r_reg_0[7]),
        .O(\start_sequence_40[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \start_sequence_40[1]_i_1__0 
       (.I0(invalid_r_reg_0[1]),
        .I1(invalid_r_reg_0[0]),
        .O(\start_sequence_40[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h802A)) 
    \start_sequence_40[2]_i_1__0 
       (.I0(\start_sequence_40[9]_i_2__0_n_0 ),
        .I1(invalid_r_reg_0[1]),
        .I2(invalid_r_reg_0[0]),
        .I3(invalid_r_reg_0[2]),
        .O(\start_sequence_40[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEA15)) 
    \start_sequence_40[3]_i_1__0 
       (.I0(invalid_r_reg_0[2]),
        .I1(invalid_r_reg_0[0]),
        .I2(invalid_r_reg_0[1]),
        .I3(invalid_r_reg_0[3]),
        .O(\start_sequence_40[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA800000002A)) 
    \start_sequence_40[4]_i_1__0 
       (.I0(\start_sequence_40[9]_i_2__0_n_0 ),
        .I1(invalid_r_reg_0[0]),
        .I2(invalid_r_reg_0[1]),
        .I3(invalid_r_reg_0[3]),
        .I4(invalid_r_reg_0[2]),
        .I5(invalid_r_reg_0[4]),
        .O(\start_sequence_40[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA95)) 
    \start_sequence_40[5]_i_1__0 
       (.I0(invalid_r_reg_0[5]),
        .I1(invalid_r_reg_0[0]),
        .I2(invalid_r_reg_0[1]),
        .I3(invalid_r_reg_0[3]),
        .I4(invalid_r_reg_0[2]),
        .I5(invalid_r_reg_0[4]),
        .O(\start_sequence_40[5]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \start_sequence_40[6]_i_1__2 
       (.I0(invalid_r_reg_0[6]),
        .I1(\start_sequence_40[10]_i_2__0_n_0 ),
        .O(\start_sequence_40[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \start_sequence_40[7]_i_1__0 
       (.I0(invalid_r_reg_0[7]),
        .I1(\start_sequence_40[10]_i_2__0_n_0 ),
        .I2(invalid_r_reg_0[6]),
        .O(\start_sequence_40[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \start_sequence_40[8]_i_1__2 
       (.I0(invalid_r_reg_0[8]),
        .I1(invalid_r_reg_0[6]),
        .I2(invalid_r_reg_0[7]),
        .I3(\start_sequence_40[10]_i_2__0_n_0 ),
        .O(\start_sequence_40[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \start_sequence_40[9]_i_1__0 
       (.I0(\start_sequence_40[9]_i_2__0_n_0 ),
        .I1(invalid_r_reg_0[8]),
        .I2(invalid_r_reg_0[6]),
        .I3(invalid_r_reg_0[7]),
        .I4(\start_sequence_40[10]_i_2__0_n_0 ),
        .I5(invalid_r_reg_0[9]),
        .O(\start_sequence_40[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \start_sequence_40[9]_i_2__0 
       (.I0(invalid_r_reg_0[11]),
        .I1(invalid_r_reg_0[10]),
        .I2(invalid_r_reg_0[3]),
        .I3(invalid_r_reg_0[2]),
        .I4(\start_sequence_40[9]_i_3__0_n_0 ),
        .I5(\start_sequence_40[9]_i_4__0_n_0 ),
        .O(\start_sequence_40[9]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \start_sequence_40[9]_i_3__0 
       (.I0(invalid_r_reg_0[4]),
        .I1(invalid_r_reg_0[5]),
        .O(\start_sequence_40[9]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \start_sequence_40[9]_i_4__0 
       (.I0(invalid_r_reg_0[7]),
        .I1(invalid_r_reg_0[6]),
        .I2(invalid_r_reg_0[9]),
        .I3(invalid_r_reg_0[8]),
        .O(\start_sequence_40[9]_i_4__0_n_0 ));
  FDRE \start_sequence_40_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[0]_i_1__0_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[10]_i_1__0_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[11]_i_1__0_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[1]_i_1__0_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[2]_i_1__0_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[3]_i_1__0_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[4]_i_1__0_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[5]_i_1__0_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[6]_i_1__2_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[7]_i_1__0_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[8] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[8]_i_1__2_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[9] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[9]_i_1__0_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[9] ),
        .R(1'b0));
  FDRE was_req_40_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(req_async_40),
        .Q(was_req_40),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_bxtimed" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_15
   (veto_l1,
    fire_reg_0,
    \gen_write[2].CtlReg_reg[2][24] ,
    fc_calibrationl1a,
    DI,
    S,
    \gen_write[2].CtlReg_reg[2][24]_0 ,
    ext_lhc_clk,
    \counter_reg[7] ,
    fc_orbitsync,
    fc_calibrationreq,
    enable_calibrationl1a,
    reset_40,
    pending_reg_0,
    fc_l1agen_A,
    fc_l1agen_B,
    D,
    \counter_reg[7]_0 );
  output veto_l1;
  output fire_reg_0;
  output \gen_write[2].CtlReg_reg[2][24] ;
  output fc_calibrationl1a;
  output [0:0]DI;
  output [0:0]S;
  output [0:0]\gen_write[2].CtlReg_reg[2][24]_0 ;
  input ext_lhc_clk;
  input [12:0]\counter_reg[7] ;
  input fc_orbitsync;
  input fc_calibrationreq;
  input enable_calibrationl1a;
  input reset_40;
  input [11:0]pending_reg_0;
  input fc_l1agen_A;
  input fc_l1agen_B;
  input [0:0]D;
  input [0:0]\counter_reg[7]_0 ;

  wire [0:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire [12:0]\counter_reg[7] ;
  wire [0:0]\counter_reg[7]_0 ;
  wire enable_calibrationl1a;
  wire ext_lhc_clk;
  wire fc_calibrationl1a;
  wire fc_calibrationreq;
  wire fc_l1agen_A;
  wire fc_l1agen_B;
  wire fc_orbitsync;
  wire fire_reg_0;
  wire \gen_write[2].CtlReg_reg[2][24] ;
  wire [0:0]\gen_write[2].CtlReg_reg[2][24]_0 ;
  wire latched_req;
  wire latched_req_i_1__0_n_0;
  wire pending0;
  wire pending_i_2__3_n_0;
  wire pending_i_3__3_n_0;
  wire pending_i_4__3_n_0;
  wire pending_i_5__3_n_0;
  wire pending_i_6__3_n_0;
  wire pending_i_7__3_n_0;
  wire pending_i_8__3_n_0;
  wire [11:0]pending_reg_0;
  wire reset_40;
  wire \start_sequence_40[0]_i_1__1_n_0 ;
  wire \start_sequence_40[10]_i_1__1_n_0 ;
  wire \start_sequence_40[10]_i_2__1_n_0 ;
  wire \start_sequence_40[11]_i_1__1_n_0 ;
  wire \start_sequence_40[11]_i_2__1_n_0 ;
  wire \start_sequence_40[1]_i_1__1_n_0 ;
  wire \start_sequence_40[2]_i_1__1_n_0 ;
  wire \start_sequence_40[3]_i_1__1_n_0 ;
  wire \start_sequence_40[4]_i_1__1_n_0 ;
  wire \start_sequence_40[5]_i_1__1_n_0 ;
  wire \start_sequence_40[6]_i_1__3_n_0 ;
  wire \start_sequence_40[7]_i_1__1_n_0 ;
  wire \start_sequence_40[8]_i_1__3_n_0 ;
  wire \start_sequence_40[9]_i_1__1_n_0 ;
  wire \start_sequence_40[9]_i_2__1_n_0 ;
  wire \start_sequence_40[9]_i_3__1_n_0 ;
  wire \start_sequence_40[9]_i_4__1_n_0 ;
  wire \start_sequence_40_reg_n_0_[0] ;
  wire \start_sequence_40_reg_n_0_[10] ;
  wire \start_sequence_40_reg_n_0_[11] ;
  wire \start_sequence_40_reg_n_0_[1] ;
  wire \start_sequence_40_reg_n_0_[2] ;
  wire \start_sequence_40_reg_n_0_[3] ;
  wire \start_sequence_40_reg_n_0_[4] ;
  wire \start_sequence_40_reg_n_0_[5] ;
  wire \start_sequence_40_reg_n_0_[6] ;
  wire \start_sequence_40_reg_n_0_[7] ;
  wire \start_sequence_40_reg_n_0_[8] ;
  wire \start_sequence_40_reg_n_0_[9] ;
  wire veto_l1;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \cmd[1]_i_3 
       (.I0(\counter_reg[7] [12]),
        .I1(fire_reg_0),
        .I2(fc_orbitsync),
        .I3(fc_calibrationreq),
        .O(\gen_write[2].CtlReg_reg[2][24] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cmd[3]_i_4 
       (.I0(fire_reg_0),
        .I1(\counter_reg[7] [12]),
        .O(fc_calibrationl1a));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_2__6 
       (.I0(fire_reg_0),
        .I1(\counter_reg[7] [12]),
        .O(DI));
  LUT3 #(
    .INIT(8'hB4)) 
    \counter[0]_i_3 
       (.I0(\counter_reg[7] [12]),
        .I1(fire_reg_0),
        .I2(\counter_reg[7]_0 ),
        .O(\gen_write[2].CtlReg_reg[2][24]_0 ));
  LUT4 #(
    .INIT(16'h01FE)) 
    \counter[0]_i_4 
       (.I0(fire_reg_0),
        .I1(fc_l1agen_A),
        .I2(fc_l1agen_B),
        .I3(D),
        .O(S));
  FDRE fire_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(veto_l1),
        .Q(fire_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000A8)) 
    latched_req_i_1__0
       (.I0(enable_calibrationl1a),
        .I1(fc_calibrationreq),
        .I2(latched_req),
        .I3(fire_reg_0),
        .I4(reset_40),
        .O(latched_req_i_1__0_n_0));
  FDRE latched_req_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(latched_req_i_1__0_n_0),
        .Q(latched_req),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000004)) 
    pending_i_1__7
       (.I0(pending_i_2__3_n_0),
        .I1(pending_i_3__3_n_0),
        .I2(pending_i_4__3_n_0),
        .I3(pending_i_5__3_n_0),
        .I4(pending_i_6__3_n_0),
        .O(pending0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    pending_i_2__3
       (.I0(pending_i_7__3_n_0),
        .I1(\start_sequence_40_reg_n_0_[5] ),
        .I2(pending_reg_0[5]),
        .I3(\start_sequence_40_reg_n_0_[8] ),
        .I4(pending_reg_0[8]),
        .I5(pending_i_8__3_n_0),
        .O(pending_i_2__3_n_0));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    pending_i_3__3
       (.I0(pending_reg_0[0]),
        .I1(\start_sequence_40_reg_n_0_[0] ),
        .I2(\start_sequence_40_reg_n_0_[5] ),
        .I3(pending_reg_0[5]),
        .I4(pending_reg_0[4]),
        .I5(\start_sequence_40_reg_n_0_[4] ),
        .O(pending_i_3__3_n_0));
  LUT6 #(
    .INIT(64'h2FF22FF2FFFF2FF2)) 
    pending_i_4__3
       (.I0(\start_sequence_40_reg_n_0_[7] ),
        .I1(pending_reg_0[7]),
        .I2(\start_sequence_40_reg_n_0_[1] ),
        .I3(pending_reg_0[1]),
        .I4(\start_sequence_40_reg_n_0_[8] ),
        .I5(pending_reg_0[8]),
        .O(pending_i_4__3_n_0));
  LUT6 #(
    .INIT(64'h7FF77FF7FFFF7FF7)) 
    pending_i_5__3
       (.I0(enable_calibrationl1a),
        .I1(latched_req),
        .I2(pending_reg_0[11]),
        .I3(\start_sequence_40_reg_n_0_[11] ),
        .I4(pending_reg_0[7]),
        .I5(\start_sequence_40_reg_n_0_[7] ),
        .O(pending_i_5__3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    pending_i_6__3
       (.I0(\start_sequence_40_reg_n_0_[9] ),
        .I1(pending_reg_0[9]),
        .I2(pending_reg_0[6]),
        .I3(\start_sequence_40_reg_n_0_[6] ),
        .I4(pending_reg_0[10]),
        .I5(\start_sequence_40_reg_n_0_[10] ),
        .O(pending_i_6__3_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    pending_i_7__3
       (.I0(pending_reg_0[4]),
        .I1(\start_sequence_40_reg_n_0_[4] ),
        .I2(\start_sequence_40_reg_n_0_[2] ),
        .I3(pending_reg_0[2]),
        .O(pending_i_7__3_n_0));
  LUT6 #(
    .INIT(64'h2FF22FF2FFFF2FF2)) 
    pending_i_8__3
       (.I0(\start_sequence_40_reg_n_0_[0] ),
        .I1(pending_reg_0[0]),
        .I2(pending_reg_0[3]),
        .I3(\start_sequence_40_reg_n_0_[3] ),
        .I4(\start_sequence_40_reg_n_0_[2] ),
        .I5(pending_reg_0[2]),
        .O(pending_i_8__3_n_0));
  FDRE pending_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(pending0),
        .Q(veto_l1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \start_sequence_40[0]_i_1__1 
       (.I0(\counter_reg[7] [0]),
        .O(\start_sequence_40[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \start_sequence_40[10]_i_1__1 
       (.I0(\counter_reg[7] [10]),
        .I1(\counter_reg[7] [7]),
        .I2(\counter_reg[7] [6]),
        .I3(\counter_reg[7] [9]),
        .I4(\counter_reg[7] [8]),
        .I5(\start_sequence_40[10]_i_2__1_n_0 ),
        .O(\start_sequence_40[10]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \start_sequence_40[10]_i_2__1 
       (.I0(\counter_reg[7] [2]),
        .I1(\counter_reg[7] [3]),
        .I2(\counter_reg[7] [1]),
        .I3(\counter_reg[7] [0]),
        .I4(\counter_reg[7] [5]),
        .I5(\counter_reg[7] [4]),
        .O(\start_sequence_40[10]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \start_sequence_40[11]_i_1__1 
       (.I0(\counter_reg[7] [11]),
        .I1(\counter_reg[7] [10]),
        .I2(\start_sequence_40[11]_i_2__1_n_0 ),
        .O(\start_sequence_40[11]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \start_sequence_40[11]_i_2__1 
       (.I0(\start_sequence_40[10]_i_2__1_n_0 ),
        .I1(\counter_reg[7] [8]),
        .I2(\counter_reg[7] [9]),
        .I3(\counter_reg[7] [6]),
        .I4(\counter_reg[7] [7]),
        .O(\start_sequence_40[11]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \start_sequence_40[1]_i_1__1 
       (.I0(\counter_reg[7] [1]),
        .I1(\counter_reg[7] [0]),
        .O(\start_sequence_40[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h802A)) 
    \start_sequence_40[2]_i_1__1 
       (.I0(\start_sequence_40[9]_i_2__1_n_0 ),
        .I1(\counter_reg[7] [1]),
        .I2(\counter_reg[7] [0]),
        .I3(\counter_reg[7] [2]),
        .O(\start_sequence_40[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hEA15)) 
    \start_sequence_40[3]_i_1__1 
       (.I0(\counter_reg[7] [2]),
        .I1(\counter_reg[7] [0]),
        .I2(\counter_reg[7] [1]),
        .I3(\counter_reg[7] [3]),
        .O(\start_sequence_40[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA800000002A)) 
    \start_sequence_40[4]_i_1__1 
       (.I0(\start_sequence_40[9]_i_2__1_n_0 ),
        .I1(\counter_reg[7] [0]),
        .I2(\counter_reg[7] [1]),
        .I3(\counter_reg[7] [3]),
        .I4(\counter_reg[7] [2]),
        .I5(\counter_reg[7] [4]),
        .O(\start_sequence_40[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA95)) 
    \start_sequence_40[5]_i_1__1 
       (.I0(\counter_reg[7] [5]),
        .I1(\counter_reg[7] [0]),
        .I2(\counter_reg[7] [1]),
        .I3(\counter_reg[7] [3]),
        .I4(\counter_reg[7] [2]),
        .I5(\counter_reg[7] [4]),
        .O(\start_sequence_40[5]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \start_sequence_40[6]_i_1__3 
       (.I0(\counter_reg[7] [6]),
        .I1(\start_sequence_40[10]_i_2__1_n_0 ),
        .O(\start_sequence_40[6]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \start_sequence_40[7]_i_1__1 
       (.I0(\counter_reg[7] [7]),
        .I1(\start_sequence_40[10]_i_2__1_n_0 ),
        .I2(\counter_reg[7] [6]),
        .O(\start_sequence_40[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \start_sequence_40[8]_i_1__3 
       (.I0(\counter_reg[7] [8]),
        .I1(\counter_reg[7] [6]),
        .I2(\counter_reg[7] [7]),
        .I3(\start_sequence_40[10]_i_2__1_n_0 ),
        .O(\start_sequence_40[8]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \start_sequence_40[9]_i_1__1 
       (.I0(\start_sequence_40[9]_i_2__1_n_0 ),
        .I1(\counter_reg[7] [8]),
        .I2(\counter_reg[7] [6]),
        .I3(\counter_reg[7] [7]),
        .I4(\start_sequence_40[10]_i_2__1_n_0 ),
        .I5(\counter_reg[7] [9]),
        .O(\start_sequence_40[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \start_sequence_40[9]_i_2__1 
       (.I0(\counter_reg[7] [11]),
        .I1(\counter_reg[7] [10]),
        .I2(\counter_reg[7] [3]),
        .I3(\counter_reg[7] [2]),
        .I4(\start_sequence_40[9]_i_3__1_n_0 ),
        .I5(\start_sequence_40[9]_i_4__1_n_0 ),
        .O(\start_sequence_40[9]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \start_sequence_40[9]_i_3__1 
       (.I0(\counter_reg[7] [4]),
        .I1(\counter_reg[7] [5]),
        .O(\start_sequence_40[9]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \start_sequence_40[9]_i_4__1 
       (.I0(\counter_reg[7] [7]),
        .I1(\counter_reg[7] [6]),
        .I2(\counter_reg[7] [9]),
        .I3(\counter_reg[7] [8]),
        .O(\start_sequence_40[9]_i_4__1_n_0 ));
  FDRE \start_sequence_40_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[0]_i_1__1_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[10]_i_1__1_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[11]_i_1__1_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[1]_i_1__1_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[2]_i_1__1_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[3]_i_1__1_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[4]_i_1__1_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[5]_i_1__1_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[6]_i_1__3_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[7]_i_1__1_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[8] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[8]_i_1__3_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \start_sequence_40_reg[9] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\start_sequence_40[9]_i_1__1_n_0 ),
        .Q(\start_sequence_40_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_calib" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_calib
   (fc_calibrationreq,
    fc_l1a_for_calib,
    fire_reg,
    fc_calibrationl1a,
    fire_reg_0,
    fire_reg_1,
    fire_reg_2,
    fire_reg_3,
    fire_reg_4,
    will_fire,
    pending_reg,
    will_fire_0,
    DI,
    S,
    \gen_write[2].CtlReg_reg[2][24] ,
    fire_reg_5,
    Q,
    ext_lhc_clk,
    periodic_counter,
    fc_internaltest,
    fc_orbitsync,
    \counter_reg[7] ,
    reset_40,
    pending_reg_0,
    invalid_r_reg,
    \cmd_reg[2] ,
    invalid_r_reg_0,
    fc_orbitcountreset,
    fc_linkreset,
    fc_daqresync,
    fc_l1a,
    enable_periodic_calib,
    fire_reg_6,
    link_daq_resync,
    link_reset_pending,
    veto_l1agen_A,
    veto_l1agen_B,
    nextos,
    periodic_counter0_carry_0,
    enable_calibrationl1a,
    fc_l1agen_A,
    fc_l1agen_B,
    D,
    \counter_reg[7]_0 ,
    \counter_reg[7]_1 );
  output fc_calibrationreq;
  output fc_l1a_for_calib;
  output fire_reg;
  output fc_calibrationl1a;
  output fire_reg_0;
  output fire_reg_1;
  output fire_reg_2;
  output fire_reg_3;
  output fire_reg_4;
  output will_fire;
  output pending_reg;
  output will_fire_0;
  output [0:0]DI;
  output [0:0]S;
  output [0:0]\gen_write[2].CtlReg_reg[2][24] ;
  output [0:0]fire_reg_5;
  input [0:0]Q;
  input ext_lhc_clk;
  input periodic_counter;
  input fc_internaltest;
  input fc_orbitsync;
  input [24:0]\counter_reg[7] ;
  input reset_40;
  input [11:0]pending_reg_0;
  input invalid_r_reg;
  input \cmd_reg[2] ;
  input invalid_r_reg_0;
  input fc_orbitcountreset;
  input fc_linkreset;
  input fc_daqresync;
  input fc_l1a;
  input enable_periodic_calib;
  input fire_reg_6;
  input link_daq_resync;
  input link_reset_pending;
  input veto_l1agen_A;
  input veto_l1agen_B;
  input nextos;
  input [19:0]periodic_counter0_carry_0;
  input enable_calibrationl1a;
  input fc_l1agen_A;
  input fc_l1agen_B;
  input [0:0]D;
  input [0:0]\counter_reg[7]_0 ;
  input [0:0]\counter_reg[7]_1 ;

  wire [0:0]D;
  wire [0:0]DI;
  wire [0:0]Q;
  wire [0:0]S;
  wire \cmd_reg[2] ;
  wire [24:0]\counter_reg[7] ;
  wire [0:0]\counter_reg[7]_0 ;
  wire [0:0]\counter_reg[7]_1 ;
  wire data0;
  wire enable_calibrationl1a;
  wire enable_periodic_calib;
  wire ext_lhc_clk;
  wire fc_calibrationl1a;
  wire fc_calibrationreq;
  wire fc_daqresync;
  wire fc_internaltest;
  wire fc_l1a;
  wire fc_l1a_for_calib;
  wire fc_l1agen_A;
  wire fc_l1agen_B;
  wire fc_linkreset;
  wire fc_orbitcountreset;
  wire fc_orbitsync;
  wire fire_reg;
  wire fire_reg_0;
  wire fire_reg_1;
  wire fire_reg_2;
  wire fire_reg_3;
  wire fire_reg_4;
  wire [0:0]fire_reg_5;
  wire fire_reg_6;
  wire [0:0]\gen_write[2].CtlReg_reg[2][24] ;
  wire invalid_r_reg;
  wire invalid_r_reg_0;
  wire link_daq_resync;
  wire link_reset_pending;
  wire nextos;
  wire pending_reg;
  wire [11:0]pending_reg_0;
  wire periodic_counter;
  wire [19:0]periodic_counter0_carry_0;
  wire periodic_counter0_carry_i_1_n_0;
  wire periodic_counter0_carry_i_2_n_0;
  wire periodic_counter0_carry_i_3_n_0;
  wire periodic_counter0_carry_i_4_n_0;
  wire periodic_counter0_carry_i_5_n_0;
  wire periodic_counter0_carry_i_6_n_0;
  wire periodic_counter0_carry_i_7_n_0;
  wire periodic_counter0_carry_n_2;
  wire periodic_counter0_carry_n_3;
  wire periodic_counter0_carry_n_4;
  wire periodic_counter0_carry_n_5;
  wire periodic_counter0_carry_n_6;
  wire periodic_counter0_carry_n_7;
  wire \periodic_counter[0]_i_1_n_0 ;
  wire \periodic_counter[0]_i_6_n_0 ;
  wire [19:0]periodic_counter_reg;
  wire \periodic_counter_reg[0]_i_3_n_0 ;
  wire \periodic_counter_reg[0]_i_3_n_1 ;
  wire \periodic_counter_reg[0]_i_3_n_10 ;
  wire \periodic_counter_reg[0]_i_3_n_11 ;
  wire \periodic_counter_reg[0]_i_3_n_12 ;
  wire \periodic_counter_reg[0]_i_3_n_13 ;
  wire \periodic_counter_reg[0]_i_3_n_14 ;
  wire \periodic_counter_reg[0]_i_3_n_15 ;
  wire \periodic_counter_reg[0]_i_3_n_2 ;
  wire \periodic_counter_reg[0]_i_3_n_3 ;
  wire \periodic_counter_reg[0]_i_3_n_4 ;
  wire \periodic_counter_reg[0]_i_3_n_5 ;
  wire \periodic_counter_reg[0]_i_3_n_6 ;
  wire \periodic_counter_reg[0]_i_3_n_7 ;
  wire \periodic_counter_reg[0]_i_3_n_8 ;
  wire \periodic_counter_reg[0]_i_3_n_9 ;
  wire \periodic_counter_reg[16]_i_1_n_12 ;
  wire \periodic_counter_reg[16]_i_1_n_13 ;
  wire \periodic_counter_reg[16]_i_1_n_14 ;
  wire \periodic_counter_reg[16]_i_1_n_15 ;
  wire \periodic_counter_reg[16]_i_1_n_5 ;
  wire \periodic_counter_reg[16]_i_1_n_6 ;
  wire \periodic_counter_reg[16]_i_1_n_7 ;
  wire \periodic_counter_reg[8]_i_1_n_0 ;
  wire \periodic_counter_reg[8]_i_1_n_1 ;
  wire \periodic_counter_reg[8]_i_1_n_10 ;
  wire \periodic_counter_reg[8]_i_1_n_11 ;
  wire \periodic_counter_reg[8]_i_1_n_12 ;
  wire \periodic_counter_reg[8]_i_1_n_13 ;
  wire \periodic_counter_reg[8]_i_1_n_14 ;
  wire \periodic_counter_reg[8]_i_1_n_15 ;
  wire \periodic_counter_reg[8]_i_1_n_2 ;
  wire \periodic_counter_reg[8]_i_1_n_3 ;
  wire \periodic_counter_reg[8]_i_1_n_4 ;
  wire \periodic_counter_reg[8]_i_1_n_5 ;
  wire \periodic_counter_reg[8]_i_1_n_6 ;
  wire \periodic_counter_reg[8]_i_1_n_7 ;
  wire \periodic_counter_reg[8]_i_1_n_8 ;
  wire \periodic_counter_reg[8]_i_1_n_9 ;
  wire req_periodic;
  wire req_periodic_i_1_n_0;
  wire reset_40;
  wire timer_l1_n_2;
  wire veto_l1;
  wire veto_l1agen_A;
  wire veto_l1agen_B;
  wire will_fire;
  wire will_fire_0;
  wire [7:7]NLW_periodic_counter0_carry_CO_UNCONNECTED;
  wire [7:0]NLW_periodic_counter0_carry_O_UNCONNECTED;
  wire [7:3]\NLW_periodic_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_periodic_counter_reg[16]_i_1_O_UNCONNECTED ;

  CARRY8 periodic_counter0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_periodic_counter0_carry_CO_UNCONNECTED[7],data0,periodic_counter0_carry_n_2,periodic_counter0_carry_n_3,periodic_counter0_carry_n_4,periodic_counter0_carry_n_5,periodic_counter0_carry_n_6,periodic_counter0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_periodic_counter0_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,periodic_counter0_carry_i_1_n_0,periodic_counter0_carry_i_2_n_0,periodic_counter0_carry_i_3_n_0,periodic_counter0_carry_i_4_n_0,periodic_counter0_carry_i_5_n_0,periodic_counter0_carry_i_6_n_0,periodic_counter0_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    periodic_counter0_carry_i_1
       (.I0(periodic_counter0_carry_0[19]),
        .I1(periodic_counter_reg[19]),
        .I2(periodic_counter0_carry_0[18]),
        .I3(periodic_counter_reg[18]),
        .O(periodic_counter0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_2
       (.I0(periodic_counter_reg[15]),
        .I1(periodic_counter0_carry_0[15]),
        .I2(periodic_counter_reg[16]),
        .I3(periodic_counter0_carry_0[16]),
        .I4(periodic_counter0_carry_0[17]),
        .I5(periodic_counter_reg[17]),
        .O(periodic_counter0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_3
       (.I0(periodic_counter_reg[12]),
        .I1(periodic_counter0_carry_0[12]),
        .I2(periodic_counter_reg[13]),
        .I3(periodic_counter0_carry_0[13]),
        .I4(periodic_counter0_carry_0[14]),
        .I5(periodic_counter_reg[14]),
        .O(periodic_counter0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_4
       (.I0(periodic_counter_reg[9]),
        .I1(periodic_counter0_carry_0[9]),
        .I2(periodic_counter_reg[10]),
        .I3(periodic_counter0_carry_0[10]),
        .I4(periodic_counter0_carry_0[11]),
        .I5(periodic_counter_reg[11]),
        .O(periodic_counter0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_5
       (.I0(periodic_counter_reg[6]),
        .I1(periodic_counter0_carry_0[6]),
        .I2(periodic_counter_reg[7]),
        .I3(periodic_counter0_carry_0[7]),
        .I4(periodic_counter0_carry_0[8]),
        .I5(periodic_counter_reg[8]),
        .O(periodic_counter0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_6
       (.I0(periodic_counter_reg[3]),
        .I1(periodic_counter0_carry_0[3]),
        .I2(periodic_counter_reg[4]),
        .I3(periodic_counter0_carry_0[4]),
        .I4(periodic_counter0_carry_0[5]),
        .I5(periodic_counter_reg[5]),
        .O(periodic_counter0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_7
       (.I0(periodic_counter_reg[2]),
        .I1(periodic_counter0_carry_0[2]),
        .I2(periodic_counter_reg[0]),
        .I3(periodic_counter0_carry_0[0]),
        .I4(periodic_counter0_carry_0[1]),
        .I5(periodic_counter_reg[1]),
        .O(periodic_counter0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \periodic_counter[0]_i_1 
       (.I0(periodic_counter),
        .I1(data0),
        .I2(reset_40),
        .I3(enable_periodic_calib),
        .O(\periodic_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \periodic_counter[0]_i_6 
       (.I0(periodic_counter_reg[0]),
        .O(\periodic_counter[0]_i_6_n_0 ));
  FDRE \periodic_counter_reg[0] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_3_n_15 ),
        .Q(periodic_counter_reg[0]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  CARRY8 \periodic_counter_reg[0]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\periodic_counter_reg[0]_i_3_n_0 ,\periodic_counter_reg[0]_i_3_n_1 ,\periodic_counter_reg[0]_i_3_n_2 ,\periodic_counter_reg[0]_i_3_n_3 ,\periodic_counter_reg[0]_i_3_n_4 ,\periodic_counter_reg[0]_i_3_n_5 ,\periodic_counter_reg[0]_i_3_n_6 ,\periodic_counter_reg[0]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\periodic_counter_reg[0]_i_3_n_8 ,\periodic_counter_reg[0]_i_3_n_9 ,\periodic_counter_reg[0]_i_3_n_10 ,\periodic_counter_reg[0]_i_3_n_11 ,\periodic_counter_reg[0]_i_3_n_12 ,\periodic_counter_reg[0]_i_3_n_13 ,\periodic_counter_reg[0]_i_3_n_14 ,\periodic_counter_reg[0]_i_3_n_15 }),
        .S({periodic_counter_reg[7:1],\periodic_counter[0]_i_6_n_0 }));
  FDRE \periodic_counter_reg[10] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1_n_13 ),
        .Q(periodic_counter_reg[10]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[11] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1_n_12 ),
        .Q(periodic_counter_reg[11]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[12] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1_n_11 ),
        .Q(periodic_counter_reg[12]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[13] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1_n_10 ),
        .Q(periodic_counter_reg[13]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[14] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1_n_9 ),
        .Q(periodic_counter_reg[14]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[15] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1_n_8 ),
        .Q(periodic_counter_reg[15]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[16] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[16]_i_1_n_15 ),
        .Q(periodic_counter_reg[16]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  CARRY8 \periodic_counter_reg[16]_i_1 
       (.CI(\periodic_counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_periodic_counter_reg[16]_i_1_CO_UNCONNECTED [7:3],\periodic_counter_reg[16]_i_1_n_5 ,\periodic_counter_reg[16]_i_1_n_6 ,\periodic_counter_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_periodic_counter_reg[16]_i_1_O_UNCONNECTED [7:4],\periodic_counter_reg[16]_i_1_n_12 ,\periodic_counter_reg[16]_i_1_n_13 ,\periodic_counter_reg[16]_i_1_n_14 ,\periodic_counter_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,periodic_counter_reg[19:16]}));
  FDRE \periodic_counter_reg[17] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[16]_i_1_n_14 ),
        .Q(periodic_counter_reg[17]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[18] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[16]_i_1_n_13 ),
        .Q(periodic_counter_reg[18]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[19] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[16]_i_1_n_12 ),
        .Q(periodic_counter_reg[19]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[1] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_3_n_14 ),
        .Q(periodic_counter_reg[1]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[2] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_3_n_13 ),
        .Q(periodic_counter_reg[2]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[3] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_3_n_12 ),
        .Q(periodic_counter_reg[3]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[4] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_3_n_11 ),
        .Q(periodic_counter_reg[4]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[5] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_3_n_10 ),
        .Q(periodic_counter_reg[5]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[6] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_3_n_9 ),
        .Q(periodic_counter_reg[6]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[7] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_3_n_8 ),
        .Q(periodic_counter_reg[7]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  FDRE \periodic_counter_reg[8] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1_n_15 ),
        .Q(periodic_counter_reg[8]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  CARRY8 \periodic_counter_reg[8]_i_1 
       (.CI(\periodic_counter_reg[0]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\periodic_counter_reg[8]_i_1_n_0 ,\periodic_counter_reg[8]_i_1_n_1 ,\periodic_counter_reg[8]_i_1_n_2 ,\periodic_counter_reg[8]_i_1_n_3 ,\periodic_counter_reg[8]_i_1_n_4 ,\periodic_counter_reg[8]_i_1_n_5 ,\periodic_counter_reg[8]_i_1_n_6 ,\periodic_counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\periodic_counter_reg[8]_i_1_n_8 ,\periodic_counter_reg[8]_i_1_n_9 ,\periodic_counter_reg[8]_i_1_n_10 ,\periodic_counter_reg[8]_i_1_n_11 ,\periodic_counter_reg[8]_i_1_n_12 ,\periodic_counter_reg[8]_i_1_n_13 ,\periodic_counter_reg[8]_i_1_n_14 ,\periodic_counter_reg[8]_i_1_n_15 }),
        .S(periodic_counter_reg[15:8]));
  FDRE \periodic_counter_reg[9] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1_n_14 ),
        .Q(periodic_counter_reg[9]),
        .R(\periodic_counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    req_periodic_i_1
       (.I0(reset_40),
        .I1(enable_periodic_calib),
        .I2(periodic_counter),
        .I3(data0),
        .O(req_periodic_i_1_n_0));
  FDRE req_periodic_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(req_periodic_i_1_n_0),
        .Q(req_periodic),
        .R(1'b0));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_14 timer_cr
       (.Q(Q),
        .\cmd_reg[1] (timer_l1_n_2),
        .\cmd_reg[2] (\cmd_reg[2] ),
        .\cmd_reg[2]_0 (fc_calibrationl1a),
        .\counter_reg[7] (\counter_reg[7]_1 ),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_daqresync(fc_daqresync),
        .fc_internaltest(fc_internaltest),
        .fc_l1a(fc_l1a),
        .fc_linkreset(fc_linkreset),
        .fc_orbitcountreset(fc_orbitcountreset),
        .fc_orbitsync(fc_orbitsync),
        .fire_reg_0(fc_calibrationreq),
        .fire_reg_1(fire_reg),
        .fire_reg_2(fire_reg_0),
        .fire_reg_3(fire_reg_1),
        .fire_reg_4(fire_reg_2),
        .fire_reg_5(fire_reg_3),
        .fire_reg_6(fire_reg_4),
        .fire_reg_7(fire_reg_5),
        .fire_reg_8(fire_reg_6),
        .invalid_r_reg(fc_l1a_for_calib),
        .invalid_r_reg_0({\counter_reg[7] [24],\counter_reg[7] [11:0]}),
        .invalid_r_reg_1(invalid_r_reg),
        .invalid_r_reg_2(invalid_r_reg_0),
        .link_daq_resync(link_daq_resync),
        .link_reset_pending(link_reset_pending),
        .nextos(nextos),
        .pending_i_3_0(pending_reg_0),
        .pending_reg_0(pending_reg),
        .req_periodic(req_periodic),
        .reset_40(reset_40),
        .veto_l1(veto_l1),
        .veto_l1agen_A(veto_l1agen_A),
        .veto_l1agen_B(veto_l1agen_B),
        .will_fire(will_fire),
        .will_fire_0(will_fire_0));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_15 timer_l1
       (.D(D),
        .DI(DI),
        .S(S),
        .\counter_reg[7] (\counter_reg[7] [24:12]),
        .\counter_reg[7]_0 (\counter_reg[7]_0 ),
        .enable_calibrationl1a(enable_calibrationl1a),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_calibrationl1a(fc_calibrationl1a),
        .fc_calibrationreq(fc_calibrationreq),
        .fc_l1agen_A(fc_l1agen_A),
        .fc_l1agen_B(fc_l1agen_B),
        .fc_orbitsync(fc_orbitsync),
        .fire_reg_0(fc_l1a_for_calib),
        .\gen_write[2].CtlReg_reg[2][24] (timer_l1_n_2),
        .\gen_write[2].CtlReg_reg[2][24]_0 (\gen_write[2].CtlReg_reg[2][24] ),
        .pending_reg_0(pending_reg_0),
        .reset_40(reset_40),
        .veto_l1(veto_l1));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_counter" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter
   (D,
    Q,
    clear,
    ext_lhc_clk,
    DI,
    \counter_reg[7]_0 ,
    s00_axi_aclk);
  output [0:0]D;
  output [31:0]Q;
  input clear;
  input ext_lhc_clk;
  input [0:0]DI;
  input [0:0]\counter_reg[7]_0 ;
  input s00_axi_aclk;

  wire [0:0]D;
  wire [0:0]DI;
  wire [31:0]Q;
  wire clear;
  wire [31:1]counter_reg;
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
  wire [0:0]\counter_reg[7]_0 ;
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
  wire ext_lhc_clk;
  wire s00_axi_aclk;
  wire [7:7]\NLW_counter_reg[24]_i_1__3_CO_UNCONNECTED ;

  FDRE \counter_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_1__2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1__2_n_0 ,\counter_reg[0]_i_1__2_n_1 ,\counter_reg[0]_i_1__2_n_2 ,\counter_reg[0]_i_1__2_n_3 ,\counter_reg[0]_i_1__2_n_4 ,\counter_reg[0]_i_1__2_n_5 ,\counter_reg[0]_i_1__2_n_6 ,\counter_reg[0]_i_1__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DI}),
        .O({\counter_reg[0]_i_1__2_n_8 ,\counter_reg[0]_i_1__2_n_9 ,\counter_reg[0]_i_1__2_n_10 ,\counter_reg[0]_i_1__2_n_11 ,\counter_reg[0]_i_1__2_n_12 ,\counter_reg[0]_i_1__2_n_13 ,\counter_reg[0]_i_1__2_n_14 ,\counter_reg[0]_i_1__2_n_15 }),
        .S({counter_reg[7:1],\counter_reg[7]_0 }));
  FDRE \counter_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__3_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__3_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__3_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__2_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
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
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_0
   (D,
    Q,
    clear,
    ext_lhc_clk,
    fc_calibrationreq,
    \counter_reg[7]_0 ,
    s00_axi_aclk);
  output [0:0]D;
  output [31:0]Q;
  input clear;
  input ext_lhc_clk;
  input fc_calibrationreq;
  input [0:0]\counter_reg[7]_0 ;
  input s00_axi_aclk;

  wire [0:0]D;
  wire [31:0]Q;
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
  wire [0:0]\counter_reg[7]_0 ;
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
  wire ext_lhc_clk;
  wire fc_calibrationreq;
  wire s00_axi_aclk;
  wire [7:7]\NLW_counter_reg[24]_i_1__4_CO_UNCONNECTED ;

  FDRE \counter_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_1__3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1__3_n_0 ,\counter_reg[0]_i_1__3_n_1 ,\counter_reg[0]_i_1__3_n_2 ,\counter_reg[0]_i_1__3_n_3 ,\counter_reg[0]_i_1__3_n_4 ,\counter_reg[0]_i_1__3_n_5 ,\counter_reg[0]_i_1__3_n_6 ,\counter_reg[0]_i_1__3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fc_calibrationreq}),
        .O({\counter_reg[0]_i_1__3_n_8 ,\counter_reg[0]_i_1__3_n_9 ,\counter_reg[0]_i_1__3_n_10 ,\counter_reg[0]_i_1__3_n_11 ,\counter_reg[0]_i_1__3_n_12 ,\counter_reg[0]_i_1__3_n_13 ,\counter_reg[0]_i_1__3_n_14 ,\counter_reg[0]_i_1__3_n_15 }),
        .S({counter_reg[7:1],\counter_reg[7]_0 }));
  FDRE \counter_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__4_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__4_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__3_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__4_n_14 ),
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
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_1
   (D,
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
    clear,
    ext_lhc_clk,
    Q,
    \io_r_data_reg[31]_i_7 ,
    \io_r_data_reg[31]_i_7_0 ,
    \io_r_data_reg[31]_i_7_1 ,
    fc_daqresync,
    S,
    s00_axi_aclk);
  output [0:0]D;
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
  input clear;
  input ext_lhc_clk;
  input [31:0]Q;
  input [1:0]\io_r_data_reg[31]_i_7 ;
  input [31:0]\io_r_data_reg[31]_i_7_0 ;
  input [31:0]\io_r_data_reg[31]_i_7_1 ;
  input fc_daqresync;
  input [0:0]S;
  input s00_axi_aclk;

  wire [0:0]D;
  wire [31:0]Q;
  wire [0:0]S;
  wire clear;
  wire [31:1]counter_reg;
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
  wire ext_lhc_clk;
  wire fc_daqresync;
  wire [1:0]\io_r_data_reg[31]_i_7 ;
  wire [31:0]\io_r_data_reg[31]_i_7_0 ;
  wire [31:0]\io_r_data_reg[31]_i_7_1 ;
  wire s00_axi_aclk;
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
  wire [7:7]\NLW_counter_reg[24]_i_1__1_CO_UNCONNECTED ;

  FDRE \counter_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_1__0 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1__0_n_0 ,\counter_reg[0]_i_1__0_n_1 ,\counter_reg[0]_i_1__0_n_2 ,\counter_reg[0]_i_1__0_n_3 ,\counter_reg[0]_i_1__0_n_4 ,\counter_reg[0]_i_1__0_n_5 ,\counter_reg[0]_i_1__0_n_6 ,\counter_reg[0]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fc_daqresync}),
        .O({\counter_reg[0]_i_1__0_n_8 ,\counter_reg[0]_i_1__0_n_9 ,\counter_reg[0]_i_1__0_n_10 ,\counter_reg[0]_i_1__0_n_11 ,\counter_reg[0]_i_1__0_n_12 ,\counter_reg[0]_i_1__0_n_13 ,\counter_reg[0]_i_1__0_n_14 ,\counter_reg[0]_i_1__0_n_15 }),
        .S({counter_reg[7:1],S}));
  FDRE \counter_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__1_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_14 ),
        .Q(counter_reg[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[0]_i_7 
       (.I0(\value_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [0]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [0]),
        .O(\value_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[10]_i_7 
       (.I0(\value_reg_n_0_[10] ),
        .I1(Q[10]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [10]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [10]),
        .O(\value_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[11]_i_7 
       (.I0(\value_reg_n_0_[11] ),
        .I1(Q[11]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [11]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [11]),
        .O(\value_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[12]_i_7 
       (.I0(\value_reg_n_0_[12] ),
        .I1(Q[12]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [12]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [12]),
        .O(\value_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[13]_i_7 
       (.I0(\value_reg_n_0_[13] ),
        .I1(Q[13]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [13]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [13]),
        .O(\value_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[14]_i_7 
       (.I0(\value_reg_n_0_[14] ),
        .I1(Q[14]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [14]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [14]),
        .O(\value_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[15]_i_7 
       (.I0(\value_reg_n_0_[15] ),
        .I1(Q[15]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [15]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [15]),
        .O(\value_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[16]_i_7 
       (.I0(\value_reg_n_0_[16] ),
        .I1(Q[16]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [16]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [16]),
        .O(\value_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[17]_i_7 
       (.I0(\value_reg_n_0_[17] ),
        .I1(Q[17]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [17]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [17]),
        .O(\value_reg[17]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[18]_i_7 
       (.I0(\value_reg_n_0_[18] ),
        .I1(Q[18]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [18]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [18]),
        .O(\value_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[19]_i_7 
       (.I0(\value_reg_n_0_[19] ),
        .I1(Q[19]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [19]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [19]),
        .O(\value_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[1]_i_7 
       (.I0(\value_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [1]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [1]),
        .O(\value_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[20]_i_7 
       (.I0(\value_reg_n_0_[20] ),
        .I1(Q[20]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [20]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [20]),
        .O(\value_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[21]_i_7 
       (.I0(\value_reg_n_0_[21] ),
        .I1(Q[21]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [21]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [21]),
        .O(\value_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[22]_i_7 
       (.I0(\value_reg_n_0_[22] ),
        .I1(Q[22]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [22]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [22]),
        .O(\value_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[23]_i_7 
       (.I0(\value_reg_n_0_[23] ),
        .I1(Q[23]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [23]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [23]),
        .O(\value_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[24]_i_7 
       (.I0(\value_reg_n_0_[24] ),
        .I1(Q[24]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [24]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [24]),
        .O(\value_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[25]_i_7 
       (.I0(\value_reg_n_0_[25] ),
        .I1(Q[25]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [25]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [25]),
        .O(\value_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[26]_i_7 
       (.I0(\value_reg_n_0_[26] ),
        .I1(Q[26]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [26]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [26]),
        .O(\value_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[27]_i_7 
       (.I0(\value_reg_n_0_[27] ),
        .I1(Q[27]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [27]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [27]),
        .O(\value_reg[27]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[28]_i_7 
       (.I0(\value_reg_n_0_[28] ),
        .I1(Q[28]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [28]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [28]),
        .O(\value_reg[28]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[29]_i_7 
       (.I0(\value_reg_n_0_[29] ),
        .I1(Q[29]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [29]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [29]),
        .O(\value_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[2]_i_7 
       (.I0(\value_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [2]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [2]),
        .O(\value_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[30]_i_7 
       (.I0(\value_reg_n_0_[30] ),
        .I1(Q[30]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [30]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [30]),
        .O(\value_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[31]_i_10 
       (.I0(\value_reg_n_0_[31] ),
        .I1(Q[31]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [31]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [31]),
        .O(\value_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[3]_i_7 
       (.I0(\value_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [3]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [3]),
        .O(\value_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[4]_i_7 
       (.I0(\value_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [4]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [4]),
        .O(\value_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[5]_i_7 
       (.I0(\value_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [5]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [5]),
        .O(\value_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[6]_i_7 
       (.I0(\value_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [6]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [6]),
        .O(\value_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[7]_i_7 
       (.I0(\value_reg_n_0_[7] ),
        .I1(Q[7]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [7]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [7]),
        .O(\value_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[8]_i_7 
       (.I0(\value_reg_n_0_[8] ),
        .I1(Q[8]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [8]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [8]),
        .O(\value_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[9]_i_7 
       (.I0(\value_reg_n_0_[9] ),
        .I1(Q[9]),
        .I2(\io_r_data_reg[31]_i_7 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [9]),
        .I4(\io_r_data_reg[31]_i_7 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [9]),
        .O(\value_reg[9]_0 ));
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
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_2
   (D,
    clear,
    Q,
    ext_lhc_clk,
    reset_counters_40_n,
    DI,
    S,
    s00_axi_aclk);
  output [0:0]D;
  output clear;
  output [31:0]Q;
  input ext_lhc_clk;
  input reset_counters_40_n;
  input [0:0]DI;
  input [0:0]S;
  input s00_axi_aclk;

  wire [0:0]D;
  wire [0:0]DI;
  wire [31:0]Q;
  wire [0:0]S;
  wire clear;
  wire [31:1]counter_reg;
  wire \counter_reg[0]_i_1__6_n_0 ;
  wire \counter_reg[0]_i_1__6_n_1 ;
  wire \counter_reg[0]_i_1__6_n_10 ;
  wire \counter_reg[0]_i_1__6_n_11 ;
  wire \counter_reg[0]_i_1__6_n_12 ;
  wire \counter_reg[0]_i_1__6_n_13 ;
  wire \counter_reg[0]_i_1__6_n_14 ;
  wire \counter_reg[0]_i_1__6_n_15 ;
  wire \counter_reg[0]_i_1__6_n_2 ;
  wire \counter_reg[0]_i_1__6_n_3 ;
  wire \counter_reg[0]_i_1__6_n_4 ;
  wire \counter_reg[0]_i_1__6_n_5 ;
  wire \counter_reg[0]_i_1__6_n_6 ;
  wire \counter_reg[0]_i_1__6_n_7 ;
  wire \counter_reg[0]_i_1__6_n_8 ;
  wire \counter_reg[0]_i_1__6_n_9 ;
  wire \counter_reg[16]_i_1__7_n_0 ;
  wire \counter_reg[16]_i_1__7_n_1 ;
  wire \counter_reg[16]_i_1__7_n_10 ;
  wire \counter_reg[16]_i_1__7_n_11 ;
  wire \counter_reg[16]_i_1__7_n_12 ;
  wire \counter_reg[16]_i_1__7_n_13 ;
  wire \counter_reg[16]_i_1__7_n_14 ;
  wire \counter_reg[16]_i_1__7_n_15 ;
  wire \counter_reg[16]_i_1__7_n_2 ;
  wire \counter_reg[16]_i_1__7_n_3 ;
  wire \counter_reg[16]_i_1__7_n_4 ;
  wire \counter_reg[16]_i_1__7_n_5 ;
  wire \counter_reg[16]_i_1__7_n_6 ;
  wire \counter_reg[16]_i_1__7_n_7 ;
  wire \counter_reg[16]_i_1__7_n_8 ;
  wire \counter_reg[16]_i_1__7_n_9 ;
  wire \counter_reg[24]_i_1__7_n_1 ;
  wire \counter_reg[24]_i_1__7_n_10 ;
  wire \counter_reg[24]_i_1__7_n_11 ;
  wire \counter_reg[24]_i_1__7_n_12 ;
  wire \counter_reg[24]_i_1__7_n_13 ;
  wire \counter_reg[24]_i_1__7_n_14 ;
  wire \counter_reg[24]_i_1__7_n_15 ;
  wire \counter_reg[24]_i_1__7_n_2 ;
  wire \counter_reg[24]_i_1__7_n_3 ;
  wire \counter_reg[24]_i_1__7_n_4 ;
  wire \counter_reg[24]_i_1__7_n_5 ;
  wire \counter_reg[24]_i_1__7_n_6 ;
  wire \counter_reg[24]_i_1__7_n_7 ;
  wire \counter_reg[24]_i_1__7_n_8 ;
  wire \counter_reg[24]_i_1__7_n_9 ;
  wire \counter_reg[8]_i_1__7_n_0 ;
  wire \counter_reg[8]_i_1__7_n_1 ;
  wire \counter_reg[8]_i_1__7_n_10 ;
  wire \counter_reg[8]_i_1__7_n_11 ;
  wire \counter_reg[8]_i_1__7_n_12 ;
  wire \counter_reg[8]_i_1__7_n_13 ;
  wire \counter_reg[8]_i_1__7_n_14 ;
  wire \counter_reg[8]_i_1__7_n_15 ;
  wire \counter_reg[8]_i_1__7_n_2 ;
  wire \counter_reg[8]_i_1__7_n_3 ;
  wire \counter_reg[8]_i_1__7_n_4 ;
  wire \counter_reg[8]_i_1__7_n_5 ;
  wire \counter_reg[8]_i_1__7_n_6 ;
  wire \counter_reg[8]_i_1__7_n_7 ;
  wire \counter_reg[8]_i_1__7_n_8 ;
  wire \counter_reg[8]_i_1__7_n_9 ;
  wire ext_lhc_clk;
  wire reset_counters_40_n;
  wire s00_axi_aclk;
  wire [7:7]\NLW_counter_reg[24]_i_1__7_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(reset_counters_40_n),
        .O(clear));
  FDRE \counter_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__6_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_1__6 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1__6_n_0 ,\counter_reg[0]_i_1__6_n_1 ,\counter_reg[0]_i_1__6_n_2 ,\counter_reg[0]_i_1__6_n_3 ,\counter_reg[0]_i_1__6_n_4 ,\counter_reg[0]_i_1__6_n_5 ,\counter_reg[0]_i_1__6_n_6 ,\counter_reg[0]_i_1__6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DI}),
        .O({\counter_reg[0]_i_1__6_n_8 ,\counter_reg[0]_i_1__6_n_9 ,\counter_reg[0]_i_1__6_n_10 ,\counter_reg[0]_i_1__6_n_11 ,\counter_reg[0]_i_1__6_n_12 ,\counter_reg[0]_i_1__6_n_13 ,\counter_reg[0]_i_1__6_n_14 ,\counter_reg[0]_i_1__6_n_15 }),
        .S({counter_reg[7:1],S}));
  FDRE \counter_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__7_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__7_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__7_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__7_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__7_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__7_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__7_n_15 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY8 \counter_reg[16]_i_1__7 
       (.CI(\counter_reg[8]_i_1__7_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[16]_i_1__7_n_0 ,\counter_reg[16]_i_1__7_n_1 ,\counter_reg[16]_i_1__7_n_2 ,\counter_reg[16]_i_1__7_n_3 ,\counter_reg[16]_i_1__7_n_4 ,\counter_reg[16]_i_1__7_n_5 ,\counter_reg[16]_i_1__7_n_6 ,\counter_reg[16]_i_1__7_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__7_n_8 ,\counter_reg[16]_i_1__7_n_9 ,\counter_reg[16]_i_1__7_n_10 ,\counter_reg[16]_i_1__7_n_11 ,\counter_reg[16]_i_1__7_n_12 ,\counter_reg[16]_i_1__7_n_13 ,\counter_reg[16]_i_1__7_n_14 ,\counter_reg[16]_i_1__7_n_15 }),
        .S(counter_reg[23:16]));
  FDRE \counter_reg[17] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__7_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__7_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__7_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__6_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__7_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__7_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__7_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__7_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__7_n_15 ),
        .Q(counter_reg[24]),
        .R(clear));
  CARRY8 \counter_reg[24]_i_1__7 
       (.CI(\counter_reg[16]_i_1__7_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[24]_i_1__7_CO_UNCONNECTED [7],\counter_reg[24]_i_1__7_n_1 ,\counter_reg[24]_i_1__7_n_2 ,\counter_reg[24]_i_1__7_n_3 ,\counter_reg[24]_i_1__7_n_4 ,\counter_reg[24]_i_1__7_n_5 ,\counter_reg[24]_i_1__7_n_6 ,\counter_reg[24]_i_1__7_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1__7_n_8 ,\counter_reg[24]_i_1__7_n_9 ,\counter_reg[24]_i_1__7_n_10 ,\counter_reg[24]_i_1__7_n_11 ,\counter_reg[24]_i_1__7_n_12 ,\counter_reg[24]_i_1__7_n_13 ,\counter_reg[24]_i_1__7_n_14 ,\counter_reg[24]_i_1__7_n_15 }),
        .S(counter_reg[31:24]));
  FDRE \counter_reg[25] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__7_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__7_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__7_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__7_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__7_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__6_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__7_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__7_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__6_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__6_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__6_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__6_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__6_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__7_n_15 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY8 \counter_reg[8]_i_1__7 
       (.CI(\counter_reg[0]_i_1__6_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_1__7_n_0 ,\counter_reg[8]_i_1__7_n_1 ,\counter_reg[8]_i_1__7_n_2 ,\counter_reg[8]_i_1__7_n_3 ,\counter_reg[8]_i_1__7_n_4 ,\counter_reg[8]_i_1__7_n_5 ,\counter_reg[8]_i_1__7_n_6 ,\counter_reg[8]_i_1__7_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__7_n_8 ,\counter_reg[8]_i_1__7_n_9 ,\counter_reg[8]_i_1__7_n_10 ,\counter_reg[8]_i_1__7_n_11 ,\counter_reg[8]_i_1__7_n_12 ,\counter_reg[8]_i_1__7_n_13 ,\counter_reg[8]_i_1__7_n_14 ,\counter_reg[8]_i_1__7_n_15 }),
        .S(counter_reg[15:8]));
  FDRE \counter_reg[9] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__7_n_14 ),
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
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_3
   (D,
    Q,
    clear,
    ext_lhc_clk,
    fc_internaltest,
    S,
    s00_axi_aclk);
  output [0:0]D;
  output [31:0]Q;
  input clear;
  input ext_lhc_clk;
  input fc_internaltest;
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
  wire ext_lhc_clk;
  wire fc_internaltest;
  wire s00_axi_aclk;
  wire [7:7]\NLW_counter_reg[24]_i_1__0_CO_UNCONNECTED ;

  FDRE \counter_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 ,\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fc_internaltest}),
        .O({\counter_reg[0]_i_1_n_8 ,\counter_reg[0]_i_1_n_9 ,\counter_reg[0]_i_1_n_10 ,\counter_reg[0]_i_1_n_11 ,\counter_reg[0]_i_1_n_12 ,\counter_reg[0]_i_1_n_13 ,\counter_reg[0]_i_1_n_14 ,\counter_reg[0]_i_1_n_15 }),
        .S({counter_reg[7:1],S}));
  FDRE \counter_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__0_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
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
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_4
   (D,
    \fc_raddr_reg[3] ,
    \value_reg[27]_0 ,
    clear,
    ext_lhc_clk,
    \io_r_data_reg[0] ,
    \io_r_data_reg[0]_0 ,
    \io_r_data_reg[2] ,
    \io_r_data_reg[3] ,
    \io_r_data_reg[4] ,
    \io_r_data_reg[6] ,
    \io_r_data_reg[7] ,
    \io_r_data_reg[8] ,
    \io_r_data_reg[9] ,
    \io_r_data_reg[10] ,
    \io_r_data_reg[12] ,
    \io_r_data_reg[15] ,
    \io_r_data_reg[16] ,
    \io_r_data_reg[17] ,
    \io_r_data_reg[19] ,
    \io_r_data_reg[20] ,
    \io_r_data_reg[21] ,
    \io_r_data_reg[24] ,
    \io_r_data_reg[25] ,
    \io_r_data_reg[26] ,
    \io_r_data_reg[28] ,
    \io_r_data_reg[29] ,
    \io_r_data_reg[30] ,
    \io_r_data_reg[31] ,
    \io_r_data_reg[31]_0 ,
    \io_r_data_reg[30]_0 ,
    Q,
    \io_r_data_reg[31]_1 ,
    \io_r_data_reg[0]_1 ,
    \io_r_data_reg[2]_0 ,
    \io_r_data_reg[3]_0 ,
    \io_r_data_reg[4]_0 ,
    \io_r_data_reg[6]_0 ,
    \io_r_data_reg[7]_0 ,
    \io_r_data_reg[8]_0 ,
    \io_r_data_reg[9]_0 ,
    \io_r_data_reg[10]_0 ,
    \io_r_data_reg[12]_0 ,
    \io_r_data_reg[15]_0 ,
    \io_r_data_reg[16]_0 ,
    \io_r_data_reg[17]_0 ,
    \io_r_data_reg[19]_0 ,
    \io_r_data_reg[20]_0 ,
    \io_r_data_reg[21]_0 ,
    \io_r_data_reg[24]_0 ,
    \io_r_data_reg[25]_0 ,
    \io_r_data_reg[26]_0 ,
    \io_r_data_reg[28]_0 ,
    \io_r_data_reg[29]_0 ,
    \io_r_data_reg[30]_1 ,
    DI,
    S,
    s00_axi_aclk);
  output [0:0]D;
  output [22:0]\fc_raddr_reg[3] ;
  output [8:0]\value_reg[27]_0 ;
  input clear;
  input ext_lhc_clk;
  input \io_r_data_reg[0] ;
  input \io_r_data_reg[0]_0 ;
  input \io_r_data_reg[2] ;
  input \io_r_data_reg[3] ;
  input \io_r_data_reg[4] ;
  input \io_r_data_reg[6] ;
  input \io_r_data_reg[7] ;
  input \io_r_data_reg[8] ;
  input \io_r_data_reg[9] ;
  input \io_r_data_reg[10] ;
  input \io_r_data_reg[12] ;
  input \io_r_data_reg[15] ;
  input \io_r_data_reg[16] ;
  input \io_r_data_reg[17] ;
  input \io_r_data_reg[19] ;
  input \io_r_data_reg[20] ;
  input \io_r_data_reg[21] ;
  input \io_r_data_reg[24] ;
  input \io_r_data_reg[25] ;
  input \io_r_data_reg[26] ;
  input \io_r_data_reg[28] ;
  input \io_r_data_reg[29] ;
  input \io_r_data_reg[30] ;
  input \io_r_data_reg[31] ;
  input \io_r_data_reg[31]_0 ;
  input [1:0]\io_r_data_reg[30]_0 ;
  input [22:0]Q;
  input \io_r_data_reg[31]_1 ;
  input \io_r_data_reg[0]_1 ;
  input \io_r_data_reg[2]_0 ;
  input \io_r_data_reg[3]_0 ;
  input \io_r_data_reg[4]_0 ;
  input \io_r_data_reg[6]_0 ;
  input \io_r_data_reg[7]_0 ;
  input \io_r_data_reg[8]_0 ;
  input \io_r_data_reg[9]_0 ;
  input \io_r_data_reg[10]_0 ;
  input \io_r_data_reg[12]_0 ;
  input \io_r_data_reg[15]_0 ;
  input \io_r_data_reg[16]_0 ;
  input \io_r_data_reg[17]_0 ;
  input \io_r_data_reg[19]_0 ;
  input \io_r_data_reg[20]_0 ;
  input \io_r_data_reg[21]_0 ;
  input \io_r_data_reg[24]_0 ;
  input \io_r_data_reg[25]_0 ;
  input \io_r_data_reg[26]_0 ;
  input \io_r_data_reg[28]_0 ;
  input \io_r_data_reg[29]_0 ;
  input \io_r_data_reg[30]_1 ;
  input [0:0]DI;
  input [0:0]S;
  input s00_axi_aclk;

  wire [0:0]D;
  wire [0:0]DI;
  wire [22:0]Q;
  wire [0:0]S;
  wire clear;
  wire [31:1]counter_reg;
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
  wire ext_lhc_clk;
  wire [22:0]\fc_raddr_reg[3] ;
  wire \io_r_data[0]_i_2_n_0 ;
  wire \io_r_data[10]_i_2_n_0 ;
  wire \io_r_data[12]_i_2_n_0 ;
  wire \io_r_data[15]_i_2_n_0 ;
  wire \io_r_data[16]_i_2_n_0 ;
  wire \io_r_data[17]_i_2_n_0 ;
  wire \io_r_data[19]_i_2_n_0 ;
  wire \io_r_data[20]_i_2_n_0 ;
  wire \io_r_data[21]_i_2_n_0 ;
  wire \io_r_data[24]_i_2_n_0 ;
  wire \io_r_data[25]_i_2_n_0 ;
  wire \io_r_data[26]_i_2_n_0 ;
  wire \io_r_data[28]_i_2_n_0 ;
  wire \io_r_data[29]_i_2_n_0 ;
  wire \io_r_data[2]_i_2_n_0 ;
  wire \io_r_data[30]_i_2_n_0 ;
  wire \io_r_data[31]_i_4_n_0 ;
  wire \io_r_data[3]_i_2_n_0 ;
  wire \io_r_data[4]_i_2_n_0 ;
  wire \io_r_data[6]_i_2_n_0 ;
  wire \io_r_data[7]_i_2_n_0 ;
  wire \io_r_data[8]_i_2_n_0 ;
  wire \io_r_data[9]_i_2_n_0 ;
  wire \io_r_data_reg[0] ;
  wire \io_r_data_reg[0]_0 ;
  wire \io_r_data_reg[0]_1 ;
  wire \io_r_data_reg[10] ;
  wire \io_r_data_reg[10]_0 ;
  wire \io_r_data_reg[12] ;
  wire \io_r_data_reg[12]_0 ;
  wire \io_r_data_reg[15] ;
  wire \io_r_data_reg[15]_0 ;
  wire \io_r_data_reg[16] ;
  wire \io_r_data_reg[16]_0 ;
  wire \io_r_data_reg[17] ;
  wire \io_r_data_reg[17]_0 ;
  wire \io_r_data_reg[19] ;
  wire \io_r_data_reg[19]_0 ;
  wire \io_r_data_reg[20] ;
  wire \io_r_data_reg[20]_0 ;
  wire \io_r_data_reg[21] ;
  wire \io_r_data_reg[21]_0 ;
  wire \io_r_data_reg[24] ;
  wire \io_r_data_reg[24]_0 ;
  wire \io_r_data_reg[25] ;
  wire \io_r_data_reg[25]_0 ;
  wire \io_r_data_reg[26] ;
  wire \io_r_data_reg[26]_0 ;
  wire \io_r_data_reg[28] ;
  wire \io_r_data_reg[28]_0 ;
  wire \io_r_data_reg[29] ;
  wire \io_r_data_reg[29]_0 ;
  wire \io_r_data_reg[2] ;
  wire \io_r_data_reg[2]_0 ;
  wire \io_r_data_reg[30] ;
  wire [1:0]\io_r_data_reg[30]_0 ;
  wire \io_r_data_reg[30]_1 ;
  wire \io_r_data_reg[31] ;
  wire \io_r_data_reg[31]_0 ;
  wire \io_r_data_reg[31]_1 ;
  wire \io_r_data_reg[3] ;
  wire \io_r_data_reg[3]_0 ;
  wire \io_r_data_reg[4] ;
  wire \io_r_data_reg[4]_0 ;
  wire \io_r_data_reg[6] ;
  wire \io_r_data_reg[6]_0 ;
  wire \io_r_data_reg[7] ;
  wire \io_r_data_reg[7]_0 ;
  wire \io_r_data_reg[8] ;
  wire \io_r_data_reg[8]_0 ;
  wire \io_r_data_reg[9] ;
  wire \io_r_data_reg[9]_0 ;
  wire s00_axi_aclk;
  wire [8:0]\value_reg[27]_0 ;
  wire \value_reg_n_0_[0] ;
  wire \value_reg_n_0_[10] ;
  wire \value_reg_n_0_[12] ;
  wire \value_reg_n_0_[15] ;
  wire \value_reg_n_0_[16] ;
  wire \value_reg_n_0_[17] ;
  wire \value_reg_n_0_[19] ;
  wire \value_reg_n_0_[20] ;
  wire \value_reg_n_0_[21] ;
  wire \value_reg_n_0_[24] ;
  wire \value_reg_n_0_[25] ;
  wire \value_reg_n_0_[26] ;
  wire \value_reg_n_0_[28] ;
  wire \value_reg_n_0_[29] ;
  wire \value_reg_n_0_[2] ;
  wire \value_reg_n_0_[30] ;
  wire \value_reg_n_0_[31] ;
  wire \value_reg_n_0_[3] ;
  wire \value_reg_n_0_[4] ;
  wire \value_reg_n_0_[6] ;
  wire \value_reg_n_0_[7] ;
  wire \value_reg_n_0_[8] ;
  wire \value_reg_n_0_[9] ;
  wire [7:7]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;

  FDRE \counter_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 ,\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DI}),
        .O({\counter_reg[0]_i_2_n_8 ,\counter_reg[0]_i_2_n_9 ,\counter_reg[0]_i_2_n_10 ,\counter_reg[0]_i_2_n_11 ,\counter_reg[0]_i_2_n_12 ,\counter_reg[0]_i_2_n_13 ,\counter_reg[0]_i_2_n_14 ,\counter_reg[0]_i_2_n_15 }),
        .S({counter_reg[7:1],S}));
  FDRE \counter_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_14 ),
        .Q(counter_reg[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[0]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[0] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[0]),
        .I4(\io_r_data_reg[0]_1 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[10]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[10] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[8]),
        .I4(\io_r_data_reg[10]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[12]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[12] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[9]),
        .I4(\io_r_data_reg[12]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[15]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[15] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[10]),
        .I4(\io_r_data_reg[15]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[16]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[16] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[11]),
        .I4(\io_r_data_reg[16]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[17]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[17] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[12]),
        .I4(\io_r_data_reg[17]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[19]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[19] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[13]),
        .I4(\io_r_data_reg[19]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[20]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[20] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[14]),
        .I4(\io_r_data_reg[20]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[21]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[21] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[15]),
        .I4(\io_r_data_reg[21]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[24]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[24] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[16]),
        .I4(\io_r_data_reg[24]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[25]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[25] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[17]),
        .I4(\io_r_data_reg[25]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[26]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[26] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[18]),
        .I4(\io_r_data_reg[26]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[28]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[28] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[19]),
        .I4(\io_r_data_reg[28]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[29]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[29] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[20]),
        .I4(\io_r_data_reg[29]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[2]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[2] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[1]),
        .I4(\io_r_data_reg[2]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[30]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[30] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[21]),
        .I4(\io_r_data_reg[30]_1 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[31]_i_4 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[31] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[22]),
        .I4(\io_r_data_reg[31]_1 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[3]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[3] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[2]),
        .I4(\io_r_data_reg[3]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[4]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[4] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[3]),
        .I4(\io_r_data_reg[4]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[6]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[6] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[4]),
        .I4(\io_r_data_reg[6]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[7]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[7] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[5]),
        .I4(\io_r_data_reg[7]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[8]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[8] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[6]),
        .I4(\io_r_data_reg[8]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h45404540FFFF4540)) 
    \io_r_data[9]_i_2 
       (.I0(\io_r_data_reg[31]_0 ),
        .I1(\value_reg_n_0_[9] ),
        .I2(\io_r_data_reg[30]_0 [0]),
        .I3(Q[7]),
        .I4(\io_r_data_reg[9]_0 ),
        .I5(\io_r_data_reg[30]_0 [1]),
        .O(\io_r_data[9]_i_2_n_0 ));
  MUXF7 \io_r_data_reg[0]_i_1 
       (.I0(\io_r_data[0]_i_2_n_0 ),
        .I1(\io_r_data_reg[0]_0 ),
        .O(\fc_raddr_reg[3] [0]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[10]_i_1 
       (.I0(\io_r_data[10]_i_2_n_0 ),
        .I1(\io_r_data_reg[10] ),
        .O(\fc_raddr_reg[3] [8]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[12]_i_1 
       (.I0(\io_r_data[12]_i_2_n_0 ),
        .I1(\io_r_data_reg[12] ),
        .O(\fc_raddr_reg[3] [9]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[15]_i_1 
       (.I0(\io_r_data[15]_i_2_n_0 ),
        .I1(\io_r_data_reg[15] ),
        .O(\fc_raddr_reg[3] [10]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[16]_i_1 
       (.I0(\io_r_data[16]_i_2_n_0 ),
        .I1(\io_r_data_reg[16] ),
        .O(\fc_raddr_reg[3] [11]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[17]_i_1 
       (.I0(\io_r_data[17]_i_2_n_0 ),
        .I1(\io_r_data_reg[17] ),
        .O(\fc_raddr_reg[3] [12]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[19]_i_1 
       (.I0(\io_r_data[19]_i_2_n_0 ),
        .I1(\io_r_data_reg[19] ),
        .O(\fc_raddr_reg[3] [13]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[20]_i_1 
       (.I0(\io_r_data[20]_i_2_n_0 ),
        .I1(\io_r_data_reg[20] ),
        .O(\fc_raddr_reg[3] [14]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[21]_i_1 
       (.I0(\io_r_data[21]_i_2_n_0 ),
        .I1(\io_r_data_reg[21] ),
        .O(\fc_raddr_reg[3] [15]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[24]_i_1 
       (.I0(\io_r_data[24]_i_2_n_0 ),
        .I1(\io_r_data_reg[24] ),
        .O(\fc_raddr_reg[3] [16]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[25]_i_1 
       (.I0(\io_r_data[25]_i_2_n_0 ),
        .I1(\io_r_data_reg[25] ),
        .O(\fc_raddr_reg[3] [17]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[26]_i_1 
       (.I0(\io_r_data[26]_i_2_n_0 ),
        .I1(\io_r_data_reg[26] ),
        .O(\fc_raddr_reg[3] [18]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[28]_i_1 
       (.I0(\io_r_data[28]_i_2_n_0 ),
        .I1(\io_r_data_reg[28] ),
        .O(\fc_raddr_reg[3] [19]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[29]_i_1 
       (.I0(\io_r_data[29]_i_2_n_0 ),
        .I1(\io_r_data_reg[29] ),
        .O(\fc_raddr_reg[3] [20]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[2]_i_1 
       (.I0(\io_r_data[2]_i_2_n_0 ),
        .I1(\io_r_data_reg[2] ),
        .O(\fc_raddr_reg[3] [1]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[30]_i_1 
       (.I0(\io_r_data[30]_i_2_n_0 ),
        .I1(\io_r_data_reg[30] ),
        .O(\fc_raddr_reg[3] [21]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[31]_i_2 
       (.I0(\io_r_data[31]_i_4_n_0 ),
        .I1(\io_r_data_reg[31] ),
        .O(\fc_raddr_reg[3] [22]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[3]_i_1 
       (.I0(\io_r_data[3]_i_2_n_0 ),
        .I1(\io_r_data_reg[3] ),
        .O(\fc_raddr_reg[3] [2]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[4]_i_1 
       (.I0(\io_r_data[4]_i_2_n_0 ),
        .I1(\io_r_data_reg[4] ),
        .O(\fc_raddr_reg[3] [3]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[6]_i_1 
       (.I0(\io_r_data[6]_i_2_n_0 ),
        .I1(\io_r_data_reg[6] ),
        .O(\fc_raddr_reg[3] [4]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[7]_i_1 
       (.I0(\io_r_data[7]_i_2_n_0 ),
        .I1(\io_r_data_reg[7] ),
        .O(\fc_raddr_reg[3] [5]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[8]_i_1 
       (.I0(\io_r_data[8]_i_2_n_0 ),
        .I1(\io_r_data_reg[8] ),
        .O(\fc_raddr_reg[3] [6]),
        .S(\io_r_data_reg[0] ));
  MUXF7 \io_r_data_reg[9]_i_1 
       (.I0(\io_r_data[9]_i_2_n_0 ),
        .I1(\io_r_data_reg[9] ),
        .O(\fc_raddr_reg[3] [7]),
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
        .Q(\value_reg[27]_0 [2]),
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
        .Q(\value_reg[27]_0 [3]),
        .R(1'b0));
  FDRE \value_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[14]),
        .Q(\value_reg[27]_0 [4]),
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
        .Q(\value_reg[27]_0 [5]),
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
        .Q(\value_reg[27]_0 [0]),
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
        .Q(\value_reg[27]_0 [6]),
        .R(1'b0));
  FDRE \value_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter_reg[23]),
        .Q(\value_reg[27]_0 [7]),
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
        .Q(\value_reg[27]_0 [8]),
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
        .Q(\value_reg[27]_0 [1]),
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
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_5
   (D,
    Q,
    clear,
    ext_lhc_clk,
    fc_linkreset,
    S,
    s00_axi_aclk);
  output [0:0]D;
  output [31:0]Q;
  input clear;
  input ext_lhc_clk;
  input fc_linkreset;
  input [0:0]S;
  input s00_axi_aclk;

  wire [0:0]D;
  wire [31:0]Q;
  wire [0:0]S;
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
  wire ext_lhc_clk;
  wire fc_linkreset;
  wire s00_axi_aclk;
  wire [7:7]\NLW_counter_reg[24]_i_1__2_CO_UNCONNECTED ;

  FDRE \counter_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_1__1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1__1_n_0 ,\counter_reg[0]_i_1__1_n_1 ,\counter_reg[0]_i_1__1_n_2 ,\counter_reg[0]_i_1__1_n_3 ,\counter_reg[0]_i_1__1_n_4 ,\counter_reg[0]_i_1__1_n_5 ,\counter_reg[0]_i_1__1_n_6 ,\counter_reg[0]_i_1__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fc_linkreset}),
        .O({\counter_reg[0]_i_1__1_n_8 ,\counter_reg[0]_i_1__1_n_9 ,\counter_reg[0]_i_1__1_n_10 ,\counter_reg[0]_i_1__1_n_11 ,\counter_reg[0]_i_1__1_n_12 ,\counter_reg[0]_i_1__1_n_13 ,\counter_reg[0]_i_1__1_n_14 ,\counter_reg[0]_i_1__1_n_15 }),
        .S({counter_reg[7:1],S}));
  FDRE \counter_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__2_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__1_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(ext_lhc_clk),
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
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_14 ),
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
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_6
   (D,
    \fc_raddr_reg[3] ,
    \fc_raddr_reg[2] ,
    \fc_raddr_reg[2]_0 ,
    \fc_raddr_reg[2]_1 ,
    \fc_raddr_reg[2]_2 ,
    \fc_raddr_reg[2]_3 ,
    \fc_raddr_reg[2]_4 ,
    \fc_raddr_reg[2]_5 ,
    \fc_raddr_reg[2]_6 ,
    \fc_raddr_reg[2]_7 ,
    \fc_raddr_reg[2]_8 ,
    \fc_raddr_reg[2]_9 ,
    \fc_raddr_reg[2]_10 ,
    \fc_raddr_reg[2]_11 ,
    \fc_raddr_reg[2]_12 ,
    \fc_raddr_reg[2]_13 ,
    \fc_raddr_reg[2]_14 ,
    \fc_raddr_reg[2]_15 ,
    \fc_raddr_reg[2]_16 ,
    \fc_raddr_reg[2]_17 ,
    \fc_raddr_reg[2]_18 ,
    \fc_raddr_reg[2]_19 ,
    \fc_raddr_reg[2]_20 ,
    \fc_raddr_reg[2]_21 ,
    clear,
    ext_lhc_clk,
    \io_r_data_reg[27] ,
    \io_r_data_reg[27]_0 ,
    \io_r_data_reg[23] ,
    \io_r_data_reg[22] ,
    \io_r_data_reg[18] ,
    \io_r_data_reg[14] ,
    \io_r_data_reg[13] ,
    \io_r_data_reg[11] ,
    \io_r_data_reg[5] ,
    \io_r_data_reg[1] ,
    \io_r_data_reg[27]_1 ,
    \io_r_data[31]_i_4 ,
    Q,
    \io_r_data_reg[31]_i_7_0 ,
    \io_r_data_reg[31]_i_7_1 ,
    \io_r_data_reg[1]_0 ,
    \io_r_data_reg[27]_2 ,
    \io_r_data_reg[27]_3 ,
    \io_r_data[30]_i_2 ,
    \io_r_data[29]_i_2 ,
    \io_r_data[28]_i_2 ,
    \io_r_data[27]_i_2_0 ,
    \io_r_data[26]_i_2 ,
    \io_r_data[25]_i_2 ,
    \io_r_data[24]_i_2 ,
    \io_r_data[23]_i_2_0 ,
    \io_r_data[22]_i_2_0 ,
    \io_r_data[21]_i_2 ,
    \io_r_data[20]_i_2 ,
    \io_r_data[19]_i_2 ,
    \io_r_data[18]_i_2_0 ,
    \io_r_data[17]_i_2 ,
    \io_r_data[16]_i_2 ,
    \io_r_data[15]_i_2 ,
    \io_r_data[14]_i_2_0 ,
    \io_r_data[13]_i_2_0 ,
    \io_r_data[12]_i_2 ,
    \io_r_data[11]_i_2_0 ,
    \io_r_data[10]_i_2 ,
    \io_r_data[9]_i_2 ,
    \io_r_data[8]_i_2 ,
    \io_r_data[7]_i_2 ,
    \io_r_data[6]_i_2 ,
    \io_r_data[5]_i_2_0 ,
    \io_r_data[4]_i_2 ,
    \io_r_data[3]_i_2 ,
    \io_r_data[2]_i_2 ,
    \io_r_data[1]_i_2_0 ,
    \io_r_data[0]_i_2 ,
    fc_orbitcountreset,
    S,
    s00_axi_aclk);
  output [0:0]D;
  output [8:0]\fc_raddr_reg[3] ;
  output \fc_raddr_reg[2] ;
  output \fc_raddr_reg[2]_0 ;
  output \fc_raddr_reg[2]_1 ;
  output \fc_raddr_reg[2]_2 ;
  output \fc_raddr_reg[2]_3 ;
  output \fc_raddr_reg[2]_4 ;
  output \fc_raddr_reg[2]_5 ;
  output \fc_raddr_reg[2]_6 ;
  output \fc_raddr_reg[2]_7 ;
  output \fc_raddr_reg[2]_8 ;
  output \fc_raddr_reg[2]_9 ;
  output \fc_raddr_reg[2]_10 ;
  output \fc_raddr_reg[2]_11 ;
  output \fc_raddr_reg[2]_12 ;
  output \fc_raddr_reg[2]_13 ;
  output \fc_raddr_reg[2]_14 ;
  output \fc_raddr_reg[2]_15 ;
  output \fc_raddr_reg[2]_16 ;
  output \fc_raddr_reg[2]_17 ;
  output \fc_raddr_reg[2]_18 ;
  output \fc_raddr_reg[2]_19 ;
  output \fc_raddr_reg[2]_20 ;
  output \fc_raddr_reg[2]_21 ;
  input clear;
  input ext_lhc_clk;
  input \io_r_data_reg[27] ;
  input \io_r_data_reg[27]_0 ;
  input \io_r_data_reg[23] ;
  input \io_r_data_reg[22] ;
  input \io_r_data_reg[18] ;
  input \io_r_data_reg[14] ;
  input \io_r_data_reg[13] ;
  input \io_r_data_reg[11] ;
  input \io_r_data_reg[5] ;
  input \io_r_data_reg[1] ;
  input [3:0]\io_r_data_reg[27]_1 ;
  input \io_r_data[31]_i_4 ;
  input [31:0]Q;
  input [31:0]\io_r_data_reg[31]_i_7_0 ;
  input [11:0]\io_r_data_reg[31]_i_7_1 ;
  input \io_r_data_reg[1]_0 ;
  input [8:0]\io_r_data_reg[27]_2 ;
  input [8:0]\io_r_data_reg[27]_3 ;
  input \io_r_data[30]_i_2 ;
  input \io_r_data[29]_i_2 ;
  input \io_r_data[28]_i_2 ;
  input \io_r_data[27]_i_2_0 ;
  input \io_r_data[26]_i_2 ;
  input \io_r_data[25]_i_2 ;
  input \io_r_data[24]_i_2 ;
  input \io_r_data[23]_i_2_0 ;
  input \io_r_data[22]_i_2_0 ;
  input \io_r_data[21]_i_2 ;
  input \io_r_data[20]_i_2 ;
  input \io_r_data[19]_i_2 ;
  input \io_r_data[18]_i_2_0 ;
  input \io_r_data[17]_i_2 ;
  input \io_r_data[16]_i_2 ;
  input \io_r_data[15]_i_2 ;
  input \io_r_data[14]_i_2_0 ;
  input \io_r_data[13]_i_2_0 ;
  input \io_r_data[12]_i_2 ;
  input \io_r_data[11]_i_2_0 ;
  input \io_r_data[10]_i_2 ;
  input \io_r_data[9]_i_2 ;
  input \io_r_data[8]_i_2 ;
  input \io_r_data[7]_i_2 ;
  input \io_r_data[6]_i_2 ;
  input \io_r_data[5]_i_2_0 ;
  input \io_r_data[4]_i_2 ;
  input \io_r_data[3]_i_2 ;
  input \io_r_data[2]_i_2 ;
  input \io_r_data[1]_i_2_0 ;
  input \io_r_data[0]_i_2 ;
  input fc_orbitcountreset;
  input [0:0]S;
  input s00_axi_aclk;

  wire [0:0]D;
  wire [31:0]Q;
  wire [0:0]S;
  wire clear;
  wire [31:1]counter_reg;
  wire \counter_reg[0]_i_1__4_n_0 ;
  wire \counter_reg[0]_i_1__4_n_1 ;
  wire \counter_reg[0]_i_1__4_n_10 ;
  wire \counter_reg[0]_i_1__4_n_11 ;
  wire \counter_reg[0]_i_1__4_n_12 ;
  wire \counter_reg[0]_i_1__4_n_13 ;
  wire \counter_reg[0]_i_1__4_n_14 ;
  wire \counter_reg[0]_i_1__4_n_15 ;
  wire \counter_reg[0]_i_1__4_n_2 ;
  wire \counter_reg[0]_i_1__4_n_3 ;
  wire \counter_reg[0]_i_1__4_n_4 ;
  wire \counter_reg[0]_i_1__4_n_5 ;
  wire \counter_reg[0]_i_1__4_n_6 ;
  wire \counter_reg[0]_i_1__4_n_7 ;
  wire \counter_reg[0]_i_1__4_n_8 ;
  wire \counter_reg[0]_i_1__4_n_9 ;
  wire \counter_reg[16]_i_1__5_n_0 ;
  wire \counter_reg[16]_i_1__5_n_1 ;
  wire \counter_reg[16]_i_1__5_n_10 ;
  wire \counter_reg[16]_i_1__5_n_11 ;
  wire \counter_reg[16]_i_1__5_n_12 ;
  wire \counter_reg[16]_i_1__5_n_13 ;
  wire \counter_reg[16]_i_1__5_n_14 ;
  wire \counter_reg[16]_i_1__5_n_15 ;
  wire \counter_reg[16]_i_1__5_n_2 ;
  wire \counter_reg[16]_i_1__5_n_3 ;
  wire \counter_reg[16]_i_1__5_n_4 ;
  wire \counter_reg[16]_i_1__5_n_5 ;
  wire \counter_reg[16]_i_1__5_n_6 ;
  wire \counter_reg[16]_i_1__5_n_7 ;
  wire \counter_reg[16]_i_1__5_n_8 ;
  wire \counter_reg[16]_i_1__5_n_9 ;
  wire \counter_reg[24]_i_1__5_n_1 ;
  wire \counter_reg[24]_i_1__5_n_10 ;
  wire \counter_reg[24]_i_1__5_n_11 ;
  wire \counter_reg[24]_i_1__5_n_12 ;
  wire \counter_reg[24]_i_1__5_n_13 ;
  wire \counter_reg[24]_i_1__5_n_14 ;
  wire \counter_reg[24]_i_1__5_n_15 ;
  wire \counter_reg[24]_i_1__5_n_2 ;
  wire \counter_reg[24]_i_1__5_n_3 ;
  wire \counter_reg[24]_i_1__5_n_4 ;
  wire \counter_reg[24]_i_1__5_n_5 ;
  wire \counter_reg[24]_i_1__5_n_6 ;
  wire \counter_reg[24]_i_1__5_n_7 ;
  wire \counter_reg[24]_i_1__5_n_8 ;
  wire \counter_reg[24]_i_1__5_n_9 ;
  wire \counter_reg[8]_i_1__5_n_0 ;
  wire \counter_reg[8]_i_1__5_n_1 ;
  wire \counter_reg[8]_i_1__5_n_10 ;
  wire \counter_reg[8]_i_1__5_n_11 ;
  wire \counter_reg[8]_i_1__5_n_12 ;
  wire \counter_reg[8]_i_1__5_n_13 ;
  wire \counter_reg[8]_i_1__5_n_14 ;
  wire \counter_reg[8]_i_1__5_n_15 ;
  wire \counter_reg[8]_i_1__5_n_2 ;
  wire \counter_reg[8]_i_1__5_n_3 ;
  wire \counter_reg[8]_i_1__5_n_4 ;
  wire \counter_reg[8]_i_1__5_n_5 ;
  wire \counter_reg[8]_i_1__5_n_6 ;
  wire \counter_reg[8]_i_1__5_n_7 ;
  wire \counter_reg[8]_i_1__5_n_8 ;
  wire \counter_reg[8]_i_1__5_n_9 ;
  wire ext_lhc_clk;
  wire fc_orbitcountreset;
  wire \fc_raddr_reg[2] ;
  wire \fc_raddr_reg[2]_0 ;
  wire \fc_raddr_reg[2]_1 ;
  wire \fc_raddr_reg[2]_10 ;
  wire \fc_raddr_reg[2]_11 ;
  wire \fc_raddr_reg[2]_12 ;
  wire \fc_raddr_reg[2]_13 ;
  wire \fc_raddr_reg[2]_14 ;
  wire \fc_raddr_reg[2]_15 ;
  wire \fc_raddr_reg[2]_16 ;
  wire \fc_raddr_reg[2]_17 ;
  wire \fc_raddr_reg[2]_18 ;
  wire \fc_raddr_reg[2]_19 ;
  wire \fc_raddr_reg[2]_2 ;
  wire \fc_raddr_reg[2]_20 ;
  wire \fc_raddr_reg[2]_21 ;
  wire \fc_raddr_reg[2]_3 ;
  wire \fc_raddr_reg[2]_4 ;
  wire \fc_raddr_reg[2]_5 ;
  wire \fc_raddr_reg[2]_6 ;
  wire \fc_raddr_reg[2]_7 ;
  wire \fc_raddr_reg[2]_8 ;
  wire \fc_raddr_reg[2]_9 ;
  wire [8:0]\fc_raddr_reg[3] ;
  wire \io_r_data[0]_i_2 ;
  wire \io_r_data[0]_i_6_n_0 ;
  wire \io_r_data[10]_i_2 ;
  wire \io_r_data[10]_i_6_n_0 ;
  wire \io_r_data[11]_i_2_0 ;
  wire \io_r_data[11]_i_2_n_0 ;
  wire \io_r_data[11]_i_6_n_0 ;
  wire \io_r_data[12]_i_2 ;
  wire \io_r_data[12]_i_6_n_0 ;
  wire \io_r_data[13]_i_2_0 ;
  wire \io_r_data[13]_i_2_n_0 ;
  wire \io_r_data[13]_i_6_n_0 ;
  wire \io_r_data[14]_i_2_0 ;
  wire \io_r_data[14]_i_2_n_0 ;
  wire \io_r_data[14]_i_6_n_0 ;
  wire \io_r_data[15]_i_2 ;
  wire \io_r_data[15]_i_6_n_0 ;
  wire \io_r_data[16]_i_2 ;
  wire \io_r_data[16]_i_6_n_0 ;
  wire \io_r_data[17]_i_2 ;
  wire \io_r_data[17]_i_6_n_0 ;
  wire \io_r_data[18]_i_2_0 ;
  wire \io_r_data[18]_i_2_n_0 ;
  wire \io_r_data[18]_i_6_n_0 ;
  wire \io_r_data[19]_i_2 ;
  wire \io_r_data[19]_i_6_n_0 ;
  wire \io_r_data[1]_i_2_0 ;
  wire \io_r_data[1]_i_2_n_0 ;
  wire \io_r_data[1]_i_6_n_0 ;
  wire \io_r_data[20]_i_2 ;
  wire \io_r_data[20]_i_6_n_0 ;
  wire \io_r_data[21]_i_2 ;
  wire \io_r_data[21]_i_6_n_0 ;
  wire \io_r_data[22]_i_2_0 ;
  wire \io_r_data[22]_i_2_n_0 ;
  wire \io_r_data[22]_i_6_n_0 ;
  wire \io_r_data[23]_i_2_0 ;
  wire \io_r_data[23]_i_2_n_0 ;
  wire \io_r_data[23]_i_6_n_0 ;
  wire \io_r_data[24]_i_2 ;
  wire \io_r_data[24]_i_6_n_0 ;
  wire \io_r_data[25]_i_2 ;
  wire \io_r_data[25]_i_6_n_0 ;
  wire \io_r_data[26]_i_2 ;
  wire \io_r_data[26]_i_6_n_0 ;
  wire \io_r_data[27]_i_2_0 ;
  wire \io_r_data[27]_i_2_n_0 ;
  wire \io_r_data[27]_i_6_n_0 ;
  wire \io_r_data[28]_i_2 ;
  wire \io_r_data[28]_i_6_n_0 ;
  wire \io_r_data[29]_i_2 ;
  wire \io_r_data[29]_i_6_n_0 ;
  wire \io_r_data[2]_i_2 ;
  wire \io_r_data[2]_i_6_n_0 ;
  wire \io_r_data[30]_i_2 ;
  wire \io_r_data[30]_i_6_n_0 ;
  wire \io_r_data[31]_i_4 ;
  wire \io_r_data[31]_i_9_n_0 ;
  wire \io_r_data[3]_i_2 ;
  wire \io_r_data[3]_i_6_n_0 ;
  wire \io_r_data[4]_i_2 ;
  wire \io_r_data[4]_i_6_n_0 ;
  wire \io_r_data[5]_i_2_0 ;
  wire \io_r_data[5]_i_2_n_0 ;
  wire \io_r_data[5]_i_6_n_0 ;
  wire \io_r_data[6]_i_2 ;
  wire \io_r_data[6]_i_6_n_0 ;
  wire \io_r_data[7]_i_2 ;
  wire \io_r_data[7]_i_6_n_0 ;
  wire \io_r_data[8]_i_2 ;
  wire \io_r_data[8]_i_6_n_0 ;
  wire \io_r_data[9]_i_2 ;
  wire \io_r_data[9]_i_6_n_0 ;
  wire \io_r_data_reg[11] ;
  wire \io_r_data_reg[11]_i_4_n_0 ;
  wire \io_r_data_reg[13] ;
  wire \io_r_data_reg[13]_i_4_n_0 ;
  wire \io_r_data_reg[14] ;
  wire \io_r_data_reg[14]_i_4_n_0 ;
  wire \io_r_data_reg[18] ;
  wire \io_r_data_reg[18]_i_4_n_0 ;
  wire \io_r_data_reg[1] ;
  wire \io_r_data_reg[1]_0 ;
  wire \io_r_data_reg[1]_i_4_n_0 ;
  wire \io_r_data_reg[22] ;
  wire \io_r_data_reg[22]_i_4_n_0 ;
  wire \io_r_data_reg[23] ;
  wire \io_r_data_reg[23]_i_4_n_0 ;
  wire \io_r_data_reg[27] ;
  wire \io_r_data_reg[27]_0 ;
  wire [3:0]\io_r_data_reg[27]_1 ;
  wire [8:0]\io_r_data_reg[27]_2 ;
  wire [8:0]\io_r_data_reg[27]_3 ;
  wire \io_r_data_reg[27]_i_4_n_0 ;
  wire [31:0]\io_r_data_reg[31]_i_7_0 ;
  wire [11:0]\io_r_data_reg[31]_i_7_1 ;
  wire \io_r_data_reg[5] ;
  wire \io_r_data_reg[5]_i_4_n_0 ;
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
  wire [7:7]\NLW_counter_reg[24]_i_1__5_CO_UNCONNECTED ;

  FDRE \counter_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__4_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_1__4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1__4_n_0 ,\counter_reg[0]_i_1__4_n_1 ,\counter_reg[0]_i_1__4_n_2 ,\counter_reg[0]_i_1__4_n_3 ,\counter_reg[0]_i_1__4_n_4 ,\counter_reg[0]_i_1__4_n_5 ,\counter_reg[0]_i_1__4_n_6 ,\counter_reg[0]_i_1__4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fc_orbitcountreset}),
        .O({\counter_reg[0]_i_1__4_n_8 ,\counter_reg[0]_i_1__4_n_9 ,\counter_reg[0]_i_1__4_n_10 ,\counter_reg[0]_i_1__4_n_11 ,\counter_reg[0]_i_1__4_n_12 ,\counter_reg[0]_i_1__4_n_13 ,\counter_reg[0]_i_1__4_n_14 ,\counter_reg[0]_i_1__4_n_15 }),
        .S({counter_reg[7:1],S}));
  FDRE \counter_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__5_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__5_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__5_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__5_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__5_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__5_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__5_n_15 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY8 \counter_reg[16]_i_1__5 
       (.CI(\counter_reg[8]_i_1__5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[16]_i_1__5_n_0 ,\counter_reg[16]_i_1__5_n_1 ,\counter_reg[16]_i_1__5_n_2 ,\counter_reg[16]_i_1__5_n_3 ,\counter_reg[16]_i_1__5_n_4 ,\counter_reg[16]_i_1__5_n_5 ,\counter_reg[16]_i_1__5_n_6 ,\counter_reg[16]_i_1__5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__5_n_8 ,\counter_reg[16]_i_1__5_n_9 ,\counter_reg[16]_i_1__5_n_10 ,\counter_reg[16]_i_1__5_n_11 ,\counter_reg[16]_i_1__5_n_12 ,\counter_reg[16]_i_1__5_n_13 ,\counter_reg[16]_i_1__5_n_14 ,\counter_reg[16]_i_1__5_n_15 }),
        .S(counter_reg[23:16]));
  FDRE \counter_reg[17] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__5_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__5_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__5_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__4_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__5_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__5_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__5_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__5_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__5_n_15 ),
        .Q(counter_reg[24]),
        .R(clear));
  CARRY8 \counter_reg[24]_i_1__5 
       (.CI(\counter_reg[16]_i_1__5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[24]_i_1__5_CO_UNCONNECTED [7],\counter_reg[24]_i_1__5_n_1 ,\counter_reg[24]_i_1__5_n_2 ,\counter_reg[24]_i_1__5_n_3 ,\counter_reg[24]_i_1__5_n_4 ,\counter_reg[24]_i_1__5_n_5 ,\counter_reg[24]_i_1__5_n_6 ,\counter_reg[24]_i_1__5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1__5_n_8 ,\counter_reg[24]_i_1__5_n_9 ,\counter_reg[24]_i_1__5_n_10 ,\counter_reg[24]_i_1__5_n_11 ,\counter_reg[24]_i_1__5_n_12 ,\counter_reg[24]_i_1__5_n_13 ,\counter_reg[24]_i_1__5_n_14 ,\counter_reg[24]_i_1__5_n_15 }),
        .S(counter_reg[31:24]));
  FDRE \counter_reg[25] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__5_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__5_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__5_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__5_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__5_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__4_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__5_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__5_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__4_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__4_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__4_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__4_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__4_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__5_n_15 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY8 \counter_reg[8]_i_1__5 
       (.CI(\counter_reg[0]_i_1__4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_1__5_n_0 ,\counter_reg[8]_i_1__5_n_1 ,\counter_reg[8]_i_1__5_n_2 ,\counter_reg[8]_i_1__5_n_3 ,\counter_reg[8]_i_1__5_n_4 ,\counter_reg[8]_i_1__5_n_5 ,\counter_reg[8]_i_1__5_n_6 ,\counter_reg[8]_i_1__5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__5_n_8 ,\counter_reg[8]_i_1__5_n_9 ,\counter_reg[8]_i_1__5_n_10 ,\counter_reg[8]_i_1__5_n_11 ,\counter_reg[8]_i_1__5_n_12 ,\counter_reg[8]_i_1__5_n_13 ,\counter_reg[8]_i_1__5_n_14 ,\counter_reg[8]_i_1__5_n_15 }),
        .S(counter_reg[15:8]));
  FDRE \counter_reg[9] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__5_n_14 ),
        .Q(counter_reg[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \io_r_data[0]_i_6 
       (.I0(\value_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [0]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .O(\io_r_data[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[10]_i_6 
       (.I0(\value_reg_n_0_[10] ),
        .I1(Q[10]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [10]),
        .O(\io_r_data[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \io_r_data[11]_i_2 
       (.I0(\io_r_data_reg[27]_1 [3]),
        .I1(\io_r_data_reg[11]_i_4_n_0 ),
        .I2(\io_r_data_reg[1]_0 ),
        .I3(\io_r_data_reg[27]_2 [2]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[27]_3 [2]),
        .O(\io_r_data[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[11]_i_6 
       (.I0(\value_reg_n_0_[11] ),
        .I1(Q[11]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [11]),
        .O(\io_r_data[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[12]_i_6 
       (.I0(\value_reg_n_0_[12] ),
        .I1(Q[12]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [12]),
        .O(\io_r_data[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \io_r_data[13]_i_2 
       (.I0(\io_r_data_reg[27]_1 [3]),
        .I1(\io_r_data_reg[13]_i_4_n_0 ),
        .I2(\io_r_data_reg[1]_0 ),
        .I3(\io_r_data_reg[27]_2 [3]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[27]_3 [3]),
        .O(\io_r_data[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[13]_i_6 
       (.I0(\value_reg_n_0_[13] ),
        .I1(Q[13]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [13]),
        .O(\io_r_data[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \io_r_data[14]_i_2 
       (.I0(\io_r_data_reg[27]_1 [3]),
        .I1(\io_r_data_reg[14]_i_4_n_0 ),
        .I2(\io_r_data_reg[1]_0 ),
        .I3(\io_r_data_reg[27]_2 [4]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[27]_3 [4]),
        .O(\io_r_data[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[14]_i_6 
       (.I0(\value_reg_n_0_[14] ),
        .I1(Q[14]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [14]),
        .O(\io_r_data[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[15]_i_6 
       (.I0(\value_reg_n_0_[15] ),
        .I1(Q[15]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [15]),
        .O(\io_r_data[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[16]_i_6 
       (.I0(\value_reg_n_0_[16] ),
        .I1(Q[16]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [16]),
        .O(\io_r_data[16]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[17]_i_6 
       (.I0(\value_reg_n_0_[17] ),
        .I1(Q[17]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [17]),
        .O(\io_r_data[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \io_r_data[18]_i_2 
       (.I0(\io_r_data_reg[27]_1 [3]),
        .I1(\io_r_data_reg[18]_i_4_n_0 ),
        .I2(\io_r_data_reg[1]_0 ),
        .I3(\io_r_data_reg[27]_2 [5]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[27]_3 [5]),
        .O(\io_r_data[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[18]_i_6 
       (.I0(\value_reg_n_0_[18] ),
        .I1(Q[18]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [18]),
        .O(\io_r_data[18]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[19]_i_6 
       (.I0(\value_reg_n_0_[19] ),
        .I1(Q[19]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [19]),
        .O(\io_r_data[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \io_r_data[1]_i_2 
       (.I0(\io_r_data_reg[27]_1 [3]),
        .I1(\io_r_data_reg[1]_i_4_n_0 ),
        .I2(\io_r_data_reg[1]_0 ),
        .I3(\io_r_data_reg[27]_2 [0]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[27]_3 [0]),
        .O(\io_r_data[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \io_r_data[1]_i_6 
       (.I0(\value_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [1]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .O(\io_r_data[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[20]_i_6 
       (.I0(\value_reg_n_0_[20] ),
        .I1(Q[20]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [20]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [0]),
        .O(\io_r_data[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[21]_i_6 
       (.I0(\value_reg_n_0_[21] ),
        .I1(Q[21]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [21]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [1]),
        .O(\io_r_data[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \io_r_data[22]_i_2 
       (.I0(\io_r_data_reg[27]_1 [3]),
        .I1(\io_r_data_reg[22]_i_4_n_0 ),
        .I2(\io_r_data_reg[1]_0 ),
        .I3(\io_r_data_reg[27]_2 [6]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[27]_3 [6]),
        .O(\io_r_data[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[22]_i_6 
       (.I0(\value_reg_n_0_[22] ),
        .I1(Q[22]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [22]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [2]),
        .O(\io_r_data[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \io_r_data[23]_i_2 
       (.I0(\io_r_data_reg[27]_1 [3]),
        .I1(\io_r_data_reg[23]_i_4_n_0 ),
        .I2(\io_r_data_reg[1]_0 ),
        .I3(\io_r_data_reg[27]_2 [7]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[27]_3 [7]),
        .O(\io_r_data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[23]_i_6 
       (.I0(\value_reg_n_0_[23] ),
        .I1(Q[23]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [23]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [3]),
        .O(\io_r_data[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[24]_i_6 
       (.I0(\value_reg_n_0_[24] ),
        .I1(Q[24]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [24]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [4]),
        .O(\io_r_data[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[25]_i_6 
       (.I0(\value_reg_n_0_[25] ),
        .I1(Q[25]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [25]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [5]),
        .O(\io_r_data[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[26]_i_6 
       (.I0(\value_reg_n_0_[26] ),
        .I1(Q[26]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [26]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [6]),
        .O(\io_r_data[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \io_r_data[27]_i_2 
       (.I0(\io_r_data_reg[27]_1 [3]),
        .I1(\io_r_data_reg[27]_i_4_n_0 ),
        .I2(\io_r_data_reg[1]_0 ),
        .I3(\io_r_data_reg[27]_2 [8]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[27]_3 [8]),
        .O(\io_r_data[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[27]_i_6 
       (.I0(\value_reg_n_0_[27] ),
        .I1(Q[27]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [27]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [7]),
        .O(\io_r_data[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[28]_i_6 
       (.I0(\value_reg_n_0_[28] ),
        .I1(Q[28]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [28]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [8]),
        .O(\io_r_data[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[29]_i_6 
       (.I0(\value_reg_n_0_[29] ),
        .I1(Q[29]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [29]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [9]),
        .O(\io_r_data[29]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[2]_i_6 
       (.I0(\value_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [2]),
        .O(\io_r_data[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[30]_i_6 
       (.I0(\value_reg_n_0_[30] ),
        .I1(Q[30]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [30]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [10]),
        .O(\io_r_data[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \io_r_data[31]_i_9 
       (.I0(\value_reg_n_0_[31] ),
        .I1(Q[31]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[31]_i_7_0 [31]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[31]_i_7_1 [11]),
        .O(\io_r_data[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[3]_i_6 
       (.I0(\value_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [3]),
        .O(\io_r_data[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[4]_i_6 
       (.I0(\value_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [4]),
        .O(\io_r_data[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \io_r_data[5]_i_2 
       (.I0(\io_r_data_reg[27]_1 [3]),
        .I1(\io_r_data_reg[5]_i_4_n_0 ),
        .I2(\io_r_data_reg[1]_0 ),
        .I3(\io_r_data_reg[27]_2 [1]),
        .I4(\io_r_data_reg[27]_1 [0]),
        .I5(\io_r_data_reg[27]_3 [1]),
        .O(\io_r_data[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[5]_i_6 
       (.I0(\value_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [5]),
        .O(\io_r_data[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[6]_i_6 
       (.I0(\value_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [6]),
        .O(\io_r_data[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[7]_i_6 
       (.I0(\value_reg_n_0_[7] ),
        .I1(Q[7]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [7]),
        .O(\io_r_data[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[8]_i_6 
       (.I0(\value_reg_n_0_[8] ),
        .I1(Q[8]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [8]),
        .O(\io_r_data[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \io_r_data[9]_i_6 
       (.I0(\value_reg_n_0_[9] ),
        .I1(Q[9]),
        .I2(\io_r_data_reg[27]_1 [1]),
        .I3(\io_r_data_reg[27]_1 [0]),
        .I4(\io_r_data_reg[31]_i_7_0 [9]),
        .O(\io_r_data[9]_i_6_n_0 ));
  MUXF7 \io_r_data_reg[0]_i_4 
       (.I0(\io_r_data[0]_i_6_n_0 ),
        .I1(\io_r_data[0]_i_2 ),
        .O(\fc_raddr_reg[2]_21 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[10]_i_4 
       (.I0(\io_r_data[10]_i_6_n_0 ),
        .I1(\io_r_data[10]_i_2 ),
        .O(\fc_raddr_reg[2]_13 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[11]_i_1 
       (.I0(\io_r_data[11]_i_2_n_0 ),
        .I1(\io_r_data_reg[11] ),
        .O(\fc_raddr_reg[3] [2]),
        .S(\io_r_data_reg[27] ));
  MUXF7 \io_r_data_reg[11]_i_4 
       (.I0(\io_r_data[11]_i_6_n_0 ),
        .I1(\io_r_data[11]_i_2_0 ),
        .O(\io_r_data_reg[11]_i_4_n_0 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[12]_i_4 
       (.I0(\io_r_data[12]_i_6_n_0 ),
        .I1(\io_r_data[12]_i_2 ),
        .O(\fc_raddr_reg[2]_12 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[13]_i_1 
       (.I0(\io_r_data[13]_i_2_n_0 ),
        .I1(\io_r_data_reg[13] ),
        .O(\fc_raddr_reg[3] [3]),
        .S(\io_r_data_reg[27] ));
  MUXF7 \io_r_data_reg[13]_i_4 
       (.I0(\io_r_data[13]_i_6_n_0 ),
        .I1(\io_r_data[13]_i_2_0 ),
        .O(\io_r_data_reg[13]_i_4_n_0 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[14]_i_1 
       (.I0(\io_r_data[14]_i_2_n_0 ),
        .I1(\io_r_data_reg[14] ),
        .O(\fc_raddr_reg[3] [4]),
        .S(\io_r_data_reg[27] ));
  MUXF7 \io_r_data_reg[14]_i_4 
       (.I0(\io_r_data[14]_i_6_n_0 ),
        .I1(\io_r_data[14]_i_2_0 ),
        .O(\io_r_data_reg[14]_i_4_n_0 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[15]_i_4 
       (.I0(\io_r_data[15]_i_6_n_0 ),
        .I1(\io_r_data[15]_i_2 ),
        .O(\fc_raddr_reg[2]_11 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[16]_i_4 
       (.I0(\io_r_data[16]_i_6_n_0 ),
        .I1(\io_r_data[16]_i_2 ),
        .O(\fc_raddr_reg[2]_10 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[17]_i_4 
       (.I0(\io_r_data[17]_i_6_n_0 ),
        .I1(\io_r_data[17]_i_2 ),
        .O(\fc_raddr_reg[2]_9 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[18]_i_1 
       (.I0(\io_r_data[18]_i_2_n_0 ),
        .I1(\io_r_data_reg[18] ),
        .O(\fc_raddr_reg[3] [5]),
        .S(\io_r_data_reg[27] ));
  MUXF7 \io_r_data_reg[18]_i_4 
       (.I0(\io_r_data[18]_i_6_n_0 ),
        .I1(\io_r_data[18]_i_2_0 ),
        .O(\io_r_data_reg[18]_i_4_n_0 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[19]_i_4 
       (.I0(\io_r_data[19]_i_6_n_0 ),
        .I1(\io_r_data[19]_i_2 ),
        .O(\fc_raddr_reg[2]_8 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[1]_i_1 
       (.I0(\io_r_data[1]_i_2_n_0 ),
        .I1(\io_r_data_reg[1] ),
        .O(\fc_raddr_reg[3] [0]),
        .S(\io_r_data_reg[27] ));
  MUXF7 \io_r_data_reg[1]_i_4 
       (.I0(\io_r_data[1]_i_6_n_0 ),
        .I1(\io_r_data[1]_i_2_0 ),
        .O(\io_r_data_reg[1]_i_4_n_0 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[20]_i_4 
       (.I0(\io_r_data[20]_i_6_n_0 ),
        .I1(\io_r_data[20]_i_2 ),
        .O(\fc_raddr_reg[2]_7 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[21]_i_4 
       (.I0(\io_r_data[21]_i_6_n_0 ),
        .I1(\io_r_data[21]_i_2 ),
        .O(\fc_raddr_reg[2]_6 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[22]_i_1 
       (.I0(\io_r_data[22]_i_2_n_0 ),
        .I1(\io_r_data_reg[22] ),
        .O(\fc_raddr_reg[3] [6]),
        .S(\io_r_data_reg[27] ));
  MUXF7 \io_r_data_reg[22]_i_4 
       (.I0(\io_r_data[22]_i_6_n_0 ),
        .I1(\io_r_data[22]_i_2_0 ),
        .O(\io_r_data_reg[22]_i_4_n_0 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[23]_i_1 
       (.I0(\io_r_data[23]_i_2_n_0 ),
        .I1(\io_r_data_reg[23] ),
        .O(\fc_raddr_reg[3] [7]),
        .S(\io_r_data_reg[27] ));
  MUXF7 \io_r_data_reg[23]_i_4 
       (.I0(\io_r_data[23]_i_6_n_0 ),
        .I1(\io_r_data[23]_i_2_0 ),
        .O(\io_r_data_reg[23]_i_4_n_0 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[24]_i_4 
       (.I0(\io_r_data[24]_i_6_n_0 ),
        .I1(\io_r_data[24]_i_2 ),
        .O(\fc_raddr_reg[2]_5 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[25]_i_4 
       (.I0(\io_r_data[25]_i_6_n_0 ),
        .I1(\io_r_data[25]_i_2 ),
        .O(\fc_raddr_reg[2]_4 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[26]_i_4 
       (.I0(\io_r_data[26]_i_6_n_0 ),
        .I1(\io_r_data[26]_i_2 ),
        .O(\fc_raddr_reg[2]_3 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[27]_i_1 
       (.I0(\io_r_data[27]_i_2_n_0 ),
        .I1(\io_r_data_reg[27]_0 ),
        .O(\fc_raddr_reg[3] [8]),
        .S(\io_r_data_reg[27] ));
  MUXF7 \io_r_data_reg[27]_i_4 
       (.I0(\io_r_data[27]_i_6_n_0 ),
        .I1(\io_r_data[27]_i_2_0 ),
        .O(\io_r_data_reg[27]_i_4_n_0 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[28]_i_4 
       (.I0(\io_r_data[28]_i_6_n_0 ),
        .I1(\io_r_data[28]_i_2 ),
        .O(\fc_raddr_reg[2]_2 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[29]_i_4 
       (.I0(\io_r_data[29]_i_6_n_0 ),
        .I1(\io_r_data[29]_i_2 ),
        .O(\fc_raddr_reg[2]_1 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[2]_i_4 
       (.I0(\io_r_data[2]_i_6_n_0 ),
        .I1(\io_r_data[2]_i_2 ),
        .O(\fc_raddr_reg[2]_20 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[30]_i_4 
       (.I0(\io_r_data[30]_i_6_n_0 ),
        .I1(\io_r_data[30]_i_2 ),
        .O(\fc_raddr_reg[2]_0 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[31]_i_7 
       (.I0(\io_r_data[31]_i_9_n_0 ),
        .I1(\io_r_data[31]_i_4 ),
        .O(\fc_raddr_reg[2] ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[3]_i_4 
       (.I0(\io_r_data[3]_i_6_n_0 ),
        .I1(\io_r_data[3]_i_2 ),
        .O(\fc_raddr_reg[2]_19 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[4]_i_4 
       (.I0(\io_r_data[4]_i_6_n_0 ),
        .I1(\io_r_data[4]_i_2 ),
        .O(\fc_raddr_reg[2]_18 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[5]_i_1 
       (.I0(\io_r_data[5]_i_2_n_0 ),
        .I1(\io_r_data_reg[5] ),
        .O(\fc_raddr_reg[3] [1]),
        .S(\io_r_data_reg[27] ));
  MUXF7 \io_r_data_reg[5]_i_4 
       (.I0(\io_r_data[5]_i_6_n_0 ),
        .I1(\io_r_data[5]_i_2_0 ),
        .O(\io_r_data_reg[5]_i_4_n_0 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[6]_i_4 
       (.I0(\io_r_data[6]_i_6_n_0 ),
        .I1(\io_r_data[6]_i_2 ),
        .O(\fc_raddr_reg[2]_17 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[7]_i_4 
       (.I0(\io_r_data[7]_i_6_n_0 ),
        .I1(\io_r_data[7]_i_2 ),
        .O(\fc_raddr_reg[2]_16 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[8]_i_4 
       (.I0(\io_r_data[8]_i_6_n_0 ),
        .I1(\io_r_data[8]_i_2 ),
        .O(\fc_raddr_reg[2]_15 ),
        .S(\io_r_data_reg[27]_1 [2]));
  MUXF7 \io_r_data_reg[9]_i_4 
       (.I0(\io_r_data[9]_i_6_n_0 ),
        .I1(\io_r_data[9]_i_2 ),
        .O(\fc_raddr_reg[2]_14 ),
        .S(\io_r_data_reg[27]_1 [2]));
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
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_counter_7
   (D,
    Q,
    clear,
    ext_lhc_clk,
    fc_orbitsync,
    S,
    s00_axi_aclk);
  output [0:0]D;
  output [31:0]Q;
  input clear;
  input ext_lhc_clk;
  input fc_orbitsync;
  input [0:0]S;
  input s00_axi_aclk;

  wire [0:0]D;
  wire [31:0]Q;
  wire [0:0]S;
  wire clear;
  wire [31:1]counter_reg;
  wire \counter_reg[0]_i_1__5_n_0 ;
  wire \counter_reg[0]_i_1__5_n_1 ;
  wire \counter_reg[0]_i_1__5_n_10 ;
  wire \counter_reg[0]_i_1__5_n_11 ;
  wire \counter_reg[0]_i_1__5_n_12 ;
  wire \counter_reg[0]_i_1__5_n_13 ;
  wire \counter_reg[0]_i_1__5_n_14 ;
  wire \counter_reg[0]_i_1__5_n_15 ;
  wire \counter_reg[0]_i_1__5_n_2 ;
  wire \counter_reg[0]_i_1__5_n_3 ;
  wire \counter_reg[0]_i_1__5_n_4 ;
  wire \counter_reg[0]_i_1__5_n_5 ;
  wire \counter_reg[0]_i_1__5_n_6 ;
  wire \counter_reg[0]_i_1__5_n_7 ;
  wire \counter_reg[0]_i_1__5_n_8 ;
  wire \counter_reg[0]_i_1__5_n_9 ;
  wire \counter_reg[16]_i_1__6_n_0 ;
  wire \counter_reg[16]_i_1__6_n_1 ;
  wire \counter_reg[16]_i_1__6_n_10 ;
  wire \counter_reg[16]_i_1__6_n_11 ;
  wire \counter_reg[16]_i_1__6_n_12 ;
  wire \counter_reg[16]_i_1__6_n_13 ;
  wire \counter_reg[16]_i_1__6_n_14 ;
  wire \counter_reg[16]_i_1__6_n_15 ;
  wire \counter_reg[16]_i_1__6_n_2 ;
  wire \counter_reg[16]_i_1__6_n_3 ;
  wire \counter_reg[16]_i_1__6_n_4 ;
  wire \counter_reg[16]_i_1__6_n_5 ;
  wire \counter_reg[16]_i_1__6_n_6 ;
  wire \counter_reg[16]_i_1__6_n_7 ;
  wire \counter_reg[16]_i_1__6_n_8 ;
  wire \counter_reg[16]_i_1__6_n_9 ;
  wire \counter_reg[24]_i_1__6_n_1 ;
  wire \counter_reg[24]_i_1__6_n_10 ;
  wire \counter_reg[24]_i_1__6_n_11 ;
  wire \counter_reg[24]_i_1__6_n_12 ;
  wire \counter_reg[24]_i_1__6_n_13 ;
  wire \counter_reg[24]_i_1__6_n_14 ;
  wire \counter_reg[24]_i_1__6_n_15 ;
  wire \counter_reg[24]_i_1__6_n_2 ;
  wire \counter_reg[24]_i_1__6_n_3 ;
  wire \counter_reg[24]_i_1__6_n_4 ;
  wire \counter_reg[24]_i_1__6_n_5 ;
  wire \counter_reg[24]_i_1__6_n_6 ;
  wire \counter_reg[24]_i_1__6_n_7 ;
  wire \counter_reg[24]_i_1__6_n_8 ;
  wire \counter_reg[24]_i_1__6_n_9 ;
  wire \counter_reg[8]_i_1__6_n_0 ;
  wire \counter_reg[8]_i_1__6_n_1 ;
  wire \counter_reg[8]_i_1__6_n_10 ;
  wire \counter_reg[8]_i_1__6_n_11 ;
  wire \counter_reg[8]_i_1__6_n_12 ;
  wire \counter_reg[8]_i_1__6_n_13 ;
  wire \counter_reg[8]_i_1__6_n_14 ;
  wire \counter_reg[8]_i_1__6_n_15 ;
  wire \counter_reg[8]_i_1__6_n_2 ;
  wire \counter_reg[8]_i_1__6_n_3 ;
  wire \counter_reg[8]_i_1__6_n_4 ;
  wire \counter_reg[8]_i_1__6_n_5 ;
  wire \counter_reg[8]_i_1__6_n_6 ;
  wire \counter_reg[8]_i_1__6_n_7 ;
  wire \counter_reg[8]_i_1__6_n_8 ;
  wire \counter_reg[8]_i_1__6_n_9 ;
  wire ext_lhc_clk;
  wire fc_orbitsync;
  wire s00_axi_aclk;
  wire [7:7]\NLW_counter_reg[24]_i_1__6_CO_UNCONNECTED ;

  FDRE \counter_reg[0] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__5_n_15 ),
        .Q(D),
        .R(clear));
  CARRY8 \counter_reg[0]_i_1__5 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg[0]_i_1__5_n_0 ,\counter_reg[0]_i_1__5_n_1 ,\counter_reg[0]_i_1__5_n_2 ,\counter_reg[0]_i_1__5_n_3 ,\counter_reg[0]_i_1__5_n_4 ,\counter_reg[0]_i_1__5_n_5 ,\counter_reg[0]_i_1__5_n_6 ,\counter_reg[0]_i_1__5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fc_orbitsync}),
        .O({\counter_reg[0]_i_1__5_n_8 ,\counter_reg[0]_i_1__5_n_9 ,\counter_reg[0]_i_1__5_n_10 ,\counter_reg[0]_i_1__5_n_11 ,\counter_reg[0]_i_1__5_n_12 ,\counter_reg[0]_i_1__5_n_13 ,\counter_reg[0]_i_1__5_n_14 ,\counter_reg[0]_i_1__5_n_15 }),
        .S({counter_reg[7:1],S}));
  FDRE \counter_reg[10] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__6_n_13 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__6_n_12 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE \counter_reg[12] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__6_n_11 ),
        .Q(counter_reg[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__6_n_10 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__6_n_9 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__6_n_8 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE \counter_reg[16] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__6_n_15 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY8 \counter_reg[16]_i_1__6 
       (.CI(\counter_reg[8]_i_1__6_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[16]_i_1__6_n_0 ,\counter_reg[16]_i_1__6_n_1 ,\counter_reg[16]_i_1__6_n_2 ,\counter_reg[16]_i_1__6_n_3 ,\counter_reg[16]_i_1__6_n_4 ,\counter_reg[16]_i_1__6_n_5 ,\counter_reg[16]_i_1__6_n_6 ,\counter_reg[16]_i_1__6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__6_n_8 ,\counter_reg[16]_i_1__6_n_9 ,\counter_reg[16]_i_1__6_n_10 ,\counter_reg[16]_i_1__6_n_11 ,\counter_reg[16]_i_1__6_n_12 ,\counter_reg[16]_i_1__6_n_13 ,\counter_reg[16]_i_1__6_n_14 ,\counter_reg[16]_i_1__6_n_15 }),
        .S(counter_reg[23:16]));
  FDRE \counter_reg[17] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__6_n_14 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__6_n_13 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__6_n_12 ),
        .Q(counter_reg[19]),
        .R(clear));
  FDRE \counter_reg[1] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__5_n_14 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__6_n_11 ),
        .Q(counter_reg[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__6_n_10 ),
        .Q(counter_reg[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__6_n_9 ),
        .Q(counter_reg[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__6_n_8 ),
        .Q(counter_reg[23]),
        .R(clear));
  FDRE \counter_reg[24] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__6_n_15 ),
        .Q(counter_reg[24]),
        .R(clear));
  CARRY8 \counter_reg[24]_i_1__6 
       (.CI(\counter_reg[16]_i_1__6_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[24]_i_1__6_CO_UNCONNECTED [7],\counter_reg[24]_i_1__6_n_1 ,\counter_reg[24]_i_1__6_n_2 ,\counter_reg[24]_i_1__6_n_3 ,\counter_reg[24]_i_1__6_n_4 ,\counter_reg[24]_i_1__6_n_5 ,\counter_reg[24]_i_1__6_n_6 ,\counter_reg[24]_i_1__6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1__6_n_8 ,\counter_reg[24]_i_1__6_n_9 ,\counter_reg[24]_i_1__6_n_10 ,\counter_reg[24]_i_1__6_n_11 ,\counter_reg[24]_i_1__6_n_12 ,\counter_reg[24]_i_1__6_n_13 ,\counter_reg[24]_i_1__6_n_14 ,\counter_reg[24]_i_1__6_n_15 }),
        .S(counter_reg[31:24]));
  FDRE \counter_reg[25] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__6_n_14 ),
        .Q(counter_reg[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__6_n_13 ),
        .Q(counter_reg[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__6_n_12 ),
        .Q(counter_reg[27]),
        .R(clear));
  FDRE \counter_reg[28] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__6_n_11 ),
        .Q(counter_reg[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__6_n_10 ),
        .Q(counter_reg[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__5_n_13 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__6_n_9 ),
        .Q(counter_reg[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1__6_n_8 ),
        .Q(counter_reg[31]),
        .R(clear));
  FDRE \counter_reg[3] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__5_n_12 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE \counter_reg[4] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__5_n_11 ),
        .Q(counter_reg[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__5_n_10 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__5_n_9 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__5_n_8 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE \counter_reg[8] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__6_n_15 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY8 \counter_reg[8]_i_1__6 
       (.CI(\counter_reg[0]_i_1__5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg[8]_i_1__6_n_0 ,\counter_reg[8]_i_1__6_n_1 ,\counter_reg[8]_i_1__6_n_2 ,\counter_reg[8]_i_1__6_n_3 ,\counter_reg[8]_i_1__6_n_4 ,\counter_reg[8]_i_1__6_n_5 ,\counter_reg[8]_i_1__6_n_6 ,\counter_reg[8]_i_1__6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__6_n_8 ,\counter_reg[8]_i_1__6_n_9 ,\counter_reg[8]_i_1__6_n_10 ,\counter_reg[8]_i_1__6_n_11 ,\counter_reg[8]_i_1__6_n_12 ,\counter_reg[8]_i_1__6_n_13 ,\counter_reg[8]_i_1__6_n_14 ,\counter_reg[8]_i_1__6_n_15 }),
        .S(counter_reg[15:8]));
  FDRE \counter_reg[9] 
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__6_n_14 ),
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

(* ORIG_REF_NAME = "hgcal_fc_manager_orbitsync" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_orbitsync
   (nextos,
    fc_orbitsync,
    fc_orbitcountreset,
    fire_reg,
    fire_reg_0,
    S,
    fire_reg_1,
    Q,
    ext_lhc_clk,
    \start_sequence_40_reg[11] ,
    reset_40,
    enable_orbitsync,
    invalid_r_reg,
    fc_calibrationreq,
    fc_calibrationl1a,
    fc_internaltest,
    fc_l1a,
    fc_daqresync,
    invalid_r_reg_0,
    fc_linkreset,
    pending_i_3__2,
    D,
    \counter_reg[7] );
  output nextos;
  output fc_orbitsync;
  output fc_orbitcountreset;
  output fire_reg;
  output fire_reg_0;
  output [0:0]S;
  output [0:0]fire_reg_1;
  input [0:0]Q;
  input ext_lhc_clk;
  input [11:0]\start_sequence_40_reg[11] ;
  input reset_40;
  input enable_orbitsync;
  input invalid_r_reg;
  input fc_calibrationreq;
  input fc_calibrationl1a;
  input fc_internaltest;
  input fc_l1a;
  input fc_daqresync;
  input invalid_r_reg_0;
  input fc_linkreset;
  input [11:0]pending_i_3__2;
  input [0:0]D;
  input [0:0]\counter_reg[7] ;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]\counter_reg[7] ;
  wire enable_orbitsync;
  wire ext_lhc_clk;
  wire fc_calibrationl1a;
  wire fc_calibrationreq;
  wire fc_daqresync;
  wire fc_internaltest;
  wire fc_l1a;
  wire fc_linkreset;
  wire fc_orbitcountreset;
  wire fc_orbitsync;
  wire fire_reg;
  wire fire_reg_0;
  wire [0:0]fire_reg_1;
  wire invalid_r_reg;
  wire invalid_r_reg_0;
  wire latched_req;
  wire nextos;
  wire pending0;
  wire [11:0]pending_i_3__2;
  wire reset_40;
  wire [11:0]\start_sequence_40_reg[11] ;
  wire timer_ocr_n_3;

  tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed timer_ocr
       (.D(D),
        .Q(Q),
        .S(S),
        .enable_orbitsync(enable_orbitsync),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_daqresync(fc_daqresync),
        .fc_internaltest(fc_internaltest),
        .fc_l1a(fc_l1a),
        .fc_linkreset(fc_linkreset),
        .fire_reg_0(fc_orbitcountreset),
        .fire_reg_1(fire_reg_0),
        .fire_reg_2(timer_ocr_n_3),
        .invalid_r_reg(fc_orbitsync),
        .invalid_r_reg_0(invalid_r_reg_0),
        .latched_req(latched_req),
        .pending0(pending0),
        .reset_40(reset_40));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_11 timer_os
       (.\counter_reg[7] (\counter_reg[7] ),
        .enable_orbitsync(enable_orbitsync),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_calibrationl1a(fc_calibrationl1a),
        .fc_calibrationreq(fc_calibrationreq),
        .fc_internaltest(fc_internaltest),
        .fire_reg_0(fc_orbitsync),
        .fire_reg_1(fire_reg),
        .fire_reg_2(fire_reg_1),
        .invalid_r_reg(timer_ocr_n_3),
        .invalid_r_reg_0(invalid_r_reg),
        .latched_req(latched_req),
        .nextos(nextos),
        .pending0(pending0),
        .pending_i_3__2_0(pending_i_3__2),
        .reset_40(reset_40),
        .\start_sequence_40_reg[11]_0 (\start_sequence_40_reg[11] ));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_periodic_l1a" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a
   (veto_l1agen_A,
    fc_l1agen_A,
    Q,
    ext_lhc_clk,
    periodic_counter,
    reset_40,
    periodic_counter0_carry_0,
    enable_l1agen_A,
    pending_i_3__0);
  output veto_l1agen_A;
  output fc_l1agen_A;
  input [0:0]Q;
  input ext_lhc_clk;
  input periodic_counter;
  input reset_40;
  input [31:0]periodic_counter0_carry_0;
  input enable_l1agen_A;
  input [11:0]pending_i_3__0;

  wire [0:0]Q;
  wire enable_l1agen_A;
  wire ext_lhc_clk;
  wire fc_l1agen_A;
  wire [11:0]pending_i_3__0;
  wire periodic_counter;
  wire [31:0]periodic_counter0_carry_0;
  wire periodic_counter0_carry_i_1__0_n_0;
  wire periodic_counter0_carry_i_2__0_n_0;
  wire periodic_counter0_carry_i_3__0_n_0;
  wire periodic_counter0_carry_i_4__0_n_0;
  wire periodic_counter0_carry_i_5__0_n_0;
  wire periodic_counter0_carry_i_6__0_n_0;
  wire periodic_counter0_carry_i_7__0_n_0;
  wire periodic_counter0_carry_n_1;
  wire periodic_counter0_carry_n_2;
  wire periodic_counter0_carry_n_3;
  wire periodic_counter0_carry_n_4;
  wire periodic_counter0_carry_n_5;
  wire periodic_counter0_carry_n_6;
  wire periodic_counter0_carry_n_7;
  wire \periodic_counter[0]_i_1__0_n_0 ;
  wire \periodic_counter[0]_i_3_n_0 ;
  wire [19:0]periodic_counter_reg;
  wire \periodic_counter_reg[0]_i_2_n_0 ;
  wire \periodic_counter_reg[0]_i_2_n_1 ;
  wire \periodic_counter_reg[0]_i_2_n_10 ;
  wire \periodic_counter_reg[0]_i_2_n_11 ;
  wire \periodic_counter_reg[0]_i_2_n_12 ;
  wire \periodic_counter_reg[0]_i_2_n_13 ;
  wire \periodic_counter_reg[0]_i_2_n_14 ;
  wire \periodic_counter_reg[0]_i_2_n_15 ;
  wire \periodic_counter_reg[0]_i_2_n_2 ;
  wire \periodic_counter_reg[0]_i_2_n_3 ;
  wire \periodic_counter_reg[0]_i_2_n_4 ;
  wire \periodic_counter_reg[0]_i_2_n_5 ;
  wire \periodic_counter_reg[0]_i_2_n_6 ;
  wire \periodic_counter_reg[0]_i_2_n_7 ;
  wire \periodic_counter_reg[0]_i_2_n_8 ;
  wire \periodic_counter_reg[0]_i_2_n_9 ;
  wire \periodic_counter_reg[16]_i_1__0_n_12 ;
  wire \periodic_counter_reg[16]_i_1__0_n_13 ;
  wire \periodic_counter_reg[16]_i_1__0_n_14 ;
  wire \periodic_counter_reg[16]_i_1__0_n_15 ;
  wire \periodic_counter_reg[16]_i_1__0_n_5 ;
  wire \periodic_counter_reg[16]_i_1__0_n_6 ;
  wire \periodic_counter_reg[16]_i_1__0_n_7 ;
  wire \periodic_counter_reg[8]_i_1__0_n_0 ;
  wire \periodic_counter_reg[8]_i_1__0_n_1 ;
  wire \periodic_counter_reg[8]_i_1__0_n_10 ;
  wire \periodic_counter_reg[8]_i_1__0_n_11 ;
  wire \periodic_counter_reg[8]_i_1__0_n_12 ;
  wire \periodic_counter_reg[8]_i_1__0_n_13 ;
  wire \periodic_counter_reg[8]_i_1__0_n_14 ;
  wire \periodic_counter_reg[8]_i_1__0_n_15 ;
  wire \periodic_counter_reg[8]_i_1__0_n_2 ;
  wire \periodic_counter_reg[8]_i_1__0_n_3 ;
  wire \periodic_counter_reg[8]_i_1__0_n_4 ;
  wire \periodic_counter_reg[8]_i_1__0_n_5 ;
  wire \periodic_counter_reg[8]_i_1__0_n_6 ;
  wire \periodic_counter_reg[8]_i_1__0_n_7 ;
  wire \periodic_counter_reg[8]_i_1__0_n_8 ;
  wire \periodic_counter_reg[8]_i_1__0_n_9 ;
  wire req_periodic;
  wire req_periodic_i_1__0_n_0;
  wire reset_40;
  wire veto_l1agen_A;
  wire [7:7]NLW_periodic_counter0_carry_CO_UNCONNECTED;
  wire [7:0]NLW_periodic_counter0_carry_O_UNCONNECTED;
  wire [7:3]\NLW_periodic_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [7:4]\NLW_periodic_counter_reg[16]_i_1__0_O_UNCONNECTED ;

  CARRY8 periodic_counter0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_periodic_counter0_carry_CO_UNCONNECTED[7],periodic_counter0_carry_n_1,periodic_counter0_carry_n_2,periodic_counter0_carry_n_3,periodic_counter0_carry_n_4,periodic_counter0_carry_n_5,periodic_counter0_carry_n_6,periodic_counter0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_periodic_counter0_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,periodic_counter0_carry_i_1__0_n_0,periodic_counter0_carry_i_2__0_n_0,periodic_counter0_carry_i_3__0_n_0,periodic_counter0_carry_i_4__0_n_0,periodic_counter0_carry_i_5__0_n_0,periodic_counter0_carry_i_6__0_n_0,periodic_counter0_carry_i_7__0_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    periodic_counter0_carry_i_1__0
       (.I0(periodic_counter0_carry_0[31]),
        .I1(periodic_counter_reg[19]),
        .I2(periodic_counter0_carry_0[30]),
        .I3(periodic_counter_reg[18]),
        .O(periodic_counter0_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_2__0
       (.I0(periodic_counter_reg[17]),
        .I1(periodic_counter0_carry_0[29]),
        .I2(periodic_counter_reg[15]),
        .I3(periodic_counter0_carry_0[27]),
        .I4(periodic_counter0_carry_0[28]),
        .I5(periodic_counter_reg[16]),
        .O(periodic_counter0_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_3__0
       (.I0(periodic_counter_reg[12]),
        .I1(periodic_counter0_carry_0[24]),
        .I2(periodic_counter_reg[13]),
        .I3(periodic_counter0_carry_0[25]),
        .I4(periodic_counter0_carry_0[26]),
        .I5(periodic_counter_reg[14]),
        .O(periodic_counter0_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_4__0
       (.I0(periodic_counter_reg[9]),
        .I1(periodic_counter0_carry_0[21]),
        .I2(periodic_counter_reg[10]),
        .I3(periodic_counter0_carry_0[22]),
        .I4(periodic_counter0_carry_0[23]),
        .I5(periodic_counter_reg[11]),
        .O(periodic_counter0_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_5__0
       (.I0(periodic_counter_reg[6]),
        .I1(periodic_counter0_carry_0[18]),
        .I2(periodic_counter_reg[7]),
        .I3(periodic_counter0_carry_0[19]),
        .I4(periodic_counter0_carry_0[20]),
        .I5(periodic_counter_reg[8]),
        .O(periodic_counter0_carry_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_6__0
       (.I0(periodic_counter_reg[3]),
        .I1(periodic_counter0_carry_0[15]),
        .I2(periodic_counter_reg[4]),
        .I3(periodic_counter0_carry_0[16]),
        .I4(periodic_counter0_carry_0[17]),
        .I5(periodic_counter_reg[5]),
        .O(periodic_counter0_carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_7__0
       (.I0(periodic_counter_reg[2]),
        .I1(periodic_counter0_carry_0[14]),
        .I2(periodic_counter_reg[0]),
        .I3(periodic_counter0_carry_0[12]),
        .I4(periodic_counter0_carry_0[13]),
        .I5(periodic_counter_reg[1]),
        .O(periodic_counter0_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \periodic_counter[0]_i_1__0 
       (.I0(periodic_counter),
        .I1(periodic_counter0_carry_n_1),
        .I2(reset_40),
        .I3(enable_l1agen_A),
        .O(\periodic_counter[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \periodic_counter[0]_i_3 
       (.I0(periodic_counter_reg[0]),
        .O(\periodic_counter[0]_i_3_n_0 ));
  FDRE \periodic_counter_reg[0] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2_n_15 ),
        .Q(periodic_counter_reg[0]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  CARRY8 \periodic_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\periodic_counter_reg[0]_i_2_n_0 ,\periodic_counter_reg[0]_i_2_n_1 ,\periodic_counter_reg[0]_i_2_n_2 ,\periodic_counter_reg[0]_i_2_n_3 ,\periodic_counter_reg[0]_i_2_n_4 ,\periodic_counter_reg[0]_i_2_n_5 ,\periodic_counter_reg[0]_i_2_n_6 ,\periodic_counter_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\periodic_counter_reg[0]_i_2_n_8 ,\periodic_counter_reg[0]_i_2_n_9 ,\periodic_counter_reg[0]_i_2_n_10 ,\periodic_counter_reg[0]_i_2_n_11 ,\periodic_counter_reg[0]_i_2_n_12 ,\periodic_counter_reg[0]_i_2_n_13 ,\periodic_counter_reg[0]_i_2_n_14 ,\periodic_counter_reg[0]_i_2_n_15 }),
        .S({periodic_counter_reg[7:1],\periodic_counter[0]_i_3_n_0 }));
  FDRE \periodic_counter_reg[10] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__0_n_13 ),
        .Q(periodic_counter_reg[10]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[11] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__0_n_12 ),
        .Q(periodic_counter_reg[11]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[12] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__0_n_11 ),
        .Q(periodic_counter_reg[12]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[13] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__0_n_10 ),
        .Q(periodic_counter_reg[13]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[14] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__0_n_9 ),
        .Q(periodic_counter_reg[14]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[15] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__0_n_8 ),
        .Q(periodic_counter_reg[15]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[16] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[16]_i_1__0_n_15 ),
        .Q(periodic_counter_reg[16]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  CARRY8 \periodic_counter_reg[16]_i_1__0 
       (.CI(\periodic_counter_reg[8]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_periodic_counter_reg[16]_i_1__0_CO_UNCONNECTED [7:3],\periodic_counter_reg[16]_i_1__0_n_5 ,\periodic_counter_reg[16]_i_1__0_n_6 ,\periodic_counter_reg[16]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_periodic_counter_reg[16]_i_1__0_O_UNCONNECTED [7:4],\periodic_counter_reg[16]_i_1__0_n_12 ,\periodic_counter_reg[16]_i_1__0_n_13 ,\periodic_counter_reg[16]_i_1__0_n_14 ,\periodic_counter_reg[16]_i_1__0_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,periodic_counter_reg[19:16]}));
  FDRE \periodic_counter_reg[17] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[16]_i_1__0_n_14 ),
        .Q(periodic_counter_reg[17]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[18] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[16]_i_1__0_n_13 ),
        .Q(periodic_counter_reg[18]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[19] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[16]_i_1__0_n_12 ),
        .Q(periodic_counter_reg[19]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[1] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2_n_14 ),
        .Q(periodic_counter_reg[1]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[2] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2_n_13 ),
        .Q(periodic_counter_reg[2]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[3] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2_n_12 ),
        .Q(periodic_counter_reg[3]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[4] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2_n_11 ),
        .Q(periodic_counter_reg[4]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[5] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2_n_10 ),
        .Q(periodic_counter_reg[5]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[6] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2_n_9 ),
        .Q(periodic_counter_reg[6]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[7] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2_n_8 ),
        .Q(periodic_counter_reg[7]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  FDRE \periodic_counter_reg[8] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__0_n_15 ),
        .Q(periodic_counter_reg[8]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  CARRY8 \periodic_counter_reg[8]_i_1__0 
       (.CI(\periodic_counter_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\periodic_counter_reg[8]_i_1__0_n_0 ,\periodic_counter_reg[8]_i_1__0_n_1 ,\periodic_counter_reg[8]_i_1__0_n_2 ,\periodic_counter_reg[8]_i_1__0_n_3 ,\periodic_counter_reg[8]_i_1__0_n_4 ,\periodic_counter_reg[8]_i_1__0_n_5 ,\periodic_counter_reg[8]_i_1__0_n_6 ,\periodic_counter_reg[8]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\periodic_counter_reg[8]_i_1__0_n_8 ,\periodic_counter_reg[8]_i_1__0_n_9 ,\periodic_counter_reg[8]_i_1__0_n_10 ,\periodic_counter_reg[8]_i_1__0_n_11 ,\periodic_counter_reg[8]_i_1__0_n_12 ,\periodic_counter_reg[8]_i_1__0_n_13 ,\periodic_counter_reg[8]_i_1__0_n_14 ,\periodic_counter_reg[8]_i_1__0_n_15 }),
        .S(periodic_counter_reg[15:8]));
  FDRE \periodic_counter_reg[9] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__0_n_14 ),
        .Q(periodic_counter_reg[9]),
        .R(\periodic_counter[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    req_periodic_i_1__0
       (.I0(reset_40),
        .I1(enable_l1agen_A),
        .I2(periodic_counter),
        .I3(periodic_counter0_carry_n_1),
        .O(req_periodic_i_1__0_n_0));
  FDRE req_periodic_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(req_periodic_i_1__0_n_0),
        .Q(req_periodic),
        .R(1'b0));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_13 timer_l1
       (.Q(Q),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_l1agen_A(fc_l1agen_A),
        .pending_i_3__0_0(pending_i_3__0),
        .req_periodic(req_periodic),
        .reset_40(reset_40),
        .\start_sequence_40_reg[11]_0 (periodic_counter0_carry_0[11:0]),
        .veto_l1agen_A(veto_l1agen_A));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_periodic_l1a" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_periodic_l1a_8
   (veto_l1agen_B,
    fc_l1agen_B,
    periodic_counter,
    fire_reg,
    fc_l1a,
    DI,
    Q,
    ext_lhc_clk,
    reset_40,
    periodic_counter0_carry_0,
    enable_l1agen_B,
    pending_reg,
    fc_internaltest,
    fc_daqresync,
    fc_orbitcountreset,
    fc_linkreset,
    fc_l1agen_A,
    fc_l1a_for_calib);
  output veto_l1agen_B;
  output fc_l1agen_B;
  output periodic_counter;
  output fire_reg;
  output fc_l1a;
  output [0:0]DI;
  input [0:0]Q;
  input ext_lhc_clk;
  input reset_40;
  input [31:0]periodic_counter0_carry_0;
  input enable_l1agen_B;
  input [11:0]pending_reg;
  input fc_internaltest;
  input fc_daqresync;
  input fc_orbitcountreset;
  input fc_linkreset;
  input fc_l1agen_A;
  input fc_l1a_for_calib;

  wire [0:0]DI;
  wire [0:0]Q;
  wire enable_l1agen_B;
  wire ext_lhc_clk;
  wire fc_daqresync;
  wire fc_internaltest;
  wire fc_l1a;
  wire fc_l1a_for_calib;
  wire fc_l1agen_A;
  wire fc_l1agen_B;
  wire fc_linkreset;
  wire fc_orbitcountreset;
  wire fire_reg;
  wire [11:0]pending_reg;
  wire periodic_counter;
  wire [31:0]periodic_counter0_carry_0;
  wire periodic_counter0_carry_i_1__1_n_0;
  wire periodic_counter0_carry_i_2__1_n_0;
  wire periodic_counter0_carry_i_3__1_n_0;
  wire periodic_counter0_carry_i_4__1_n_0;
  wire periodic_counter0_carry_i_5__1_n_0;
  wire periodic_counter0_carry_i_6__1_n_0;
  wire periodic_counter0_carry_i_7__1_n_0;
  wire periodic_counter0_carry_n_1;
  wire periodic_counter0_carry_n_2;
  wire periodic_counter0_carry_n_3;
  wire periodic_counter0_carry_n_4;
  wire periodic_counter0_carry_n_5;
  wire periodic_counter0_carry_n_6;
  wire periodic_counter0_carry_n_7;
  wire \periodic_counter[0]_i_1__1_n_0 ;
  wire \periodic_counter[0]_i_3__0_n_0 ;
  wire \periodic_counter[0]_i_4_n_0 ;
  wire \periodic_counter[0]_i_5_n_0 ;
  wire [19:0]periodic_counter_reg;
  wire \periodic_counter_reg[0]_i_2__0_n_0 ;
  wire \periodic_counter_reg[0]_i_2__0_n_1 ;
  wire \periodic_counter_reg[0]_i_2__0_n_10 ;
  wire \periodic_counter_reg[0]_i_2__0_n_11 ;
  wire \periodic_counter_reg[0]_i_2__0_n_12 ;
  wire \periodic_counter_reg[0]_i_2__0_n_13 ;
  wire \periodic_counter_reg[0]_i_2__0_n_14 ;
  wire \periodic_counter_reg[0]_i_2__0_n_15 ;
  wire \periodic_counter_reg[0]_i_2__0_n_2 ;
  wire \periodic_counter_reg[0]_i_2__0_n_3 ;
  wire \periodic_counter_reg[0]_i_2__0_n_4 ;
  wire \periodic_counter_reg[0]_i_2__0_n_5 ;
  wire \periodic_counter_reg[0]_i_2__0_n_6 ;
  wire \periodic_counter_reg[0]_i_2__0_n_7 ;
  wire \periodic_counter_reg[0]_i_2__0_n_8 ;
  wire \periodic_counter_reg[0]_i_2__0_n_9 ;
  wire \periodic_counter_reg[16]_i_1__1_n_12 ;
  wire \periodic_counter_reg[16]_i_1__1_n_13 ;
  wire \periodic_counter_reg[16]_i_1__1_n_14 ;
  wire \periodic_counter_reg[16]_i_1__1_n_15 ;
  wire \periodic_counter_reg[16]_i_1__1_n_5 ;
  wire \periodic_counter_reg[16]_i_1__1_n_6 ;
  wire \periodic_counter_reg[16]_i_1__1_n_7 ;
  wire \periodic_counter_reg[8]_i_1__1_n_0 ;
  wire \periodic_counter_reg[8]_i_1__1_n_1 ;
  wire \periodic_counter_reg[8]_i_1__1_n_10 ;
  wire \periodic_counter_reg[8]_i_1__1_n_11 ;
  wire \periodic_counter_reg[8]_i_1__1_n_12 ;
  wire \periodic_counter_reg[8]_i_1__1_n_13 ;
  wire \periodic_counter_reg[8]_i_1__1_n_14 ;
  wire \periodic_counter_reg[8]_i_1__1_n_15 ;
  wire \periodic_counter_reg[8]_i_1__1_n_2 ;
  wire \periodic_counter_reg[8]_i_1__1_n_3 ;
  wire \periodic_counter_reg[8]_i_1__1_n_4 ;
  wire \periodic_counter_reg[8]_i_1__1_n_5 ;
  wire \periodic_counter_reg[8]_i_1__1_n_6 ;
  wire \periodic_counter_reg[8]_i_1__1_n_7 ;
  wire \periodic_counter_reg[8]_i_1__1_n_8 ;
  wire \periodic_counter_reg[8]_i_1__1_n_9 ;
  wire req_periodic;
  wire req_periodic_i_1__1_n_0;
  wire reset_40;
  wire veto_l1agen_B;
  wire [7:7]NLW_periodic_counter0_carry_CO_UNCONNECTED;
  wire [7:0]NLW_periodic_counter0_carry_O_UNCONNECTED;
  wire [7:3]\NLW_periodic_counter_reg[16]_i_1__1_CO_UNCONNECTED ;
  wire [7:4]\NLW_periodic_counter_reg[16]_i_1__1_O_UNCONNECTED ;

  CARRY8 periodic_counter0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_periodic_counter0_carry_CO_UNCONNECTED[7],periodic_counter0_carry_n_1,periodic_counter0_carry_n_2,periodic_counter0_carry_n_3,periodic_counter0_carry_n_4,periodic_counter0_carry_n_5,periodic_counter0_carry_n_6,periodic_counter0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_periodic_counter0_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,periodic_counter0_carry_i_1__1_n_0,periodic_counter0_carry_i_2__1_n_0,periodic_counter0_carry_i_3__1_n_0,periodic_counter0_carry_i_4__1_n_0,periodic_counter0_carry_i_5__1_n_0,periodic_counter0_carry_i_6__1_n_0,periodic_counter0_carry_i_7__1_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    periodic_counter0_carry_i_1__1
       (.I0(periodic_counter0_carry_0[31]),
        .I1(periodic_counter_reg[19]),
        .I2(periodic_counter0_carry_0[30]),
        .I3(periodic_counter_reg[18]),
        .O(periodic_counter0_carry_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_2__1
       (.I0(periodic_counter_reg[15]),
        .I1(periodic_counter0_carry_0[27]),
        .I2(periodic_counter_reg[16]),
        .I3(periodic_counter0_carry_0[28]),
        .I4(periodic_counter0_carry_0[29]),
        .I5(periodic_counter_reg[17]),
        .O(periodic_counter0_carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_3__1
       (.I0(periodic_counter_reg[13]),
        .I1(periodic_counter0_carry_0[25]),
        .I2(periodic_counter_reg[12]),
        .I3(periodic_counter0_carry_0[24]),
        .I4(periodic_counter0_carry_0[26]),
        .I5(periodic_counter_reg[14]),
        .O(periodic_counter0_carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_4__1
       (.I0(periodic_counter_reg[10]),
        .I1(periodic_counter0_carry_0[22]),
        .I2(periodic_counter_reg[9]),
        .I3(periodic_counter0_carry_0[21]),
        .I4(periodic_counter0_carry_0[23]),
        .I5(periodic_counter_reg[11]),
        .O(periodic_counter0_carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_5__1
       (.I0(periodic_counter_reg[6]),
        .I1(periodic_counter0_carry_0[18]),
        .I2(periodic_counter_reg[7]),
        .I3(periodic_counter0_carry_0[19]),
        .I4(periodic_counter0_carry_0[20]),
        .I5(periodic_counter_reg[8]),
        .O(periodic_counter0_carry_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_6__1
       (.I0(periodic_counter_reg[3]),
        .I1(periodic_counter0_carry_0[15]),
        .I2(periodic_counter_reg[4]),
        .I3(periodic_counter0_carry_0[16]),
        .I4(periodic_counter0_carry_0[17]),
        .I5(periodic_counter_reg[5]),
        .O(periodic_counter0_carry_i_6__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    periodic_counter0_carry_i_7__1
       (.I0(periodic_counter_reg[1]),
        .I1(periodic_counter0_carry_0[13]),
        .I2(periodic_counter_reg[0]),
        .I3(periodic_counter0_carry_0[12]),
        .I4(periodic_counter0_carry_0[14]),
        .I5(periodic_counter_reg[2]),
        .O(periodic_counter0_carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \periodic_counter[0]_i_1__1 
       (.I0(periodic_counter),
        .I1(periodic_counter0_carry_n_1),
        .I2(reset_40),
        .I3(enable_l1agen_B),
        .O(\periodic_counter[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \periodic_counter[0]_i_2 
       (.I0(\periodic_counter[0]_i_4_n_0 ),
        .I1(pending_reg[7]),
        .I2(pending_reg[6]),
        .I3(pending_reg[5]),
        .I4(pending_reg[4]),
        .I5(\periodic_counter[0]_i_5_n_0 ),
        .O(periodic_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \periodic_counter[0]_i_3__0 
       (.I0(periodic_counter_reg[0]),
        .O(\periodic_counter[0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \periodic_counter[0]_i_4 
       (.I0(pending_reg[1]),
        .I1(pending_reg[0]),
        .I2(pending_reg[3]),
        .I3(pending_reg[2]),
        .O(\periodic_counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \periodic_counter[0]_i_5 
       (.I0(pending_reg[11]),
        .I1(pending_reg[10]),
        .I2(pending_reg[9]),
        .I3(pending_reg[8]),
        .O(\periodic_counter[0]_i_5_n_0 ));
  FDRE \periodic_counter_reg[0] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2__0_n_15 ),
        .Q(periodic_counter_reg[0]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  CARRY8 \periodic_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\periodic_counter_reg[0]_i_2__0_n_0 ,\periodic_counter_reg[0]_i_2__0_n_1 ,\periodic_counter_reg[0]_i_2__0_n_2 ,\periodic_counter_reg[0]_i_2__0_n_3 ,\periodic_counter_reg[0]_i_2__0_n_4 ,\periodic_counter_reg[0]_i_2__0_n_5 ,\periodic_counter_reg[0]_i_2__0_n_6 ,\periodic_counter_reg[0]_i_2__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\periodic_counter_reg[0]_i_2__0_n_8 ,\periodic_counter_reg[0]_i_2__0_n_9 ,\periodic_counter_reg[0]_i_2__0_n_10 ,\periodic_counter_reg[0]_i_2__0_n_11 ,\periodic_counter_reg[0]_i_2__0_n_12 ,\periodic_counter_reg[0]_i_2__0_n_13 ,\periodic_counter_reg[0]_i_2__0_n_14 ,\periodic_counter_reg[0]_i_2__0_n_15 }),
        .S({periodic_counter_reg[7:1],\periodic_counter[0]_i_3__0_n_0 }));
  FDRE \periodic_counter_reg[10] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__1_n_13 ),
        .Q(periodic_counter_reg[10]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[11] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__1_n_12 ),
        .Q(periodic_counter_reg[11]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[12] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__1_n_11 ),
        .Q(periodic_counter_reg[12]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[13] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__1_n_10 ),
        .Q(periodic_counter_reg[13]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[14] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__1_n_9 ),
        .Q(periodic_counter_reg[14]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[15] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__1_n_8 ),
        .Q(periodic_counter_reg[15]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[16] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[16]_i_1__1_n_15 ),
        .Q(periodic_counter_reg[16]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  CARRY8 \periodic_counter_reg[16]_i_1__1 
       (.CI(\periodic_counter_reg[8]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_periodic_counter_reg[16]_i_1__1_CO_UNCONNECTED [7:3],\periodic_counter_reg[16]_i_1__1_n_5 ,\periodic_counter_reg[16]_i_1__1_n_6 ,\periodic_counter_reg[16]_i_1__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_periodic_counter_reg[16]_i_1__1_O_UNCONNECTED [7:4],\periodic_counter_reg[16]_i_1__1_n_12 ,\periodic_counter_reg[16]_i_1__1_n_13 ,\periodic_counter_reg[16]_i_1__1_n_14 ,\periodic_counter_reg[16]_i_1__1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,periodic_counter_reg[19:16]}));
  FDRE \periodic_counter_reg[17] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[16]_i_1__1_n_14 ),
        .Q(periodic_counter_reg[17]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[18] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[16]_i_1__1_n_13 ),
        .Q(periodic_counter_reg[18]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[19] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[16]_i_1__1_n_12 ),
        .Q(periodic_counter_reg[19]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[1] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2__0_n_14 ),
        .Q(periodic_counter_reg[1]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[2] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2__0_n_13 ),
        .Q(periodic_counter_reg[2]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[3] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2__0_n_12 ),
        .Q(periodic_counter_reg[3]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[4] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2__0_n_11 ),
        .Q(periodic_counter_reg[4]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[5] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2__0_n_10 ),
        .Q(periodic_counter_reg[5]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[6] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2__0_n_9 ),
        .Q(periodic_counter_reg[6]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[7] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[0]_i_2__0_n_8 ),
        .Q(periodic_counter_reg[7]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  FDRE \periodic_counter_reg[8] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__1_n_15 ),
        .Q(periodic_counter_reg[8]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  CARRY8 \periodic_counter_reg[8]_i_1__1 
       (.CI(\periodic_counter_reg[0]_i_2__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\periodic_counter_reg[8]_i_1__1_n_0 ,\periodic_counter_reg[8]_i_1__1_n_1 ,\periodic_counter_reg[8]_i_1__1_n_2 ,\periodic_counter_reg[8]_i_1__1_n_3 ,\periodic_counter_reg[8]_i_1__1_n_4 ,\periodic_counter_reg[8]_i_1__1_n_5 ,\periodic_counter_reg[8]_i_1__1_n_6 ,\periodic_counter_reg[8]_i_1__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\periodic_counter_reg[8]_i_1__1_n_8 ,\periodic_counter_reg[8]_i_1__1_n_9 ,\periodic_counter_reg[8]_i_1__1_n_10 ,\periodic_counter_reg[8]_i_1__1_n_11 ,\periodic_counter_reg[8]_i_1__1_n_12 ,\periodic_counter_reg[8]_i_1__1_n_13 ,\periodic_counter_reg[8]_i_1__1_n_14 ,\periodic_counter_reg[8]_i_1__1_n_15 }),
        .S(periodic_counter_reg[15:8]));
  FDRE \periodic_counter_reg[9] 
       (.C(ext_lhc_clk),
        .CE(periodic_counter),
        .D(\periodic_counter_reg[8]_i_1__1_n_14 ),
        .Q(periodic_counter_reg[9]),
        .R(\periodic_counter[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    req_periodic_i_1__1
       (.I0(reset_40),
        .I1(enable_l1agen_B),
        .I2(periodic_counter),
        .I3(periodic_counter0_carry_n_1),
        .O(req_periodic_i_1__1_n_0));
  FDRE req_periodic_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(req_periodic_i_1__1_n_0),
        .Q(req_periodic),
        .R(1'b0));
  tester_fastcontrol_axi_0_0_hgcal_fc_manager_bxtimed_12 timer_l1
       (.DI(DI),
        .Q(Q),
        .ext_lhc_clk(ext_lhc_clk),
        .fc_daqresync(fc_daqresync),
        .fc_internaltest(fc_internaltest),
        .fc_l1a(fc_l1a),
        .fc_l1a_for_calib(fc_l1a_for_calib),
        .fc_l1agen_A(fc_l1agen_A),
        .fc_linkreset(fc_linkreset),
        .fc_orbitcountreset(fc_orbitcountreset),
        .fire_reg_0(fc_l1agen_B),
        .fire_reg_1(fire_reg),
        .pending_reg_0(pending_reg),
        .req_periodic(req_periodic),
        .reset_40(reset_40),
        .\start_sequence_40_reg[11]_0 (periodic_counter0_carry_0[11:0]),
        .veto_l1agen_B(veto_l1agen_B));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_single_shot" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot
   (fc_daqresync,
    link_daq_resync,
    fire_reg_0,
    S,
    Q,
    ext_lhc_clk,
    reset_40,
    pending_reg_0,
    fc_l1a_for_calib,
    fc_l1agen_A,
    fc_l1agen_B,
    D);
  output fc_daqresync;
  output link_daq_resync;
  output fire_reg_0;
  output [0:0]S;
  input [0:0]Q;
  input ext_lhc_clk;
  input reset_40;
  input pending_reg_0;
  input fc_l1a_for_calib;
  input fc_l1agen_A;
  input fc_l1agen_B;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]S;
  wire ext_lhc_clk;
  wire fc_daqresync;
  wire fc_l1a_for_calib;
  wire fc_l1agen_A;
  wire fc_l1agen_B;
  wire fire_reg_0;
  wire link_daq_resync;
  wire pending_i_1__0_n_0;
  wire pending_reg_0;
  wire req_40;
  wire reset_40;
  wire was_req_40;
  wire will_fire;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDPE_re
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(Q),
        .PRE(Q),
        .Q(req_40));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cmd[3]_i_7 
       (.I0(fc_daqresync),
        .I1(fc_l1a_for_calib),
        .I2(fc_l1agen_A),
        .I3(fc_l1agen_B),
        .O(fire_reg_0));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2__0 
       (.I0(fc_daqresync),
        .I1(D),
        .O(S));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    fire_i_1__0
       (.I0(link_daq_resync),
        .I1(pending_reg_0),
        .O(will_fire));
  FDRE fire_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(will_fire),
        .Q(fc_daqresync),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h55001010)) 
    pending_i_1__0
       (.I0(reset_40),
        .I1(was_req_40),
        .I2(req_40),
        .I3(pending_reg_0),
        .I4(link_daq_resync),
        .O(pending_i_1__0_n_0));
  FDRE pending_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(pending_i_1__0_n_0),
        .Q(link_daq_resync),
        .R(1'b0));
  FDRE was_req_40_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(req_40),
        .Q(was_req_40),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_single_shot" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_10
   (fc_linkreset,
    link_reset_pending,
    S,
    Q,
    ext_lhc_clk,
    will_fire,
    reset_40,
    D);
  output fc_linkreset;
  output link_reset_pending;
  output [0:0]S;
  input [0:0]Q;
  input ext_lhc_clk;
  input will_fire;
  input reset_40;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]S;
  wire ext_lhc_clk;
  wire fc_linkreset;
  wire link_reset_pending;
  wire pending_i_1_n_0;
  wire req_40;
  wire reset_40;
  wire was_req_40;
  wire will_fire;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDPE_re
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(Q),
        .PRE(Q),
        .Q(req_40));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2__1 
       (.I0(fc_linkreset),
        .I1(D),
        .O(S));
  FDRE fire_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(will_fire),
        .Q(fc_linkreset),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00005510)) 
    pending_i_1
       (.I0(reset_40),
        .I1(was_req_40),
        .I2(req_40),
        .I3(link_reset_pending),
        .I4(will_fire),
        .O(pending_i_1_n_0));
  FDRE pending_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(pending_i_1_n_0),
        .Q(link_reset_pending),
        .R(1'b0));
  FDRE was_req_40_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(req_40),
        .Q(was_req_40),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_manager_single_shot" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_manager_single_shot_9
   (fc_internaltest,
    pending_reg_0,
    S,
    Q,
    ext_lhc_clk,
    will_fire,
    reset_40,
    link_daq_resync,
    pending_reg_1,
    D);
  output fc_internaltest;
  output pending_reg_0;
  output [0:0]S;
  input [0:0]Q;
  input ext_lhc_clk;
  input will_fire;
  input reset_40;
  input link_daq_resync;
  input pending_reg_1;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]Q;
  wire [0:0]S;
  wire ext_lhc_clk;
  wire fc_internaltest;
  wire link_daq_resync;
  wire pending_i_1__1_n_0;
  wire pending_reg_0;
  wire pending_reg_1;
  wire req_40;
  wire reset_40;
  wire was_req_40;
  wire will_fire;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    FDPE_re
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(Q),
        .PRE(Q),
        .Q(req_40));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2 
       (.I0(fc_internaltest),
        .I1(D),
        .O(S));
  FDRE fire_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(will_fire),
        .Q(fc_internaltest),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555101055001010)) 
    pending_i_1__1
       (.I0(reset_40),
        .I1(was_req_40),
        .I2(req_40),
        .I3(link_daq_resync),
        .I4(pending_reg_0),
        .I5(pending_reg_1),
        .O(pending_i_1__1_n_0));
  FDRE pending_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(pending_i_1__1_n_0),
        .Q(pending_reg_0),
        .R(1'b0));
  FDRE was_req_40_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(req_40),
        .Q(was_req_40),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hgcal_fc_simple_serializer" *) 
module tester_fastcontrol_axi_0_0_hgcal_fc_simple_serializer
   (fast_control_stream,
    Q,
    ext_lhc_clk,
    ext_lhc_clk_X8,
    fc_reset,
    enable_fc,
    \latch_fast_control_reg[1]_0 ,
    \latch_fast_control_reg[4]_0 ,
    \latch_fast_control_reg[3]_0 ,
    \latch_fast_control_reg[2]_0 ,
    \latch_fast_control_reg[1]_1 );
  output fast_control_stream;
  output [0:0]Q;
  input ext_lhc_clk;
  input ext_lhc_clk_X8;
  input fc_reset;
  input enable_fc;
  input \latch_fast_control_reg[1]_0 ;
  input \latch_fast_control_reg[4]_0 ;
  input \latch_fast_control_reg[3]_0 ;
  input \latch_fast_control_reg[2]_0 ;
  input \latch_fast_control_reg[1]_1 ;

  wire [0:0]Q;
  wire did_match;
  wire enable_fc;
  wire ext_lhc_clk;
  wire ext_lhc_clk_X8;
  wire fast_control_stream;
  wire fc_fast_i_i_1_n_0;
  wire fc_fast_i_i_2_n_0;
  wire fc_fast_i_i_3_n_0;
  wire fc_reset;
  wire fe_40;
  wire [4:0]latch_fast_control;
  wire \latch_fast_control[0]_i_1_n_0 ;
  wire \latch_fast_control_reg[1]_0 ;
  wire \latch_fast_control_reg[1]_1 ;
  wire \latch_fast_control_reg[2]_0 ;
  wire \latch_fast_control_reg[3]_0 ;
  wire \latch_fast_control_reg[4]_0 ;
  wire matches;
  wire matches_i_1_n_0;
  wire p_1_in;
  wire phase0;
  wire \phase_reg_n_0_[1] ;
  wire \phase_reg_n_0_[2] ;
  wire \phase_reg_n_0_[3] ;
  wire \phase_reg_n_0_[4] ;
  wire \phase_reg_n_0_[5] ;
  wire \phase_reg_n_0_[6] ;
  wire re_40;
  wire re_40_i_1_n_0;

  FDRE did_match_reg
       (.C(ext_lhc_clk_X8),
        .CE(1'b1),
        .D(matches),
        .Q(did_match),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    fc_fast_i_i_1
       (.I0(fc_fast_i_i_2_n_0),
        .I1(fc_fast_i_i_3_n_0),
        .I2(Q),
        .I3(latch_fast_control[0]),
        .O(fc_fast_i_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    fc_fast_i_i_2
       (.I0(p_1_in),
        .I1(enable_fc),
        .I2(latch_fast_control[0]),
        .I3(\phase_reg_n_0_[6] ),
        .I4(\phase_reg_n_0_[4] ),
        .I5(latch_fast_control[4]),
        .O(fc_fast_i_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    fc_fast_i_i_3
       (.I0(latch_fast_control[3]),
        .I1(\phase_reg_n_0_[3] ),
        .I2(latch_fast_control[2]),
        .I3(\phase_reg_n_0_[2] ),
        .I4(\phase_reg_n_0_[1] ),
        .I5(latch_fast_control[1]),
        .O(fc_fast_i_i_3_n_0));
  FDRE fc_fast_i_reg
       (.C(ext_lhc_clk_X8),
        .CE(1'b1),
        .D(fc_fast_i_i_1_n_0),
        .Q(fast_control_stream),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    fe_40_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(re_40),
        .Q(fe_40),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \latch_fast_control[0]_i_1 
       (.I0(enable_fc),
        .I1(Q),
        .I2(latch_fast_control[0]),
        .O(\latch_fast_control[0]_i_1_n_0 ));
  FDRE \latch_fast_control_reg[0] 
       (.C(ext_lhc_clk_X8),
        .CE(1'b1),
        .D(\latch_fast_control[0]_i_1_n_0 ),
        .Q(latch_fast_control[0]),
        .R(1'b0));
  FDRE \latch_fast_control_reg[1] 
       (.C(ext_lhc_clk_X8),
        .CE(Q),
        .D(\latch_fast_control_reg[1]_1 ),
        .Q(latch_fast_control[1]),
        .R(\latch_fast_control_reg[1]_0 ));
  FDRE \latch_fast_control_reg[2] 
       (.C(ext_lhc_clk_X8),
        .CE(Q),
        .D(\latch_fast_control_reg[2]_0 ),
        .Q(latch_fast_control[2]),
        .R(\latch_fast_control_reg[1]_0 ));
  FDRE \latch_fast_control_reg[3] 
       (.C(ext_lhc_clk_X8),
        .CE(Q),
        .D(\latch_fast_control_reg[3]_0 ),
        .Q(latch_fast_control[3]),
        .R(\latch_fast_control_reg[1]_0 ));
  FDRE \latch_fast_control_reg[4] 
       (.C(ext_lhc_clk_X8),
        .CE(Q),
        .D(\latch_fast_control_reg[4]_0 ),
        .Q(latch_fast_control[4]),
        .R(\latch_fast_control_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    matches_i_1
       (.I0(fe_40),
        .I1(re_40),
        .O(matches_i_1_n_0));
  FDRE matches_reg
       (.C(ext_lhc_clk_X8),
        .CE(1'b1),
        .D(matches_i_1_n_0),
        .Q(matches),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \phase[7]_i_1 
       (.I0(did_match),
        .I1(matches),
        .O(phase0));
  FDSE \phase_reg[0] 
       (.C(ext_lhc_clk_X8),
        .CE(1'b1),
        .D(\phase_reg_n_0_[1] ),
        .Q(Q),
        .S(phase0));
  FDRE \phase_reg[1] 
       (.C(ext_lhc_clk_X8),
        .CE(1'b1),
        .D(\phase_reg_n_0_[2] ),
        .Q(\phase_reg_n_0_[1] ),
        .R(phase0));
  FDRE \phase_reg[2] 
       (.C(ext_lhc_clk_X8),
        .CE(1'b1),
        .D(\phase_reg_n_0_[3] ),
        .Q(\phase_reg_n_0_[2] ),
        .R(phase0));
  FDRE \phase_reg[3] 
       (.C(ext_lhc_clk_X8),
        .CE(1'b1),
        .D(\phase_reg_n_0_[4] ),
        .Q(\phase_reg_n_0_[3] ),
        .R(phase0));
  FDRE \phase_reg[4] 
       (.C(ext_lhc_clk_X8),
        .CE(1'b1),
        .D(\phase_reg_n_0_[5] ),
        .Q(\phase_reg_n_0_[4] ),
        .R(phase0));
  FDRE \phase_reg[5] 
       (.C(ext_lhc_clk_X8),
        .CE(1'b1),
        .D(\phase_reg_n_0_[6] ),
        .Q(\phase_reg_n_0_[5] ),
        .R(phase0));
  FDRE \phase_reg[6] 
       (.C(ext_lhc_clk_X8),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\phase_reg_n_0_[6] ),
        .R(phase0));
  FDRE \phase_reg[7] 
       (.C(ext_lhc_clk_X8),
        .CE(1'b1),
        .D(Q),
        .Q(p_1_in),
        .R(phase0));
  LUT2 #(
    .INIT(4'h1)) 
    re_40_i_1
       (.I0(fc_reset),
        .I1(re_40),
        .O(re_40_i_1_n_0));
  FDRE re_40_reg
       (.C(ext_lhc_clk),
        .CE(1'b1),
        .D(re_40_i_1_n_0),
        .Q(re_40),
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
