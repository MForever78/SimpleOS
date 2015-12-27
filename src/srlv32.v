`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:27:17 10/29/2015 
// Design Name: 
// Module Name:    srlv32 
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
module srlv32(
	input [31:0] A, 
	input [31:0] B, 
	output [31:0] res);

	assign res = (A >> B[4:0]);

endmodule
