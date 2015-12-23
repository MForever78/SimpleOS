`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:18 08/27/2015 
// Design Name: 
// Module Name:    font_dev 
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
module font_dev(
	input [7:0] ascii,
	input [2:0] row,
	input [2:0] col,
   
	output data
	);

	wire [10:0] addr;
	wire [7:0] rom_data;

	assign addr[10:0] = {ascii[7:0], row[2:0]};
	

	FONT_TABLE font_table_rom(
		.a(addr),
		.spo(rom_data));

	assign data = rom_data[col[2:0]];

endmodule
