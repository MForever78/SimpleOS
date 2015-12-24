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


    wire [19:0] addr_read;
    wire [15:0] vram_scan_data; 
    wire clk100, clk50, clk25;
    
    //////////////////////////////////////////////////
    // Wishbone bus IO                              //
    //////////////////////////////////////////////////
    
    // Master Signal
    wire CPU_STB;
    wire CPU_ACK;
    wire CPU_WE;
    wire [31: 0] CPU_DAT_I;
    wire [31: 0] CPU_DAT_O;
    wire [31: 0] CPU_ADDR;

    // Slave Signal
    wire [16: 0] slave_ACK, slave_STB;
    wire slave_WE;
    wire [31: 0] slave_DAT_I, slave_ADDR;
    wire [511: 0] slave_DAT_O;

    // Slave members
    wire Ram_ACK, Disk_ACK, VRam_ACK, Keyboard_ACK, Counter_ACK;
    wire [31: 0] Ram_DAT_O, Disk_DAT_O, VRam_DAT_O, Keyboard_DAT_O, Counter_DAT_O;

    assign slave_DAT_O = {320'b0, Counter_DAT_O, Keyboard_DAT_O, VRam_DAT_O, Disk_DAT_O, Ram_DAT_O};
    assign slave_ACK[0] = Ram_ACK;
    assign slave_ACK[1] = Disk_ACK;
    assign slave_ACK[2] = VRam_ACK;
    assign slave_ACK[3] = Keyboard_ACK;
    assign slave_ACK[4] = Counter_ACK;

    wire Ram_STB = slave_STB[0];
    wire Disk_STB = slave_STB[1];
    wire VRam_STB = slave_STB[2];
    wire Keyboard_STB = slave_STB[3];
    wire Counter_STB = slave_STB[4];
    
    wire Ram_WE = slave_WE;
    wire Disk_WE = slave_WE;
    wire VRam_WE = slave_WE;
    wire Keyboard_WE = slave_WE;
    wire Counter_WE = slave_WE;

    
    
    WB_intercon intercon(
        .master_STB(CPU_STB),
        .master_DAT_I(CPU_DAT_O),
        .master_DAT_O(CPU_DAT_I),
        .master_ACK(CPU_ACK),
        .master_WE(CPU_WE),
        .master_ADDR(CPU_ADDR),
        .slave_STB(slave_STB),
        .slave_ACK(slave_ACK),
        .slave_WE(slave_WE),
        .slave_DAT_I(slave_DAT_O),
        .slave_DAT_O(slave_DAT_I),
        .slave_ADDR(slave_ADDR)
    );
    
    
    
    
    dsp timer(
        .CLK_IN1(clk_100mhz),
        .CLK_OUT1(clk100),
        .CLK_OUT2(clk50),
        .CLK_OUT3(clk25));
        
        
    wire mem_w, mem_r;
    assign CPU_WE = mem_w & ~mem_r;
    assign CPU_STB = mem_w ^ mem_r;
    Muliti_CPU U1 (
            .clk(clk25),
            .reset(),
            .INT(1'b0), 
            .inst_out(), 
            .Data_in(CPU_DAT_I[31:0]),
            .MIO_ready(CPU_ACK),
            .mem_w(mem_w),
            .mem_r(mem_r),
            .PC_out(),
            .state(),
            .Addr_out(CPU_ADDR[31:0]),
            .Data_out(CPU_DAT_O[31:0]),
            .CPU_MIO(),
            .Cause_in({32'b0}));
        
    
    SRAM  U3 (
        .clk_50mhz(clk50), 
        .clk_25mhz(clk25), 
        
        .r_stb(Ram_STB),
        .r_addra(slave_ADDR[31:2]),
        .r_dina(slave_DAT_I),
        .r_we(Ram_WE),
        .r_douta(Ram_DAT_O), 
        .r_ACK(Ram_ACK),
        
        .v_stb(VRam_STB),
        .v_addra(slave_ADDR[31:2]),
        .v_dina(slave_DAT_I),
        .v_we(VRam_WE),
        .v_douta(VRam_DAT_O), 
        .v_ACK(VRam_ACK),
            
        .vram_scan_addr(addr_read[19:0]),
        .vram_scan_data(vram_scan_data),    
            
        .SRAM_ADDR(SRAM_ADDR[19:0]),
        .SRAM_CE(SRAM_CE),
        .SRAM_OEN(SRAM_OEN),
        .SRAM_WEN(SRAM_WEN),
        .SRAM_DQ(SRAM_DQ));    

   vga_display vga_dev(
        .clk_25mhz(clk25),
        .reset(1'b0),

        .Red(Red[3:0]),
        .Green(Green[3:0]),
        .Blue(Blue[3:0]),
        .hsync(hsync),
        .vsync(vsync),
        
        .addr_read(addr_read),
        .vram_scan_data(vram_scan_data));  
        

    assign {TRI_LED0_B, TRI_LED0_G, TRI_LED0_R} = {3{CPU_ACK}};   
    assign {TRI_LED1_B, TRI_LED1_G, TRI_LED1_R} = {3{Ram_ACK}};  
    
    
    board_disp_sword(
        .clk(clk100),
        .rst(),
        .en(8'hff),
        .data(slave_ADDR),   
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