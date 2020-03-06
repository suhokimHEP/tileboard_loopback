`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2019 02:18:13 PM
// Design Name: 
// Module Name: capture_test
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


module capture_test(

    );
    
    //reg clk1280 = 0;
    reg clk640 = 0;
    reg clk320 = 0;
    reg clk160 = 0;
    reg clk80 = 0;
    reg clk40 = 0;
    
    always #1 clk640 <= ~clk640;
    always @(posedge clk640) clk320 <= ~clk320;
    always @(posedge clk320) clk160 <= ~clk160;
    always @(posedge clk160) clk80 <= ~clk80;
    always @(posedge clk80) clk40 <= ~clk40;
    
    reg link_data;
    reg [8:0] delay_in;
    reg rstb;
    
    wire [8:0] delay_out;
    wire [31:0] data_out;
    
    reg link_reset_request;
    wire link_aligned;
    wire [7:0] link_aligned_count;
    wire [7:0] link_error_count;
   
    reg [1:0] capture_mode_in;
    reg L1A_in;
    reg [11:0] L1A_offset_or_bx;
    reg orbitSync;
    reg [11:0] orbitCnt = 0;
    reg aquire;
    reg [12:0] aquire_length = 0;
    wire waiting_for_trig;
    wire writing;
    wire delay_ready;
   
    //BRAM interface 
    wire bram_clk;
    reg bram_en = 0;
    reg [3:0] bram_we = 0;
    reg [12:0] bram_addr = 0;
    reg [31:0] bram_din = 0;
    wire [31:0] bram_dout;
     
    assign bram_clk = clk160;
     
    initial
    begin
        clk640 = 0;
        clk320 = 0;
        clk160 = 0;
        clk80 = 0;
        clk40 = 0;
        delay_in = 0;
        rstb = 1;
        link_data = 0;
        link_reset_request = 0;
        orbitCnt = 3300;
        
        
        capture_mode_in = 3;
        L1A_in = 0;
        L1A_offset_or_bx = 0;
        orbitSync = 0;
        aquire = 0;
        aquire_length = 64;
        
        #10 rstb = 0;
        #10 rstb = 1;
        
        #20 delay_in = 257;
        #2500;
        
        #4 link_reset_request = 1;
        #4 link_reset_request = 0;
        
        #100
        
        repeat (64) sendWord(32'haccccccc);
        repeat (2) sendWord(32'hacc4cccc);
        repeat (180) sendWord(32'haccccccc);
        repeat (64)  sendWord(32'h76543210);
        aquire <= 1;
        for(integer i = 1; i <= 16; i = i + 1) sendWord(32'h10000000 + i);
        aquire <= 0;
        repeat (128)  sendWord(32'h76543210);
        capture_mode_in <= 1;
        L1A_offset_or_bx <= 12'hca;
        sendWord(32'hdeadbeef);
        aquire <= 1;
        sendWord(32'hdeadbeef);
        aquire <= 0;
        repeat (128)  sendWord(32'habcdef12);
        capture_mode_in <= 2;
        aquire <= 1;
        L1A_offset_or_bx <= 12'h20;
        repeat (15)  sendWord(32'habcdefaa);
        L1A_in <= 1;
        sendWord(32'habcdefaa);
        L1A_in <= 0;
        for(integer i = 1; i <= 128; i = i + 1) sendWord(32'h10000000 + i);
    end
    
    always @(posedge clk40) 
    begin
        if(orbitCnt < 3654) 
        begin
            orbitCnt <= orbitCnt + 1;
            orbitSync <= 0;
        end
        else
        begin
            orbitCnt <= 0;
            orbitSync <= 1;
        end
    end
        
    capture_top
    # (
       .delay_init(0)
      )
      top
    (
     .clk640(clk640),
     .clk160(clk160),
     .clk40(clk40),
     .link_data(link_data),
     .data_out(data_out),
     .delay_in(delay_in),
     .delay_out(delay_out),
     .align_pattern(32'haccccccc),
     .link_reset_request(link_reset_request),
     .link_aligned(link_aligned),
     .delay_ready(delay_ready),
     .link_aligned_count(link_aligned_count),
     .link_error_count(link_error_count),
     
     .capture_mode_in(capture_mode_in),
     .L1A_in(L1A_in),
     .L1A_offset_or_bx(L1A_offset_or_bx),
     .orbitSync(orbitSync),
     .aquire(aquire),
     .aquire_length(aquire_length),
     .waiting_for_trig(waiting_for_trig),
     .writing(writing),
   
     //BRAM interface 
     .bram_clk(bram_clk),
     .bram_en(bram_en),
     .bram_we(bram_we),
     .bram_addr(bram_addr),
     .bram_din(bram_din),
     .bram_dout(bram_dout),
     
     .rstb(rstb)
    );
    
    task sendWord;
        input [31:0] word;
        begin
            for(integer i = 31; i >= 0; i = i - 1)
            begin
                #1 link_data = word[i];
            end
        end
    endtask
    
endmodule
