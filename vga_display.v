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
		 input cursor_wea,
		 input [31:0] cursor_in,
		 
		 output [15:0] addr_read,
		 input [15:0] vram_scan_data,
		 
		 output reg [31:0] vga_status,
		 output reg [31:0] cursor,
		 output [2:0] Red,
		 output [2:0] Green,
		 output [1:0] Blue,
		 output reg [15:0] vram_out, 
		 output hsync,
		 output vsync 
    );

	`define rgb_out {Red[2], Red[1], Red[0], Green[2], Green[1], Green[0], Blue[1], Blue[0]}

	wire [9:0] hc, vc;
	wire clk_1s;
	wire [9:0] px;
	wire [8:0] py;
	wire rdn;
	wire font_data;
	wire [2:0] font_mode;
	wire isCursor;
	reg [31:0] cnt;
	assign clk_1s = cnt[23];
	
	initial 
	begin
		cnt <= 32'b0;
		vga_status = 32'h0;
		cursor = 32'b0;
	end
	
	always @(posedge clk_25mhz)
	begin
		cnt <= cnt+ 32'b1;
		if (reset) cursor = 32'b0;
		else if (cursor_wea) cursor = cursor_in;
	end
	
	assign isCursor = ((py[8:3] == cursor[21:16]) & (px[9:0] == {cursor[6:0], 3'b0}));
	
	assign font_mode[2:0] = vga_status[6:4];
	assign addr_read[15:0] = py[8:3] * 80 + px[9:3];                                             //vram¶ÁÈ¡µØÖ·
	
	
	vgac vga_controller(         
    .vga_clk(clk_25mhz),    
    .clrn(~reset),
	 
    .row_addr(py),   
    .col_addr(px),       
    .rdn(rdn),        
    .hs(hsync),
	 .vs(vsync));
	 
	 
	 font_dev font_device(
		.ascii(vram_scan_data[7:0]), 
		.row(py[2:0]),
		.col(px[2:0]),
	   .data(font_data)
	 );
	 
	assign `rgb_out = (~rdn) ?  
		(vram_scan_data[15:8] & {8{(font_data |(isCursor & clk_1s))}}) : 8'b0;

	 

endmodule
