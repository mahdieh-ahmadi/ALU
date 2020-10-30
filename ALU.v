`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:07:16 10/30/2020 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(
    input [3:0] in_1,
    input [3:0] in_2,
	 input [1:0] control,
    output [4:0] out
    );

	assign out = control == 0 ? (in_1+in_2) : (control == 1 ? (in_1&in_2) : (control == 2 ? in_1^in_2 : 5'b11111));

endmodule
