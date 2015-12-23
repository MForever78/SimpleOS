`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:05:28 03/22/2015 
// Design Name: 
// Module Name:    or_bit_32 
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
module or_bit_32(
	input [31:0] A, 
	output o);

	assign o = (A[31:0] == 32'b0) ? 1'b1 : 1'b0;

endmodule
