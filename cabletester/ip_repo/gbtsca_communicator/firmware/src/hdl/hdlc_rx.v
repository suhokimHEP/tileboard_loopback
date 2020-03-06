`timescale 1ns / 1ps
/*
    HDLC port for communication with a GBT-SCA. Used for the input register
*/

module hdlc_rx(              output [15:0] dout,
			     input [2:0]   addr,
			     input 	   reset,
			     input 	   io_we, 
			     input 	   io_clk,
			     input 	   srin,
			     input 	   link_clk,
			     output reg [2:0]  nr
		    );


   wire [15:0] 		     clean16;
   reg 			     we_buffer, we_fifo, crc_valid, sendlen;
   reg [2:0] 		     wptr, len;
   wire 		     EOF, data_is_valid;
   
   wire [15:0] 		     dout_fifo, din_fifo;
   wire 		     empty;

   reg 		             adv_fifo;
   reg [15:0] 		     latch_crc;
   wire [15:0] crc_out;

   assign dout=(addr==3'h7)?({~empty,nr,dout_fifo[11:0]}):(dout_fifo);   

   // input shift register
   hdlc_inputregister dataReceiver(.reset(reset), .clk(link_clk),.data_in(srin),
				   .data_consumed_from_outputRegister(we_buffer),.outputRegister(clean16),
				   .data_is_valid(data_is_valid),.EOF_or_abort(EOF));   
      
   assign din_fifo=(~sendlen)?(clean16):({8'h0,3'h0,crc_valid,1'h0,len});
   
   hdlc_fifo buffer(.reset(reset),
                    .clkW(link_clk),.addrW(wptr),.din(din_fifo),.fifo_we(we_fifo),.we(we_buffer),
                    .clkR(io_clk),.addrR(addr[2:0]),.dout(dout_fifo),.fifo_re(adv_fifo),.empty(empty));

   reg [2:0] 		     state;
   localparam ST_IDLE           = 3'h0;
   localparam ST_INCOMING       = 3'h1;
   localparam ST_STOREWORD      = 3'h2;
   localparam ST_STOREWORD2     = 3'h3;
   localparam ST_CHECKCRC       = 3'h4;      
   localparam ST_LATCHLEN       = 3'h5;
   localparam ST_DONE           = 3'h6;

always @(posedge link_clk)
  if (reset) state<=ST_IDLE;
  else if (state==ST_IDLE) begin
     if (data_is_valid) state<=ST_STOREWORD;
     else state<=ST_IDLE;
  end else if (state==ST_INCOMING) begin
     if (data_is_valid) state<=ST_STOREWORD;
     else if (EOF) state<=ST_CHECKCRC;
  end else if (state==ST_STOREWORD) state<=ST_STOREWORD2;
  else if (state==ST_STOREWORD2) state<=ST_INCOMING; // need extra step to clear data is valid
  else if (state==ST_CHECKCRC) state<=ST_LATCHLEN;
  else if (state==ST_LATCHLEN) state<=ST_DONE;
  else if (state==ST_DONE) state<=ST_IDLE;

always @(posedge link_clk) begin // simplistic: does not differentiate between packet types
   if (reset) nr<=3'h0;
   else if (state==ST_DONE) nr<=nr+3'h1;
   else nr<=nr;
end
        
always @(posedge link_clk) begin
   we_buffer<=(state==ST_STOREWORD || state==ST_LATCHLEN);
   we_fifo<=(state==ST_DONE);
   
   sendlen<=(state==ST_CHECKCRC || state==ST_LATCHLEN || state==ST_DONE);

   if (state==ST_CHECKCRC) len<=wptr;
   else len<=len;
   
   if (state==ST_IDLE) wptr<=3'h0;
   else if (state==ST_STOREWORD2) wptr<=wptr+3'h1;
   else if (state==ST_CHECKCRC) wptr<=3'h7;
   else wptr<=wptr;
end


   hdlc_crc crc(.data_in(clean16),.crc_en(we_buffer),.rst(state==ST_IDLE),.clk(link_clk),.crc_out(crc_out));
   always @(posedge link_clk)
     if (state==ST_STOREWORD) latch_crc<=crc_out;
     else latch_crc<=latch_crc;

   always @(posedge link_clk)
     if (state==ST_CHECKCRC) crc_valid<=(latch_crc==clean16);
     else if (state==ST_INCOMING) crc_valid<=1'h0;
     else crc_valid<=crc_valid;
   
   reg [1:0] pulseFifo;
            
   always @(posedge io_clk) begin
      pulseFifo<={pulseFifo[0],io_we && (addr==3'h7)};
      adv_fifo<=pulseFifo[0] && !pulseFifo[1];
   end
		  
 
 
endmodule
