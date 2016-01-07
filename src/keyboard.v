`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:25 08/26/2015 
// Design Name: 
// Module Name:    keyboard 
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
module keyboard(
        input STB,
        output ACK,
        
        input clk_scan,
		input clk_read,
        input reset,
		input WE,
		input PS2C,
		input PS2D,
		
		output [31:0] key_data,
        output INT
        
    );

	wire [7:0] data;  					//data from ps2_kbd
	wire wea;
	wire ready;
	wire overflow;
	
    assign wea = STB ? WE : 1'b1;
    assign INT = ready;
    assign ACK = STB;
    
    assign key_data = {24'b0, data[7:0]};

	ps2_kbd ps2_kbd_dev(
		.clk_scan(clk_scan),
        .clk_read(clk_read),
		.clrn(~reset),
		.ps2_clk(PS2C),
		.ps2_data(PS2D), 
		.rdn(wea),
		.data(data[7:0]), 
		.ready(ready),
		.overflow(overflow));  
	
endmodule
