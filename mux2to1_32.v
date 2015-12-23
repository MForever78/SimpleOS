`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:53 05/07/2015 
// Design Name: 
// Module Name:    mux2to1_32 
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
module mux2to1_32(
	input [31:0] a,
	input [31:0] b,
	input sel,
	output [31:0] o);

	assign o = (sel == 32'b1) ? a : b;

endmodule
