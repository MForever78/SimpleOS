`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:42:13 12/23/2015 
// Design Name: 
// Module Name:    SimpleOS 
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
module SimpleOS(
        input clk_100mhz,
        input RSTN,
        input PS2C,
        input PS2D,
        
        
        output [3:0] Red,
        output [3:0] Green,
        output [3:0] Blue,
        output hsync,
        output vsync,
        
        output [19:0] SRAM_ADDR,
        output SRAM_CE,
        output SRAM_OEN,
        output SRAM_WEN,
        inout [47:0] SRAM_DQ,
        output TRI_LED0_B,
        output TRI_LED0_G,
        output TRI_LED0_R,
        output TRI_LED1_B,
        output TRI_LED1_G,
        output TRI_LED1_R,
    
        // SEGLED
        output SEGLED_CLK,
        output SEGLED_CLR,
        output SEGLED_DO, 
        output SEGLED_PEN,
    
        // LED
        output LED_CLK,
        output LED_CLR,
        output LED_DO,
        output LED_PEN
    );


    wire [15:0] addr_read;
    wire [15:0] vram_scan_data; 
    wire clk100, clk50, clk25;
    
    
    dsp timer(
        .CLK_IN1(clk_100mhz),
        .CLK_OUT1(clk100),
        .CLK_OUT2(clk50),
        .CLK_OUT3(clk25));
    
    SRAM  U3 (
        .addra(), 
        .clk_50mhz(clk50), 
        .clk_25mhz(clk25), 
        .dina(), 
        .wea(1'b0), 
        .douta(),
        .MIO_ready(),
            
        .vram_scan_addr({4'b0, addr_read[15:0]}),
        .vram_scan_data(vram_scan_data),
            
        .sel_ram(1'b1),
            
            
        .SRAM_ADDR(SRAM_ADDR[19:0]),
        .SRAM_CE(SRAM_CE),
        .SRAM_OEN(SRAM_OEN),
        .SRAM_WEN(SRAM_WEN),
        .SRAM_DQ(SRAM_DQ));    

   vga_display vga_dev(
        .clk_25mhz(clk25),
        .reset(1'b0),
        .cursor_wea(1'b0),
        .cursor_in(),

        .vga_status(),
        .cursor(),
        .Red(Red[2:0]),
        .Green(Green[2:0]),
        .Blue(Blue[1:0]),
        .hsync(hsync),
        .vsync(vsync),
        
        .addr_read(addr_read),
        .vram_scan_data(vram_scan_data));
    
    assign Red[3] = Red[2];
    assign Green[3] = Green[2];
    assign Blue[3] = Blue[1];
    assign Blue[2] = Blue[1];

    assign {TRI_LED0_B, TRI_LED0_G, TRI_LED0_R} = 3'b111;   //¡¡   MIO_ready = 0;
    assign {TRI_LED1_B, TRI_LED1_G, TRI_LED1_R} = 3'b111;  
    
    
    board_disp_sword(
        .clk(clk100),
        .rst(),
        .en(8'hff),
        .data(32'h12345678),
        .dot(8'h0),
        .led(16'b0),
        .led_clk(LED_CLK),
        .led_en(LED_PEN),
        .led_clr_n(LED_CLR),
        .led_do(LED_DO),
        .seg_clk(SEGLED_CLK),
        .seg_en(SEGLED_PEN),
        .seg_clr_n(SEGLED_CLR),
        .seg_do(SEGLED_DO)
    );
endmodule                                                           