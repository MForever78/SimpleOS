`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:06 10/30/2015 
// Design Name: 
// Module Name:    MdrByteSotre 
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
module MdrByteStore(
	input wire [1:0] pos,
	input wire [31:0] MDR_in,
	input wire [7:0] data_in,
	
	output reg [31:0] data_out
    );
	 
	 
	always @* 
	begin
		case (pos[1:0])
			2'b00: data_out[31:0] <= {MDR_in[31:8], data_in[7:0]}; 
			2'b01: data_out[31:0] <= {MDR_in[31:16], data_in[7:0], MDR_in[7:0]};
			2'b10: data_out[31:0] <= {MDR_in[31:24], data_in[7:0], MDR_in[15:0]};
			2'b11: data_out[31:0] <= {data_in[7:0], MDR_in[23:0]};
		endcase
	end

endmodule
