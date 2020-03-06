//initially modified by berni on 21/9/2018
//Fast Commands decoding module
//for 40MHz decoding inside fast_command
//21.09.2018 v1: the  Clk_320_TS is connected to clk320
//11.10.2018 v2: update modes names according to CERN
//22.10.2018 v3: new fast command added for test purpose

//22.10.2018: new module name fast_cmd_decoder


/*Table 2: Encoding of the fast control signals on the 320 MHz data stream. 15.04.2018 specifications
-----------------------------------------------------------------------------------------------------
		       	 b7        b0
Idle 			  110 0000 1
OrbitSync 		  110 0001 1
L1A-Normal 		  110 0010 1
L1A-Normal+OrbitSync 	  110 0011 1
L1A-Full 		  110 0100 1
L1A-Full+OrbitSync 	  110 0101 1

Forbidden due to 	  110 1100 1

OrbitCountReset+OrbitSync 110 0111 1
CalibrationReq 		  110 1000 1
CalibrationL1A+L1A-Normal 110 1001 1
CalibrationL1A+L1A-Full   110 1010 1

Resync_L1A_Full		  110 1011 1 //Omega internal test

Forbidden due to 110 	  110 1100 1
Forbidden due to 110 	  110 1101 1
Forbidden due to 110 	  110 1110 1

Resync 			  110 1111 1
----------------------------------------------------------------------------*/

