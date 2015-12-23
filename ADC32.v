`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:53 03/22/2015 
// Design Name: 
// Module Name:    ADC32 
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
module ADC32(
	input [31:0] A,
	input [31:0] B,
	input C0,
	output [32:0] S);

	assign S = {1'b0, A} + {C0, B} + C0;

endmodule
