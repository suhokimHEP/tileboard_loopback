//                              -*- Mode: Verilog -*-
// Filename        : tiletest_heartbeat.v
// Description     : Heartbeat LED logic
// Author          : Jeremiah Mans
// Created On      : Tue Jun  4 08:46:36 2019
// Last Modified By: Jeremiah Mans
// Last Modified On: Tue Jun  4 08:46:36 2019
// Update Count    : 0
// Status          : Unknown, Use with caution!
module tiletest_heartbeat (
			   input wire sys_clk,
			   input wire no_lhc_clk,
			   output reg heartbeat
			    ) ;

   	reg [22:0] clock_to_slow;
	reg [2:0] error_code;
	reg [3:0] error_code_counter;

   wire [7:0] 	  liveThrob;
   wire    led_happy;
   
   sine sineOK(.clk(sys_clk),.x(clock_to_slow[20:13]),.sx(liveThrob));
   pwm8 okPWM(.clk(sys_clk),.o(led_happy),.value(liveThrob));
	
   always @(posedge sys_clk)
     clock_to_slow<=clock_to_slow+'d1;


   always @(posedge sys_clk)
     if (error_code==3'h0) heartbeat<=led_happy;
     else heartbeat<=({error_code,1'h0})==(clock_to_slow[22:19]);

   always @(posedge sys_clk)
     if (no_lhc_clk) error_code<=3'b001;
     else error_code<=3'b000;
   
endmodule // tiletest_heartbeat
module sine(
    input [7:0] x,
    input clk,
    output reg [7:0] sx
    );
	 
	 reg [6:0] qvalue;
	 reg [5:0] rvalue;

always @(posedge clk)
case (x[7:6])	 
	2'b00 : sx<={1'h1,qvalue};
	2'b01 : sx<={1'h1,qvalue};
	2'b10 : sx<={1'h0,~qvalue};
	2'b11 : sx<={1'h0,~qvalue};
endcase

always @(posedge clk)
case (x[7:6])	 
	2'b00 : rvalue<=x[5:0];
	2'b01 : rvalue<=~(x[5:0]);
	2'b10 : rvalue<=x[5:0];
	2'b11 : rvalue<=~(x[5:0]);
endcase

always @(posedge clk)
case (rvalue)	 
0 : qvalue<=7'h0;
1 : qvalue<=7'h3;
2 : qvalue<=7'h6;
3 : qvalue<=7'h9;
4 : qvalue<=7'hc;
5 : qvalue<=7'hf;
6 : qvalue<=7'h12;
7 : qvalue<=7'h15;
8 : qvalue<=7'h18;
9 : qvalue<=7'h1c;
10 : qvalue<=7'h1f;
11 : qvalue<=7'h22;
12 : qvalue<=7'h25;
13 : qvalue<=7'h28;
14 : qvalue<=7'h2b;
15 : qvalue<=7'h2e;
16 : qvalue<=7'h30;
17 : qvalue<=7'h33;
18 : qvalue<=7'h36;
19 : qvalue<=7'h39;
20 : qvalue<=7'h3c;
21 : qvalue<=7'h3f;
22 : qvalue<=7'h41;
23 : qvalue<=7'h44;
24 : qvalue<=7'h47;
25 : qvalue<=7'h49;
26 : qvalue<=7'h4c;
27 : qvalue<=7'h4e;
28 : qvalue<=7'h51;
29 : qvalue<=7'h53;
30 : qvalue<=7'h55;
31 : qvalue<=7'h58;
32 : qvalue<=7'h5a;
33 : qvalue<=7'h5c;
34 : qvalue<=7'h5e;
35 : qvalue<=7'h60;
36 : qvalue<=7'h62;
37 : qvalue<=7'h64;
38 : qvalue<=7'h66;
39 : qvalue<=7'h68;
40 : qvalue<=7'h6a;
41 : qvalue<=7'h6c;
42 : qvalue<=7'h6d;
43 : qvalue<=7'h6f;
44 : qvalue<=7'h70;
45 : qvalue<=7'h72;
46 : qvalue<=7'h73;
47 : qvalue<=7'h75;
48 : qvalue<=7'h76;
49 : qvalue<=7'h77;
50 : qvalue<=7'h78;
51 : qvalue<=7'h79;
52 : qvalue<=7'h7a;
53 : qvalue<=7'h7b;
54 : qvalue<=7'h7c;
55 : qvalue<=7'h7c;
56 : qvalue<=7'h7d;
57 : qvalue<=7'h7e;
58 : qvalue<=7'h7e;
59 : qvalue<=7'h7f;
60 : qvalue<=7'h7f;
61 : qvalue<=7'h7f;
62 : qvalue<=7'h7f;
63 : qvalue<=7'h7f;
endcase

endmodule // sine
module pwm8(
    input clk,
    input [7:0] value,
    output reg o
    );

	reg [7:0] counter;
	
always @(posedge clk)
	counter<=counter+8'h1;
	
always @(posedge clk)
	o<=(value>counter);

endmodule // pwm8
