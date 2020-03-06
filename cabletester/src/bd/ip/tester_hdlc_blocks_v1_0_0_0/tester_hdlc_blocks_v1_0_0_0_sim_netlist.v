// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct 29 14:12:53 2019
// Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_hdlc_blocks_v1_0_0_0/tester_hdlc_blocks_v1_0_0_0_sim_netlist.v
// Design      : tester_hdlc_blocks_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tester_hdlc_blocks_v1_0_0_0,hdlc_blocks_3rd_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "hdlc_blocks_3rd_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module tester_hdlc_blocks_v1_0_0_0
   (led_output,
    fmc_miso_p,
    fmc_miso_n,
    fmc_mosi_p,
    fmc_mosi_n,
    fmc_clk_p,
    fmc_clk_n,
    aux_i2c_enable,
    aux_link_disable,
    fmc_led3,
    fmc_led4,
    reset_b,
    link_clk,
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
  output [7:0]led_output;
  input fmc_miso_p;
  input fmc_miso_n;
  output fmc_mosi_p;
  output fmc_mosi_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fmc_clk_p CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fmc_clk_p, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN tester_hdlc_blocks_v1_0_0_0_fmc_clk_p, INSERT_VIP 0" *) output fmc_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fmc_clk_n CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fmc_clk_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN tester_hdlc_blocks_v1_0_0_0_fmc_clk_n, INSERT_VIP 0" *) output fmc_clk_n;
  output aux_i2c_enable;
  output aux_link_disable;
  output fmc_led3;
  output fmc_led4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_b RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_b, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output reset_b;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 link_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME link_clk, FREQ_HZ 80000000, PHASE 0.0, CLK_DOMAIN tester_clk_wiz_0_0_clk_320, INSERT_VIP 0" *) input link_clk;
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
  wire \<const1> ;
  (* SLEW = "SLOW" *) wire fmc_clk_n;
  (* SLEW = "SLOW" *) wire fmc_clk_p;
  (* IBUF_LOW_PWR *) wire fmc_miso_n;
  (* IBUF_LOW_PWR *) wire fmc_miso_p;
  (* SLEW = "SLOW" *) wire fmc_mosi_n;
  (* SLEW = "SLOW" *) wire fmc_mosi_p;
  wire link_clk;
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
  wire [15:0]\^s00_axi_rdata ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign aux_i2c_enable = \<const0> ;
  assign aux_link_disable = \<const0> ;
  assign fmc_led3 = \<const0> ;
  assign fmc_led4 = \<const1> ;
  assign led_output[7] = \<const0> ;
  assign led_output[6] = \<const1> ;
  assign led_output[5] = \<const0> ;
  assign led_output[4] = \<const1> ;
  assign led_output[3] = \<const0> ;
  assign led_output[2] = \<const1> ;
  assign led_output[1] = \<const0> ;
  assign led_output[0] = \<const1> ;
  assign reset_b = s00_axi_aresetn;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \<const0> ;
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \<const0> ;
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \<const0> ;
  assign s00_axi_rdata[24] = \<const0> ;
  assign s00_axi_rdata[23] = \<const0> ;
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \<const0> ;
  assign s00_axi_rdata[20] = \<const0> ;
  assign s00_axi_rdata[19] = \<const0> ;
  assign s00_axi_rdata[18] = \<const0> ;
  assign s00_axi_rdata[17] = \<const0> ;
  assign s00_axi_rdata[16] = \<const0> ;
  assign s00_axi_rdata[15:0] = \^s00_axi_rdata [15:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s00_axi_wready = s00_axi_awready;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0 inst
       (.fmc_clk_n(fmc_clk_n),
        .fmc_clk_p(fmc_clk_p),
        .fmc_miso_n(fmc_miso_n),
        .fmc_miso_p(fmc_miso_p),
        .fmc_mosi_n(fmc_mosi_n),
        .fmc_mosi_p(fmc_mosi_p),
        .link_clk(link_clk),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(\^s00_axi_rdata ),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[15:0]),
        .s00_axi_wstrb(s00_axi_wstrb[1:0]),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "hdlc_blocks_3rd_v1_0" *) 
module tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0
   (fmc_mosi_p,
    fmc_mosi_n,
    fmc_clk_p,
    fmc_clk_n,
    s00_axi_awready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    link_clk,
    s00_axi_wdata,
    fmc_miso_p,
    fmc_miso_n,
    s00_axi_wstrb,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_bready,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn);
  output fmc_mosi_p;
  output fmc_mosi_n;
  output fmc_clk_p;
  output fmc_clk_n;
  output s00_axi_awready;
  output s00_axi_arready;
  output [15:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input link_clk;
  input [15:0]s00_axi_wdata;
  input fmc_miso_p;
  input fmc_miso_n;
  input [1:0]s00_axi_wstrb;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input s00_axi_bready;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_araddr;
  input s00_axi_aresetn;

  wire fmc_clk_n;
  wire fmc_clk_p;
  wire fmc_miso_n;
  wire fmc_miso_p;
  wire fmc_mosi_n;
  wire fmc_mosi_p;
  wire link_clk;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [15:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [15:0]s00_axi_wdata;
  wire [1:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0_S00_AXI hdlc_blocks_3rd_v1_0_S00_AXI_inst
       (.fmc_clk_n(fmc_clk_n),
        .fmc_clk_p(fmc_clk_p),
        .fmc_miso_n(fmc_miso_n),
        .fmc_miso_p(fmc_miso_p),
        .fmc_mosi_n(fmc_mosi_n),
        .fmc_mosi_p(fmc_mosi_p),
        .link_clk(link_clk),
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

(* ORIG_REF_NAME = "hdlc_blocks_3rd_v1_0_S00_AXI" *) 
module tester_hdlc_blocks_v1_0_0_0_hdlc_blocks_3rd_v1_0_S00_AXI
   (fmc_mosi_p,
    fmc_mosi_n,
    fmc_clk_p,
    fmc_clk_n,
    s00_axi_awready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    link_clk,
    s00_axi_wdata,
    fmc_miso_p,
    fmc_miso_n,
    s00_axi_wstrb,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_bready,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn);
  output fmc_mosi_p;
  output fmc_mosi_n;
  output fmc_clk_p;
  output fmc_clk_n;
  output s00_axi_awready;
  output s00_axi_arready;
  output [15:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input link_clk;
  input [15:0]s00_axi_wdata;
  input fmc_miso_p;
  input fmc_miso_n;
  input [1:0]s00_axi_wstrb;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input s00_axi_bready;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_araddr;
  input s00_axi_aresetn;

  wire \FSM_onehot_axi_state[0]_i_1_n_0 ;
  wire \FSM_onehot_axi_state[1]_i_1_n_0 ;
  wire \FSM_onehot_axi_state[1]_i_2_n_0 ;
  wire \FSM_onehot_axi_state[3]_i_1_n_0 ;
  wire \FSM_onehot_axi_state[4]_i_1_n_0 ;
  wire \FSM_onehot_axi_state[5]_i_1_n_0 ;
  wire \FSM_onehot_axi_state[7]_i_1_n_0 ;
  wire \FSM_onehot_axi_state_reg_n_0_[0] ;
  wire \FSM_onehot_axi_state_reg_n_0_[2] ;
  wire \FSM_onehot_axi_state_reg_n_0_[3] ;
  wire \FSM_onehot_axi_state_reg_n_0_[4] ;
  wire \FSM_onehot_axi_state_reg_n_0_[5] ;
  wire \FSM_onehot_axi_state_reg_n_0_[6] ;
  wire axi_arready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_rdata0;
  wire axi_rvalid0;
  wire axi_wready0;
  wire cap_miso;
  wire clk_40_reg_i_1_n_0;
  wire dly1_miso;
  wire fmc_clk_n;
  wire fmc_clk_p;
  wire fmc_miso_n;
  wire fmc_miso_p;
  wire fmc_mosi_n;
  wire fmc_mosi_p;
  wire [15:0]hdlc_Output;
  wire [3:0]hdlc_addr;
  wire \hdlc_addr[0]_i_1_n_0 ;
  wire \hdlc_addr[1]_i_1_n_0 ;
  wire \hdlc_addr[2]_i_1_n_0 ;
  wire \hdlc_addr[3]_i_1_n_0 ;
  wire \hdlc_addr[3]_i_2_n_0 ;
  wire hdlc_reset;
  wire link_clk;
  wire p_0_in_0;
  wire p_1_in0_in;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [15:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [15:0]s00_axi_wdata;
  wire [1:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire serout;
  wire tmp_clk;
  wire tmp_miso;
  wire tmp_mosi;

  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_axi_state[0]_i_1 
       (.I0(s00_axi_bready),
        .I1(\FSM_onehot_axi_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_axi_state_reg_n_0_[2] ),
        .O(\FSM_onehot_axi_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAABA)) 
    \FSM_onehot_axi_state[1]_i_1 
       (.I0(\FSM_onehot_axi_state[1]_i_2_n_0 ),
        .I1(s00_axi_arvalid),
        .I2(p_0_in_0),
        .I3(s00_axi_awvalid),
        .O(\FSM_onehot_axi_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_axi_state[1]_i_2 
       (.I0(s00_axi_bready),
        .I1(\FSM_onehot_axi_state_reg_n_0_[0] ),
        .I2(s00_axi_rready),
        .I3(\FSM_onehot_axi_state_reg_n_0_[5] ),
        .O(\FSM_onehot_axi_state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_axi_state[3]_i_1 
       (.I0(\FSM_onehot_axi_state_reg_n_0_[4] ),
        .I1(s00_axi_wvalid),
        .O(\FSM_onehot_axi_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \FSM_onehot_axi_state[4]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(p_0_in_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(\FSM_onehot_axi_state_reg_n_0_[4] ),
        .O(\FSM_onehot_axi_state[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_axi_state[5]_i_1 
       (.I0(s00_axi_rready),
        .I1(\FSM_onehot_axi_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_axi_state_reg_n_0_[6] ),
        .O(\FSM_onehot_axi_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_axi_state[7]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(p_0_in_0),
        .O(\FSM_onehot_axi_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_axi_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_axi_state_reg_n_0_[0] ),
        .R(axi_bvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_axi_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_axi_state[1]_i_1_n_0 ),
        .Q(p_0_in_0),
        .S(axi_bvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_axi_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_axi_state_reg_n_0_[2] ),
        .R(axi_bvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_axi_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_axi_state_reg_n_0_[3] ),
        .R(axi_bvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_axi_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_axi_state_reg_n_0_[4] ),
        .R(axi_bvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_axi_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_axi_state_reg_n_0_[5] ),
        .R(axi_bvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in0_in),
        .Q(\FSM_onehot_axi_state_reg_n_0_[6] ),
        .R(axi_bvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "STATE_WAIT_R:01000000,STATE_WAIT_W:00000100,STATE_LATCH_R:10000000,STATE_DONE_R:00100000,STATE_LATCH_W:00010000,STATE_DO_W:00001000,STATE_DONE_W:00000001,STATE_IDLE:00000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_axi_state[7]_i_1_n_0 ),
        .Q(p_1_in0_in),
        .R(axi_bvalid_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_mi
       (.I(fmc_miso_p),
        .IB(fmc_miso_n),
        .O(tmp_miso));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_clk
       (.I(tmp_clk),
        .O(fmc_clk_p),
        .OB(fmc_clk_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_mosi
       (.I(tmp_mosi),
        .O(fmc_mosi_p),
        .OB(fmc_mosi_n));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hCCC8)) 
    axi_arready_i_1
       (.I0(p_1_in0_in),
        .I1(s00_axi_arvalid),
        .I2(\FSM_onehot_axi_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_axi_state_reg_n_0_[5] ),
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
    .INIT(4'hE)) 
    \axi_rdata[15]_i_1 
       (.I0(\FSM_onehot_axi_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_axi_state_reg_n_0_[5] ),
        .O(axi_rdata0));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_bvalid_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata0),
        .D(hdlc_Output[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
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
    .INIT(16'hE000)) 
    axi_wready_i_1
       (.I0(\FSM_onehot_axi_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_axi_state_reg_n_0_[0] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_awready),
        .R(1'b0));
  FDRE cap_miso_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(tmp_miso),
        .Q(cap_miso),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    clk_40_reg_i_1
       (.I0(tmp_clk),
        .O(clk_40_reg_i_1_n_0));
  FDRE clk_40_reg_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(clk_40_reg_i_1_n_0),
        .Q(tmp_clk),
        .R(1'b0));
  FDRE dly1_miso_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(cap_miso),
        .Q(dly1_miso),
        .R(1'b0));
  FDRE dly_mosi_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(serout),
        .Q(tmp_mosi),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \hdlc_addr[0]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_araddr[0]),
        .O(\hdlc_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \hdlc_addr[1]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_araddr[1]),
        .O(\hdlc_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \hdlc_addr[2]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_araddr[2]),
        .O(\hdlc_addr[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \hdlc_addr[3]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_arvalid),
        .I2(p_0_in_0),
        .O(\hdlc_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \hdlc_addr[3]_i_2 
       (.I0(s00_axi_awaddr[3]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_araddr[3]),
        .O(\hdlc_addr[3]_i_2_n_0 ));
  FDRE \hdlc_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\hdlc_addr[3]_i_1_n_0 ),
        .D(\hdlc_addr[0]_i_1_n_0 ),
        .Q(hdlc_addr[0]),
        .R(1'b0));
  FDRE \hdlc_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\hdlc_addr[3]_i_1_n_0 ),
        .D(\hdlc_addr[1]_i_1_n_0 ),
        .Q(hdlc_addr[1]),
        .R(1'b0));
  FDRE \hdlc_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\hdlc_addr[3]_i_1_n_0 ),
        .D(\hdlc_addr[2]_i_1_n_0 ),
        .Q(hdlc_addr[2]),
        .R(1'b0));
  FDRE \hdlc_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\hdlc_addr[3]_i_1_n_0 ),
        .D(\hdlc_addr[3]_i_2_n_0 ),
        .Q(hdlc_addr[3]),
        .R(1'b0));
  FDSE hdlc_reset_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(hdlc_reset),
        .S(axi_bvalid_i_1_n_0));
  tester_hdlc_blocks_v1_0_0_0_hdlc_top hdlc_wrapper
       (.D(hdlc_Output),
        .Q(hdlc_addr),
        .buffer_reg_bram_0(\FSM_onehot_axi_state_reg_n_0_[3] ),
        .hdlc_reset(hdlc_reset),
        .link_clk(link_clk),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .serout(serout),
        .\sr_in_reg[8] (dly1_miso));
endmodule

(* ORIG_REF_NAME = "hdlc_crc" *) 
module tester_hdlc_blocks_v1_0_0_0_hdlc_crc
   (D,
    crc_out,
    \FSM_onehot_state_reg[7] ,
    \lfsr_q_reg[7]_0 ,
    \srOutWord_reg[10] ,
    Q,
    DOUTBDOUT,
    \srOutWord_reg[9] ,
    \srOutWord_reg[12] ,
    \srOutWord_reg[15] ,
    E,
    link_clk,
    AS,
    \lfsr_q_reg[0]_0 );
  output [12:0]D;
  output [0:0]crc_out;
  output \FSM_onehot_state_reg[7] ;
  output \lfsr_q_reg[7]_0 ;
  input \srOutWord_reg[10] ;
  input [6:0]Q;
  input [12:0]DOUTBDOUT;
  input \srOutWord_reg[9] ;
  input \srOutWord_reg[12] ;
  input [0:0]\srOutWord_reg[15] ;
  input [0:0]E;
  input link_clk;
  input [0:0]AS;
  input [15:0]\lfsr_q_reg[0]_0 ;

  wire [0:0]AS;
  wire [12:0]D;
  wire [12:0]DOUTBDOUT;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[7] ;
  wire [6:0]Q;
  wire [15:1]crc_fcs;
  wire [0:0]crc_out;
  wire [15:0]lfsr_c;
  wire \lfsr_q[10]_i_2_n_0 ;
  wire \lfsr_q[11]_i_2_n_0 ;
  wire \lfsr_q[12]_i_2_n_0 ;
  wire \lfsr_q[13]_i_2_n_0 ;
  wire \lfsr_q[13]_i_3_n_0 ;
  wire \lfsr_q[14]_i_2_n_0 ;
  wire \lfsr_q[14]_i_3_n_0 ;
  wire \lfsr_q[15]_i_2_n_0 ;
  wire \lfsr_q[8]_i_2_n_0 ;
  wire \lfsr_q[8]_i_3_n_0 ;
  wire \lfsr_q[8]_i_4_n_0 ;
  wire \lfsr_q[8]_i_5_n_0 ;
  wire \lfsr_q[9]_i_2_n_0 ;
  wire \lfsr_q[9]_i_3_n_0 ;
  wire [15:0]\lfsr_q_reg[0]_0 ;
  wire \lfsr_q_reg[7]_0 ;
  wire link_clk;
  wire \srOutWord_reg[10] ;
  wire \srOutWord_reg[12] ;
  wire [0:0]\srOutWord_reg[15] ;
  wire \srOutWord_reg[9] ;

  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[0]_i_1 
       (.I0(crc_fcs[4]),
        .I1(\lfsr_q_reg[0]_0 [4]),
        .I2(crc_fcs[15]),
        .I3(\lfsr_q_reg[0]_0 [15]),
        .I4(\lfsr_q[9]_i_3_n_0 ),
        .O(lfsr_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[10]_i_1 
       (.I0(\lfsr_q[10]_i_2_n_0 ),
        .I1(\lfsr_q_reg[0]_0 [5]),
        .I2(crc_fcs[5]),
        .I3(crc_fcs[1]),
        .I4(\lfsr_q_reg[0]_0 [1]),
        .O(lfsr_c[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[10]_i_2 
       (.I0(crc_fcs[2]),
        .I1(\lfsr_q_reg[0]_0 [2]),
        .I2(crc_fcs[6]),
        .I3(\lfsr_q_reg[0]_0 [6]),
        .I4(\lfsr_q_reg[0]_0 [10]),
        .I5(crc_fcs[10]),
        .O(\lfsr_q[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[11]_i_1 
       (.I0(crc_fcs[4]),
        .I1(\lfsr_q_reg[0]_0 [4]),
        .I2(crc_out),
        .I3(\lfsr_q_reg[0]_0 [0]),
        .I4(\lfsr_q[11]_i_2_n_0 ),
        .O(lfsr_c[11]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[11]_i_2 
       (.I0(\lfsr_q_reg[0]_0 [5]),
        .I1(crc_fcs[5]),
        .I2(crc_fcs[1]),
        .I3(\lfsr_q_reg[0]_0 [1]),
        .I4(crc_fcs[9]),
        .I5(\lfsr_q_reg[0]_0 [9]),
        .O(\lfsr_q[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[12]_i_1 
       (.I0(\lfsr_q[12]_i_2_n_0 ),
        .I1(\lfsr_q_reg[0]_0 [8]),
        .I2(crc_fcs[8]),
        .I3(\lfsr_q_reg[0]_0 [11]),
        .I4(crc_fcs[11]),
        .O(lfsr_c[12]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[12]_i_2 
       (.I0(\lfsr_q_reg[0]_0 [15]),
        .I1(crc_fcs[15]),
        .I2(crc_out),
        .I3(\lfsr_q_reg[0]_0 [0]),
        .I4(crc_fcs[7]),
        .I5(\lfsr_q_reg[0]_0 [7]),
        .O(\lfsr_q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[13]_i_1 
       (.I0(\lfsr_q[13]_i_2_n_0 ),
        .I1(crc_fcs[7]),
        .I2(\lfsr_q_reg[0]_0 [7]),
        .I3(crc_fcs[10]),
        .I4(\lfsr_q_reg[0]_0 [10]),
        .I5(\lfsr_q[13]_i_3_n_0 ),
        .O(lfsr_c[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[13]_i_2 
       (.I0(crc_fcs[6]),
        .I1(\lfsr_q_reg[0]_0 [6]),
        .O(\lfsr_q[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[13]_i_3 
       (.I0(crc_fcs[14]),
        .I1(\lfsr_q_reg[0]_0 [14]),
        .O(\lfsr_q[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[14]_i_1 
       (.I0(\lfsr_q[14]_i_2_n_0 ),
        .I1(crc_fcs[6]),
        .I2(\lfsr_q_reg[0]_0 [6]),
        .I3(\lfsr_q_reg[0]_0 [9]),
        .I4(crc_fcs[9]),
        .I5(\lfsr_q[14]_i_3_n_0 ),
        .O(lfsr_c[14]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[14]_i_2 
       (.I0(\lfsr_q_reg[0]_0 [5]),
        .I1(crc_fcs[5]),
        .O(\lfsr_q[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[14]_i_3 
       (.I0(crc_fcs[13]),
        .I1(\lfsr_q_reg[0]_0 [13]),
        .O(\lfsr_q[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[15]_i_1 
       (.I0(\lfsr_q_reg[0]_0 [5]),
        .I1(crc_fcs[5]),
        .I2(\lfsr_q_reg[0]_0 [12]),
        .I3(crc_fcs[12]),
        .I4(\lfsr_q[15]_i_2_n_0 ),
        .O(lfsr_c[15]));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[15]_i_2 
       (.I0(crc_fcs[8]),
        .I1(\lfsr_q_reg[0]_0 [8]),
        .I2(\lfsr_q_reg[0]_0 [4]),
        .I3(crc_fcs[4]),
        .O(\lfsr_q[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[1]_i_1 
       (.I0(crc_fcs[3]),
        .I1(\lfsr_q_reg[0]_0 [3]),
        .I2(crc_fcs[14]),
        .I3(\lfsr_q_reg[0]_0 [14]),
        .I4(\lfsr_q[10]_i_2_n_0 ),
        .O(lfsr_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[2]_i_1 
       (.I0(crc_fcs[2]),
        .I1(\lfsr_q_reg[0]_0 [2]),
        .I2(crc_fcs[13]),
        .I3(\lfsr_q_reg[0]_0 [13]),
        .I4(\lfsr_q[11]_i_2_n_0 ),
        .O(lfsr_c[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[3]_i_1 
       (.I0(\lfsr_q_reg[0]_0 [12]),
        .I1(crc_fcs[12]),
        .I2(crc_fcs[1]),
        .I3(\lfsr_q_reg[0]_0 [1]),
        .I4(\lfsr_q[8]_i_5_n_0 ),
        .O(lfsr_c[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[4]_i_1 
       (.I0(\lfsr_q[9]_i_3_n_0 ),
        .I1(\lfsr_q_reg[0]_0 [0]),
        .I2(crc_out),
        .O(lfsr_c[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[5]_i_1 
       (.I0(crc_fcs[4]),
        .I1(\lfsr_q_reg[0]_0 [4]),
        .I2(\lfsr_q[10]_i_2_n_0 ),
        .I3(\lfsr_q[9]_i_3_n_0 ),
        .I4(crc_fcs[15]),
        .I5(\lfsr_q_reg[0]_0 [15]),
        .O(lfsr_c[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[6]_i_1 
       (.I0(crc_fcs[3]),
        .I1(\lfsr_q_reg[0]_0 [3]),
        .I2(\lfsr_q[10]_i_2_n_0 ),
        .I3(\lfsr_q[11]_i_2_n_0 ),
        .I4(crc_fcs[14]),
        .I5(\lfsr_q_reg[0]_0 [14]),
        .O(lfsr_c[6]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[7]_i_1 
       (.I0(crc_fcs[2]),
        .I1(\lfsr_q_reg[0]_0 [2]),
        .I2(\lfsr_q[11]_i_2_n_0 ),
        .I3(crc_fcs[13]),
        .I4(\lfsr_q_reg[0]_0 [13]),
        .I5(\lfsr_q[8]_i_5_n_0 ),
        .O(lfsr_c[7]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[8]_i_1 
       (.I0(\lfsr_q[8]_i_2_n_0 ),
        .I1(\lfsr_q_reg[0]_0 [7]),
        .I2(crc_fcs[7]),
        .I3(\lfsr_q[8]_i_3_n_0 ),
        .I4(\lfsr_q[8]_i_4_n_0 ),
        .I5(\lfsr_q[8]_i_5_n_0 ),
        .O(lfsr_c[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[8]_i_2 
       (.I0(crc_fcs[1]),
        .I1(\lfsr_q_reg[0]_0 [1]),
        .O(\lfsr_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[8]_i_3 
       (.I0(crc_fcs[3]),
        .I1(\lfsr_q_reg[0]_0 [3]),
        .O(\lfsr_q[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[8]_i_4 
       (.I0(\lfsr_q_reg[0]_0 [12]),
        .I1(crc_fcs[12]),
        .O(\lfsr_q[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[8]_i_5 
       (.I0(crc_fcs[4]),
        .I1(\lfsr_q_reg[0]_0 [4]),
        .I2(\lfsr_q_reg[0]_0 [8]),
        .I3(crc_fcs[8]),
        .I4(\lfsr_q_reg[0]_0 [0]),
        .I5(crc_out),
        .O(\lfsr_q[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[9]_i_1 
       (.I0(\lfsr_q[9]_i_2_n_0 ),
        .I1(\lfsr_q_reg[0]_0 [6]),
        .I2(crc_fcs[6]),
        .I3(\lfsr_q_reg[0]_0 [2]),
        .I4(crc_fcs[2]),
        .I5(\lfsr_q[9]_i_3_n_0 ),
        .O(lfsr_c[9]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[9]_i_2 
       (.I0(crc_out),
        .I1(\lfsr_q_reg[0]_0 [0]),
        .O(\lfsr_q[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[9]_i_3 
       (.I0(crc_fcs[3]),
        .I1(\lfsr_q_reg[0]_0 [3]),
        .I2(crc_fcs[7]),
        .I3(\lfsr_q_reg[0]_0 [7]),
        .I4(crc_fcs[11]),
        .I5(\lfsr_q_reg[0]_0 [11]),
        .O(\lfsr_q[9]_i_3_n_0 ));
  FDPE \lfsr_q_reg[0] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[0]),
        .PRE(AS),
        .Q(crc_fcs[15]));
  FDPE \lfsr_q_reg[10] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[10]),
        .PRE(AS),
        .Q(crc_fcs[5]));
  FDPE \lfsr_q_reg[11] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[11]),
        .PRE(AS),
        .Q(crc_fcs[4]));
  FDPE \lfsr_q_reg[12] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[12]),
        .PRE(AS),
        .Q(crc_fcs[3]));
  FDPE \lfsr_q_reg[13] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[13]),
        .PRE(AS),
        .Q(crc_fcs[2]));
  FDPE \lfsr_q_reg[14] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[14]),
        .PRE(AS),
        .Q(crc_fcs[1]));
  FDPE \lfsr_q_reg[15] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[15]),
        .PRE(AS),
        .Q(crc_out));
  FDPE \lfsr_q_reg[1] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[1]),
        .PRE(AS),
        .Q(crc_fcs[14]));
  FDPE \lfsr_q_reg[2] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[2]),
        .PRE(AS),
        .Q(crc_fcs[13]));
  FDPE \lfsr_q_reg[3] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[3]),
        .PRE(AS),
        .Q(crc_fcs[12]));
  FDPE \lfsr_q_reg[4] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[4]),
        .PRE(AS),
        .Q(crc_fcs[11]));
  FDPE \lfsr_q_reg[5] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[5]),
        .PRE(AS),
        .Q(crc_fcs[10]));
  FDPE \lfsr_q_reg[6] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[6]),
        .PRE(AS),
        .Q(crc_fcs[9]));
  FDPE \lfsr_q_reg[7] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[7]),
        .PRE(AS),
        .Q(crc_fcs[8]));
  FDPE \lfsr_q_reg[8] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[8]),
        .PRE(AS),
        .Q(crc_fcs[7]));
  FDPE \lfsr_q_reg[9] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[9]),
        .PRE(AS),
        .Q(crc_fcs[6]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \srOutWord[10]_i_1 
       (.I0(\srOutWord_reg[10] ),
        .I1(crc_fcs[10]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(DOUTBDOUT[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \srOutWord[11]_i_2 
       (.I0(Q[5]),
        .I1(crc_fcs[11]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[0]),
        .O(\FSM_onehot_state_reg[7] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \srOutWord[12]_i_1 
       (.I0(\srOutWord_reg[12] ),
        .I1(crc_fcs[12]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(DOUTBDOUT[9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \srOutWord[13]_i_1 
       (.I0(\srOutWord_reg[9] ),
        .I1(crc_fcs[13]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(DOUTBDOUT[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \srOutWord[14]_i_1 
       (.I0(\srOutWord_reg[10] ),
        .I1(crc_fcs[14]),
        .I2(Q[5]),
        .I3(DOUTBDOUT[11]),
        .I4(Q[1]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \srOutWord[15]_i_2 
       (.I0(Q[2]),
        .I1(\srOutWord_reg[15] ),
        .I2(Q[5]),
        .I3(crc_fcs[15]),
        .I4(DOUTBDOUT[12]),
        .I5(Q[1]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \srOutWord[1]_i_1 
       (.I0(\srOutWord_reg[12] ),
        .I1(crc_fcs[1]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(DOUTBDOUT[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \srOutWord[2]_i_1 
       (.I0(\srOutWord_reg[12] ),
        .I1(crc_fcs[2]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(DOUTBDOUT[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \srOutWord[3]_i_1 
       (.I0(\srOutWord_reg[12] ),
        .I1(crc_fcs[3]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(DOUTBDOUT[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \srOutWord[4]_i_1 
       (.I0(\srOutWord_reg[12] ),
        .I1(crc_fcs[4]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(DOUTBDOUT[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \srOutWord[5]_i_1 
       (.I0(\srOutWord_reg[12] ),
        .I1(crc_fcs[5]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(DOUTBDOUT[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \srOutWord[6]_i_1 
       (.I0(\srOutWord_reg[12] ),
        .I1(crc_fcs[6]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(DOUTBDOUT[5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \srOutWord[7]_i_1 
       (.I0(crc_fcs[7]),
        .I1(Q[5]),
        .I2(DOUTBDOUT[6]),
        .I3(Q[1]),
        .O(D[6]));
  LUT3 #(
    .INIT(8'hF8)) 
    \srOutWord[8]_i_2 
       (.I0(crc_fcs[8]),
        .I1(Q[5]),
        .I2(Q[3]),
        .O(\lfsr_q_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \srOutWord[9]_i_1 
       (.I0(\srOutWord_reg[9] ),
        .I1(crc_fcs[9]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(DOUTBDOUT[7]),
        .O(D[7]));
endmodule

(* ORIG_REF_NAME = "hdlc_crc" *) 
module tester_hdlc_blocks_v1_0_0_0_hdlc_crc_1
   (AS,
    \lfsr_q_reg[15]_0 ,
    \lfsr_q_reg[2]_0 ,
    Q,
    D,
    \lfsr_q_reg[0]_0 ,
    \lfsr_q_reg[7]_0 ,
    \lfsr_q_reg[8]_0 ,
    E,
    link_clk);
  output [0:0]AS;
  output [15:0]\lfsr_q_reg[15]_0 ;
  output \lfsr_q_reg[2]_0 ;
  input [2:0]Q;
  input [3:0]D;
  input [14:0]\lfsr_q_reg[0]_0 ;
  input \lfsr_q_reg[7]_0 ;
  input \lfsr_q_reg[8]_0 ;
  input [0:0]E;
  input link_clk;

  wire [0:0]AS;
  wire [3:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [15:0]lfsr_c;
  wire \lfsr_q[10]_i_2__0_n_0 ;
  wire \lfsr_q[13]_i_2__0_n_0 ;
  wire \lfsr_q[13]_i_3__0_n_0 ;
  wire \lfsr_q[15]_i_3_n_0 ;
  wire \lfsr_q[8]_i_2__0_n_0 ;
  wire \lfsr_q[8]_i_3__0_n_0 ;
  wire \lfsr_q[8]_i_5__0_n_0 ;
  wire \lfsr_q[9]_i_2__0_n_0 ;
  wire \lfsr_q[9]_i_3__0_n_0 ;
  wire [14:0]\lfsr_q_reg[0]_0 ;
  wire [15:0]\lfsr_q_reg[15]_0 ;
  wire \lfsr_q_reg[2]_0 ;
  wire \lfsr_q_reg[7]_0 ;
  wire \lfsr_q_reg[8]_0 ;
  wire link_clk;

  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[0]_i_1__0 
       (.I0(\lfsr_q_reg[15]_0 [11]),
        .I1(\lfsr_q_reg[0]_0 [4]),
        .I2(\lfsr_q_reg[15]_0 [0]),
        .I3(\lfsr_q_reg[0]_0 [14]),
        .I4(\lfsr_q[9]_i_3__0_n_0 ),
        .O(lfsr_c[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[10]_i_1__0 
       (.I0(\lfsr_q[10]_i_2__0_n_0 ),
        .I1(\lfsr_q_reg[0]_0 [5]),
        .I2(\lfsr_q_reg[15]_0 [10]),
        .I3(\lfsr_q_reg[15]_0 [14]),
        .I4(\lfsr_q_reg[0]_0 [1]),
        .O(lfsr_c[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[10]_i_2__0 
       (.I0(\lfsr_q_reg[15]_0 [13]),
        .I1(\lfsr_q_reg[0]_0 [2]),
        .I2(\lfsr_q_reg[15]_0 [9]),
        .I3(\lfsr_q_reg[0]_0 [6]),
        .I4(\lfsr_q_reg[0]_0 [9]),
        .I5(\lfsr_q_reg[15]_0 [5]),
        .O(\lfsr_q[10]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[13]_i_1__0 
       (.I0(\lfsr_q[13]_i_2__0_n_0 ),
        .I1(\lfsr_q_reg[15]_0 [8]),
        .I2(\lfsr_q_reg[0]_0 [7]),
        .I3(\lfsr_q_reg[15]_0 [5]),
        .I4(\lfsr_q_reg[0]_0 [9]),
        .I5(\lfsr_q[13]_i_3__0_n_0 ),
        .O(lfsr_c[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[13]_i_2__0 
       (.I0(\lfsr_q_reg[15]_0 [9]),
        .I1(\lfsr_q_reg[0]_0 [6]),
        .O(\lfsr_q[13]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[13]_i_3__0 
       (.I0(\lfsr_q_reg[15]_0 [1]),
        .I1(\lfsr_q_reg[0]_0 [13]),
        .O(\lfsr_q[13]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[14]_i_3__0 
       (.I0(\lfsr_q_reg[15]_0 [2]),
        .I1(\lfsr_q_reg[0]_0 [12]),
        .O(\lfsr_q_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[15]_i_1__0 
       (.I0(\lfsr_q_reg[0]_0 [5]),
        .I1(\lfsr_q_reg[15]_0 [10]),
        .I2(\lfsr_q_reg[0]_0 [11]),
        .I3(\lfsr_q_reg[15]_0 [3]),
        .I4(\lfsr_q[15]_i_3_n_0 ),
        .O(lfsr_c[15]));
  LUT3 #(
    .INIT(8'h01)) 
    \lfsr_q[15]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(AS));
  LUT4 #(
    .INIT(16'h6996)) 
    \lfsr_q[15]_i_3 
       (.I0(\lfsr_q_reg[15]_0 [7]),
        .I1(\lfsr_q_reg[0]_0 [8]),
        .I2(\lfsr_q_reg[0]_0 [4]),
        .I3(\lfsr_q_reg[15]_0 [11]),
        .O(\lfsr_q[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[1]_i_1__0 
       (.I0(\lfsr_q_reg[15]_0 [12]),
        .I1(\lfsr_q_reg[0]_0 [3]),
        .I2(\lfsr_q_reg[15]_0 [1]),
        .I3(\lfsr_q_reg[0]_0 [13]),
        .I4(\lfsr_q[10]_i_2__0_n_0 ),
        .O(lfsr_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[3]_i_1__0 
       (.I0(\lfsr_q_reg[0]_0 [11]),
        .I1(\lfsr_q_reg[15]_0 [3]),
        .I2(\lfsr_q_reg[15]_0 [14]),
        .I3(\lfsr_q_reg[0]_0 [1]),
        .I4(\lfsr_q[8]_i_5__0_n_0 ),
        .O(lfsr_c[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \lfsr_q[4]_i_1__0 
       (.I0(\lfsr_q[9]_i_3__0_n_0 ),
        .I1(\lfsr_q_reg[0]_0 [0]),
        .I2(\lfsr_q_reg[15]_0 [15]),
        .O(lfsr_c[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[5]_i_1__0 
       (.I0(\lfsr_q_reg[15]_0 [11]),
        .I1(\lfsr_q_reg[0]_0 [4]),
        .I2(\lfsr_q[10]_i_2__0_n_0 ),
        .I3(\lfsr_q[9]_i_3__0_n_0 ),
        .I4(\lfsr_q_reg[15]_0 [0]),
        .I5(\lfsr_q_reg[0]_0 [14]),
        .O(lfsr_c[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[6]_i_1__0 
       (.I0(\lfsr_q_reg[15]_0 [12]),
        .I1(\lfsr_q_reg[0]_0 [3]),
        .I2(\lfsr_q[10]_i_2__0_n_0 ),
        .I3(\lfsr_q_reg[7]_0 ),
        .I4(\lfsr_q_reg[15]_0 [1]),
        .I5(\lfsr_q_reg[0]_0 [13]),
        .O(lfsr_c[6]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[7]_i_1__0 
       (.I0(\lfsr_q_reg[15]_0 [13]),
        .I1(\lfsr_q_reg[0]_0 [2]),
        .I2(\lfsr_q_reg[7]_0 ),
        .I3(\lfsr_q_reg[15]_0 [2]),
        .I4(\lfsr_q_reg[0]_0 [12]),
        .I5(\lfsr_q[8]_i_5__0_n_0 ),
        .O(lfsr_c[7]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[8]_i_1__0 
       (.I0(\lfsr_q[8]_i_2__0_n_0 ),
        .I1(\lfsr_q_reg[0]_0 [7]),
        .I2(\lfsr_q_reg[15]_0 [8]),
        .I3(\lfsr_q[8]_i_3__0_n_0 ),
        .I4(\lfsr_q_reg[8]_0 ),
        .I5(\lfsr_q[8]_i_5__0_n_0 ),
        .O(lfsr_c[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[8]_i_2__0 
       (.I0(\lfsr_q_reg[15]_0 [14]),
        .I1(\lfsr_q_reg[0]_0 [1]),
        .O(\lfsr_q[8]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[8]_i_3__0 
       (.I0(\lfsr_q_reg[15]_0 [12]),
        .I1(\lfsr_q_reg[0]_0 [3]),
        .O(\lfsr_q[8]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[8]_i_5__0 
       (.I0(\lfsr_q_reg[15]_0 [11]),
        .I1(\lfsr_q_reg[0]_0 [4]),
        .I2(\lfsr_q_reg[0]_0 [8]),
        .I3(\lfsr_q_reg[15]_0 [7]),
        .I4(\lfsr_q_reg[0]_0 [0]),
        .I5(\lfsr_q_reg[15]_0 [15]),
        .O(\lfsr_q[8]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[9]_i_1__0 
       (.I0(\lfsr_q[9]_i_2__0_n_0 ),
        .I1(\lfsr_q_reg[0]_0 [6]),
        .I2(\lfsr_q_reg[15]_0 [9]),
        .I3(\lfsr_q_reg[0]_0 [2]),
        .I4(\lfsr_q_reg[15]_0 [13]),
        .I5(\lfsr_q[9]_i_3__0_n_0 ),
        .O(lfsr_c[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[9]_i_2__0 
       (.I0(\lfsr_q_reg[15]_0 [15]),
        .I1(\lfsr_q_reg[0]_0 [0]),
        .O(\lfsr_q[9]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[9]_i_3__0 
       (.I0(\lfsr_q_reg[15]_0 [12]),
        .I1(\lfsr_q_reg[0]_0 [3]),
        .I2(\lfsr_q_reg[15]_0 [8]),
        .I3(\lfsr_q_reg[0]_0 [7]),
        .I4(\lfsr_q_reg[15]_0 [4]),
        .I5(\lfsr_q_reg[0]_0 [10]),
        .O(\lfsr_q[9]_i_3__0_n_0 ));
  FDPE \lfsr_q_reg[0] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[0]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [0]));
  FDPE \lfsr_q_reg[10] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[10]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [10]));
  FDPE \lfsr_q_reg[11] 
       (.C(link_clk),
        .CE(E),
        .D(D[1]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [11]));
  FDPE \lfsr_q_reg[12] 
       (.C(link_clk),
        .CE(E),
        .D(D[2]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [12]));
  FDPE \lfsr_q_reg[13] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[13]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [13]));
  FDPE \lfsr_q_reg[14] 
       (.C(link_clk),
        .CE(E),
        .D(D[3]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [14]));
  FDPE \lfsr_q_reg[15] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[15]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [15]));
  FDPE \lfsr_q_reg[1] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[1]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [1]));
  FDPE \lfsr_q_reg[2] 
       (.C(link_clk),
        .CE(E),
        .D(D[0]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [2]));
  FDPE \lfsr_q_reg[3] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[3]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [3]));
  FDPE \lfsr_q_reg[4] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[4]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [4]));
  FDPE \lfsr_q_reg[5] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[5]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [5]));
  FDPE \lfsr_q_reg[6] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[6]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [6]));
  FDPE \lfsr_q_reg[7] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[7]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [7]));
  FDPE \lfsr_q_reg[8] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[8]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [8]));
  FDPE \lfsr_q_reg[9] 
       (.C(link_clk),
        .CE(E),
        .D(lfsr_c[9]),
        .PRE(AS),
        .Q(\lfsr_q_reg[15]_0 [9]));
endmodule

(* ORIG_REF_NAME = "hdlc_fifo" *) 
module tester_hdlc_blocks_v1_0_0_0_hdlc_fifo
   (DOUTADOUT,
    DOUTBDOUT,
    SR,
    resetW_reg_0,
    fifo_empty,
    full,
    reset_ns,
    D,
    \FSM_onehot_state_reg[6] ,
    s00_axi_aclk,
    link_clk,
    Q,
    buffer_reg_bram_0_0,
    s00_axi_wdata,
    reset_r,
    s00_axi_wstrb,
    buffer_reg_bram_0_1,
    \srOutWord_reg[8] ,
    \srOutWord_reg[0] ,
    \srOutWord_reg[11] ,
    \srOutWord_reg[11]_0 ,
    \srOutWord_reg[8]_0 ,
    req_tx,
    state2__4,
    E,
    \wptr_reg[2]_0 );
  output [15:0]DOUTADOUT;
  output [13:0]DOUTBDOUT;
  output [0:0]SR;
  output [0:0]resetW_reg_0;
  output fifo_empty;
  output full;
  output reset_ns;
  output [2:0]D;
  output [0:0]\FSM_onehot_state_reg[6] ;
  input s00_axi_aclk;
  input link_clk;
  input [3:0]Q;
  input [2:0]buffer_reg_bram_0_0;
  input [15:0]s00_axi_wdata;
  input reset_r;
  input [1:0]s00_axi_wstrb;
  input [0:0]buffer_reg_bram_0_1;
  input [6:0]\srOutWord_reg[8] ;
  input [0:0]\srOutWord_reg[0] ;
  input [0:0]\srOutWord_reg[11] ;
  input \srOutWord_reg[11]_0 ;
  input \srOutWord_reg[8]_0 ;
  input req_tx;
  input state2__4;
  input [0:0]E;
  input [0:0]\wptr_reg[2]_0 ;

  wire [2:0]D;
  wire [15:0]DOUTADOUT;
  wire [13:0]DOUTBDOUT;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_state_reg[6] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [11:8]buf_to_tx;
  wire [2:0]buffer_reg_bram_0_0;
  wire [0:0]buffer_reg_bram_0_1;
  wire empty0__0;
  wire fifo_empty;
  wire full;
  wire full0__0;
  wire link_clk;
  wire [5:3]p_0_in;
  wire [5:3]p_1_in;
  wire req_tx;
  wire [0:0]resetW_reg_0;
  wire reset_ns;
  wire reset_r;
  wire \rptr[0]_i_1_n_0 ;
  wire \rptr[1]_i_1_n_0 ;
  wire \rptr[2]_i_1_n_0 ;
  wire s00_axi_aclk;
  wire [15:0]s00_axi_wdata;
  wire [1:0]s00_axi_wstrb;
  wire [0:0]\srOutWord_reg[0] ;
  wire [0:0]\srOutWord_reg[11] ;
  wire \srOutWord_reg[11]_0 ;
  wire [6:0]\srOutWord_reg[8] ;
  wire \srOutWord_reg[8]_0 ;
  wire state2__4;
  wire we_tx;
  wire [2:0]wptr_next;
  wire [0:0]\wptr_reg[2]_0 ;
  wire [15:0]NLW_buffer_reg_bram_0_CASDOUTA_UNCONNECTED;
  wire [15:0]NLW_buffer_reg_bram_0_CASDOUTB_UNCONNECTED;
  wire [1:0]NLW_buffer_reg_bram_0_CASDOUTPA_UNCONNECTED;
  wire [1:0]NLW_buffer_reg_bram_0_CASDOUTPB_UNCONNECTED;
  wire [1:0]NLW_buffer_reg_bram_0_DOUTPADOUTP_UNCONNECTED;
  wire [1:0]NLW_buffer_reg_bram_0_DOUTPBDOUTP_UNCONNECTED;

  LUT4 #(
    .INIT(16'h2000)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\srOutWord_reg[8] [4]),
        .I1(fifo_empty),
        .I2(req_tx),
        .I3(state2__4),
        .O(\FSM_onehot_state_reg[6] ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "buffer" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "63" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    buffer_reg_bram_0
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,p_0_in,Q[2:0],1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,p_1_in,buffer_reg_bram_0_0,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(NLW_buffer_reg_bram_0_CASDOUTA_UNCONNECTED[15:0]),
        .CASDOUTB(NLW_buffer_reg_bram_0_CASDOUTB_UNCONNECTED[15:0]),
        .CASDOUTPA(NLW_buffer_reg_bram_0_CASDOUTPA_UNCONNECTED[1:0]),
        .CASDOUTPB(NLW_buffer_reg_bram_0_CASDOUTPB_UNCONNECTED[1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(link_clk),
        .DINADIN(s00_axi_wdata),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT(DOUTADOUT),
        .DOUTBDOUT({DOUTBDOUT[13:10],buf_to_tx[11],DOUTBDOUT[9:8],buf_to_tx[8],DOUTBDOUT[7:0]}),
        .DOUTPADOUTP(NLW_buffer_reg_bram_0_DOUTPADOUTP_UNCONNECTED[1:0]),
        .DOUTPBDOUTP(NLW_buffer_reg_bram_0_DOUTPBDOUTP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({we_tx,we_tx}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0080)) 
    buffer_reg_bram_0_i_1
       (.I0(s00_axi_wstrb[1]),
        .I1(buffer_reg_bram_0_1),
        .I2(s00_axi_wstrb[0]),
        .I3(Q[3]),
        .O(we_tx));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty0
       (.I0(p_0_in[3]),
        .I1(p_1_in[3]),
        .I2(p_1_in[5]),
        .I3(p_0_in[5]),
        .I4(p_1_in[4]),
        .I5(p_0_in[4]),
        .O(empty0__0));
  FDRE empty_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(empty0__0),
        .Q(fifo_empty),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    full0
       (.I0(p_1_in[3]),
        .I1(p_1_in[5]),
        .I2(p_0_in[5]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(p_1_in[4]),
        .O(full0__0));
  FDRE full_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(full0__0),
        .Q(full),
        .R(1'b0));
  FDRE resetR_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(reset_r),
        .Q(SR),
        .R(1'b0));
  FDRE resetW_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reset_r),
        .Q(resetW_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    reset_ns_i_1
       (.I0(\srOutWord_reg[8] [3]),
        .I1(DOUTBDOUT[12]),
        .O(reset_ns));
  LUT1 #(
    .INIT(2'h1)) 
    \rptr[0]_i_1 
       (.I0(p_1_in[3]),
        .O(\rptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rptr[1]_i_1 
       (.I0(p_1_in[3]),
        .I1(p_1_in[4]),
        .O(\rptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rptr[2]_i_1 
       (.I0(p_1_in[3]),
        .I1(p_1_in[4]),
        .I2(p_1_in[5]),
        .O(\rptr[2]_i_1_n_0 ));
  FDRE \rptr_reg[0] 
       (.C(link_clk),
        .CE(E),
        .D(\rptr[0]_i_1_n_0 ),
        .Q(p_1_in[3]),
        .R(SR));
  FDRE \rptr_reg[1] 
       (.C(link_clk),
        .CE(E),
        .D(\rptr[1]_i_1_n_0 ),
        .Q(p_1_in[4]),
        .R(SR));
  FDRE \rptr_reg[2] 
       (.C(link_clk),
        .CE(E),
        .D(\rptr[2]_i_1_n_0 ),
        .Q(p_1_in[5]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \srOutWord[0]_i_1 
       (.I0(\srOutWord_reg[8] [4]),
        .I1(\srOutWord_reg[8] [0]),
        .I2(DOUTBDOUT[0]),
        .I3(\srOutWord_reg[8] [1]),
        .I4(\srOutWord_reg[8] [5]),
        .I5(\srOutWord_reg[0] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \srOutWord[11]_i_1 
       (.I0(buf_to_tx[11]),
        .I1(\srOutWord_reg[8] [1]),
        .I2(\srOutWord_reg[11] ),
        .I3(\srOutWord_reg[8] [2]),
        .I4(\srOutWord_reg[11]_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \srOutWord[8]_i_1 
       (.I0(\srOutWord_reg[8] [1]),
        .I1(buf_to_tx[8]),
        .I2(\srOutWord_reg[8] [4]),
        .I3(\srOutWord_reg[8] [6]),
        .I4(\srOutWord_reg[8]_0 ),
        .O(D[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \wptr[0]_i_1 
       (.I0(p_0_in[3]),
        .O(wptr_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wptr[1]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .O(wptr_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wptr[2]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .O(wptr_next[2]));
  FDRE \wptr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\wptr_reg[2]_0 ),
        .D(wptr_next[0]),
        .Q(p_0_in[3]),
        .R(resetW_reg_0));
  FDRE \wptr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\wptr_reg[2]_0 ),
        .D(wptr_next[1]),
        .Q(p_0_in[4]),
        .R(resetW_reg_0));
  FDRE \wptr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\wptr_reg[2]_0 ),
        .D(wptr_next[2]),
        .Q(p_0_in[5]),
        .R(resetW_reg_0));
endmodule

(* ORIG_REF_NAME = "hdlc_fifo" *) 
module tester_hdlc_blocks_v1_0_0_0_hdlc_fifo_0
   (D,
    link_clk,
    s00_axi_aclk,
    Q,
    \axi_rdata_reg[12] ,
    DINADIN,
    WEA,
    \axi_rdata_reg[14] ,
    DOUTADOUT,
    \axi_rdata_reg[14]_0 ,
    full,
    fifo_empty,
    SR,
    E,
    \wptr_reg[0]_0 ,
    \wptr_reg[2]_0 );
  output [15:0]D;
  input link_clk;
  input s00_axi_aclk;
  input [2:0]Q;
  input [3:0]\axi_rdata_reg[12] ;
  input [15:0]DINADIN;
  input [0:0]WEA;
  input [2:0]\axi_rdata_reg[14] ;
  input [15:0]DOUTADOUT;
  input \axi_rdata_reg[14]_0 ;
  input full;
  input fifo_empty;
  input [0:0]SR;
  input [0:0]E;
  input [0:0]\wptr_reg[0]_0 ;
  input [0:0]\wptr_reg[2]_0 ;

  wire [15:0]D;
  wire [15:0]DINADIN;
  wire [15:0]DOUTADOUT;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [3:0]\axi_rdata_reg[12] ;
  wire [2:0]\axi_rdata_reg[14] ;
  wire \axi_rdata_reg[14]_0 ;
  wire buffer_reg_bram_0_n_32;
  wire buffer_reg_bram_0_n_33;
  wire buffer_reg_bram_0_n_34;
  wire buffer_reg_bram_0_n_35;
  wire buffer_reg_bram_0_n_36;
  wire buffer_reg_bram_0_n_37;
  wire buffer_reg_bram_0_n_38;
  wire buffer_reg_bram_0_n_39;
  wire buffer_reg_bram_0_n_40;
  wire buffer_reg_bram_0_n_41;
  wire buffer_reg_bram_0_n_42;
  wire buffer_reg_bram_0_n_43;
  wire buffer_reg_bram_0_n_44;
  wire buffer_reg_bram_0_n_45;
  wire buffer_reg_bram_0_n_46;
  wire buffer_reg_bram_0_n_47;
  wire [15:0]dout_fifo;
  wire empty;
  wire empty0_n_0;
  wire fifo_empty;
  wire full;
  wire link_clk;
  wire [5:3]p_0_in;
  wire [5:3]p_1_in;
  wire \rptr[0]_i_1_n_0 ;
  wire \rptr[1]_i_1_n_0 ;
  wire \rptr[2]_i_1_n_0 ;
  wire s00_axi_aclk;
  wire \wptr[0]_i_1_n_0 ;
  wire \wptr[1]_i_1_n_0 ;
  wire \wptr[2]_i_1_n_0 ;
  wire [0:0]\wptr_reg[0]_0 ;
  wire [0:0]\wptr_reg[2]_0 ;
  wire [15:0]NLW_buffer_reg_bram_0_CASDOUTA_UNCONNECTED;
  wire [15:0]NLW_buffer_reg_bram_0_CASDOUTB_UNCONNECTED;
  wire [1:0]NLW_buffer_reg_bram_0_CASDOUTPA_UNCONNECTED;
  wire [1:0]NLW_buffer_reg_bram_0_CASDOUTPB_UNCONNECTED;
  wire [1:0]NLW_buffer_reg_bram_0_DOUTPADOUTP_UNCONNECTED;
  wire [1:0]NLW_buffer_reg_bram_0_DOUTPBDOUTP_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[0]_i_1 
       (.I0(dout_fifo[0]),
        .I1(\axi_rdata_reg[12] [3]),
        .I2(DOUTADOUT[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[10]_i_1 
       (.I0(dout_fifo[10]),
        .I1(\axi_rdata_reg[12] [3]),
        .I2(DOUTADOUT[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[11]_i_1 
       (.I0(dout_fifo[11]),
        .I1(\axi_rdata_reg[12] [3]),
        .I2(DOUTADOUT[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    \axi_rdata[12]_i_1 
       (.I0(dout_fifo[12]),
        .I1(\axi_rdata_reg[14] [0]),
        .I2(\axi_rdata_reg[12] [3]),
        .I3(DOUTADOUT[12]),
        .I4(\axi_rdata_reg[14]_0 ),
        .I5(full),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    \axi_rdata[13]_i_1 
       (.I0(dout_fifo[13]),
        .I1(\axi_rdata_reg[14] [1]),
        .I2(\axi_rdata_reg[12] [3]),
        .I3(DOUTADOUT[13]),
        .I4(\axi_rdata_reg[14]_0 ),
        .I5(fifo_empty),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \axi_rdata[14]_i_1 
       (.I0(DOUTADOUT[14]),
        .I1(dout_fifo[14]),
        .I2(\axi_rdata_reg[14] [2]),
        .I3(\axi_rdata_reg[14]_0 ),
        .I4(\axi_rdata_reg[12] [3]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h0FCC00AA)) 
    \axi_rdata[15]_i_2 
       (.I0(DOUTADOUT[15]),
        .I1(dout_fifo[15]),
        .I2(empty),
        .I3(\axi_rdata_reg[14]_0 ),
        .I4(\axi_rdata_reg[12] [3]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[1]_i_1 
       (.I0(dout_fifo[1]),
        .I1(\axi_rdata_reg[12] [3]),
        .I2(DOUTADOUT[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[2]_i_1 
       (.I0(dout_fifo[2]),
        .I1(\axi_rdata_reg[12] [3]),
        .I2(DOUTADOUT[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[3]_i_1 
       (.I0(dout_fifo[3]),
        .I1(\axi_rdata_reg[12] [3]),
        .I2(DOUTADOUT[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[4]_i_1 
       (.I0(dout_fifo[4]),
        .I1(\axi_rdata_reg[12] [3]),
        .I2(DOUTADOUT[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[5]_i_1 
       (.I0(dout_fifo[5]),
        .I1(\axi_rdata_reg[12] [3]),
        .I2(DOUTADOUT[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[6]_i_1 
       (.I0(dout_fifo[6]),
        .I1(\axi_rdata_reg[12] [3]),
        .I2(DOUTADOUT[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[7]_i_1 
       (.I0(dout_fifo[7]),
        .I1(\axi_rdata_reg[12] [3]),
        .I2(DOUTADOUT[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[8]_i_1 
       (.I0(dout_fifo[8]),
        .I1(\axi_rdata_reg[12] [3]),
        .I2(DOUTADOUT[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[9]_i_1 
       (.I0(dout_fifo[9]),
        .I1(\axi_rdata_reg[12] [3]),
        .I2(DOUTADOUT[9]),
        .O(D[9]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "buffer" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "63" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    buffer_reg_bram_0
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,p_0_in,Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,p_1_in,\axi_rdata_reg[12] [2:0],1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(NLW_buffer_reg_bram_0_CASDOUTA_UNCONNECTED[15:0]),
        .CASDOUTB(NLW_buffer_reg_bram_0_CASDOUTB_UNCONNECTED[15:0]),
        .CASDOUTPA(NLW_buffer_reg_bram_0_CASDOUTPA_UNCONNECTED[1:0]),
        .CASDOUTPB(NLW_buffer_reg_bram_0_CASDOUTPB_UNCONNECTED[1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CLKARDCLK(link_clk),
        .CLKBWRCLK(s00_axi_aclk),
        .DINADIN(DINADIN),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT({buffer_reg_bram_0_n_32,buffer_reg_bram_0_n_33,buffer_reg_bram_0_n_34,buffer_reg_bram_0_n_35,buffer_reg_bram_0_n_36,buffer_reg_bram_0_n_37,buffer_reg_bram_0_n_38,buffer_reg_bram_0_n_39,buffer_reg_bram_0_n_40,buffer_reg_bram_0_n_41,buffer_reg_bram_0_n_42,buffer_reg_bram_0_n_43,buffer_reg_bram_0_n_44,buffer_reg_bram_0_n_45,buffer_reg_bram_0_n_46,buffer_reg_bram_0_n_47}),
        .DOUTBDOUT(dout_fifo),
        .DOUTPADOUTP(NLW_buffer_reg_bram_0_DOUTPADOUTP_UNCONNECTED[1:0]),
        .DOUTPBDOUTP(NLW_buffer_reg_bram_0_DOUTPBDOUTP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty0
       (.I0(p_0_in[3]),
        .I1(p_1_in[3]),
        .I2(p_1_in[5]),
        .I3(p_0_in[5]),
        .I4(p_1_in[4]),
        .I5(p_0_in[4]),
        .O(empty0_n_0));
  FDRE empty_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(empty0_n_0),
        .Q(empty),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \rptr[0]_i_1 
       (.I0(p_1_in[3]),
        .O(\rptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rptr[1]_i_1 
       (.I0(p_1_in[3]),
        .I1(p_1_in[4]),
        .O(\rptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rptr[2]_i_1 
       (.I0(p_1_in[3]),
        .I1(p_1_in[4]),
        .I2(p_1_in[5]),
        .O(\rptr[2]_i_1_n_0 ));
  FDRE \rptr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rptr[0]_i_1_n_0 ),
        .Q(p_1_in[3]),
        .R(SR));
  FDRE \rptr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rptr[1]_i_1_n_0 ),
        .Q(p_1_in[4]),
        .R(SR));
  FDRE \rptr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\rptr[2]_i_1_n_0 ),
        .Q(p_1_in[5]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \wptr[0]_i_1 
       (.I0(p_0_in[3]),
        .O(\wptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wptr[1]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .O(\wptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wptr[2]_i_1 
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .O(\wptr[2]_i_1_n_0 ));
  FDRE \wptr_reg[0] 
       (.C(link_clk),
        .CE(\wptr_reg[2]_0 ),
        .D(\wptr[0]_i_1_n_0 ),
        .Q(p_0_in[3]),
        .R(\wptr_reg[0]_0 ));
  FDRE \wptr_reg[1] 
       (.C(link_clk),
        .CE(\wptr_reg[2]_0 ),
        .D(\wptr[1]_i_1_n_0 ),
        .Q(p_0_in[4]),
        .R(\wptr_reg[0]_0 ));
  FDRE \wptr_reg[2] 
       (.C(link_clk),
        .CE(\wptr_reg[2]_0 ),
        .D(\wptr[2]_i_1_n_0 ),
        .Q(p_0_in[5]),
        .R(\wptr_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "hdlc_inputregister" *) 
module tester_hdlc_blocks_v1_0_0_0_hdlc_inputregister
   (\FSM_sequential_state_reg[0] ,
    D,
    E,
    \lfsr_q_reg[9] ,
    \outputRegister_reg[15]_0 ,
    \outputRegister_reg[5]_0 ,
    \outputRegister_reg[12]_0 ,
    DINADIN,
    reset_r,
    link_clk,
    Q,
    crc_valid,
    data_is_valid_reg_0,
    \lfsr_q_reg[12] ,
    \lfsr_q_reg[14] ,
    \sr_in_reg[8]_0 ,
    crc_valid_reg,
    buffer_reg_bram_0,
    sendlen);
  output \FSM_sequential_state_reg[0] ;
  output [2:0]D;
  output [0:0]E;
  output [3:0]\lfsr_q_reg[9] ;
  output [14:0]\outputRegister_reg[15]_0 ;
  output \outputRegister_reg[5]_0 ;
  output \outputRegister_reg[12]_0 ;
  output [15:0]DINADIN;
  input reset_r;
  input link_clk;
  input [2:0]Q;
  input crc_valid;
  input [0:0]data_is_valid_reg_0;
  input [12:0]\lfsr_q_reg[12] ;
  input \lfsr_q_reg[14] ;
  input [0:0]\sr_in_reg[8]_0 ;
  input [15:0]crc_valid_reg;
  input [2:0]buffer_reg_bram_0;
  input sendlen;

  wire [2:0]D;
  wire [15:0]DINADIN;
  wire [0:0]E;
  wire EOF;
  wire EOF_i_1_n_0;
  wire EOF_i_2_n_0;
  wire FRAME_ACTIVE;
  wire FRAME_ACTIVE_i_1_n_0;
  wire FRAME_ACTIVE_reg_n_0;
  wire \FSM_sequential_state_reg[0] ;
  wire [2:0]Q;
  wire abort;
  wire abort0;
  wire abort_i_2_n_0;
  wire [2:0]buffer_reg_bram_0;
  wire [9:9]clean16;
  wire crc_valid;
  wire crc_valid_i_2_n_0;
  wire crc_valid_i_3_n_0;
  wire crc_valid_i_4_n_0;
  wire crc_valid_i_5_n_0;
  wire crc_valid_i_6_n_0;
  wire crc_valid_i_7_n_0;
  wire [15:0]crc_valid_reg;
  wire data_is_valid;
  wire data_is_valid_i_1_n_0;
  wire [0:0]data_is_valid_reg_0;
  wire [4:4]inputCounter;
  wire inputCounter0;
  wire inputCounter10_out;
  wire \inputCounter[0]_i_1_n_0 ;
  wire \inputCounter[0]_i_2_n_0 ;
  wire \inputCounter[1]_i_1_n_0 ;
  wire \inputCounter[2]_i_1_n_0 ;
  wire \inputCounter[3]_i_1_n_0 ;
  wire \inputCounter[4]_i_3_n_0 ;
  wire \inputCounter_reg_n_0_[0] ;
  wire \inputCounter_reg_n_0_[1] ;
  wire \inputCounter_reg_n_0_[2] ;
  wire \inputCounter_reg_n_0_[3] ;
  wire \inputCounter_reg_n_0_[4] ;
  wire \lfsr_q[12]_i_2__0_n_0 ;
  wire \lfsr_q[14]_i_2__0_n_0 ;
  wire [12:0]\lfsr_q_reg[12] ;
  wire \lfsr_q_reg[14] ;
  wire [3:0]\lfsr_q_reg[9] ;
  wire link_clk;
  wire \outputRegister_reg[12]_0 ;
  wire [14:0]\outputRegister_reg[15]_0 ;
  wire \outputRegister_reg[5]_0 ;
  wire [7:0]p_0_in;
  wire reset_r;
  wire sendlen;
  wire [0:0]\sr_in_reg[8]_0 ;
  wire \sr_in_reg_n_0_[0] ;
  wire [15:0]sr_out;
  wire stuffed;
  wire stuffed_i_1_n_0;

  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    EOF_i_1
       (.I0(p_0_in[7]),
        .I1(EOF_i_2_n_0),
        .I2(p_0_in[0]),
        .I3(abort_i_2_n_0),
        .I4(FRAME_ACTIVE_reg_n_0),
        .I5(EOF),
        .O(EOF_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    EOF_i_2
       (.I0(p_0_in[1]),
        .I1(p_0_in[6]),
        .O(EOF_i_2_n_0));
  FDRE EOF_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(EOF_i_1_n_0),
        .Q(EOF),
        .R(reset_r));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000054)) 
    FRAME_ACTIVE_i_1
       (.I0(reset_r),
        .I1(FRAME_ACTIVE),
        .I2(FRAME_ACTIVE_reg_n_0),
        .I3(abort),
        .I4(EOF),
        .O(FRAME_ACTIVE_i_1_n_0));
  FDRE FRAME_ACTIVE_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(FRAME_ACTIVE_i_1_n_0),
        .Q(FRAME_ACTIVE_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h304C)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(data_is_valid),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0F02)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(data_is_valid),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0F0EFFFFFFFFFFFF)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(abort),
        .I1(EOF),
        .I2(Q[1]),
        .I3(data_is_valid),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(data_is_valid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    abort_i_1
       (.I0(p_0_in[7]),
        .I1(FRAME_ACTIVE_reg_n_0),
        .I2(p_0_in[1]),
        .I3(p_0_in[6]),
        .I4(abort_i_2_n_0),
        .O(abort0));
  LUT4 #(
    .INIT(16'h8000)) 
    abort_i_2
       (.I0(p_0_in[4]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[5]),
        .O(abort_i_2_n_0));
  FDRE abort_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(abort0),
        .Q(abort),
        .R(reset_r));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_bram_0_i_10
       (.I0(\outputRegister_reg[15]_0 [6]),
        .I1(sendlen),
        .O(DINADIN[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_bram_0_i_11
       (.I0(\outputRegister_reg[15]_0 [5]),
        .I1(sendlen),
        .O(DINADIN[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    buffer_reg_bram_0_i_12
       (.I0(crc_valid),
        .I1(sendlen),
        .I2(\outputRegister_reg[15]_0 [4]),
        .O(DINADIN[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_bram_0_i_13
       (.I0(\outputRegister_reg[15]_0 [3]),
        .I1(sendlen),
        .O(DINADIN[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    buffer_reg_bram_0_i_14
       (.I0(buffer_reg_bram_0[2]),
        .I1(sendlen),
        .I2(\outputRegister_reg[15]_0 [2]),
        .O(DINADIN[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    buffer_reg_bram_0_i_15
       (.I0(buffer_reg_bram_0[1]),
        .I1(sendlen),
        .I2(\outputRegister_reg[15]_0 [1]),
        .O(DINADIN[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    buffer_reg_bram_0_i_16
       (.I0(buffer_reg_bram_0[0]),
        .I1(sendlen),
        .I2(\outputRegister_reg[15]_0 [0]),
        .O(DINADIN[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_bram_0_i_1__0
       (.I0(\outputRegister_reg[15]_0 [14]),
        .I1(sendlen),
        .O(DINADIN[15]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_bram_0_i_2
       (.I0(\outputRegister_reg[15]_0 [13]),
        .I1(sendlen),
        .O(DINADIN[14]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_bram_0_i_3
       (.I0(\outputRegister_reg[15]_0 [12]),
        .I1(sendlen),
        .O(DINADIN[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_bram_0_i_4
       (.I0(\outputRegister_reg[15]_0 [11]),
        .I1(sendlen),
        .O(DINADIN[12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_bram_0_i_5
       (.I0(\outputRegister_reg[15]_0 [10]),
        .I1(sendlen),
        .O(DINADIN[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_bram_0_i_6
       (.I0(\outputRegister_reg[15]_0 [9]),
        .I1(sendlen),
        .O(DINADIN[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_bram_0_i_7
       (.I0(clean16),
        .I1(sendlen),
        .O(DINADIN[9]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_bram_0_i_8
       (.I0(\outputRegister_reg[15]_0 [8]),
        .I1(sendlen),
        .O(DINADIN[8]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    buffer_reg_bram_0_i_9
       (.I0(\outputRegister_reg[15]_0 [7]),
        .I1(sendlen),
        .O(DINADIN[7]));
  LUT6 #(
    .INIT(64'hFF55D5FF00008000)) 
    crc_valid_i_1
       (.I0(Q[0]),
        .I1(crc_valid_i_2_n_0),
        .I2(crc_valid_i_3_n_0),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(crc_valid),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    crc_valid_i_2
       (.I0(crc_valid_reg[12]),
        .I1(\outputRegister_reg[15]_0 [11]),
        .I2(\outputRegister_reg[15]_0 [13]),
        .I3(crc_valid_reg[14]),
        .I4(\outputRegister_reg[15]_0 [12]),
        .I5(crc_valid_reg[13]),
        .O(crc_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'h9000000000000000)) 
    crc_valid_i_3
       (.I0(crc_valid_reg[15]),
        .I1(\outputRegister_reg[15]_0 [14]),
        .I2(crc_valid_i_4_n_0),
        .I3(crc_valid_i_5_n_0),
        .I4(crc_valid_i_6_n_0),
        .I5(crc_valid_i_7_n_0),
        .O(crc_valid_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    crc_valid_i_4
       (.I0(crc_valid_reg[6]),
        .I1(\outputRegister_reg[15]_0 [6]),
        .I2(\outputRegister_reg[15]_0 [8]),
        .I3(crc_valid_reg[8]),
        .I4(\outputRegister_reg[15]_0 [7]),
        .I5(crc_valid_reg[7]),
        .O(crc_valid_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    crc_valid_i_5
       (.I0(crc_valid_reg[9]),
        .I1(clean16),
        .I2(\outputRegister_reg[15]_0 [10]),
        .I3(crc_valid_reg[11]),
        .I4(\outputRegister_reg[15]_0 [9]),
        .I5(crc_valid_reg[10]),
        .O(crc_valid_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    crc_valid_i_6
       (.I0(crc_valid_reg[0]),
        .I1(\outputRegister_reg[15]_0 [0]),
        .I2(\outputRegister_reg[15]_0 [2]),
        .I3(crc_valid_reg[2]),
        .I4(\outputRegister_reg[15]_0 [1]),
        .I5(crc_valid_reg[1]),
        .O(crc_valid_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    crc_valid_i_7
       (.I0(crc_valid_reg[3]),
        .I1(\outputRegister_reg[15]_0 [3]),
        .I2(\outputRegister_reg[15]_0 [5]),
        .I3(crc_valid_reg[5]),
        .I4(\outputRegister_reg[15]_0 [4]),
        .I5(crc_valid_reg[4]),
        .O(crc_valid_i_7_n_0));
  LUT5 #(
    .INIT(32'h0000F0F2)) 
    data_is_valid_i_1
       (.I0(data_is_valid),
        .I1(abort),
        .I2(inputCounter10_out),
        .I3(reset_r),
        .I4(data_is_valid_reg_0),
        .O(data_is_valid_i_1_n_0));
  FDRE data_is_valid_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(data_is_valid_i_1_n_0),
        .Q(data_is_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000005154)) 
    \inputCounter[0]_i_1 
       (.I0(\inputCounter[0]_i_2_n_0 ),
        .I1(\inputCounter_reg_n_0_[0] ),
        .I2(inputCounter10_out),
        .I3(inputCounter0),
        .I4(reset_r),
        .I5(FRAME_ACTIVE),
        .O(\inputCounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \inputCounter[0]_i_2 
       (.I0(EOF),
        .I1(abort),
        .O(\inputCounter[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \inputCounter[1]_i_1 
       (.I0(\inputCounter_reg_n_0_[0] ),
        .I1(\inputCounter_reg_n_0_[1] ),
        .O(\inputCounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \inputCounter[2]_i_1 
       (.I0(\inputCounter_reg_n_0_[0] ),
        .I1(\inputCounter_reg_n_0_[1] ),
        .I2(\inputCounter_reg_n_0_[2] ),
        .O(\inputCounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \inputCounter[3]_i_1 
       (.I0(\inputCounter_reg_n_0_[2] ),
        .I1(\inputCounter_reg_n_0_[1] ),
        .I2(\inputCounter_reg_n_0_[0] ),
        .I3(\inputCounter_reg_n_0_[3] ),
        .O(\inputCounter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \inputCounter[4]_i_1 
       (.I0(inputCounter10_out),
        .I1(reset_r),
        .I2(EOF),
        .I3(abort),
        .I4(FRAME_ACTIVE),
        .O(inputCounter));
  LUT2 #(
    .INIT(4'h2)) 
    \inputCounter[4]_i_2 
       (.I0(FRAME_ACTIVE_reg_n_0),
        .I1(stuffed),
        .O(inputCounter0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \inputCounter[4]_i_3 
       (.I0(\inputCounter_reg_n_0_[3] ),
        .I1(\inputCounter_reg_n_0_[0] ),
        .I2(\inputCounter_reg_n_0_[1] ),
        .I3(\inputCounter_reg_n_0_[2] ),
        .I4(\inputCounter_reg_n_0_[4] ),
        .O(\inputCounter[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \inputCounter[4]_i_4 
       (.I0(p_0_in[1]),
        .I1(p_0_in[6]),
        .I2(p_0_in[0]),
        .I3(\sr_in_reg_n_0_[0] ),
        .I4(abort_i_2_n_0),
        .O(FRAME_ACTIVE));
  FDRE \inputCounter_reg[0] 
       (.C(link_clk),
        .CE(1'b1),
        .D(\inputCounter[0]_i_1_n_0 ),
        .Q(\inputCounter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \inputCounter_reg[1] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(\inputCounter[1]_i_1_n_0 ),
        .Q(\inputCounter_reg_n_0_[1] ),
        .R(inputCounter));
  FDRE \inputCounter_reg[2] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(\inputCounter[2]_i_1_n_0 ),
        .Q(\inputCounter_reg_n_0_[2] ),
        .R(inputCounter));
  FDRE \inputCounter_reg[3] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(\inputCounter[3]_i_1_n_0 ),
        .Q(\inputCounter_reg_n_0_[3] ),
        .R(inputCounter));
  FDRE \inputCounter_reg[4] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(\inputCounter[4]_i_3_n_0 ),
        .Q(\inputCounter_reg_n_0_[4] ),
        .R(inputCounter));
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[11]_i_1__0 
       (.I0(\lfsr_q_reg[12] [3]),
        .I1(\outputRegister_reg[15]_0 [4]),
        .I2(\lfsr_q_reg[12] [0]),
        .I3(\outputRegister_reg[15]_0 [0]),
        .I4(\outputRegister_reg[5]_0 ),
        .O(\lfsr_q_reg[9] [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[11]_i_2__0 
       (.I0(\outputRegister_reg[15]_0 [5]),
        .I1(\lfsr_q_reg[12] [4]),
        .I2(\lfsr_q_reg[12] [1]),
        .I3(\outputRegister_reg[15]_0 [1]),
        .I4(\lfsr_q_reg[12] [8]),
        .I5(clean16),
        .O(\outputRegister_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[12]_i_1__0 
       (.I0(\lfsr_q[12]_i_2__0_n_0 ),
        .I1(\outputRegister_reg[15]_0 [8]),
        .I2(\lfsr_q_reg[12] [7]),
        .I3(\outputRegister_reg[15]_0 [10]),
        .I4(\lfsr_q_reg[12] [9]),
        .O(\lfsr_q_reg[9] [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[12]_i_2__0 
       (.I0(\outputRegister_reg[15]_0 [14]),
        .I1(\lfsr_q_reg[12] [12]),
        .I2(\lfsr_q_reg[12] [0]),
        .I3(\outputRegister_reg[15]_0 [0]),
        .I4(\lfsr_q_reg[12] [6]),
        .I5(\outputRegister_reg[15]_0 [7]),
        .O(\lfsr_q[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \lfsr_q[14]_i_1__0 
       (.I0(\lfsr_q[14]_i_2__0_n_0 ),
        .I1(\lfsr_q_reg[12] [5]),
        .I2(\outputRegister_reg[15]_0 [6]),
        .I3(clean16),
        .I4(\lfsr_q_reg[12] [8]),
        .I5(\lfsr_q_reg[14] ),
        .O(\lfsr_q_reg[9] [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[14]_i_2__0 
       (.I0(\outputRegister_reg[15]_0 [5]),
        .I1(\lfsr_q_reg[12] [4]),
        .O(\lfsr_q[14]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \lfsr_q[2]_i_1__0 
       (.I0(\lfsr_q_reg[12] [2]),
        .I1(\outputRegister_reg[15]_0 [2]),
        .I2(\lfsr_q_reg[12] [11]),
        .I3(\outputRegister_reg[15]_0 [12]),
        .I4(\outputRegister_reg[5]_0 ),
        .O(\lfsr_q_reg[9] [0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lfsr_q[8]_i_4__0 
       (.I0(\outputRegister_reg[15]_0 [11]),
        .I1(\lfsr_q_reg[12] [10]),
        .O(\outputRegister_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \outputRegister[15]_i_1 
       (.I0(\inputCounter_reg_n_0_[2] ),
        .I1(\inputCounter_reg_n_0_[3] ),
        .I2(\inputCounter_reg_n_0_[0] ),
        .I3(\inputCounter_reg_n_0_[1] ),
        .I4(stuffed),
        .I5(\inputCounter_reg_n_0_[4] ),
        .O(inputCounter10_out));
  FDRE \outputRegister_reg[0] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[0]),
        .Q(\outputRegister_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \outputRegister_reg[10] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[10]),
        .Q(\outputRegister_reg[15]_0 [9]),
        .R(1'b0));
  FDRE \outputRegister_reg[11] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[11]),
        .Q(\outputRegister_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \outputRegister_reg[12] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[12]),
        .Q(\outputRegister_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \outputRegister_reg[13] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[13]),
        .Q(\outputRegister_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \outputRegister_reg[14] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[14]),
        .Q(\outputRegister_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \outputRegister_reg[15] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[15]),
        .Q(\outputRegister_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \outputRegister_reg[1] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[1]),
        .Q(\outputRegister_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \outputRegister_reg[2] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[2]),
        .Q(\outputRegister_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \outputRegister_reg[3] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[3]),
        .Q(\outputRegister_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \outputRegister_reg[4] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[4]),
        .Q(\outputRegister_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \outputRegister_reg[5] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[5]),
        .Q(\outputRegister_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \outputRegister_reg[6] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[6]),
        .Q(\outputRegister_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \outputRegister_reg[7] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[7]),
        .Q(\outputRegister_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \outputRegister_reg[8] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[8]),
        .Q(\outputRegister_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \outputRegister_reg[9] 
       (.C(link_clk),
        .CE(inputCounter10_out),
        .D(sr_out[9]),
        .Q(clean16),
        .R(1'b0));
  FDRE \sr_in_reg[0] 
       (.C(link_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\sr_in_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sr_in_reg[1] 
       (.C(link_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \sr_in_reg[2] 
       (.C(link_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \sr_in_reg[3] 
       (.C(link_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \sr_in_reg[4] 
       (.C(link_clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \sr_in_reg[5] 
       (.C(link_clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \sr_in_reg[6] 
       (.C(link_clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \sr_in_reg[7] 
       (.C(link_clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE \sr_in_reg[8] 
       (.C(link_clk),
        .CE(1'b1),
        .D(\sr_in_reg[8]_0 ),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE \sr_out_reg[0] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[1]),
        .Q(sr_out[0]),
        .R(1'b0));
  FDRE \sr_out_reg[10] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[11]),
        .Q(sr_out[10]),
        .R(1'b0));
  FDRE \sr_out_reg[11] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[12]),
        .Q(sr_out[11]),
        .R(1'b0));
  FDRE \sr_out_reg[12] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[13]),
        .Q(sr_out[12]),
        .R(1'b0));
  FDRE \sr_out_reg[13] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[14]),
        .Q(sr_out[13]),
        .R(1'b0));
  FDRE \sr_out_reg[14] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[15]),
        .Q(sr_out[14]),
        .R(1'b0));
  FDRE \sr_out_reg[15] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(p_0_in[6]),
        .Q(sr_out[15]),
        .R(1'b0));
  FDRE \sr_out_reg[1] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[2]),
        .Q(sr_out[1]),
        .R(1'b0));
  FDRE \sr_out_reg[2] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[3]),
        .Q(sr_out[2]),
        .R(1'b0));
  FDRE \sr_out_reg[3] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[4]),
        .Q(sr_out[3]),
        .R(1'b0));
  FDRE \sr_out_reg[4] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[5]),
        .Q(sr_out[4]),
        .R(1'b0));
  FDRE \sr_out_reg[5] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[6]),
        .Q(sr_out[5]),
        .R(1'b0));
  FDRE \sr_out_reg[6] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[7]),
        .Q(sr_out[6]),
        .R(1'b0));
  FDRE \sr_out_reg[7] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[8]),
        .Q(sr_out[7]),
        .R(1'b0));
  FDRE \sr_out_reg[8] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[9]),
        .Q(sr_out[8]),
        .R(1'b0));
  FDRE \sr_out_reg[9] 
       (.C(link_clk),
        .CE(inputCounter0),
        .D(sr_out[10]),
        .Q(sr_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0400)) 
    stuffed_i_1
       (.I0(p_0_in[1]),
        .I1(p_0_in[6]),
        .I2(p_0_in[7]),
        .I3(abort_i_2_n_0),
        .O(stuffed_i_1_n_0));
  FDRE stuffed_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(stuffed_i_1_n_0),
        .Q(stuffed),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hdlc_outputregister" *) 
module tester_hdlc_blocks_v1_0_0_0_hdlc_outputregister
   (serout,
    D,
    link_clk,
    reset_r,
    Q,
    \sr_reg[15]_0 ,
    in6,
    autoheader,
    state2__4,
    req_tx,
    fifo_empty,
    srOutSuppressZeroing);
  output serout;
  output [8:0]D;
  input link_clk;
  input reset_r;
  input [9:0]Q;
  input [15:0]\sr_reg[15]_0 ;
  input in6;
  input autoheader;
  input state2__4;
  input req_tx;
  input fifo_empty;
  input srOutSuppressZeroing;

  wire [8:0]D;
  wire [9:0]Q;
  wire autoheader;
  wire [3:0]counter_reg__0;
  wire data_in_isCTL_latch;
  wire data_in_isCTL_latch_i_1_n_0;
  wire fifo_empty;
  wire in6;
  wire inject_a_zero__1;
  wire link_clk;
  wire load;
  wire load0;
  wire [2:0]ones_in_a_row;
  wire \ones_in_a_row[0]_i_1_n_0 ;
  wire \ones_in_a_row[1]_i_1_n_0 ;
  wire \ones_in_a_row[2]_i_1_n_0 ;
  wire \ones_in_a_row[2]_i_2_n_0 ;
  wire [3:0]p_0_in;
  wire req_tx;
  wire reset_r;
  wire serout;
  wire serout_i_1_n_0;
  wire sr;
  wire srOutStrobe;
  wire srOutSuppressZeroing;
  wire \sr[0]_i_1_n_0 ;
  wire \sr[10]_i_1_n_0 ;
  wire \sr[11]_i_1_n_0 ;
  wire \sr[12]_i_1_n_0 ;
  wire \sr[13]_i_1_n_0 ;
  wire \sr[14]_i_1_n_0 ;
  wire \sr[15]_i_2_n_0 ;
  wire \sr[1]_i_1_n_0 ;
  wire \sr[2]_i_1_n_0 ;
  wire \sr[3]_i_1_n_0 ;
  wire \sr[4]_i_1_n_0 ;
  wire \sr[5]_i_1_n_0 ;
  wire \sr[6]_i_1_n_0 ;
  wire \sr[7]_i_1_n_0 ;
  wire \sr[8]_i_1_n_0 ;
  wire \sr[9]_i_1_n_0 ;
  wire [15:0]\sr_reg[15]_0 ;
  wire \sr_reg_n_0_[0] ;
  wire \sr_reg_n_0_[10] ;
  wire \sr_reg_n_0_[11] ;
  wire \sr_reg_n_0_[12] ;
  wire \sr_reg_n_0_[13] ;
  wire \sr_reg_n_0_[14] ;
  wire \sr_reg_n_0_[15] ;
  wire \sr_reg_n_0_[1] ;
  wire \sr_reg_n_0_[2] ;
  wire \sr_reg_n_0_[3] ;
  wire \sr_reg_n_0_[4] ;
  wire \sr_reg_n_0_[5] ;
  wire \sr_reg_n_0_[6] ;
  wire \sr_reg_n_0_[7] ;
  wire \sr_reg_n_0_[8] ;
  wire \sr_reg_n_0_[9] ;
  wire state2__4;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(Q[4]),
        .I1(srOutStrobe),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h4040F040)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(in6),
        .I1(Q[3]),
        .I2(srOutStrobe),
        .I3(Q[0]),
        .I4(autoheader),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(autoheader),
        .I1(srOutStrobe),
        .I2(Q[0]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(srOutStrobe),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(srOutStrobe),
        .I1(Q[4]),
        .I2(Q[5]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hF8F8F8F888F8F8F8)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(Q[9]),
        .I1(srOutStrobe),
        .I2(Q[6]),
        .I3(state2__4),
        .I4(req_tx),
        .I5(fifo_empty),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(srOutStrobe),
        .I1(Q[3]),
        .I2(in6),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(srOutStrobe),
        .I1(Q[8]),
        .I2(Q[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[9]_i_2 
       (.I0(Q[8]),
        .I1(srOutStrobe),
        .I2(Q[9]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[3]),
        .O(p_0_in[3]));
  FDRE \counter_reg[0] 
       (.C(link_clk),
        .CE(sr),
        .D(p_0_in[0]),
        .Q(counter_reg__0[0]),
        .R(reset_r));
  FDRE \counter_reg[1] 
       (.C(link_clk),
        .CE(sr),
        .D(p_0_in[1]),
        .Q(counter_reg__0[1]),
        .R(reset_r));
  FDRE \counter_reg[2] 
       (.C(link_clk),
        .CE(sr),
        .D(p_0_in[2]),
        .Q(counter_reg__0[2]),
        .R(reset_r));
  FDRE \counter_reg[3] 
       (.C(link_clk),
        .CE(sr),
        .D(p_0_in[3]),
        .Q(counter_reg__0[3]),
        .R(reset_r));
  FDRE data_consumed_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(load),
        .Q(srOutStrobe),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    data_in_isCTL_latch_i_1
       (.I0(srOutSuppressZeroing),
        .I1(load),
        .I2(data_in_isCTL_latch),
        .O(data_in_isCTL_latch_i_1_n_0));
  FDRE data_in_isCTL_latch_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(data_in_isCTL_latch_i_1_n_0),
        .Q(data_in_isCTL_latch),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40000000)) 
    load_i_1
       (.I0(inject_a_zero__1),
        .I1(counter_reg__0[3]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[0]),
        .O(load0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    load_i_2
       (.I0(ones_in_a_row[1]),
        .I1(ones_in_a_row[2]),
        .I2(ones_in_a_row[0]),
        .O(inject_a_zero__1));
  FDRE load_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(load0),
        .Q(load),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \ones_in_a_row[0]_i_1 
       (.I0(ones_in_a_row[0]),
        .O(\ones_in_a_row[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ones_in_a_row[1]_i_1 
       (.I0(ones_in_a_row[0]),
        .I1(ones_in_a_row[1]),
        .O(\ones_in_a_row[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDFDFFFDFDFD)) 
    \ones_in_a_row[2]_i_1 
       (.I0(\sr_reg_n_0_[0] ),
        .I1(data_in_isCTL_latch),
        .I2(reset_r),
        .I3(ones_in_a_row[0]),
        .I4(ones_in_a_row[2]),
        .I5(ones_in_a_row[1]),
        .O(\ones_in_a_row[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ones_in_a_row[2]_i_2 
       (.I0(ones_in_a_row[0]),
        .I1(ones_in_a_row[1]),
        .I2(ones_in_a_row[2]),
        .O(\ones_in_a_row[2]_i_2_n_0 ));
  FDRE \ones_in_a_row_reg[0] 
       (.C(link_clk),
        .CE(1'b1),
        .D(\ones_in_a_row[0]_i_1_n_0 ),
        .Q(ones_in_a_row[0]),
        .R(\ones_in_a_row[2]_i_1_n_0 ));
  FDRE \ones_in_a_row_reg[1] 
       (.C(link_clk),
        .CE(1'b1),
        .D(\ones_in_a_row[1]_i_1_n_0 ),
        .Q(ones_in_a_row[1]),
        .R(\ones_in_a_row[2]_i_1_n_0 ));
  FDRE \ones_in_a_row_reg[2] 
       (.C(link_clk),
        .CE(1'b1),
        .D(\ones_in_a_row[2]_i_2_n_0 ),
        .Q(ones_in_a_row[2]),
        .R(\ones_in_a_row[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    serout_i_1
       (.I0(\sr_reg_n_0_[0] ),
        .I1(ones_in_a_row[0]),
        .I2(ones_in_a_row[2]),
        .I3(ones_in_a_row[1]),
        .O(serout_i_1_n_0));
  FDRE serout_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(serout_i_1_n_0),
        .Q(serout),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[0]_i_1 
       (.I0(\sr_reg[15]_0 [0]),
        .I1(load),
        .I2(\sr_reg_n_0_[1] ),
        .O(\sr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[10]_i_1 
       (.I0(\sr_reg[15]_0 [10]),
        .I1(load),
        .I2(\sr_reg_n_0_[11] ),
        .O(\sr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[11]_i_1 
       (.I0(\sr_reg[15]_0 [11]),
        .I1(load),
        .I2(\sr_reg_n_0_[12] ),
        .O(\sr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[12]_i_1 
       (.I0(\sr_reg[15]_0 [12]),
        .I1(load),
        .I2(\sr_reg_n_0_[13] ),
        .O(\sr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[13]_i_1 
       (.I0(\sr_reg[15]_0 [13]),
        .I1(load),
        .I2(\sr_reg_n_0_[14] ),
        .O(\sr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[14]_i_1 
       (.I0(\sr_reg[15]_0 [14]),
        .I1(load),
        .I2(\sr_reg_n_0_[15] ),
        .O(\sr[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \sr[15]_i_1 
       (.I0(ones_in_a_row[0]),
        .I1(ones_in_a_row[2]),
        .I2(ones_in_a_row[1]),
        .O(sr));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sr[15]_i_2 
       (.I0(load),
        .I1(\sr_reg[15]_0 [15]),
        .O(\sr[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[1]_i_1 
       (.I0(\sr_reg[15]_0 [1]),
        .I1(load),
        .I2(\sr_reg_n_0_[2] ),
        .O(\sr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[2]_i_1 
       (.I0(\sr_reg[15]_0 [2]),
        .I1(load),
        .I2(\sr_reg_n_0_[3] ),
        .O(\sr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[3]_i_1 
       (.I0(\sr_reg[15]_0 [3]),
        .I1(load),
        .I2(\sr_reg_n_0_[4] ),
        .O(\sr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[4]_i_1 
       (.I0(\sr_reg[15]_0 [4]),
        .I1(load),
        .I2(\sr_reg_n_0_[5] ),
        .O(\sr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[5]_i_1 
       (.I0(\sr_reg[15]_0 [5]),
        .I1(load),
        .I2(\sr_reg_n_0_[6] ),
        .O(\sr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[6]_i_1 
       (.I0(\sr_reg[15]_0 [6]),
        .I1(load),
        .I2(\sr_reg_n_0_[7] ),
        .O(\sr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[7]_i_1 
       (.I0(\sr_reg[15]_0 [7]),
        .I1(load),
        .I2(\sr_reg_n_0_[8] ),
        .O(\sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[8]_i_1 
       (.I0(\sr_reg[15]_0 [8]),
        .I1(load),
        .I2(\sr_reg_n_0_[9] ),
        .O(\sr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[9]_i_1 
       (.I0(\sr_reg[15]_0 [9]),
        .I1(load),
        .I2(\sr_reg_n_0_[10] ),
        .O(\sr[9]_i_1_n_0 ));
  FDRE \sr_reg[0] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[0]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sr_reg[10] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[10]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \sr_reg[11] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[11]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \sr_reg[12] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[12]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \sr_reg[13] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[13]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \sr_reg[14] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[14]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \sr_reg[15] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[15]_i_2_n_0 ),
        .Q(\sr_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \sr_reg[1] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[1]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \sr_reg[2] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[2]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \sr_reg[3] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[3]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \sr_reg[4] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[4]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \sr_reg[5] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[5]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \sr_reg[6] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[6]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \sr_reg[7] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[7]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \sr_reg[8] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[8]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \sr_reg[9] 
       (.C(link_clk),
        .CE(sr),
        .D(\sr[9]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hdlc_rx" *) 
module tester_hdlc_blocks_v1_0_0_0_hdlc_rx
   (D,
    \nr_reg[2]_0 ,
    state2__4,
    link_clk,
    s00_axi_aclk,
    Q,
    reset_r,
    s00_axi_wstrb,
    \pulseFifo_reg[0]_0 ,
    \axi_rdata_reg[14] ,
    DOUTADOUT,
    full,
    fifo_empty,
    \FSM_onehot_state_reg[6] ,
    \sr_in_reg[8] ,
    SR,
    \wptr_reg[0]_0 );
  output [15:0]D;
  output [2:0]\nr_reg[2]_0 ;
  output state2__4;
  input link_clk;
  input s00_axi_aclk;
  input [3:0]Q;
  input reset_r;
  input [1:0]s00_axi_wstrb;
  input [0:0]\pulseFifo_reg[0]_0 ;
  input \axi_rdata_reg[14] ;
  input [15:0]DOUTADOUT;
  input full;
  input fifo_empty;
  input [2:0]\FSM_onehot_state_reg[6] ;
  input [0:0]\sr_in_reg[8] ;
  input [0:0]SR;
  input [0:0]\wptr_reg[0]_0 ;

  wire [15:0]D;
  wire [15:0]DOUTADOUT;
  wire [2:0]\FSM_onehot_state_reg[6] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire adv_fifo;
  wire adv_fifo0;
  wire \axi_rdata_reg[14] ;
  wire [15:0]clean16;
  wire crc_n_17;
  wire [15:0]crc_out;
  wire crc_valid;
  wire dataReceiver_n_0;
  wire dataReceiver_n_24;
  wire dataReceiver_n_25;
  wire dataReceiver_n_4;
  wire [15:0]din_fifo;
  wire fifo_empty;
  wire full;
  wire [15:0]latch_crc;
  wire latch_crc_0;
  wire \len[2]_i_1_n_0 ;
  wire \len_reg_n_0_[0] ;
  wire \len_reg_n_0_[1] ;
  wire \len_reg_n_0_[2] ;
  wire [14:2]lfsr_c;
  wire link_clk;
  wire \nr[0]_i_1_n_0 ;
  wire \nr[1]_i_1_n_0 ;
  wire \nr[2]_i_2_n_0 ;
  wire [2:0]\nr_reg[2]_0 ;
  wire [2:0]p_0_out;
  wire [0:0]p_1_out;
  wire [0:0]\pulseFifo_reg[0]_0 ;
  wire \pulseFifo_reg_n_0_[0] ;
  wire \pulseFifo_reg_n_0_[1] ;
  wire reset_r;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_wstrb;
  wire sendlen;
  wire sendlen0;
  wire [0:0]\sr_in_reg[8] ;
  wire state;
  wire state2__4;
  wire [2:0]state__0;
  wire we_buffer;
  wire we_buffer0;
  wire we_fifo;
  wire wptr;
  wire \wptr[0]_i_1_n_0 ;
  wire \wptr[1]_i_1_n_0 ;
  wire \wptr[2]_i_1_n_0 ;
  wire \wptr[2]_i_2_n_0 ;
  wire [0:0]\wptr_reg[0]_0 ;
  wire \wptr_reg_n_0_[0] ;
  wire \wptr_reg_n_0_[1] ;
  wire \wptr_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(\nr_reg[2]_0 [0]),
        .I1(\FSM_onehot_state_reg[6] [0]),
        .I2(\nr_reg[2]_0 [1]),
        .I3(\FSM_onehot_state_reg[6] [1]),
        .I4(\FSM_onehot_state_reg[6] [2]),
        .I5(\nr_reg[2]_0 [2]),
        .O(state2__4));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:101,iSTATE1:100,iSTATE2:001,iSTATE3:000,iSTATE4:011,iSTATE5:110" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(link_clk),
        .CE(dataReceiver_n_4),
        .D(p_0_out[0]),
        .Q(state__0[0]),
        .R(reset_r));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:101,iSTATE1:100,iSTATE2:001,iSTATE3:000,iSTATE4:011,iSTATE5:110" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(link_clk),
        .CE(dataReceiver_n_4),
        .D(p_0_out[1]),
        .Q(state__0[1]),
        .R(reset_r));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:101,iSTATE1:100,iSTATE2:001,iSTATE3:000,iSTATE4:011,iSTATE5:110" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(link_clk),
        .CE(dataReceiver_n_4),
        .D(p_0_out[2]),
        .Q(state__0[2]),
        .R(reset_r));
  LUT2 #(
    .INIT(4'h2)) 
    adv_fifo_i_1
       (.I0(\pulseFifo_reg_n_0_[0] ),
        .I1(\pulseFifo_reg_n_0_[1] ),
        .O(adv_fifo0));
  FDRE adv_fifo_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(adv_fifo0),
        .Q(adv_fifo),
        .R(1'b0));
  tester_hdlc_blocks_v1_0_0_0_hdlc_fifo_0 buffer
       (.D(D),
        .DINADIN(din_fifo),
        .DOUTADOUT(DOUTADOUT),
        .E(adv_fifo),
        .Q({\wptr_reg_n_0_[2] ,\wptr_reg_n_0_[1] ,\wptr_reg_n_0_[0] }),
        .SR(SR),
        .WEA(we_buffer),
        .\axi_rdata_reg[12] (Q),
        .\axi_rdata_reg[14] (\nr_reg[2]_0 ),
        .\axi_rdata_reg[14]_0 (\axi_rdata_reg[14] ),
        .fifo_empty(fifo_empty),
        .full(full),
        .link_clk(link_clk),
        .s00_axi_aclk(s00_axi_aclk),
        .\wptr_reg[0]_0 (\wptr_reg[0]_0 ),
        .\wptr_reg[2]_0 (we_fifo));
  tester_hdlc_blocks_v1_0_0_0_hdlc_crc_1 crc
       (.AS(wptr),
        .D({lfsr_c[14],lfsr_c[12:11],lfsr_c[2]}),
        .E(we_buffer),
        .Q(state__0),
        .\lfsr_q_reg[0]_0 ({clean16[15:10],clean16[8:0]}),
        .\lfsr_q_reg[15]_0 ({crc_out[0],crc_out[1],crc_out[2],crc_out[3],crc_out[4],crc_out[5],crc_out[6],crc_out[7],crc_out[8],crc_out[9],crc_out[10],crc_out[11],crc_out[12],crc_out[13],crc_out[14],crc_out[15]}),
        .\lfsr_q_reg[2]_0 (crc_n_17),
        .\lfsr_q_reg[7]_0 (dataReceiver_n_24),
        .\lfsr_q_reg[8]_0 (dataReceiver_n_25),
        .link_clk(link_clk));
  FDRE crc_valid_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(dataReceiver_n_0),
        .Q(crc_valid),
        .R(1'b0));
  tester_hdlc_blocks_v1_0_0_0_hdlc_inputregister dataReceiver
       (.D(p_0_out),
        .DINADIN(din_fifo),
        .E(dataReceiver_n_4),
        .\FSM_sequential_state_reg[0] (dataReceiver_n_0),
        .Q(state__0),
        .buffer_reg_bram_0({\len_reg_n_0_[2] ,\len_reg_n_0_[1] ,\len_reg_n_0_[0] }),
        .crc_valid(crc_valid),
        .crc_valid_reg(latch_crc),
        .data_is_valid_reg_0(we_buffer),
        .\lfsr_q_reg[12] ({crc_out[15],crc_out[13:11],crc_out[9:4],crc_out[2:0]}),
        .\lfsr_q_reg[14] (crc_n_17),
        .\lfsr_q_reg[9] ({lfsr_c[14],lfsr_c[12:11],lfsr_c[2]}),
        .link_clk(link_clk),
        .\outputRegister_reg[12]_0 (dataReceiver_n_25),
        .\outputRegister_reg[15]_0 ({clean16[15:10],clean16[8:0]}),
        .\outputRegister_reg[5]_0 (dataReceiver_n_24),
        .reset_r(reset_r),
        .sendlen(sendlen),
        .\sr_in_reg[8]_0 (\sr_in_reg[8] ));
  LUT3 #(
    .INIT(8'h08)) 
    \latch_crc[15]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .O(latch_crc_0));
  FDRE \latch_crc_reg[0] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[0]),
        .Q(latch_crc[0]),
        .R(1'b0));
  FDRE \latch_crc_reg[10] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[10]),
        .Q(latch_crc[10]),
        .R(1'b0));
  FDRE \latch_crc_reg[11] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[11]),
        .Q(latch_crc[11]),
        .R(1'b0));
  FDRE \latch_crc_reg[12] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[12]),
        .Q(latch_crc[12]),
        .R(1'b0));
  FDRE \latch_crc_reg[13] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[13]),
        .Q(latch_crc[13]),
        .R(1'b0));
  FDRE \latch_crc_reg[14] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[14]),
        .Q(latch_crc[14]),
        .R(1'b0));
  FDRE \latch_crc_reg[15] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[15]),
        .Q(latch_crc[15]),
        .R(1'b0));
  FDRE \latch_crc_reg[1] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[1]),
        .Q(latch_crc[1]),
        .R(1'b0));
  FDRE \latch_crc_reg[2] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[2]),
        .Q(latch_crc[2]),
        .R(1'b0));
  FDRE \latch_crc_reg[3] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[3]),
        .Q(latch_crc[3]),
        .R(1'b0));
  FDRE \latch_crc_reg[4] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[4]),
        .Q(latch_crc[4]),
        .R(1'b0));
  FDRE \latch_crc_reg[5] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[5]),
        .Q(latch_crc[5]),
        .R(1'b0));
  FDRE \latch_crc_reg[6] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[6]),
        .Q(latch_crc[6]),
        .R(1'b0));
  FDRE \latch_crc_reg[7] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[7]),
        .Q(latch_crc[7]),
        .R(1'b0));
  FDRE \latch_crc_reg[8] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[8]),
        .Q(latch_crc[8]),
        .R(1'b0));
  FDRE \latch_crc_reg[9] 
       (.C(link_clk),
        .CE(latch_crc_0),
        .D(crc_out[9]),
        .Q(latch_crc[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \len[2]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(\len[2]_i_1_n_0 ));
  FDRE \len_reg[0] 
       (.C(link_clk),
        .CE(\len[2]_i_1_n_0 ),
        .D(\wptr_reg_n_0_[0] ),
        .Q(\len_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \len_reg[1] 
       (.C(link_clk),
        .CE(\len[2]_i_1_n_0 ),
        .D(\wptr_reg_n_0_[1] ),
        .Q(\len_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \len_reg[2] 
       (.C(link_clk),
        .CE(\len[2]_i_1_n_0 ),
        .D(\wptr_reg_n_0_[2] ),
        .Q(\len_reg_n_0_[2] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \nr[0]_i_1 
       (.I0(\nr_reg[2]_0 [0]),
        .O(\nr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \nr[1]_i_1 
       (.I0(\nr_reg[2]_0 [0]),
        .I1(\nr_reg[2]_0 [1]),
        .O(\nr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \nr[2]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(state));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \nr[2]_i_2 
       (.I0(\nr_reg[2]_0 [0]),
        .I1(\nr_reg[2]_0 [1]),
        .I2(\nr_reg[2]_0 [2]),
        .O(\nr[2]_i_2_n_0 ));
  FDRE \nr_reg[0] 
       (.C(link_clk),
        .CE(state),
        .D(\nr[0]_i_1_n_0 ),
        .Q(\nr_reg[2]_0 [0]),
        .R(reset_r));
  FDRE \nr_reg[1] 
       (.C(link_clk),
        .CE(state),
        .D(\nr[1]_i_1_n_0 ),
        .Q(\nr_reg[2]_0 [1]),
        .R(reset_r));
  FDRE \nr_reg[2] 
       (.C(link_clk),
        .CE(state),
        .D(\nr[2]_i_2_n_0 ),
        .Q(\nr_reg[2]_0 [2]),
        .R(reset_r));
  LUT5 #(
    .INIT(32'h80000000)) 
    \pulseFifo[0]_i_1 
       (.I0(Q[3]),
        .I1(s00_axi_wstrb[0]),
        .I2(\pulseFifo_reg[0]_0 ),
        .I3(s00_axi_wstrb[1]),
        .I4(\axi_rdata_reg[14] ),
        .O(p_1_out));
  FDRE \pulseFifo_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(\pulseFifo_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pulseFifo_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pulseFifo_reg_n_0_[0] ),
        .Q(\pulseFifo_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    sendlen_i_1
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(sendlen0));
  FDRE sendlen_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(sendlen0),
        .Q(sendlen),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h18)) 
    we_buffer_i_1
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(we_buffer0));
  FDRE we_buffer_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(we_buffer0),
        .Q(we_buffer),
        .R(1'b0));
  FDRE we_fifo_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(state),
        .Q(we_fifo),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h40FF)) 
    \wptr[0]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\wptr_reg_n_0_[0] ),
        .O(\wptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h6F666666)) 
    \wptr[1]_i_1 
       (.I0(\wptr_reg_n_0_[1] ),
        .I1(\wptr_reg_n_0_[0] ),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(\wptr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h42)) 
    \wptr[2]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\wptr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AFF6A6A6A6A6A6A)) 
    \wptr[2]_i_2 
       (.I0(\wptr_reg_n_0_[2] ),
        .I1(\wptr_reg_n_0_[1] ),
        .I2(\wptr_reg_n_0_[0] ),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(\wptr[2]_i_2_n_0 ));
  FDRE \wptr_reg[0] 
       (.C(link_clk),
        .CE(\wptr[2]_i_1_n_0 ),
        .D(\wptr[0]_i_1_n_0 ),
        .Q(\wptr_reg_n_0_[0] ),
        .R(wptr));
  FDRE \wptr_reg[1] 
       (.C(link_clk),
        .CE(\wptr[2]_i_1_n_0 ),
        .D(\wptr[1]_i_1_n_0 ),
        .Q(\wptr_reg_n_0_[1] ),
        .R(wptr));
  FDRE \wptr_reg[2] 
       (.C(link_clk),
        .CE(\wptr[2]_i_1_n_0 ),
        .D(\wptr[2]_i_2_n_0 ),
        .Q(\wptr_reg_n_0_[2] ),
        .R(wptr));
endmodule

(* ORIG_REF_NAME = "hdlc_top" *) 
module tester_hdlc_blocks_v1_0_0_0_hdlc_top
   (serout,
    D,
    s00_axi_aclk,
    link_clk,
    Q,
    s00_axi_wdata,
    hdlc_reset,
    s00_axi_wstrb,
    buffer_reg_bram_0,
    \sr_in_reg[8] );
  output serout;
  output [15:0]D;
  input s00_axi_aclk;
  input link_clk;
  input [3:0]Q;
  input [15:0]s00_axi_wdata;
  input hdlc_reset;
  input [1:0]s00_axi_wstrb;
  input [0:0]buffer_reg_bram_0;
  input [0:0]\sr_in_reg[8] ;

  wire [15:0]D;
  wire [3:0]Q;
  wire [0:0]buffer_reg_bram_0;
  wire fifo_empty;
  wire full;
  wire hdlc_reset;
  wire link_clk;
  wire [2:0]nr;
  wire [2:0]nr_last;
  wire [15:0]read_fifo;
  wire resetR;
  wire resetW;
  wire reset_r;
  wire reset_r0;
  wire s00_axi_aclk;
  wire [15:0]s00_axi_wdata;
  wire [1:0]s00_axi_wstrb;
  wire serout;
  wire [0:0]\sr_in_reg[8] ;
  wire state2__4;
  wire theTX_n_21;
  wire theTX_n_22;

  LUT5 #(
    .INIT(32'hFFFF2000)) 
    reset_r_i_1
       (.I0(theTX_n_22),
        .I1(Q[3]),
        .I2(s00_axi_wdata[5]),
        .I3(theTX_n_21),
        .I4(hdlc_reset),
        .O(reset_r0));
  FDRE reset_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(reset_r0),
        .Q(reset_r),
        .R(1'b0));
  tester_hdlc_blocks_v1_0_0_0_hdlc_rx theRX
       (.D(D),
        .DOUTADOUT(read_fifo),
        .\FSM_onehot_state_reg[6] (nr_last),
        .Q(Q),
        .SR(resetR),
        .\axi_rdata_reg[14] (theTX_n_22),
        .fifo_empty(fifo_empty),
        .full(full),
        .link_clk(link_clk),
        .\nr_reg[2]_0 (nr),
        .\pulseFifo_reg[0]_0 (buffer_reg_bram_0),
        .reset_r(reset_r),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_wstrb(s00_axi_wstrb),
        .\sr_in_reg[8] (\sr_in_reg[8] ),
        .state2__4(state2__4),
        .\wptr_reg[0]_0 (resetW));
  tester_hdlc_blocks_v1_0_0_0_hdlc_tx theTX
       (.D(nr),
        .DOUTADOUT(read_fifo),
        .Q(Q),
        .SR(resetW),
        .buffer_reg_bram_0(buffer_reg_bram_0),
        .fifo_empty(fifo_empty),
        .full(full),
        .\hdlc_addr_reg[0] (theTX_n_22),
        .link_clk(link_clk),
        .\nr_last_reg[2]_0 (nr_last),
        .resetW_reg(resetR),
        .reset_r(reset_r),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wstrb_0_sp_1(theTX_n_21),
        .serout(serout),
        .state2__4(state2__4));
endmodule

(* ORIG_REF_NAME = "hdlc_tx" *) 
module tester_hdlc_blocks_v1_0_0_0_hdlc_tx
   (DOUTADOUT,
    SR,
    resetW_reg,
    fifo_empty,
    full,
    serout,
    s00_axi_wstrb_0_sp_1,
    \hdlc_addr_reg[0] ,
    \nr_last_reg[2]_0 ,
    s00_axi_aclk,
    link_clk,
    Q,
    s00_axi_wdata,
    reset_r,
    s00_axi_wstrb,
    buffer_reg_bram_0,
    state2__4,
    D);
  output [15:0]DOUTADOUT;
  output [0:0]SR;
  output [0:0]resetW_reg;
  output fifo_empty;
  output full;
  output serout;
  output s00_axi_wstrb_0_sp_1;
  output \hdlc_addr_reg[0] ;
  output [2:0]\nr_last_reg[2]_0 ;
  input s00_axi_aclk;
  input link_clk;
  input [3:0]Q;
  input [15:0]s00_axi_wdata;
  input reset_r;
  input [1:0]s00_axi_wstrb;
  input [0:0]buffer_reg_bram_0;
  input state2__4;
  input [2:0]D;

  wire [2:0]D;
  wire [15:0]DOUTADOUT;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire autoheader;
  wire bufWrite_n_35;
  wire bufWrite_n_36;
  wire bufWrite_n_37;
  wire bufWrite_n_38;
  wire [15:0]buf_to_tx;
  wire [0:0]buffer_reg_bram_0;
  wire busy0;
  wire busy_reg_n_0;
  wire crc_enable;
  wire crc_enable0;
  wire [0:0]crc_fcs;
  wire crc_init;
  wire crc_n_0;
  wire crc_n_1;
  wire crc_n_10;
  wire crc_n_11;
  wire crc_n_12;
  wire crc_n_14;
  wire crc_n_15;
  wire crc_n_2;
  wire crc_n_3;
  wire crc_n_4;
  wire crc_n_5;
  wire crc_n_6;
  wire crc_n_7;
  wire crc_n_8;
  wire crc_n_9;
  wire fifo_adv;
  wire fifo_empty;
  wire fifo_load;
  wire fifo_load0;
  wire \fifo_load_fifo_reg_n_0_[0] ;
  wire \fifo_load_fifo_reg_n_0_[1] ;
  wire full;
  wire \hdlc_addr_reg[0] ;
  wire in6;
  wire [2:0]len;
  wire len_0;
  wire link_clk;
  wire nr_last;
  wire [2:0]\nr_last_reg[2]_0 ;
  wire [2:0]ns;
  wire ns0;
  wire \ns[0]_i_1_n_0 ;
  wire \ns[1]_i_1_n_0 ;
  wire \ns[2]_i_2_n_0 ;
  wire ns_1;
  wire p_1_in;
  wire [0:0]p_2_out;
  wire ptr;
  wire \ptr[0]_i_1_n_0 ;
  wire \ptr[1]_i_1_n_0 ;
  wire \ptr[2]_i_1_n_0 ;
  wire \ptr[2]_i_2_n_0 ;
  wire \ptr_reg_n_0_[0] ;
  wire \ptr_reg_n_0_[1] ;
  wire \ptr_reg_n_0_[2] ;
  wire req_tx;
  wire req_tx_i_1_n_0;
  wire req_tx_i_2_n_0;
  wire [0:0]resetW_reg;
  wire reset_ns;
  wire reset_ns_reg_n_0;
  wire reset_r;
  wire s00_axi_aclk;
  wire [15:0]s00_axi_wdata;
  wire [1:0]s00_axi_wstrb;
  wire s00_axi_wstrb_0_sn_1;
  wire serout;
  wire srOutSuppressZeroing;
  wire srOutSuppressZeroing_i_1_n_0;
  wire srOutWord;
  wire \srOutWord[12]_i_2_n_0 ;
  wire \srOutWord[13]_i_2_n_0 ;
  wire \srOutWord[14]_i_2_n_0 ;
  wire \srOutWord_reg_n_0_[0] ;
  wire \srOutWord_reg_n_0_[10] ;
  wire \srOutWord_reg_n_0_[11] ;
  wire \srOutWord_reg_n_0_[12] ;
  wire \srOutWord_reg_n_0_[13] ;
  wire \srOutWord_reg_n_0_[14] ;
  wire \srOutWord_reg_n_0_[15] ;
  wire \srOutWord_reg_n_0_[1] ;
  wire \srOutWord_reg_n_0_[2] ;
  wire \srOutWord_reg_n_0_[3] ;
  wire \srOutWord_reg_n_0_[4] ;
  wire \srOutWord_reg_n_0_[5] ;
  wire \srOutWord_reg_n_0_[6] ;
  wire \srOutWord_reg_n_0_[7] ;
  wire \srOutWord_reg_n_0_[8] ;
  wire \srOutWord_reg_n_0_[9] ;
  wire srOut_n_1;
  wire srOut_n_2;
  wire srOut_n_3;
  wire srOut_n_4;
  wire srOut_n_5;
  wire srOut_n_6;
  wire srOut_n_7;
  wire srOut_n_8;
  wire srOut_n_9;
  wire state2__4;

  assign s00_axi_wstrb_0_sp_1 = s00_axi_wstrb_0_sn_1;
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_onehot_state[7]_i_2 
       (.I0(len[0]),
        .I1(\ptr_reg_n_0_[0] ),
        .I2(len[1]),
        .I3(\ptr_reg_n_0_[1] ),
        .I4(\ptr_reg_n_0_[2] ),
        .I5(len[2]),
        .O(in6));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(len_0),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(srOutWord),
        .I4(p_1_in),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(link_clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(srOut_n_9),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(reset_r));
  (* FSM_ENCODED_STATES = "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(link_clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(srOut_n_8),
        .Q(ptr),
        .R(reset_r));
  (* FSM_ENCODED_STATES = "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(link_clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(srOut_n_7),
        .Q(ns_1),
        .R(reset_r));
  (* FSM_ENCODED_STATES = "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(link_clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(srOut_n_6),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(reset_r));
  (* FSM_ENCODED_STATES = "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(link_clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(srOut_n_5),
        .Q(p_1_in),
        .R(reset_r));
  (* FSM_ENCODED_STATES = "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(link_clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(bufWrite_n_38),
        .Q(len_0),
        .R(reset_r));
  (* FSM_ENCODED_STATES = "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[6] 
       (.C(link_clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(srOut_n_4),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .S(reset_r));
  (* FSM_ENCODED_STATES = "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(link_clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(srOut_n_3),
        .Q(nr_last),
        .R(reset_r));
  (* FSM_ENCODED_STATES = "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(link_clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(srOut_n_2),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(reset_r));
  (* FSM_ENCODED_STATES = "ST_SOF:0000000001,ST_AUTOHEADER:0000000100,ST_START_REQ:0000010000,ST_LOAD_PACKET:0000100000,ST_IDLE:0001000000,ST_FCS:0010000000,ST_EOF:1000000000,ST_DATA_WAIT:0000001000,ST_FCS_WAIT:0100000000,ST_DATA:0000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(link_clk),
        .CE(\FSM_onehot_state[9]_i_1_n_0 ),
        .D(srOut_n_1),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(reset_r));
  FDRE autoheader_reg
       (.C(link_clk),
        .CE(len_0),
        .D(buf_to_tx[4]),
        .Q(autoheader),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[15]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\hdlc_addr_reg[0] ));
  tester_hdlc_blocks_v1_0_0_0_hdlc_fifo bufWrite
       (.D({bufWrite_n_35,bufWrite_n_36,bufWrite_n_37}),
        .DOUTADOUT(DOUTADOUT),
        .DOUTBDOUT({buf_to_tx[15:12],buf_to_tx[10:9],buf_to_tx[7:0]}),
        .E(fifo_adv),
        .\FSM_onehot_state_reg[6] (bufWrite_n_38),
        .Q(Q),
        .SR(SR),
        .buffer_reg_bram_0_0({\ptr_reg_n_0_[2] ,\ptr_reg_n_0_[1] ,\ptr_reg_n_0_[0] }),
        .buffer_reg_bram_0_1(buffer_reg_bram_0),
        .fifo_empty(fifo_empty),
        .full(full),
        .link_clk(link_clk),
        .req_tx(req_tx),
        .resetW_reg_0(resetW_reg),
        .reset_ns(reset_ns),
        .reset_r(reset_r),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .\srOutWord_reg[0] (crc_fcs),
        .\srOutWord_reg[11] (ns[2]),
        .\srOutWord_reg[11]_0 (crc_n_14),
        .\srOutWord_reg[8] ({\FSM_onehot_state_reg_n_0_[9] ,nr_last,\FSM_onehot_state_reg_n_0_[6] ,len_0,ns_1,ptr,\FSM_onehot_state_reg_n_0_[0] }),
        .\srOutWord_reg[8]_0 (crc_n_15),
        .state2__4(state2__4),
        .\wptr_reg[2]_0 (fifo_load));
  LUT3 #(
    .INIT(8'h01)) 
    busy_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(len_0),
        .I2(p_1_in),
        .O(busy0));
  FDRE busy_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(busy0),
        .Q(busy_reg_n_0),
        .R(1'b0));
  tester_hdlc_blocks_v1_0_0_0_hdlc_crc crc
       (.AS(crc_init),
        .D({crc_n_0,crc_n_1,crc_n_2,crc_n_3,crc_n_4,crc_n_5,crc_n_6,crc_n_7,crc_n_8,crc_n_9,crc_n_10,crc_n_11,crc_n_12}),
        .DOUTBDOUT({buf_to_tx[15:12],buf_to_tx[10:9],buf_to_tx[7:1]}),
        .E(crc_enable),
        .\FSM_onehot_state_reg[7] (crc_n_14),
        .Q({\FSM_onehot_state_reg_n_0_[9] ,nr_last,\FSM_onehot_state_reg_n_0_[6] ,\FSM_onehot_state_reg_n_0_[3] ,ns_1,ptr,\FSM_onehot_state_reg_n_0_[0] }),
        .crc_out(crc_fcs),
        .\lfsr_q_reg[0]_0 ({\srOutWord_reg_n_0_[15] ,\srOutWord_reg_n_0_[14] ,\srOutWord_reg_n_0_[13] ,\srOutWord_reg_n_0_[12] ,\srOutWord_reg_n_0_[11] ,\srOutWord_reg_n_0_[10] ,\srOutWord_reg_n_0_[9] ,\srOutWord_reg_n_0_[8] ,\srOutWord_reg_n_0_[7] ,\srOutWord_reg_n_0_[6] ,\srOutWord_reg_n_0_[5] ,\srOutWord_reg_n_0_[4] ,\srOutWord_reg_n_0_[3] ,\srOutWord_reg_n_0_[2] ,\srOutWord_reg_n_0_[1] ,\srOutWord_reg_n_0_[0] }),
        .\lfsr_q_reg[7]_0 (crc_n_15),
        .link_clk(link_clk),
        .\srOutWord_reg[10] (\srOutWord[14]_i_2_n_0 ),
        .\srOutWord_reg[12] (\srOutWord[12]_i_2_n_0 ),
        .\srOutWord_reg[15] (ns[2]),
        .\srOutWord_reg[9] (\srOutWord[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    crc_enable_i_1
       (.I0(ns_1),
        .I1(ptr),
        .I2(p_1_in),
        .O(crc_enable0));
  FDRE crc_enable_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(crc_enable0),
        .Q(crc_enable),
        .R(1'b0));
  FDSE crc_init_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(crc_init),
        .S(reset_r));
  FDRE fifo_adv_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(nr_last),
        .Q(fifo_adv),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \fifo_load_fifo[0]_i_1 
       (.I0(s00_axi_wdata[15]),
        .I1(s00_axi_wstrb[0]),
        .I2(buffer_reg_bram_0),
        .I3(s00_axi_wstrb[1]),
        .I4(Q[3]),
        .I5(\hdlc_addr_reg[0] ),
        .O(p_2_out));
  FDRE \fifo_load_fifo_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_2_out),
        .Q(\fifo_load_fifo_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \fifo_load_fifo_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\fifo_load_fifo_reg_n_0_[0] ),
        .Q(\fifo_load_fifo_reg_n_0_[1] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_load_i_1
       (.I0(\fifo_load_fifo_reg_n_0_[0] ),
        .I1(\fifo_load_fifo_reg_n_0_[1] ),
        .O(fifo_load0));
  FDRE fifo_load_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fifo_load0),
        .Q(fifo_load),
        .R(1'b0));
  FDRE \len_reg[0] 
       (.C(link_clk),
        .CE(len_0),
        .D(buf_to_tx[0]),
        .Q(len[0]),
        .R(1'b0));
  FDRE \len_reg[1] 
       (.C(link_clk),
        .CE(len_0),
        .D(buf_to_tx[1]),
        .Q(len[1]),
        .R(1'b0));
  FDRE \len_reg[2] 
       (.C(link_clk),
        .CE(len_0),
        .D(buf_to_tx[2]),
        .Q(len[2]),
        .R(1'b0));
  FDSE \nr_last_reg[0] 
       (.C(link_clk),
        .CE(nr_last),
        .D(D[0]),
        .Q(\nr_last_reg[2]_0 [0]),
        .S(reset_r));
  FDSE \nr_last_reg[1] 
       (.C(link_clk),
        .CE(nr_last),
        .D(D[1]),
        .Q(\nr_last_reg[2]_0 [1]),
        .S(reset_r));
  FDSE \nr_last_reg[2] 
       (.C(link_clk),
        .CE(nr_last),
        .D(D[2]),
        .Q(\nr_last_reg[2]_0 [2]),
        .S(reset_r));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ns[0]_i_1 
       (.I0(ns[0]),
        .O(\ns[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ns[1]_i_1 
       (.I0(ns[0]),
        .I1(ns[1]),
        .O(\ns[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ns[2]_i_1 
       (.I0(reset_r),
        .I1(reset_ns_reg_n_0),
        .O(ns0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ns[2]_i_2 
       (.I0(ns[0]),
        .I1(ns[1]),
        .I2(ns[2]),
        .O(\ns[2]_i_2_n_0 ));
  FDRE \ns_reg[0] 
       (.C(link_clk),
        .CE(ns_1),
        .D(\ns[0]_i_1_n_0 ),
        .Q(ns[0]),
        .R(ns0));
  FDRE \ns_reg[1] 
       (.C(link_clk),
        .CE(ns_1),
        .D(\ns[1]_i_1_n_0 ),
        .Q(ns[1]),
        .R(ns0));
  FDRE \ns_reg[2] 
       (.C(link_clk),
        .CE(ns_1),
        .D(\ns[2]_i_2_n_0 ),
        .Q(ns[2]),
        .R(ns0));
  LUT2 #(
    .INIT(4'h1)) 
    \ptr[0]_i_1 
       (.I0(\ptr_reg_n_0_[0] ),
        .I1(p_1_in),
        .O(\ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \ptr[1]_i_1 
       (.I0(\ptr_reg_n_0_[1] ),
        .I1(\ptr_reg_n_0_[0] ),
        .I2(p_1_in),
        .O(\ptr[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ptr[2]_i_1 
       (.I0(ptr),
        .I1(p_1_in),
        .O(\ptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \ptr[2]_i_2 
       (.I0(\ptr_reg_n_0_[2] ),
        .I1(\ptr_reg_n_0_[1] ),
        .I2(\ptr_reg_n_0_[0] ),
        .I3(p_1_in),
        .O(\ptr[2]_i_2_n_0 ));
  FDSE \ptr_reg[0] 
       (.C(link_clk),
        .CE(\ptr[2]_i_1_n_0 ),
        .D(\ptr[0]_i_1_n_0 ),
        .Q(\ptr_reg_n_0_[0] ),
        .S(\FSM_onehot_state_reg_n_0_[6] ));
  FDSE \ptr_reg[1] 
       (.C(link_clk),
        .CE(\ptr[2]_i_1_n_0 ),
        .D(\ptr[1]_i_1_n_0 ),
        .Q(\ptr_reg_n_0_[1] ),
        .S(\FSM_onehot_state_reg_n_0_[6] ));
  FDSE \ptr_reg[2] 
       (.C(link_clk),
        .CE(\ptr[2]_i_1_n_0 ),
        .D(\ptr[2]_i_2_n_0 ),
        .Q(\ptr_reg_n_0_[2] ),
        .S(\FSM_onehot_state_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'h1110101000101010)) 
    req_tx_i_1
       (.I0(reset_r),
        .I1(busy_reg_n_0),
        .I2(req_tx),
        .I3(s00_axi_wstrb_0_sn_1),
        .I4(req_tx_i_2_n_0),
        .I5(s00_axi_wdata[15]),
        .O(req_tx_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    req_tx_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(req_tx_i_2_n_0));
  FDRE req_tx_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(req_tx_i_1_n_0),
        .Q(req_tx),
        .R(1'b0));
  FDRE reset_ns_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(reset_ns),
        .Q(reset_ns_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    reset_r_i_2
       (.I0(s00_axi_wstrb[0]),
        .I1(buffer_reg_bram_0),
        .I2(s00_axi_wstrb[1]),
        .O(s00_axi_wstrb_0_sn_1));
  tester_hdlc_blocks_v1_0_0_0_hdlc_outputregister srOut
       (.D({srOut_n_1,srOut_n_2,srOut_n_3,srOut_n_4,srOut_n_5,srOut_n_6,srOut_n_7,srOut_n_8,srOut_n_9}),
        .Q({\FSM_onehot_state_reg_n_0_[9] ,\FSM_onehot_state_reg_n_0_[8] ,nr_last,\FSM_onehot_state_reg_n_0_[6] ,len_0,p_1_in,\FSM_onehot_state_reg_n_0_[3] ,ns_1,ptr,\FSM_onehot_state_reg_n_0_[0] }),
        .autoheader(autoheader),
        .fifo_empty(fifo_empty),
        .in6(in6),
        .link_clk(link_clk),
        .req_tx(req_tx),
        .reset_r(reset_r),
        .serout(serout),
        .srOutSuppressZeroing(srOutSuppressZeroing),
        .\sr_reg[15]_0 ({\srOutWord_reg_n_0_[15] ,\srOutWord_reg_n_0_[14] ,\srOutWord_reg_n_0_[13] ,\srOutWord_reg_n_0_[12] ,\srOutWord_reg_n_0_[11] ,\srOutWord_reg_n_0_[10] ,\srOutWord_reg_n_0_[9] ,\srOutWord_reg_n_0_[8] ,\srOutWord_reg_n_0_[7] ,\srOutWord_reg_n_0_[6] ,\srOutWord_reg_n_0_[5] ,\srOutWord_reg_n_0_[4] ,\srOutWord_reg_n_0_[3] ,\srOutWord_reg_n_0_[2] ,\srOutWord_reg_n_0_[1] ,\srOutWord_reg_n_0_[0] }),
        .state2__4(state2__4));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFE00)) 
    srOutSuppressZeroing_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(srOutWord),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(srOutSuppressZeroing),
        .O(srOutSuppressZeroing_i_1_n_0));
  FDRE srOutSuppressZeroing_reg
       (.C(link_clk),
        .CE(1'b1),
        .D(srOutSuppressZeroing_i_1_n_0),
        .Q(srOutSuppressZeroing),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \srOutWord[12]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .O(\srOutWord[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \srOutWord[13]_i_2 
       (.I0(ns_1),
        .I1(ns[0]),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\srOutWord[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \srOutWord[14]_i_2 
       (.I0(ns_1),
        .I1(ns[1]),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\srOutWord[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \srOutWord[15]_i_1 
       (.I0(nr_last),
        .I1(ptr),
        .I2(ns_1),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(srOutWord));
  FDRE \srOutWord_reg[0] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(bufWrite_n_37),
        .Q(\srOutWord_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \srOutWord_reg[10] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(crc_n_4),
        .Q(\srOutWord_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \srOutWord_reg[11] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(bufWrite_n_35),
        .Q(\srOutWord_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \srOutWord_reg[12] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(crc_n_3),
        .Q(\srOutWord_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \srOutWord_reg[13] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(crc_n_2),
        .Q(\srOutWord_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \srOutWord_reg[14] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(crc_n_1),
        .Q(\srOutWord_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \srOutWord_reg[15] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(crc_n_0),
        .Q(\srOutWord_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \srOutWord_reg[1] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(crc_n_12),
        .Q(\srOutWord_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \srOutWord_reg[2] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(crc_n_11),
        .Q(\srOutWord_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \srOutWord_reg[3] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(crc_n_10),
        .Q(\srOutWord_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \srOutWord_reg[4] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(crc_n_9),
        .Q(\srOutWord_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \srOutWord_reg[5] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(crc_n_8),
        .Q(\srOutWord_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \srOutWord_reg[6] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(crc_n_7),
        .Q(\srOutWord_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \srOutWord_reg[7] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(crc_n_6),
        .Q(\srOutWord_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \srOutWord_reg[8] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(bufWrite_n_36),
        .Q(\srOutWord_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \srOutWord_reg[9] 
       (.C(link_clk),
        .CE(srOutWord),
        .D(crc_n_5),
        .Q(\srOutWord_reg_n_0_[9] ),
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
