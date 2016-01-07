`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:52 01/05/2016 
// Design Name: 
// Module Name:    font_device 
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
	input [3:0] row,
	input [2:0] col,
   
	output data
	);

	wire [11:0] addr;
	wire [7:0] rom_data;
    
	assign addr[11:0] = {ascii[7:0], row[3:0]};
	
    
	font_table font_table(
		.a(addr),
		.spo(rom_data));

	assign data = rom_data[col[0:2]];

endmodule
