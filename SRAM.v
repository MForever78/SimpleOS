`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:38:55 11/26/2015 
// Design Name: 
// Module Name:    SRAM 
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
module SRAM(
				input [19:0] addra,
				input clk_25mhz,
				input clk_50mhz,
				input [47:0] dina,
				input wea,
				output [47:0] douta, 
				output MIO_ready,
				
				output [19:0] SRAM_ADDR,
				output SRAM_CE,
				output SRAM_OEN,
				output SRAM_WEN,
				inout [47:0] SRAM_DQ,
    
				input [19:0] vram_scan_addr,
				output reg [15:0] vram_scan_data,
				
				input sel_ram
	 );
	
	wire [19:0] sram_addra;
	wire [47:0] sram_dina;
	wire sram_wea;
	wire [47:0] sram_douta;
	
	/*SRAM 核心操作开始*/
	assign SRAM_ADDR = sram_addra;
	assign SRAM_CE = 1'b0;				
	assign SRAM_OEN = sram_wea;			
	assign SRAM_WEN = ~sram_wea;
	assign SRAM_DQ[47:0] = sram_wea ? sram_dina[47:0] : {48{1'bz}};
	assign sram_douta = SRAM_DQ[47:0];
	 /*SRAM 核心操作结束*/
	
	
	reg copy_flag;
	reg init_flag;
	reg [19:0] init_addra;
	reg [19:0] rom_addra;
	wire [47:0] init_dina;
	
	/*vga 扫描信号输出*/
	wire sel_vram_scan;
	assign sel_vram_scan = clk_25mhz;
	always @(posedge clk_50mhz)
	begin
		if (sel_vram_scan) vram_scan_data[15:0] <= sram_douta[47:32];
	end
	/*vga 扫描信号输出*/


	wire [19:0] ram_addra;
	wire ram_wea;
	wire [47:0] ram_dina;
	wire [47:0] ram_douta;
	reg write_flag;
	reg [47:0] write_record;

	assign ram_addra = addra;
	assign ram_wea = wea ? write_flag : 1'b0;
	assign ram_dina = wea ? (write_flag ? (sel_ram ? {write_record[47:32], dina[31:0]} 		//写的是ram那么输入低32位
																  : {dina[15:0], write_record[31:0]})		//写的是vram那么输入高16位 
													: {48{1'bz}}) 							//写操作的读状态也不用考虑输入
								 : {48{1'bz}};												//读操作就不用考虑输入
								 
	assign ram_douta = wea ? sram_douta[47:0] 									//写操作也要读出来后续使用
								  : (sel_ram ? {16'b0, sram_douta[31:0]} 			//读的是ram那么输出低32位 
												 : {32'b0, sram_douta[47:32]});  	//读的是vram那么就输出高16位 
	assign douta = ram_douta; 

	/*写操作*/ 
	always @(posedge clk_50mhz)    
	begin
		if (wea) begin
			if (~sel_vram_scan & write_flag == 1'b1) write_flag <= 1'b0;		
			if (sel_vram_scan & write_flag == 1'b0) write_record <= douta;
			if (~sel_vram_scan & write_flag == 1'b0) write_flag <= 1'b1;
		end	
	end
	/*写操作*/
	 
	assign sram_wea =   init_flag ? 1'b1                     : (sel_vram_scan ? 1'b0 : ram_wea);
	assign sram_addra = init_flag ? init_addra               : (sel_vram_scan ? vram_scan_addr : ram_addra);
	assign sram_dina =  init_flag ? init_dina[47:0] 			: (sel_vram_scan ? {48{1'bz}} : ram_dina);
	assign MIO_ready = ~init_flag & write_flag; 
	
	
	
	/*SRAM 初始化*/
	initial begin
		write_flag = 1'b1;
		init_flag = 1'b1;
		init_addra[19:0] = 20'b0;
		rom_addra[19:0] = 20'b0;
		copy_flag = 1'b0;
		#200;
		copy_flag = 1'b1;						//开始初始化
	end
	 
	 RAM_B  U3 (.addra(rom_addra[19:0]), 
		 .clka(clk_50mhz), 
		 .dina(32'b0), 
		 .wea(1'b0), 
		 .douta(init_dina[47:0]));
		 
	 
	always @(posedge clk_50mhz)
	begin
		if (copy_flag)	
		begin
			if (init_addra > 20'd307200) 		//初始化结束
			begin
				init_flag <= 1'b0;
				copy_flag <= 1'b0;
			end
			else begin
				rom_addra <= rom_addra + 20'b1;	//地址增加
				if (rom_addra >= 20'b1) init_addra <= init_addra + 20'b1;
			end
		end
	end
	/*SRAM 初始化结束*/
	 
endmodule