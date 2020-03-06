`timescale 1 ns / 1 ps

	module hdlc_blocks_3rd_v1_0_S00_AXI #
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
		output wire [7:0] LED_output,
		input  wire FMC_MISO_P,
	    input  wire FMC_MISO_N,
	    output wire FMC_MOSI_P,
	    output wire FMC_MOSI_N,
	    output wire FMC_CLK_P,
	    output wire FMC_CLK_N,
	    output wire RESET_B,
	    output wire AUX_I2C_ENABLE,
	    output wire AUX_LINK_DSIABLE,
	    output wire FMC_LED3,
	    output wire FMC_LED4,
        input wire LINK_CLK,

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
	//-- Number of Slave Registers 4
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
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

   reg [2:0] axi_state;

   localparam STATE_IDLE        = 3'h0;
   localparam STATE_LATCH_R     = 3'h1;
   localparam STATE_WAIT_R      = 3'h2;
   localparam STATE_DONE_R      = 3'h3;
   localparam STATE_LATCH_W     = 3'h4;
   localparam STATE_DO_W        = 3'h5;
   localparam STATE_DONE_W      = 3'h6;   
   localparam STATE_WAIT_W      = 3'h7;
   
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
	    (STATE_DO_W) : axi_state<=STATE_WAIT_W;
	    (STATE_WAIT_W) : axi_state<=STATE_DONE_W;
	    (STATE_DONE_W) : begin 
	       if (S_AXI_BREADY) axi_state<=STATE_IDLE;
	       else axi_state<=axi_state;
	    end
	  endcase
       

   always @(posedge S_AXI_ACLK) begin
      axi_wready <= (axi_state==STATE_DO_W || axi_state==STATE_DONE_W) && S_AXI_WVALID && S_AXI_AWVALID;
//      axi_bready <= (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID);
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

	reg [3:0] hdlc_addr;

    always @(posedge S_AXI_ACLK) begin
      if (axi_state==STATE_IDLE && S_AXI_ARVALID) hdlc_addr<=S_AXI_ARADDR[ADDR_LSB+3:ADDR_LSB+0];
      else if (axi_state==STATE_IDLE && S_AXI_AWVALID) hdlc_addr<=S_AXI_AWADDR[ADDR_LSB+3:ADDR_LSB+0];
      else hdlc_addr<=hdlc_addr;
    end
    
    reg [3:0] hdlc_addrHold;
    reg [31:0] hdlc_addrAll;    
    always @(posedge S_AXI_ACLK) begin
        if(S_AXI_ARESETN == 1'b0)hdlc_addrHold<=0;
        else if(hdlc_addrHold != hdlc_addr)begin
            hdlc_addrHold <= hdlc_addr;
            hdlc_addrAll <= {hdlc_addrAll[27:0],hdlc_addr};
        end
    end

    wire [15:0] hdlc_rx_Output;
    wire [15:0] hdlc_tx_Output;      
    wire [15:0] hdlc_Output;      
            
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
		      axi_rdata<=hdlc_Output;
		    end else
		      axi_rdata <= axi_rdata;
	     end
    end    
   
    // Add user logic here
    reg dly1_miso; // use as srin for rx
    wire fmc_mosi; // connect to serout from tx
    wire tmp_mosi, tmp_clk, tmp_miso, fmc_miso;

    always @(posedge LINK_CLK) dly1_miso <= fmc_miso;

    wire fmc_mosi_p, fmc_mosi_n, fmc_clk_p, fmc_clk_n, fmc_miso_p, fmc_miso_n;
    OBUFDS OBUFDS_mosi (.O(fmc_mosi_p), .OB(fmc_mosi_n), .I(tmp_mosi));
    OBUFDS OBUFDS_clk (.O(fmc_clk_p), .OB(fmc_clk_n), .I(tmp_clk));
    IBUFDS IBUFDS_mi (.O(tmp_miso), .I(fmc_miso_p), .IB(fmc_miso_n));

    //----------------------------------------------------------------------
    // Use ODDR and IDDR registers for accurate ELINK edges.
    //----------------------------------------------------------------------

    reg dly_mosi;
    always @(posedge LINK_CLK) dly_mosi <= fmc_mosi;
    assign tmp_mosi=dly_mosi;

    reg cap_miso;
    always @(posedge LINK_CLK) cap_miso <= tmp_miso;
    assign fmc_miso=cap_miso;

    reg clk_40_reg;
    always @(posedge LINK_CLK) clk_40_reg<=~clk_40_reg;
    assign tmp_clk=clk_40_reg;

    assign fmc_miso_n = FMC_MISO_N;
    assign fmc_miso_p = FMC_MISO_P;    
    assign FMC_MOSI_P = fmc_mosi_p;
    assign FMC_MOSI_N = fmc_mosi_n;
    assign FMC_CLK_P = fmc_clk_p;
    assign FMC_CLK_N = fmc_clk_n;
    assign RESET_B = S_AXI_ARESETN;
//    assign RESET_B = !chip_reset;
    assign AUX_I2C_ENABLE = 1'b0;
    assign AUX_LINK_DSIABLE = 1'b0;
    assign FMC_LED3 = 1'b0;
    assign FMC_LED4 = 1'b1;
    
    wire  hdlc_rx_we, hdlc_tx_we;
//    wire  data_is_valid_output;
    reg hdlc_reset;
    
    always @( posedge S_AXI_ACLK )
        if (S_AXI_ARESETN == 1'b0) hdlc_reset<=1;
        else hdlc_reset<=0;

    wire chip_reset;
        
    assign hdlc_rx_we=(axi_state==STATE_WAIT_R) && (hdlc_addr[3]==1'h1);


    wire [2:0] nr; 
    
    wire hdlc_tx_busy;
    
    //assign hdlc_tx_we=(axi_state==STATE_DO_W) && (S_AXI_WSTRB[1:0]==2'b11) && (hdlc_addr[3]==1'h0);
    
    wire hdlc_we;
    
    assign hdlc_we=(axi_state==STATE_DO_W) && (S_AXI_WSTRB[1:0]==2'b11);
        
    hdlc_top hdlc_wrapper(.reset(hdlc_reset),.io_addr(hdlc_addr[3:0]),.din(S_AXI_WDATA[15:0]),.dout(hdlc_Output),
    .we(hdlc_we),.io_clk(S_AXI_ACLK),.link_clk(LINK_CLK),.tx_out(fmc_mosi),.rx_in(dly1_miso),.reset_b(chip_reset));//,.io_addrHold(io_addrHold));

 
    assign LED_output = 7'b1010101;  
   
   
	// User logic ends



	endmodule

