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
        
        input [0:0] SW,
        
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

        // UART
       // input UART_RXD,
       // output UART_TXD
    );


    wire [19:0] addr_read;
    wire [15:0] vram_scan_data; 
    wire clk100, clk50, clk25;
    wire RST = ~RSTN;
    
    //////////////////////////////////////////////////
    // Wishbone bus IO                              //
    //////////////////////////////////////////////////
    wire Ram_INT;
    wire Disk_INT;
    wire VRam_INT;
    wire Keyboard_INT;
    wire Counter_INT;
    wire Switch_INT;
    
    wire [31:0] Ram_CAUSE = 32'h0;
    wire [31:0] Disk_CAUSE = 32'h1;
    wire [31:0] VRam_CAUSE = 32'h2;
    wire [31:0] Keyboard_CAUSE = 32'h3;
    wire [31:0] Counter_CAUSE = 32'h4;
    wire [31:0] Switch_CAUSE = 32'h5;
    
    wire CPU_INT = 
       // Ram_INT | 
       // Disk_INT |
       // VRam_INT |
        Keyboard_INT |
       // Counter_INT |
        Switch_INT ;
    
    
    wire [31:0] CPU_CAUSE = 
       // Ram_INT ? Ram_CAUSE :
       // Disk_INT ? Disk_CAUSE :
       // VRam_INT ? VRam_CAUSE :
        Keyboard_INT ? Keyboard_CAUSE :
       // Counter_INT ? Counter_CAUSE :
        Switch_INT ? Switch_CAUSE :
        32'h0;
    
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
    
    
    assign Switch_INT = SW[0];
    
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
            .INT(CPU_INT), 
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
            .Cause_in(CPU_CAUSE));
        
    
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
    assign {TRI_LED1_B, TRI_LED1_G, TRI_LED1_R} = {3{~Keyboard_INT}};  
    
    board_disp_sword(
        .clk(clk100),
        .rst(RST),
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

    counter counter(
        .clk(clk100),
        .rst(RST),
        .WE(Counter_WE),
        .ACK(Counter_ACK),
        .STB(Counter_STB),
        .DAT_I(slave_DAT_I),
        .DAT_O(Counter_DAT_O)
    );

    // Disk
    wire[31: 0] disk_instruction;
    wire disk_write_pause, disk_read_pause;
    wire [8: 0] disk_addr;
    wire [31: 0] disk_data_in, disk_data_out;
    wire disk_operate_done;

    // UART
    wire [7: 0] UART_data_in, UART_data_out;
    wire UART_RX_busy, UART_RX_done;
    wire UART_TX_busy, UART_TX_done;
    wire UART_dev_en, UART_dev_we;
/*
    disk disk(
        .clk(clk100),
        .rst(RST),

        // bus IO
        .WE(Disk_WE),
        .ACK(Disk_ACK),
        .STB(Disk_STB),
        .ADDR(slave_ADDR),
        .DAT_I(slave_DAT_I),
        .DAT_O(Disk_DAT_O),

        // disk dev IO
        .instruction(disk_instruction),
        .write_pause(disk_write_pause),
        .read_pause(disk_read_pause),
        .disk_addr(disk_addr),
        .disk_data_in(disk_data_out),
        .disk_data_out(disk_data_in),
        .disk_operate_done(disk_operate_done)
    );

    disk_dev disk_dev(
        .clk(clk100),
        .rst(RST),
        .addr(disk_addr),
        .data_in(disk_data_in),
        .data_out(disk_data_out),
        .instruction(disk_instruction),
        .write_pause(disk_write_pause),
        .read_pause(disk_read_pause),
        .operate_done(disk_operate_done),

        .dev_read_done(UART_RX_done),
        .dev_write_done(UART_TX_done),
        .dev_enable(UART_dev_en),
        .dev_we(UART_dev_we),
        .dev_data_out(UART_data_in),
        .dev_data_in(UART_data_out)
    );

    uart uart(
        .clk(clk100),
        .rst(RST),
        .rx(UART_RXD),
        .tx(UART_TXD),
        .en(UART_dev_en),
        .we(UART_dev_we),
        .rx_busy(UART_RX_busy),
        .rx_done(UART_RX_done),
        .tx_busy(UART_TX_busy),
        .tx_done(UART_TX_done),
        .data_in(UART_data_in),
        .data_out(UART_data_out)
    );*/

    keyboard keyboard_dev(
        .STB(Keyboard_STB),
        .ACK(Keyboard_ACK),
        
		.clk_cpu(clk25),
        .reset(1'b0),
		.WE(Keyboard_WE),
		.PS2C(PS2C),
		.PS2D(PS2D),
		
		.key_data(Keyboard_DAT_O),
        .INT(Keyboard_INT)
    );

endmodule                                                           
