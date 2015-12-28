`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:35:56 12/28/2015
// Design Name:   SimpleOS
// Module Name:   D:/project/ISE/project/SimpleOS/test_top.v
// Project Name:  SimpleOS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SimpleOS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_top;

    // Inputs
    reg clk_100mhz;
    reg RSTN;
    reg PS2C;
    reg PS2D;
    reg [15:0] SW;
    reg UART_RXD;

    // Outputs
    wire [3:0] Red;
    wire [3:0] Green;
    wire [3:0] Blue;
    wire hsync;
    wire vsync;
    wire [19:0] SRAM_ADDR;
    wire SRAM_CE;
    wire SRAM_OEN;
    wire SRAM_WEN;
    wire TRI_LED0_B;
    wire TRI_LED0_G;
    wire TRI_LED0_R;
    wire TRI_LED1_B;
    wire TRI_LED1_G;
    wire TRI_LED1_R;
    wire SEGLED_CLK;
    wire SEGLED_CLR;
    wire SEGLED_DO;
    wire SEGLED_PEN;
    wire LED_CLK;
    wire LED_CLR;
    wire LED_DO;
    wire LED_PEN;
    wire UART_TXD;

    // Bidirs
    wire [47:0] SRAM_DQ;

    // Instantiate the Unit Under Test (UUT)
    SimpleOS uut (
        .clk_100mhz(clk_100mhz), 
        .RSTN(RSTN), 
        .PS2C(PS2C), 
        .PS2D(PS2D), 
        .SW(SW), 
        .Red(Red), 
        .Green(Green), 
        .Blue(Blue), 
        .hsync(hsync), 
        .vsync(vsync), 
        .SRAM_ADDR(SRAM_ADDR), 
        .SRAM_CE(SRAM_CE), 
        .SRAM_OEN(SRAM_OEN), 
        .SRAM_WEN(SRAM_WEN), 
        .SRAM_DQ(SRAM_DQ), 
        .TRI_LED0_B(TRI_LED0_B), 
        .TRI_LED0_G(TRI_LED0_G), 
        .TRI_LED0_R(TRI_LED0_R), 
        .TRI_LED1_B(TRI_LED1_B), 
        .TRI_LED1_G(TRI_LED1_G), 
        .TRI_LED1_R(TRI_LED1_R), 
        .SEGLED_CLK(SEGLED_CLK), 
        .SEGLED_CLR(SEGLED_CLR), 
        .SEGLED_DO(SEGLED_DO), 
        .SEGLED_PEN(SEGLED_PEN), 
        .LED_CLK(LED_CLK), 
        .LED_CLR(LED_CLR),  
        .LED_DO(LED_DO), 
        .LED_PEN(LED_PEN), 
        .UART_RXD(UART_RXD), 
        .UART_TXD(UART_TXD)
    );

    initial begin
        // Initialize Inputs
        clk_100mhz = 0;
        RSTN = 0;
        PS2C = 0;
        PS2D = 0;
        SW = 0;
        UART_RXD = 0;

        // Wait 100 ns for global reset to finish
        #100;
        
        // Add stimulus here
        SW[15] = 1;
        SW[14] = 1;
    end
      
    always begin
        #2 clk_100mhz = ~clk_100mhz;
    end
      
    reg [47:0] mem1[31:0];
    reg [47:0] mem2[31:0]; 

    
    assign SRAM_DQ = SRAM_WEN == 0? 47'hzzzzzzzzzzzz : (SRAM_ADDR < 20'h80000 ? mem1[SRAM_ADDR[7:0]] : mem2[SRAM_ADDR[7:0]]);
    
    always @(posedge clk_100mhz) begin
        if (SRAM_WEN == 0) begin
            if (SRAM_ADDR < 20'h80000) mem1[SRAM_ADDR[6:0]] = SRAM_DQ[47:0];
            else mem2[SRAM_ADDR[6:0]] = SRAM_DQ[47:0];
        end
    end
    
    
      
endmodule


