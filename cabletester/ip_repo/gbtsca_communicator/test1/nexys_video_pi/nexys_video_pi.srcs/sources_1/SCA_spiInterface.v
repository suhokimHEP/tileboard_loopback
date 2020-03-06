`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Everything runs on the SPI clock, with SPI MODE 0 (CPOL=0, CPHA=0).
//
// SPI format:  
//  MSB(31): 1=RD,0=WR
//   (30): address auto-increment flag
//   (29-20): address
//   (19-16): ignored (wait)
//   (15-0): data (and later words)
//////////////////////////////////////////////////////////////////////////////////
module SCA_spiInterface
  (input reset,  // Asynchronous reset to the interface, required at startup
   input mosi,   // SPI MOSI
   output miso,  // SPI MISO
   input cs,     // SPI chip select (Active-low)
   input spiclk, // SPI clock
   output reg [15:0] controlReg0,    // control register at address 0x000
   output reg [15:0] controlReg1,    // control register at address 0x001
   input [15:0] statusReg0,          // status registerc at address 0x080
   input [15:0] statusReg1,          // status register  at address 0x081
   output peripheral_active,         // strobe indicating that the SPI transaction is in progress
   input [15:0] peripheral2pi,       // data to be read from a peripheral (FIFO)
   output reg [15:0] pi2peripheral,  // data to be written to a peripheral
   output reg peripheral_write,      // strobe indicating that the write to the peripheral is valid
   output reg peripheral_read,       // strobe indicating that a peripheral address has been read
   output reg [9:0] peripheral_addr);// selector of peripheral (addresses 0x100->0x3FF)
   
   wire cs_active;
   wire reset_i;
   wire periphral_active;
   assign periphral_active = ~cs; // 5 August 2018
   assign cs_active = ~cs;
   assign reset_i = reset || cs;
   
   reg [15:0] sri;
   reg [15:0] sro, sro_latch;
   reg [9:0] addr;
   reg isRead;
   reg autoInc;
   reg [5:0] ctr;
   reg end_of_word;
   
   always @(posedge spiclk)
     if (cs_active) sri <= {sri[14:0],mosi};
   
   always @(posedge spiclk or posedge reset_i)
     if (reset_i) ctr <= 6'd0;
     else if (ctr==6'd32) ctr <= 6'd17;
     else ctr <= ctr + 6'd1;
   
   always @(posedge spiclk)
     if (ctr==6'd1) isRead <= sri[0]; // 1 is when bit 31 is in the LSB
   
   always @(posedge spiclk)
     if (ctr==6'd2) autoInc <= sri[0]; // 2 is when bit 30 is in the LSB
   
   always @(posedge spiclk)
     end_of_word <= (ctr==6'd31); // 32 is when the end of a data word is present
   
   always @(posedge spiclk)
     if (ctr==6'd12) addr <= sri[9:0]; // 12 is when bit 20 is in the LSB
     else if (autoInc) addr <= addr + end_of_word;
   
   always @(negedge spiclk)
     if (ctr==6'd16 || ctr==6'd32) sro <= sro_latch;
     else sro <= {sro[14:0],1'h0};
   
   assign miso = sro[15];
   
   // always @(negedge spiclk or posedge cs or posedge reset)
   always @(negedge spiclk or posedge reset) // SPI MODE 0 (CPOL=0, CPHA=0)
     if (reset) controlReg0 <= 16'h0;
     else if (~isRead && end_of_word && addr==10'd0) controlReg0 <= sri;
   
   // always @(negedge spiclk or posedge cs or posedge reset)
   always @(negedge spiclk or posedge reset) // SPI MODE 0 (CPOL=0, CPHA=0)
     if (reset) controlReg1 <= 16'h0;
     else if (~isRead && end_of_word && addr==10'd1) controlReg1 <= sri;
   
   always @(negedge spiclk)
     if (ctr[3:0]==4'd14) begin
	if (addr[9:7]==3'b000) 
	  case (addr[6:0])
	    7'h00: sro_latch <= controlReg0;
	    7'h01: sro_latch <= controlReg1;
	    default: sro_latch <= 16'h0;
	  endcase
	else if (addr[9:7]==3'b001) 
	  case (addr[6:0])
	    7'h00: sro_latch <= statusReg0;
	    7'h01: sro_latch <= statusReg1;
	    default: sro_latch <= 16'h0;
	  endcase
	else if ((addr[9:8]==2'b01) || (addr[9:8]==2'b10))
	  sro_latch <= peripheral2pi;
	else sro_latch <= 16'h0;
     end
   
   //always @(posedge spiclk or posedge cs)
   always @(posedge spiclk)
     if (~isRead && (ctr==6'd31) && ((addr[9:8]==2'b01) || (addr[9:8]==2'b10))) 
       pi2peripheral <= {sri[14:0],mosi};
   
   always @(negedge spiclk or posedge reset_i) 
     if (reset_i) peripheral_write <= 1'b0;
	 else peripheral_write <= ((~isRead) && (ctr[5:0]==6'd32) && 
				   ((addr[9:8]==2'b01) || (addr[9:8]==2'b10)));
	 
	 always @(posedge spiclk or posedge reset_i)
	 if (reset_i) peripheral_read <= 1'b0;
	 else peripheral_read <= ((isRead) && (ctr[4:0]==5'd18) && 
				  ((addr[9:8]==2'b01) || (addr[9:8]==2'b10)));

   always @(posedge spiclk) 
     peripheral_addr <= addr[9:0];
   
endmodule
