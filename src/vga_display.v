`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:24:54 06/26/2015 
// Design Name: 
// Module Name:    vga_display 
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
module vga_display(
		 input clk_25mhz,
		 input reset,
		 
		 output [19:0] addr_read,
		 input [15:0] vram_scan_data,
		 
		 output [3:0] Red,
		 output [3:0] Green,
		 output [3:0] Blue,
		 output hsync,
		 output vsync 
    );

	`define rgb_out {Red[3:0], Green[3:0], Blue[3:0]}

	wire [19:0] px;
	wire [19:0] py;
	wire rdn;
	

	assign addr_read[19:0] = py * 640 + px;                                             //vram��ȡ��ַ
	
	
	vgac vga_controller(         
    .vga_clk(clk_25mhz),    
    .clrn(~reset),
	 
    .row_addr(py[8:0]),   
    .col_addr(px[9:0]),       
    .rdn(rdn),        
    .hs(hsync),
	.vs(vsync));
	 
	 
	assign `rgb_out = (~rdn) ?  vram_scan_data[11:0] : 12'b0;

	 

endmodule