`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 02:30:44 PM
// Design Name: 
// Module Name: loopback_capture_AXI
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module loopback_capture_AXI #(
		// Users to add parameters here
        parameter delay_init = 0,
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 7
	)
	(
		// Users to add ports here
        input wire clk640,
        input wire clk160,
        input wire clk40,
        
        input wire [8:0] link_data_p,
        input wire [8:0] link_data_n,
        
        output wire [8:0] enabled_links,
		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);
	
	//user signals
    wire [31:0] delay_out_AXI;
    wire [31:0] statusRegister_AXI;
    wire [31:0] link0_aligned_count_AXI;
    wire [31:0] link0_error_count_AXI;
    wire [31:0] link1_aligned_count_AXI;
    wire [31:0] link1_error_count_AXI;
    wire [31:0] link2_aligned_count_AXI;
    wire [31:0] link2_error_count_AXI;
    wire [31:0] link3_aligned_count_AXI;
    wire [31:0] link3_error_count_AXI;
    wire [31:0] link4_aligned_count_AXI;
    wire [31:0] link4_error_count_AXI;
    wire [31:0] link5_aligned_count_AXI;
    wire [31:0] link5_error_count_AXI;
    wire [31:0] link6_aligned_count_AXI;
    wire [31:0] link6_error_count_AXI;
    wire [31:0] link7_aligned_count_AXI;
    wire [31:0] link7_error_count_AXI;
    wire [31:0] link8_aligned_count_AXI;
    wire [31:0] link8_error_count_AXI;
    wire [31:0] link9_aligned_count_AXI;
    wire [31:0] link9_error_count_AXI;

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 4;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 32
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg4;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg5;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg6;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg7;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg8;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg9;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg10;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg11;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg12;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg13;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg14;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg15;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg16;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg17;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg18;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg19;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg20;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg21;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg22;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg23;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg24;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg25;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg26;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg27;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg28;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg29;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg30;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg31;
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;
	reg	 aw_en;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      slv_reg0 <= 0;
	      slv_reg1 <= 0;
	      slv_reg2 <= 0;
	      slv_reg3 <= 0;
	      slv_reg4 <= 0;
	      slv_reg5 <= 0;
	      slv_reg6 <= 0;
	      slv_reg7 <= 0;
	      slv_reg8 <= 0;
	      slv_reg9 <= 0;
	      slv_reg10 <= 0;
	      slv_reg11 <= 0;
	      slv_reg12 <= 0;
	      slv_reg13 <= 0;
	      slv_reg14 <= 0;
	      slv_reg15 <= 0;
	      slv_reg16 <= 0;
	      slv_reg17 <= 0;
	      slv_reg18 <= 0;
	      slv_reg19 <= 0;
	      slv_reg20 <= 0;
	      slv_reg21 <= 0;
	      slv_reg22 <= 0;
	      slv_reg23 <= 0;
	      slv_reg24 <= 0;
	      slv_reg25 <= 0;
	      slv_reg26 <= 0;
	      slv_reg27 <= 0;
	      slv_reg28 <= 0;
	      slv_reg29 <= 0;
	      slv_reg30 <= 0;
	      slv_reg31 <= 0;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          5'h00:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h01:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h02:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h03:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
	                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h04:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 4
	                slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h05:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 5
	                slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h06:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 6
	                slv_reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h07:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 7
	                slv_reg7[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h08:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 8
	                slv_reg8[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h09:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 9
	                slv_reg9[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h0A:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 10
	                slv_reg10[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h0B:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 11
	                slv_reg11[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h0C:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 12
	                slv_reg12[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h0D:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 13
	                slv_reg13[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h0E:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 14
	                slv_reg14[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h0F:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 15
	                slv_reg15[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h10:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 16
	                slv_reg16[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h11:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 17
	                slv_reg17[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h12:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 18
	                slv_reg18[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h13:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 19
	                slv_reg19[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h14:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 20
	                slv_reg20[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h15:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 21
	                slv_reg21[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h16:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 22
	                slv_reg22[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h17:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 23
	                slv_reg23[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h18:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 24
	                slv_reg24[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h19:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 25
	                slv_reg25[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h1A:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 26
	                slv_reg26[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h1B:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 27
	                slv_reg27[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h1C:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 28
	                slv_reg28[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h1D:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 29
	                slv_reg29[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h1E:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 30
	                slv_reg30[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          5'h1F:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 31
	                slv_reg31[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                      slv_reg0 <= slv_reg0;
	                      slv_reg1 <= slv_reg1;
	                      slv_reg2 <= slv_reg2;
	                      slv_reg3 <= slv_reg3;
	                      slv_reg4 <= slv_reg4;
	                      slv_reg5 <= slv_reg5;
	                      slv_reg6 <= slv_reg6;
	                      slv_reg7 <= slv_reg7;
	                      slv_reg8 <= slv_reg8;
	                      slv_reg9 <= slv_reg9;
	                      slv_reg10 <= slv_reg10;
	                      slv_reg11 <= slv_reg11;
	                      slv_reg12 <= slv_reg12;
	                      slv_reg13 <= slv_reg13;
	                      slv_reg14 <= slv_reg14;
	                      slv_reg15 <= slv_reg15;
	                      slv_reg16 <= slv_reg16;
	                      slv_reg17 <= slv_reg17;
	                      slv_reg18 <= slv_reg18;
	                      slv_reg19 <= slv_reg19;
	                      slv_reg20 <= slv_reg20;
	                      slv_reg21 <= slv_reg21;
	                      slv_reg22 <= slv_reg22;
	                      slv_reg23 <= slv_reg23;
	                      slv_reg24 <= slv_reg24;
	                      slv_reg25 <= slv_reg25;
	                      slv_reg26 <= slv_reg26;
	                      slv_reg27 <= slv_reg27;
	                      slv_reg28 <= slv_reg28;
	                      slv_reg29 <= slv_reg29;
	                      slv_reg30 <= slv_reg30;
	                      slv_reg31 <= slv_reg31;
	                    end
	        endcase
	      end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	      
	        5'h00   : reg_data_out <= slv_reg0; //link_enable,delay_in,stop,explicit_reset
	        5'h01   : reg_data_out <= statusRegister_AXI; //status
	        5'h02   : reg_data_out <= link0_aligned_count_AXI;
	        5'h03   : reg_data_out <= link0_error_count_AXI;
	        5'h04   : reg_data_out <= link1_aligned_count_AXI;
	        5'h05   : reg_data_out <= link1_error_count_AXI;
	        5'h06   : reg_data_out <= link2_aligned_count_AXI;
	        5'h07   : reg_data_out <= link2_error_count_AXI;
	        5'h08   : reg_data_out <= link3_aligned_count_AXI;
	        5'h09   : reg_data_out <= link3_error_count_AXI;
	        5'h0A   : reg_data_out <= link4_aligned_count_AXI;
	        5'h0B   : reg_data_out <= link4_error_count_AXI;
	        5'h0C   : reg_data_out <= link5_aligned_count_AXI;
	        5'h0D   : reg_data_out <= link5_error_count_AXI;
	        5'h0E   : reg_data_out <= link6_aligned_count_AXI;
	        5'h0F   : reg_data_out <= link6_error_count_AXI;
	        5'h10   : reg_data_out <= link7_aligned_count_AXI;
	        5'h11   : reg_data_out <= link7_error_count_AXI;
	        5'h12   : reg_data_out <= link8_aligned_count_AXI;
	        5'h13   : reg_data_out <= link8_error_count_AXI;
	        5'h14   : reg_data_out <= slv_reg20;
	        5'h15   : reg_data_out <= slv_reg21;
	        5'h16   : reg_data_out <= slv_reg22;
	        5'h17   : reg_data_out <= slv_reg23;
	        5'h18   : reg_data_out <= slv_reg24;
	        5'h19   : reg_data_out <= slv_reg25;
	        5'h1A   : reg_data_out <= slv_reg26;
	        5'h1B   : reg_data_out <= slv_reg27;
	        5'h1C   : reg_data_out <= slv_reg28;
	        5'h1D   : reg_data_out <= slv_reg29;
	        5'h1E   : reg_data_out <= slv_reg30;
	        5'h1F   : reg_data_out <= slv_reg31;
	        default : reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Add user logic here
	
	wire explicit_reset;
	
	
	reg rstb1 = 1, rstb2 = 1;
	
	always @(posedge clk40)
	begin
	   rstb1 <= S_AXI_ARESETN && (!explicit_reset);
	   rstb2 <= rstb1;
	end
	
	//Inputs from AXI
	wire [8:0] delay_in;
    wire stop;

    register_handshake #( .WIDTH(1) ) (.clk_in(S_AXI_ACLK), .reg_in(slv_reg0[0]), .clk_out(clk40), .reg_out(explicit_reset) );
	register_handshake #( .WIDTH(9) )  (.clk_in(S_AXI_ACLK), .reg_in(slv_reg0[10:2]),  .clk_out(clk40), .reg_out(delay_in) );
	register_handshake #( .WIDTH(1) )  (.clk_in(S_AXI_ACLK), .reg_in(slv_reg0[1]),    .clk_out(clk40), .reg_out(stop) );
	register_handshake #( .WIDTH(9) ) (.clk_in(S_AXI_ACLK), .reg_in(slv_reg0[19:11]), .clk_out(clk40), .reg_out(enabled_links) );
	
    //Outputs from loopback to AXI
    wire [8:0] delay_out;
    wire [31:0] link0_aligned_count;
    wire [31:0] link0_error_count;
    wire [31:0] link1_aligned_count;
    wire [31:0] link1_error_count;
    wire [31:0] link2_aligned_count;
    wire [31:0] link2_error_count;
    wire [31:0] link3_aligned_count;
    wire [31:0] link3_error_count;
    wire [31:0] link4_aligned_count;
    wire [31:0] link4_error_count;
    wire [31:0] link5_aligned_count;
    wire [31:0] link5_error_count;
    wire [31:0] link6_aligned_count;
    wire [31:0] link6_error_count;
    wire [31:0] link7_aligned_count;
    wire [31:0] link7_error_count;
    wire [31:0] link8_aligned_count;
    wire [31:0] link8_error_count;
    
    wire [8:0] link_aligned;
    wire [8:0] delay_ready;
    wire [32:0] statusRegister;    
    assign statusRegister = {14'b0,link_aligned,delay_ready};
        
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(statusRegister), .clk_out(S_AXI_ACLK), .reg_out(statusRegister_AXI) );
    
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link0_aligned_count), .clk_out(S_AXI_ACLK), .reg_out(link0_aligned_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link0_error_count),   .clk_out(S_AXI_ACLK), .reg_out(link0_error_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link1_aligned_count), .clk_out(S_AXI_ACLK), .reg_out(link1_aligned_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link1_error_count),   .clk_out(S_AXI_ACLK), .reg_out(link1_error_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link2_aligned_count), .clk_out(S_AXI_ACLK), .reg_out(link2_aligned_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link2_error_count),   .clk_out(S_AXI_ACLK), .reg_out(link2_error_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link3_aligned_count), .clk_out(S_AXI_ACLK), .reg_out(link3_aligned_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link3_error_count),   .clk_out(S_AXI_ACLK), .reg_out(link3_error_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link4_aligned_count), .clk_out(S_AXI_ACLK), .reg_out(link4_aligned_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link4_error_count),   .clk_out(S_AXI_ACLK), .reg_out(link4_error_count_AXI[31:0]) );            
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link5_aligned_count), .clk_out(S_AXI_ACLK), .reg_out(link5_aligned_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link5_error_count),   .clk_out(S_AXI_ACLK), .reg_out(link5_error_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link6_aligned_count), .clk_out(S_AXI_ACLK), .reg_out(link6_aligned_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link6_error_count),   .clk_out(S_AXI_ACLK), .reg_out(link6_error_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link7_aligned_count), .clk_out(S_AXI_ACLK), .reg_out(link7_aligned_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link7_error_count),   .clk_out(S_AXI_ACLK), .reg_out(link7_error_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link8_aligned_count), .clk_out(S_AXI_ACLK), .reg_out(link8_aligned_count_AXI[31:0]) );
    register_handshake #( .WIDTH(32) )  (.clk_in(clk40), .reg_in(link8_error_count),   .clk_out(S_AXI_ACLK), .reg_out(link8_error_count_AXI[31:0]) );      

	wire [8:0] link_data;
	IBUFDS ibuf_inst0(.I(link_data_p[0]),.IB(link_data_n[0]),.O(link_data[0]));
    IBUFDS ibuf_inst1(.I(link_data_p[1]),.IB(link_data_n[1]),.O(link_data[1]));
	IBUFDS ibuf_inst2(.I(link_data_p[2]),.IB(link_data_n[2]),.O(link_data[2]));
    IBUFDS ibuf_inst3(.I(link_data_p[3]),.IB(link_data_n[3]),.O(link_data[3]));
	IBUFDS ibuf_inst4(.I(link_data_p[4]),.IB(link_data_n[4]),.O(link_data[4]));
    IBUFDS ibuf_inst5(.I(link_data_p[5]),.IB(link_data_n[5]),.O(link_data[5]));
	IBUFDS ibuf_inst6(.I(link_data_p[6]),.IB(link_data_n[6]),.O(link_data[6]));
    IBUFDS ibuf_inst7(.I(link_data_p[7]),.IB(link_data_n[7]),.O(link_data[7]));
	IBUFDS ibuf_inst8(.I(link_data_p[8]),.IB(link_data_n[8]),.O(link_data[8]));
  
    reg [8:0] inverted = { 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1};

	  loopback_top # (.delay_init(delay_init)) loopback_block0(.clk640(clk640),.clk160(clk160),.clk40(clk40),.delay_in(delay_in),.stop(stop),.rstb(rstb2),        
        .link_data(link_data[0]),
        .link_aligned(link_aligned[0]),
        .link_aligned_count(link0_aligned_count),
        .link_error_count(link0_error_count),
        .delay_ready(delay_ready[0]),
        .inverted(inverted[0])
        );
	  loopback_top # (.delay_init(delay_init)) loopback_block1(.clk640(clk640),.clk160(clk160),.clk40(clk40),.delay_in(delay_in),.stop(stop),.rstb(rstb2),        
        .link_data(link_data[1]),
        .link_aligned(link_aligned[1]),
        .link_aligned_count(link1_aligned_count),
        .link_error_count(link1_error_count),
        .delay_ready(delay_ready[1]),
        .inverted(inverted[1])
        );
	  loopback_top # (.delay_init(delay_init)) loopback_block2(.clk640(clk640),.clk160(clk160),.clk40(clk40),.delay_in(delay_in),.stop(stop),.rstb(rstb2),        
        .link_data(link_data[2]),
        .link_aligned(link_aligned[2]),
        .link_aligned_count(link2_aligned_count),
        .link_error_count(link2_error_count),
        .delay_ready(delay_ready[2]),
        .inverted(inverted[2])
        );
	  loopback_top # (.delay_init(delay_init)) loopback_block3(.clk640(clk640),.clk160(clk160),.clk40(clk40),.delay_in(delay_in),.stop(stop),.rstb(rstb2),        
        .link_data(link_data[3]),
        .link_aligned(link_aligned[3]),
        .link_aligned_count(link3_aligned_count),
        .link_error_count(link3_error_count),
        .delay_ready(delay_ready[3]),
        .inverted(inverted[3])
        );
	  loopback_top # (.delay_init(delay_init)) loopback_block4(.clk640(clk640),.clk160(clk160),.clk40(clk40),.delay_in(delay_in),.stop(stop),.rstb(rstb2),        
        .link_data(link_data[4]),
        .link_aligned(link_aligned[4]),
        .link_aligned_count(link4_aligned_count),
        .link_error_count(link4_error_count),
        .delay_ready(delay_ready[4]),
        .inverted(inverted[4])
        );
	  loopback_top # (.delay_init(delay_init)) loopback_block5(.clk640(clk640),.clk160(clk160),.clk40(clk40),.delay_in(delay_in),.stop(stop),.rstb(rstb2),        
        .link_data(link_data[5]),
        .link_aligned(link_aligned[5]),
        .link_aligned_count(link5_aligned_count),
        .link_error_count(link5_error_count),
        .delay_ready(delay_ready[5]),
        .inverted(inverted[5])
        );
	  loopback_top # (.delay_init(delay_init)) loopback_block6(.clk640(clk640),.clk160(clk160),.clk40(clk40),.delay_in(delay_in),.stop(stop),.rstb(rstb2),        
        .link_data(link_data[6]),
        .link_aligned(link_aligned[6]),
        .link_aligned_count(link6_aligned_count),
        .link_error_count(link6_error_count),
        .delay_ready(delay_ready[6]),
        .inverted(inverted[6])
        );
	  loopback_top # (.delay_init(delay_init)) loopback_block7(.clk640(clk640),.clk160(clk160),.clk40(clk40),.delay_in(delay_in),.stop(stop),.rstb(rstb2),        
        .link_data(link_data[7]),
        .link_aligned(link_aligned[7]),
        .link_aligned_count(link7_aligned_count),
        .link_error_count(link7_error_count),
        .delay_ready(delay_ready[7]),
        .inverted(inverted[7])
        );
	  loopback_top # (.delay_init(delay_init)) loopback_block8(.clk640(clk640),.clk160(clk160),.clk40(clk40),.delay_in(delay_in),.stop(stop),.rstb(rstb2),        
        .link_data(link_data[8]),
        .link_aligned(link_aligned[8]),
        .link_aligned_count(link8_aligned_count),
        .link_error_count(link8_error_count),
        .delay_ready(delay_ready[8]),
        .inverted(inverted[8])
        );
                                            
	// User logic ends
endmodule

