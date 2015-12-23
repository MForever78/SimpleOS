`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:29:47 10/30/2015 
// Design Name: 
// Module Name:    MDR_BYTE 
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
module MDR_BYTE(
		input wire [1:0] pos,
		input wire [31:0] MDR_in,
		
		output reg [31:0] data_out
    );

	always @* 
	begin
		case (pos[1:0])
			2'b00: data_out[31:0] <= {24'b0, MDR_in[7:0]};
			2'b01: data_out[31:0] <= {24'b0, MDR_in[15:8]};
			2'b10: data_out[31:0] <= {24'b0, MDR_in[23:16]};
			2'b11: data_out[31:0] <= {24'b0, MDR_in[31:24]};
		endcase
	end

endmodule
