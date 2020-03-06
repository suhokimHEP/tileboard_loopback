`timescale 1ns / 1ps

/** HDLC tx port for communication with a GBT-SCA
 *   contains a fifo capable of holding up to 7 outgoing packets at once
 *
 * special address 0x7
 * bits 2:0 -> length of packet in 16-bit words
 * bit 4 -> create first 16-bit word automatically for I frame (ns/nr)
 * bit 5 -> reset hdlc block (handled externally)
 * bit 6 -> reset_b (handled externally)
 * bit 12 -> (read only) fifo is full [cannot accept additional packets]
 * bit 13 -> (read only) fifo is empty
 * bit 14 -> reset ns
 * bit 15 -> start transmission
 */

module hdlc_tx(
            input [2:0]   io_addr,
            input [15:0]  din,
            output [15:0] dout,
            input         we,
            input         io_clk,
            input         link_clk,
            input         reset,
            input [2:0]   nr,
            output  reg  busy,
            output        serout
            );


   // pieces related to the N(S) counter
   reg [2:0] ns;
   reg reset_ns, autoheader;

   // output shift register
   wire                   srOutStrobe;
   reg [15:0]             srOutWord;
   reg                    srOutSuppressZeroing;
   hdlc_outputregister srOut(.clk(link_clk),.reset(reset),.data_in(srOutWord),.data_in_isCTL(srOutSuppressZeroing),
                             .serout(serout),.data_consumed(srOutStrobe));

   //  instantiate the write buffer
   wire [15:0] 		  buf_to_tx; 		  
   wire [15:0] 		  read_fifo;
   reg [2:0] 		  ptr, len;
   reg 			  fifo_load, fifo_adv;
   wire 		  fifo_empty, fifo_full;   
   wire 		  is_special_reg;
   reg 			  req_tx;


   // kill off the MSBs for the special register as they auto-reset to zero   
   assign  is_special_reg=(io_addr==3'h7);
   assign dout=(is_special_reg)?({1'h0,read_fifo[14],fifo_empty,fifo_full,read_fifo[11:0]}):(read_fifo);   

   
   hdlc_fifo bufWrite(.reset(reset),
		      .clkW(io_clk),.addrW(io_addr),.din(din),.we(we),.dout_W(read_fifo),.fifo_we(fifo_load),
		      .clkR(link_clk),.addrR(ptr),.dout(buf_to_tx),.fifo_re(fifo_adv),
		      .empty(fifo_empty),.full(fifo_full));

   reg [1:0] fifo_load_fifo;
      
   always @(posedge io_clk) begin
      fifo_load_fifo<={fifo_load_fifo[0],we && io_addr==3'h7 && din[15]};
      fifo_load<=fifo_load_fifo[0] && ~fifo_load_fifo[1]; // single pulse
   end

       
   reg [2:0] 		  nr_last;
   
   //  HDLC state machine
   localparam ST_IDLE        = 4'h0;
   localparam ST_LOAD_PACKET = 4'h1;
   localparam ST_START_REQ   = 4'h2;
   localparam ST_SOF         = 4'h3;
   localparam ST_AUTOHEADER  = 4'h4;
   localparam ST_DATA        = 4'h5;
   localparam ST_DATA_WAIT   = 4'h6;
   localparam ST_FCS         = 4'h7;
   localparam ST_FCS_WAIT    = 4'h8;
   localparam ST_EOF         = 4'h9;
   localparam ST_EOF_WAIT    = 4'hA;

   reg [3:0]              state;   
   
   always @(posedge io_clk)
     if (reset || busy) req_tx<=1'h0;   
     else if (we && io_addr==3'h7) req_tx<=din[15];
     else req_tx<=req_tx;

   
   always @(posedge io_clk)
        busy<=(state!=ST_IDLE && state!=ST_LOAD_PACKET && state!=ST_START_REQ);
  
   
   always @(posedge link_clk)
     if (reset) state<=ST_IDLE;
     else case (state)
	    ST_IDLE: begin
	       if (!fifo_empty && nr_last!=nr && req_tx) state<=ST_LOAD_PACKET;
	       else state<=ST_IDLE;
	    end
	    ST_LOAD_PACKET: state<=ST_START_REQ;
	    ST_START_REQ: begin
	       if (srOutStrobe) state<=ST_SOF;
	       else state<=ST_START_REQ;
	    end
	    ST_SOF : begin
	       if (srOutStrobe && ~autoheader) state<=ST_DATA;
	       else if (srOutStrobe && autoheader) state<=ST_AUTOHEADER;
	       else state<=ST_SOF;
	    end
	    ST_AUTOHEADER : state<=ST_DATA_WAIT;
	    ST_DATA : state<=ST_DATA_WAIT;
	    ST_DATA_WAIT : begin
	       if (srOutStrobe) begin
		     if (ptr==len) state<=ST_FCS;
		     else state<=ST_DATA;
	       end
	       else state<=ST_DATA_WAIT;
	    end
	    ST_FCS : state<=ST_FCS_WAIT;	       
	    ST_FCS_WAIT : begin
	       if (srOutStrobe) state<=ST_EOF;
	       else state<=ST_FCS_WAIT;
	    end
	    ST_EOF : begin	       
	       if (srOutStrobe) state<=ST_IDLE;
	       else state<=ST_EOF;
	    end
	  endcase

   always @(posedge link_clk)
     fifo_adv<=(state==ST_FCS);   // don't need the buffer anymore...

   always @(posedge link_clk)
     if (reset) nr_last<=3'h7;
     else if (state==ST_FCS) nr_last<=nr;
     else nr_last<=nr_last;
   
   
   always @(posedge link_clk)
     if (state==ST_LOAD_PACKET) len<=buf_to_tx[2:0];
     else len<=len;

   always @(posedge link_clk)
     if (state==ST_LOAD_PACKET) autoheader<=buf_to_tx[4];
     else autoheader<=autoheader;
   
   always @(posedge link_clk)
       if (state==ST_LOAD_PACKET) reset_ns<=buf_to_tx[14];
       else reset_ns<=1'h0;
   

   always @(posedge link_clk)
     if (reset || reset_ns) ns<=3'h0;
     else if (state==ST_AUTOHEADER) ns<=ns+3'h1;
     else ns<=ns;   

   wire [15:0] crc_fcs;    
   
   always @(posedge link_clk)
     case (state)
       ST_IDLE: begin
          srOutSuppressZeroing<=1'h1;
          srOutWord<={8'b01111111,8'b01111111}; // Made assumption about bit order for "seven ones followed by a zero
       end
       ST_SOF:  begin
          srOutSuppressZeroing<=1'h1;
          srOutWord<={8'b01111110,8'b01111111}; // Made assumption about bit order for "seven ones followed by a zero
       end
       ST_AUTOHEADER: begin
          srOutSuppressZeroing<=1'h0;
          srOutWord<={ns,1'h0,ns,1'h0,8'h0};
       end       
       ST_DATA : begin
          srOutSuppressZeroing<=1'h0;
          srOutWord<=buf_to_tx;
       end
       ST_DATA_WAIT : begin
          srOutSuppressZeroing<=1'h0;
          srOutWord<=srOutWord;
       end
       ST_FCS : begin
          srOutSuppressZeroing<=1'h0;
          srOutWord<=crc_fcs;
       end
       ST_EOF:  begin
          srOutSuppressZeroing<=1'h1;
          srOutWord<={8'b01111111,8'b01111110}; // Made assumption about bit order for "seven ones followed by a zero
       end
   endcase
  
   reg crc_init,crc_enable;
   
   always @(posedge link_clk) crc_init<=(state==ST_START_REQ) || reset;
   always @(posedge link_clk) crc_enable<=(state==ST_START_REQ || state==ST_DATA || state==ST_AUTOHEADER);
	
   hdlc_crc crc(.clk(link_clk),.rst(crc_init),.crc_en(crc_enable),.data_in(srOutWord),.crc_out(crc_fcs));

   always @(posedge link_clk)
		if (state==ST_IDLE) ptr<=3'h7; // look at the special block...
        else if (state==ST_START_REQ) ptr<=3'h0;
		else if (state==ST_DATA) ptr<=ptr+3'h1;
		else ptr<=ptr;
  
endmodule
   