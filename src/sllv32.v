`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:26:01 10/29/2015 
// Design Name: 
// Module Name:    sllv32 
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
module sllv32(
	input [31:0] A, 
	input [31:0] B, 
	output [31:0] res);

	assign res = (A << B[4:0]);

endmodule
