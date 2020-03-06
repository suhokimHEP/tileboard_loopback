`timescale 1ns / 1ps

/**
 
 */

module hdlc_fifo (
		  input 	    reset,
		  input 	    clkW,
		  input [2:0] 	    addrW,
		  input 	    clkR,
		  input [2:0] 	    addrR,
		  input [15:0] 	    din,
		  input 	    fifo_we, 
		  input 	    we, 
		  output reg [15:0] dout,
		  output reg [15:0] dout_W, // read using the addrW (for cases where there is a need to peek)
		  input 	    fifo_re,
		  output reg 	    empty, 
		  output reg 	    full	  
		  ) ;

   reg [15:0]         buffer [(8*8-1):0];
   reg [2:0] 		  wptr, rptr;
   reg resetW, resetR;

   always @(posedge clkW)
     resetW<=reset;

   always @(posedge clkR)
     resetR<=reset;

   wire [2:0] wptr_next;
   assign wptr_next=wptr+3'h1;   
   
   always @(posedge clkW)
     if (resetW) wptr<=3'h0;
     else if (fifo_we) wptr<=wptr_next;
     else wptr<=wptr;

   always @(posedge clkR)
     if (resetR) rptr<=3'h0;
     else if (fifo_re) rptr<=rptr+3'h1;
     else rptr<=rptr;
   
   always @(posedge clkR)
     empty<=(wptr==rptr);

   always @(posedge clkW)
     full<=(wptr_next==rptr);
   
   always @(posedge clkR)
     dout<=buffer[{rptr,addrR}];

   always @(posedge clkW)
     if (we) buffer[{wptr,addrW}]<=din;

   always @(posedge clkW)
     dout_W <= buffer[{wptr,addrW}];
   
endmodule // hdlc_buffer

