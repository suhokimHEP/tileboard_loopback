`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2019 11:17:38 AM
// Design Name: 
// Module Name: test_fc_manager
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


module test_fc_manager;

  // inputs
  reg clk320;
  wire clk40;
  reg clkio;
  reg reset;
  reg [4:0] io_r_addr;
  reg [4:0] io_w_addr;
  reg [31:0] io_w_data;
  reg io_we;
  reg [2:0] cdiv;

  
  // outputs
  wire [7:0] fast_control_stream;
  wire [31:0] io_r_data;
  wire fast_control_fast;
  
  wire roc_40, roc_linkreset, roc_orbit, roc_l1a, roc_ocr, roc_calibreq, roc_calibl1a;
  
hgcal_fc_manager uut(.clk40(clk40),
               .fast_control_stream(fast_control_stream),
               .reset(reset),           
               .clkio(clkio),
               .io_r_addr(io_r_addr),
               .io_w_addr(io_w_addr),
               .io_w_data(io_w_data),
               .io_r_data(io_r_data),
               .io_we(io_we)
   ) ;   

hgcal_fc_simple_serializer uut2(.clk40(clk40),.clk320(clk320),.reset(reset),.fast_control_wide(fast_control_stream),.fast_control_fast(fast_control_fast));



fast_cmd_clk40_decoder uut3(.clk320(clk320),
	.command_rx(fast_control_fast),
	.n_rstExt(~reset),
	.EdgeSel_T1(1'h0),
	.clk40_out(roc_40),
	.OrbitSync(roc_orbit),                 	//fast command pulse 
	.L1A_Full(roc_l1a),            		//fast command pulse 
	.OrbitCountReset_OrbitSync(roc_ocr),  	//fast command pulse
	.CalibrationReq(roc_calibreq),       		//fast command pulse
	.CalibrationL1A(roc_calibl1a),  		//fast command pulse
	.ReSync(roc_linkreset)  			//fast command pulse
	);

initial begin
    clkio=0;
	 clk320=0;
	 cdiv=0;
    reset=0;
    io_we=0;
    io_r_addr=0;
    io_w_addr=0;
    io_w_data=0;
    #100;
    reset=1;
    #100;
    reset=0;
    io_w_data=32'h00005; // enable the orbit sync
    io_we=1;
    #20;
    io_we=0;
    #100;
    io_w_data=32'h40005; // request a link reset
    io_we=1;
    #20;
    io_we=0;
    #100;
    io_w_data=32'h80005; // request a daq reset
    io_we=1;
    #20;
    io_we=0;
    #100;
    io_w_data=32'hC0005; // request a daq reset and link reset
    io_we=1;
    #20;
    io_we=0;
    #100;
    io_w_data=32'h10025; // request a single calibration req (and enable L1A)
    io_we=1;
    #20;
    io_we=0;
    #180;

    #177200; // get to BX3560
    io_w_data=32'hC0005; // request a daq reset and link reset
    io_we=1;
    #20;
    io_we=0;
    #100;
    io_w_data=32'h20005; // ask for an OCR
    io_we=1;
    #20;
    io_we=0;
    #100;

    io_w_data=32'b00000000011101; // enable periodic calibration req
    io_we=1;
    #20;
    io_we=0;
    #100;
    
    
    

end

always begin
    clk320=~clk320;
    #1.5625;
end

always @(posedge clk320)
	cdiv<=cdiv+1'h1;

assign clk40=cdiv[2];

always begin
    clkio=~clkio;
    #5;
end   
   
endmodule
