`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2019 11:09:00 AM
// Design Name: 
// Module Name: I2C_driver
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


module I2C_driver(
    inout SDA,
    input SDAi,
    input SDAt,
    output SDAo,
    
    inout SCL,
    input SCLi,
    input SCLt,
    output SCLo
    );
    
    IOBUF sda_buf(.I(SDAi), .O(SDAo), .T(SDAt), .IO(SDA));
    //IOBUF scl_buf(.I(SCLi), .O(SCLo), .T(SCLt), .IO(SCL));
    
    wire SCLtmp;
    assign SCLtmp = SCLi | SCLt;
    IOBUF scl_buf(.I(SCLtmp), .O(SCLo), .T(1'b0), .IO(SCL));
    
endmodule
