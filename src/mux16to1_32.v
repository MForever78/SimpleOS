`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:01:21 03/22/2015 
// Design Name: 
// Module Name:    mux8to1_32 
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
module mux16to1_32(
	input [31:0] x0,
	input [31:0] x1,
	input [31:0] x2,
	input [31:0] x3,
	input [31:0] x4,
	input [31:0] x5,
	input [31:0] x6,
	input [31:0] x7,
	input [31:0] x8,
	input [31:0] x9,
	input [31:0] x10,
	input [31:0] x11,
	input [31:0] x12,
	input [31:0] x13,
	input [31:0] x14,
	input [31:0] x15,
	input [3:0] sel,
	output reg[31:0] o);
	
	
	always @(*)
	begin
		case (sel)
			4'b0000: o = x0;
			4'b0001: o = x1;
			4'b0010: o = x2;
			4'b0011: o = x3;
			4'b0100: o = x4;
			4'b0101: o = x5;
			4'b0110: o = x6;
			4'b0111: o = x7;
			4'b1000: o = x8;
			4'b1001: o = x9;
			4'b1010: o = x10;
			4'b1011: o = x11;
			4'b1100: o = x12;
			4'b1101: o = x13;
			4'b1110: o = x14;
			4'b1111: o = x15;
		endcase
	end
endmodule