`timescale 1ns / 1ps

module fast_cmd_decoder (
	input   clk320,                     	// System clock 320MHz
	input   command_rx,                 	// T1 serial input
	input   n_rstExt,                     	// Input asyncronous reset
	input   EdgeSel_T1,
	input   Clk_40_tx,			// Clk 40 MHz decoded from fast command T1           

//	input   ReadoutMode,			// Asynchronous mode or synchronous mode   // deleted as used always in synchronous mode              
//	input   Clk_320_TS			// the  Clk_320_TS is connected to clk320

	output  Clksync_tx,			// Sync signal generated from fast command T1

	output  cmd_OrbitSync,                 	// 
	output  cmd_L1A_Normal,            	// 
	output  cmd_L1A_Full,            	// 
	output  cmd_OrbitCountReset,  		// 
	output  cmd_CalibrationReq,       	// 
	output  cmd_CalibrationL1A,  		//
	output  cmd_ReSync  			//

	);

	// tmrg default triplicate

	localparam header                  	  =3'b110;

	localparam flag_OrbitSync 		  =4'b0001;
	localparam flag_L1A_Normal 		  =4'b0010;
	localparam flag_L1A_Normal_OrbitSync	  =4'b0011;
	localparam flag_L1A_Full 		  =4'b0100;
 	localparam flag_L1A_Full_OrbitSync	  =4'b0101;
	localparam flag_OrbitCountReset 	  =4'b0111;
	localparam flag_CalibrationReq 		  =4'b1000;
	localparam flag_CalibrationL1A_L1A_Normal =4'b1001;
	localparam flag_CalibrationL1A_L1A_Full   =4'b1010;

//FD	new flag for test purpose
	localparam flag_ReSync_L1A_Full		  =4'b1011;

	localparam flag_ReSync 		  	  =4'b1111;


	reg   [7:0] inbuffer;
	reg         cmd_OrbitSync_d;
	reg         cmd_L1A_Normal_d;    
	reg         cmd_L1A_Full_d; 
	reg         cmd_OrbitCountReset_d; 
	reg         cmd_CalibrationReq_d;
	reg         cmd_CalibrationL1A_d;
	reg         cmd_ReSync_d;


	reg         cmd_OrbitSync40_d;            
	reg         cmd_L1A_Normal40_d;     
	reg         cmd_L1A_Full40_d;     
	reg         cmd_OrbitCountReset40_d; 
	reg         cmd_CalibrationReq40_d;
	reg         cmd_CalibrationL1A40_d;
	reg         cmd_ReSync40_d;

 
	reg         cmd_OrbitSync40_d_0;             
	reg         cmd_L1A_Normal40_d_0;        
	reg         cmd_L1A_Full40_d_0;        
	reg         cmd_OrbitCountReset40_d_0;    
	reg         cmd_CalibrationReq40_d_0;   
	reg         cmd_CalibrationL1A40_d_0;
	reg         cmd_ReSync40_d_0;




	reg         in_r, in_f1, in_f2, in_r0, in_f0; 
	wire 	    in;
//	reg         in;

	//////// The following wires and assignaments are needed for the triplication scripts

	wire  [7:0] inbufferVoted                  	= inbuffer;
	wire        cmd_OrbitSync_dVoted              	= cmd_OrbitSync_d;
	wire        cmd_L1A_Normal_dVoted         	= cmd_L1A_Normal_d;      
	wire        cmd_L1A_Full_dVoted         	= cmd_L1A_Full_d;      
	wire        cmd_OrbitCountReset_dVoted		= cmd_OrbitCountReset_d;  
	wire        cmd_CalibrationReq_dVoted    	= cmd_CalibrationReq_d; 
	wire        cmd_CalibrationL1A_dVoted		= cmd_CalibrationL1A_d;
	wire        cmd_ReSync_dVoted			= cmd_ReSync_d;




//ae*****************************************************/
//the  Clk_320_TS is connected to clk320

	wire Clk_320_TS;
	assign Clk_320_TS = clk320;

//******************************************************/

	assign cmd_OrbitSync       		= cmd_OrbitSync40_d;
	assign cmd_L1A_Normal      		= cmd_L1A_Normal40_d;
	assign cmd_L1A_Full      		= cmd_L1A_Full40_d;
	assign cmd_OrbitCountReset  		= cmd_OrbitCountReset40_d;
	assign cmd_CalibrationReq 		= cmd_CalibrationReq40_d;
	assign cmd_CalibrationL1A 		= cmd_CalibrationL1A40_d;
	assign cmd_ReSync 			= cmd_ReSync40_d;



	//////// Input Buffer and sampling edge selection 

	always @(posedge Clk_320_TS or negedge n_rstExt) begin
		if (~n_rstExt) in_r0 <= #1  1'b0;
		else in_r0 <= #1  command_rx;
	end
	always @(posedge clk320 or negedge n_rstExt) begin
		if (~n_rstExt) in_r <= #1  1'b0;
		else in_r <= #1  in_r0;
	end

	always @(negedge Clk_320_TS or negedge n_rstExt) begin
		if (~n_rstExt) in_f0 <= #1  1'b0;
		else in_f0 <= #1  command_rx;
	end
	always @(negedge clk320 or negedge n_rstExt) begin
		if (~n_rstExt) in_f1 <= #1  1'b0;
		else in_f1 <= #1  in_f0;
	end
	always @(posedge clk320 or negedge n_rstExt) begin
		if (~n_rstExt) in_f2 <= #1  1'b0;
		else in_f2 <= #1  in_f1;
	end

	assign in = (EdgeSel_T1) ? in_r : in_f2;

	always @(posedge clk320 or negedge n_rstExt) begin
		if (~n_rstExt) 
			inbuffer <= #1  8'h0;
		else 
			inbuffer[7:0] <= #1   {inbufferVoted[6:0], in};
	end

	assign Clksync_tx = (inbufferVoted[5:3] == 3'b110) ? 1'b1 : 1'b0;


	//////// Fast commands decoder 

	always @(posedge clk320 or negedge n_rstExt) begin
		if  (~n_rstExt) begin
			cmd_OrbitSync_d           	<= #1   1'b0;                
			cmd_L1A_Normal_d      		<= #1   1'b0;                     
			cmd_L1A_Full_d      		<= #1   1'b0;                     
			cmd_OrbitCountReset_d 		<= #1   1'b0;                         
			cmd_CalibrationReq_d 		<= #1   1'b0;                          
	         	cmd_CalibrationL1A_d		<= #1   1'b0;
	         	cmd_ReSync_d			<= #1   1'b0;

                   
		end
		else begin	
			if(inbufferVoted[6:4] == 3'b110) begin
				cmd_OrbitSync_d           	<= #1   1'b0;           
				cmd_L1A_Normal_d      		<= #1   1'b0;                
				cmd_L1A_Full_d      		<= #1   1'b0; 
				cmd_OrbitCountReset_d 		<= #1   1'b0;                    
				cmd_CalibrationReq_d 		<= #1   1'b0;                     
    				cmd_CalibrationL1A_d		<= #1   1'b0;
	         		cmd_ReSync_d			<= #1   1'b0;


					// Always in Syncronous mode
					case(inbufferVoted[3:0]) 
						flag_OrbitSync:            cmd_OrbitSync_d        <= #1   1'b1;
						flag_L1A_Normal:           cmd_L1A_Normal_d       <= #1   1'b1;
						
						flag_L1A_Normal_OrbitSync: begin
									   cmd_OrbitSync_d        <= #1   1'b1;
									   cmd_L1A_Normal_d       <= #1   1'b1;
									   end

						flag_L1A_Full:             cmd_L1A_Full_d     	  <= #1   1'b1;

						flag_L1A_Full_OrbitSync:   begin
						                           cmd_L1A_Full_d  	  <= #1   1'b1;
						                           cmd_OrbitSync_d 	  <= #1   1'b1;
						                           end

						flag_OrbitCountReset: 	   begin
									   cmd_OrbitCountReset_d  <= #1   1'b1;
									   cmd_OrbitSync_d        <= #1   1'b1;
									   end   
						                           

						flag_CalibrationReq:	   	cmd_CalibrationReq_d 		<= #1   1'b1; 

     						flag_CalibrationL1A_L1A_Normal: begin
										cmd_CalibrationL1A_d		<= #1   1'b1;
										cmd_L1A_Normal_d       		<= #1   1'b1;
										end

	         				flag_CalibrationL1A_L1A_Full: 	begin
										cmd_CalibrationL1A_d	<= #1   1'b1;
										cmd_L1A_Full_d     	  	<= #1   1'b1;
										end

						flag_ReSync_L1A_Full:		begin
										cmd_ReSync_d   			<= #1   1'b1;
										cmd_L1A_Full_d     	  	<= #1   1'b1;
										end

	         				flag_ReSync:			cmd_ReSync_d   			<= #1   1'b1;

					endcase

			end 
			else begin
				cmd_OrbitSync_d           	<= #1   cmd_OrbitSync_dVoted;                
				cmd_L1A_Normal_d      		<= #1   cmd_L1A_Normal_dVoted;              
				cmd_L1A_Full_d      		<= #1   cmd_L1A_Full_dVoted;              
				cmd_OrbitCountReset_d		<= #1   cmd_OrbitCountReset_dVoted;              
				cmd_CalibrationReq_d 		<= #1   cmd_CalibrationReq_dVoted;              
				cmd_CalibrationL1A_d 		<= #1   cmd_CalibrationL1A_dVoted;
	         		cmd_ReSync_d			<= #1 	cmd_ReSync_dVoted;  
			end
		end
	end     

	//////// Resamplings for Clock Domain Crossing and timing closure of the Triplicated Design

	always @(posedge clk320 or negedge n_rstExt) begin
		if  (~n_rstExt) begin
			cmd_OrbitSync40_d_0           		<= #1   1'b0;                
			cmd_L1A_Normal40_d_0      		<= #1   1'b0;                     
			cmd_L1A_Full40_d_0      	 	<= #1   1'b0;                     
			cmd_OrbitCountReset40_d_0  		<= #1   1'b0;                         
			cmd_CalibrationReq40_d_0 		<= #1   1'b0;
 			cmd_CalibrationL1A40_d_0 		<= #1   1'b0;
	         	cmd_ReSync40_d_0 			<= #1 	1'b0;                         
		end   
		else begin   
			cmd_OrbitSync40_d_0           		<= #1   cmd_OrbitSync_d;                
			cmd_L1A_Normal40_d_0      		<= #1   cmd_L1A_Normal_d;                     
			cmd_L1A_Full40_d_0      		<= #1   cmd_L1A_Full_d;                     
			cmd_OrbitCountReset40_d_0  		<= #1   cmd_OrbitCountReset_d;                         
			cmd_CalibrationReq40_d_0 		<= #1   cmd_CalibrationReq_d;                          
		 	cmd_CalibrationL1A40_d_0 		<= #1   cmd_CalibrationL1A_d;
	         	cmd_ReSync40_d_0 			<= #1 	cmd_ReSync_d; 
		     end
	end	

	always @(posedge Clk_40_tx or negedge n_rstExt) begin
		if  (~n_rstExt) begin
			cmd_OrbitSync40_d             		<= #1   1'b0;                
			cmd_L1A_Normal40_d        		<= #1   1'b0;                     
			cmd_L1A_Full40_d        		<= #1   1'b0;                     
			cmd_OrbitCountReset40_d    		<= #1   1'b0;                         
			cmd_CalibrationReq40_d   		<= #1   1'b0;                          
			cmd_CalibrationL1A40_d 			<= #1   1'b0;
	         	cmd_ReSync40_d 				<= #1 	1'b0; 
			      end
		else begin
			cmd_OrbitSync40_d             		<= #1   cmd_OrbitSync40_d_0;                
			cmd_L1A_Normal40_d        		<= #1   cmd_L1A_Normal40_d_0;                     
			cmd_L1A_Full40_d        		<= #1   cmd_L1A_Full40_d_0;                     
			cmd_OrbitCountReset40_d    		<= #1   cmd_OrbitCountReset40_d_0;                         
			cmd_CalibrationReq40_d   		<= #1   cmd_CalibrationReq40_d_0;                          
			cmd_CalibrationL1A40_d 			<= #1   cmd_CalibrationL1A40_d_0;
	         	cmd_ReSync40_d 				<= #1 	cmd_ReSync40_d_0;
		     end
	end	




endmodule	


