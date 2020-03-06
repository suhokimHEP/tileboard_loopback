//                              -*- Mode: Verilog -*-
// Filename        : hgcal_fast_control_encode.v
// Description     : Core of the fast control encoder for the CMS HL-LHC endcap calorimeter
// Author          : Jeremiah Mans
// Created On      : Thu Dec 20 13:21:14 2018
// Last Modified By: Jeremiah Mans
// Last Modified On: Mon Dec 31 13:21:14 2018
// Update Count    : 0
// Status          : Unknown, Use with caution!
module hgcal_fast_control_encode (input clk40,
                                  input        l1a,
				  input        calibrationreq,
				  input        orbitsync,
				  input        linkreset,
				  input        orbitcountreset,
				  input        calibrationl1a,
				  input        daqresync,
				  input        internaltest, 
				  output [7:0] fast_control,
				  output       invalid
				  );
   
/*
 EDMS doc 2044200 version 2
 Table 2: Encoding of the fast control signals on the 320 MHz data stream.
                         B7 B6 B5 B4 B3 B2 B1 B0
Idle                      1  1  0  0  0  0  0  1
OrbitSync                 1  1  0  0  0  0  1  1
DAQ-Resync                1  1  0  0  0  1  0  1
Unassigned                1  1  0  0  0  1  1  1
L1A                       1  1  0  0  1  0  0  1
L1A+OrbitSync             1  1  0  0  1  0  1  1
Forbidden                 1  1  0  0  1  1  0  1
OrbitCountReset+OrbitSync 1  1  0  0  0  1  1  1
CalibrationReq            1  1  0  1  0  0  0  1
CalibrationReq+L1A        1  1  0  1  0  0  1  1
CalibrationL1A+L1A        1  1  0  1  0  1  0  1  
InternalTest              1  1  0  1  0  1  1  1
Forbidden                 1  1  0  1  1  0  0  1
Forbidden                 1  1  0  1  1  0  1  1
Forbidden                 1  1  0  1  1  1  0  1
Link-Reset                1  1  0  1  1  1  1  1
 */

   // four bits of fast_control are fixed
   assign fast_control[7:5]=3'b110;
   assign fast_control[0]=1'b1;

   // four bits vary
   reg 	[3:0]   		 cmd;
   assign fast_control[4:1]=cmd;
   reg 					 invalid_r;
   assign invalid=invalid_r;
   
   always @(posedge clk40)
     if (~l1a && ~linkreset && ~orbitcountreset && ~daqresync && ~orbitsync && ~calibrationreq && ~calibrationl1a && ~internaltest) begin
	// idle
	cmd<=4'b0000;
	invalid_r<=1'b0;
     end else if (l1a && ~linkreset && ~orbitcountreset && ~daqresync && ~internaltest) begin // all L1A-containing types
	if (~orbitsync && ~calibrationreq && ~calibrationl1a) begin
	   // plain L1A
	   cmd<=4'b0100;
	   invalid_r<=1'b0;
	end else if (orbitsync && ~calibrationreq && ~calibrationl1a) begin
	   // L1A + OrbitSync
	   cmd<=4'b0101;
	   invalid_r<=1'b0;
	end else if (~orbitsync && calibrationreq && ~calibrationl1a) begin
	   // L1A + CalibrationReq
	   cmd<=4'b1001;
	   invalid_r<=1'b0;
	end else if (~orbitsync && ~calibrationreq && calibrationl1a) begin
	   // L1A + CalibrationL1A
	   cmd<=4'b1010;
	   invalid_r<=1'b0;
	end else begin
	   // invalid combination!
	   invalid_r<=1'b1;
	   cmd<=4'b0000;
	end
     end else if (orbitsync && ~l1a && ~linkreset && ~calibrationreq && ~calibrationl1a && ~daqresync && ~internaltest) begin // only remaining overlap allowed is orbitcountreset
	if (orbitcountreset) begin
	   // OrbitSync + OrbitCountReset
	   cmd<=4'b0111;
	   invalid_r<=1'b0;
	end else begin
	   // Plain orbit sync
	   cmd<=4'b0001;
	   invalid_r<=1'b0;
	end
     end else if (~l1a && linkreset && ~orbitcountreset && ~daqresync && ~orbitsync && ~calibrationreq && ~calibrationl1a && ~internaltest) begin 
	// Link reset
	cmd<=4'b1111;
	invalid_r<=1'b0;
     end else if (~l1a && ~linkreset && ~orbitcountreset && daqresync && ~orbitsync && ~calibrationreq && ~calibrationl1a && ~internaltest) begin 
	// DAQ resync
	cmd<=4'b0010;
	invalid_r<=1'b0;
     end else if (~l1a && ~linkreset && ~orbitcountreset && ~daqresync && ~orbitsync && calibrationreq && ~calibrationl1a && ~internaltest) begin 
	// lone calibration request
	cmd<=4'b1000;
	invalid_r<=1'b0;
     end else if (~l1a && ~linkreset && ~orbitcountreset && ~daqresync && ~orbitsync && ~calibrationreq && ~calibrationl1a && internaltest) begin 
	// internaltest
	cmd<=4'b1000;
	invalid_r<=1'b0;
    end else begin
	// invalid request
	cmd<=4'b0000;
	invalid_r<=1'b1;
     end

endmodule // hgcal_fast_control_encode
