`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:46 10/25/2015 
// Design Name: 
// Module Name:    dec4to16 
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
module dec4to16(
	input wire [3:0] a,
	output reg [15:0] o
    );

	always @*
	begin
		case(a)
			4'h0: o = 16'b0000000000000001;
			4'h1: o = 16'b0000000000000010;
			4'h2: o = 16'b0000000000000100;
			4'h3: o = 16'b0000000000001000;
			4'h4: o = 16'b0000000000010000;
			4'h5: o = 16'b0000000000100000;
			4'h6: o = 16'b0000000001000000;
			4'h7: o = 16'b0000000010000000;
			4'h8: o = 16'b0000000100000000;
			4'h9: o = 16'b0000001000000000;
			4'ha: o = 16'b0000010000000000;
			4'hb: o = 16'b0000100000000000;
			4'hc: o = 16'b0001000000000000;
			4'hd: o = 16'b0010000000000000;
			4'he: o = 16'b0100000000000000;
			4'hf: o = 16'b1000000000000000;
			default: o = 16'b0;
		endcase
	end

endmodule
