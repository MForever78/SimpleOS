`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:00 10/30/2015 
// Design Name: 
// Module Name:    MdrHalfStore 
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
module MdrHalfStore(
	input wire pos,
	input wire [31:0] MDR_in,
	input wire [15:0] data_in,
	
	output reg [31:0] data_out
    );
	 
	 
	always @* 
	begin
		case (pos)
			1'b0: data_out[31:0] = {MDR_in[31:16], data_in[15:0]}; 
			1'b1: data_out[31:0] = {data_in[15:0], MDR_in[15:0]}; 
		endcase
	end


endmodule
