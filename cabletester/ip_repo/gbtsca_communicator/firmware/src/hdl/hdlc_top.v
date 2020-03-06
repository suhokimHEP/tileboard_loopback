//                              -*- Mode: Verilog -*-
// Filename        : hdlc_top.v
// Description     : top-level wrapper for HDLC manager
// Author          : Jeremiah Mans
// Created On      : Thu Jun 20 12:44:30 2019
// Last Modified By: Jeremiah Mans
// Last Modified On: Thu Jun 20 12:44:30 2019
// Update Count    : 0
// Status          : Unknown, Use with caution!
module hdlc_top (
		 input reset,
		 input [3:0] io_addr,
		 input [15:0] din,
		 output [15:0] dout,
		 input we,
		 input io_clk,
		 input link_clk, // 80 MHz
		 output tx_out,
		 input rx_in,
		 output reg reset_b
);

   wire [15:0] 	       dout_tx, dout_rx;
   reg 		       reset_r;
   wire we_tx, we_rx;
   
   wire [2:0] 	       nr;
   
   hdlc_tx theTX(.reset(reset_r),
		 .io_clk(io_clk),.io_addr(io_addr[2:0]),.din(din),
		 .dout(dout_tx), .we(we_tx),
		 .link_clk(link_clk),.nr(nr),.serout(tx_out));//,.numberOfResets(numberOfResets));
   
   hdlc_rx theRX(.reset(reset_r),
		 .io_clk(io_clk),.addr(io_addr[2:0]),
		 .io_we(we_rx),.dout(dout_rx),
		 .srin(rx_in),.link_clk(link_clk),.nr(nr));
  

   always @(posedge io_clk) 
     reset_r<=reset || (we && io_addr==4'h7 && din[5]);
     
   always @(posedge io_clk)
     reset_b<=reset || (we && io_addr==4'h7 && din[6]);

   assign dout=(io_addr[3])?(dout_rx):(dout_tx);
   
   assign we_tx=we && ~io_addr[3];
   assign we_rx=we && io_addr[3];

endmodule // hdlc_top
