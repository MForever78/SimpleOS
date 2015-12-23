`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:16:16 05/23/2015 
// Design Name: 
// Module Name:    mux4to1_32 
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
module mux4to1_32(
	input [31:0] x0,
	input [31:0] x1,
	input [31:0] x2,
	input [31:0] x3,
	input [1:0] sel,
	output reg[31:0] o
    );

	always @*
	begin
		case(sel)
			2'b00: o = x0;
			2'b01: o = x1;
			2'b10: o = x2;
			2'b11: o = x3;
			default: o = x0;
		endcase
	end

endmodule
