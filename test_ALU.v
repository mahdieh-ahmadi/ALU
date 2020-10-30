`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:14:17 10/30/2020
// Design Name:   ALU
// Module Name:   E:/university/3991/fpga/homeworks/ALU/test_ALU.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ALU;

	// Inputs
	reg [3:0] in_1;
	reg [3:0] in_2;
	reg [1:0] control;

	// Outputs
	wire [4:0] out;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.in_1(in_1), 
		.in_2(in_2), 
		.control(control), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in_1 = 0;
		in_2 = 0;
		control = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		in_1 = 5;
		in_2 = 12;
		control = 0;
		#100;
		
		in_1 = 3;
		in_2 = 8;
		control = 1;
		#100;
		
		in_1 = 3;
		in_2 = 2;
		control = 2;
		#100;
		
		in_1 = 14;
		in_2 = 8;
		control = 3;
		#100;
		
		in_1 = 3;
		in_2 = 10;
		control = 2;
		#100;
		
		in_1 = 9;
		in_2 = 5;
		control = 1;
		#100;
        
		// Add stimulus here

	end
      
endmodule

