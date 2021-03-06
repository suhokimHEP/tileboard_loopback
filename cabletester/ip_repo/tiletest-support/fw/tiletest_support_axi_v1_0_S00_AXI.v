`timescale 1 ns / 1 ps
	module tiletest_support_axi_v1_0_S00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 8
	)
	(
		// Users to add ports here
	 input wire 				   sys_clk,
	 input wire                    fc_clk, 
	 input wire 				   lhc_clk,
	 output wire [7:0] 			   sd_led,
	 output wire [7:0] 			   misc_dir,
 	 inout wire [7:0] 			   misc_data,
	 input wire [4:0] 			   misc_switches,
	 output wire [7:0] 			   rj45_ttl, 
	 output wire 				   heartbeat_led,
	 input wire 				   led0,
	 input wire 				   led1,
	 input wire 				   led2,
	 input wire 				   led3,


        
		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
	 input wire 				   S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
	 input wire 				   S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
	 input wire [C_S_AXI_ADDR_WIDTH-1 : 0] 	   S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
	 input wire [2 : 0] 			   S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
	 input wire 				   S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
	 output wire 				   S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
	 input wire [C_S_AXI_DATA_WIDTH-1 : 0] 	   S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
	 input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
	 input wire 				   S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
	 output wire 				   S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
	 output wire [1 : 0] 			   S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
	 output wire 				   S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
	 input wire 				   S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
	 input wire [C_S_AXI_ADDR_WIDTH-1 : 0] 	   S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
	 input wire [2 : 0] 			   S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
	 input wire 				   S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
	 output wire 				   S_AXI_ARREADY,
		// Read data (issued by slave)
	 output wire [C_S_AXI_DATA_WIDTH-1 : 0]    S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
	 output wire [1 : 0] 			   S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
	 output wire 				   S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
	 input wire 				   S_AXI_RREADY
	);

	// AXI4LITE signals
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
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
	localparam integer OPT_MEM_ADDR_BITS = 1;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
   reg [4:0] 		   fc_raddr;
   reg [4:0]               fc_waddr;
   reg [31:0] 		   fc_input;
   wire [31:0] 		   fc_output;
   
   wire 		   fc_we;
   
   // I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;

   reg [2:0] axi_state;

   localparam STATE_IDLE        = 3'h0;
   localparam STATE_LATCH_R     = 3'h1;
   localparam STATE_WAIT_R      = 3'h2;
   localparam STATE_DONE_R      = 3'h3;
   localparam STATE_LATCH_W     = 3'h4;
   localparam STATE_DO_W        = 3'h5;
   localparam STATE_DONE_W      = 3'h6;   
   
   always @(posedge S_AXI_ACLK)
     if (S_AXI_ARESETN == 1'b0) axi_state<=STATE_IDLE;
     else case (axi_state)
	    (STATE_IDLE) : begin
	       if (S_AXI_ARVALID) axi_state<=STATE_LATCH_R;
	       else if (S_AXI_AWVALID) axi_state<=STATE_LATCH_W;
	       else axi_state<=axi_state;
	    end
	    (STATE_LATCH_R) : axi_state<=STATE_WAIT_R;
	    (STATE_WAIT_R) : axi_state<=STATE_DONE_R;
	    (STATE_DONE_R) : begin
	       if (S_AXI_RREADY) axi_state<=STATE_IDLE; 
	       else axi_state<=axi_state;
	    end
	    (STATE_LATCH_W) : begin
	       if (S_AXI_WVALID) axi_state<=STATE_DO_W;
	       else axi_state<=axi_state;
	    end
	    (STATE_DO_W) : axi_state<=STATE_DONE_W;
	    (STATE_DONE_W) : begin 
	       if (S_AXI_BREADY) axi_state<=STATE_IDLE;
	       else axi_state<=axi_state;
	    end
	  endcase
       
   always @(posedge S_AXI_ACLK) begin
      axi_wready <= (axi_state==STATE_DO_W || axi_state==STATE_DONE_W) && S_AXI_WVALID && S_AXI_AWVALID;
      axi_bresp <= 2'h0;      
   end    
   
   //Setting axi_awready
   always @(posedge S_AXI_ACLK) begin
        axi_awready <= (axi_state==STATE_DO_W || axi_state==STATE_DONE_W) && S_AXI_WVALID && S_AXI_AWVALID;
   end
   
   //Setting axi_arready
   always @(posedge S_AXI_ACLK) begin
      axi_arready <= (axi_state==STATE_LATCH_R || axi_state==STATE_WAIT_R || axi_state==STATE_DONE_R) && S_AXI_ARVALID;   
      //if(S_AXI_ARVALID)axi_arready <= 1'b1;   
   end
   
   //Setting axi_rvalid
   always @(posedge S_AXI_ACLK) begin
      axi_rvalid <= (axi_arready && S_AXI_ARVALID);
   end
      
   //Setting axi_bvalid
   always @(posedge S_AXI_ACLK) begin
      if ( S_AXI_ARESETN == 1'b0 )axi_bvalid  <= 0;
      else begin
        if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)axi_bvalid <= 1'b1;
        else if (S_AXI_BREADY && axi_bvalid)axi_bvalid <= 1'b0; 
      end
    end

    //Setting axi_rresp
    always @(posedge S_AXI_ACLK) begin
        if ( S_AXI_ARESETN == 1'b0 )axi_rresp  <= 0;
        else if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)axi_rresp  <= 2'b0;
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
		    if (axi_state==STATE_WAIT_R || axi_state==STATE_DONE_R) begin
		      axi_rdata<=fc_output;
		    end else
		      axi_rdata <= axi_rdata;
	     end
    end    

   
    // Add user logic here
    always @( posedge S_AXI_ACLK )begin
        fc_input<=S_AXI_WDATA;
    end
    
    always @(posedge S_AXI_ACLK) begin
      if (axi_state==STATE_IDLE && S_AXI_ARVALID) fc_raddr<=S_AXI_ARADDR[ADDR_LSB+4:ADDR_LSB+0];
      else fc_raddr<=fc_raddr;
       
      if (axi_state==STATE_IDLE && S_AXI_AWVALID) fc_waddr<=S_AXI_AWADDR[ADDR_LSB+4:ADDR_LSB+0];
      else fc_waddr<=fc_waddr;
    end    
    
    assign fc_we=(axi_state==STATE_DO_W||axi_state==STATE_DONE_W) && (S_AXI_WSTRB[1:0]==2'b11);

    reg fc_reset;
    
    always @( posedge S_AXI_ACLK )
      if ( S_AXI_ARESETN == 1'b0 ) fc_reset<=1'h1;
      else if (fc_we && fc_waddr==5'b11111 &&  S_AXI_WDATA[15:0] == 16'hffff) fc_reset<=1'h1;
      else fc_reset<=0;
        
    tiletest_supporter Supporter(
				 .reset(fc_reset), 
				 .clkio(S_AXI_ACLK), .io_r_addr(fc_raddr), .io_w_addr(fc_waddr), .io_w_data(fc_input), .io_r_data(fc_output), .io_we(fc_we),
				 .sd_led(sd_led),
	  			 .misc_dir(misc_dir),.misc_data(misc_data),
				 .misc_switches(misc_switches),
				 .rj45_ttl(rj45_ttl), 	
				 .heartbeat_led(heartbeat_led),
				 .sys_clk(sys_clk),
				 .lhc_clk(lhc_clk),.fc_clk(fc_clk),
				 .led0(led0),.led1(led1),.led2(led2),.led3(led3));
   
	// User logic ends

	endmodule
