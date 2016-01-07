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
        
        input [15:0] SW,
        
        output [3:0] Red,
        output [3:0] Green,
        output [3:0] Blue,
        output hsync,
        output vsync,
        
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
        output LED_PEN,

        // UART
        input UART_RXD,
        output UART_TXD,

        // BTN
        output BTN_X0,
        output BTN_X1,
        output BTN_X2,
        output BTN_X3,
        output BTN_X4,
        input BTN_Y1,
        input BTN_Y2,
        input BTN_Y3,
        input BTN_Y4
    );


    wire [19:0] addr_read;
    wire [7:0] vram_scan_data; 
    wire clk100, clk50, clk25, clk12p5, clk6p25;
    wire RST = ~RSTN;

    // Btn
    wire[4: 0] btn_x;
    wire[3: 0] btn_y = {BTN_Y4, BTN_Y3, BTN_Y2, BTN_Y1};
    wire[19: 0] btn, pause;
    assign {BTN_X4, BTN_X3, BTN_X2, BTN_X1, BTN_X0} = btn_x;
    
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
        0;
    
    wire [31:0] CPU_CAUSE = 
       // Ram_INT ? Ram_CAUSE :
       // Disk_INT ? Disk_CAUSE :
       // VRam_INT ? VRam_CAUSE :
        Keyboard_INT ? Keyboard_CAUSE :
       // Counter_INT ? Counter_CAUSE :
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
    wire [31: 0] CPU_inst;
    wire [31: 0] CPU_pc;
    wire [5: 0] CPU_state;

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
    //assign slave_ACK[1] = Disk_ACK;
    assign slave_ACK[1] = SW[13] ? SW[12] : Disk_ACK;
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
        .RESET(~RSTN),
        .CLK_IN1(clk_100mhz),
        .CLK_OUT1(clk100),
        .CLK_OUT2(clk50),
        .CLK_OUT3(clk25),
        .CLK_OUT4(clk12p5),
        .CLK_OUT5(clk6p25));

    wire clk1s, clk2s;

    slower slower(
        .clk(clk100),
        .rst(RST),
        .clk1s(clk1s),
        .clk2s(clk2s)
    );
        
    wire clk_slow = SW[15] ? (SW[14] ? clk50 : clk2s) : 0;
    wire clk_fast = SW[15] ? (SW[14] ? clk100 : clk1s) : 0;
        
    wire mem_w, mem_r;
    assign CPU_WE = mem_w & ~mem_r;
    assign CPU_STB = mem_w ^ mem_r;
    Muliti_CPU U1 (
            .clk(clk_slow),
            .reset(RST),
            .INT(CPU_INT), 
            .inst_out(CPU_inst), 
            .Data_in(CPU_DAT_I[31:0]),
            .MIO_ready(CPU_ACK),
            .mem_w(mem_w),
            .mem_r(mem_r),
            .PC_out(CPU_pc),
            .state(CPU_state),
            .Addr_out(CPU_ADDR[31:0]),
            .Data_out(CPU_DAT_O[31:0]),
            .CPU_MIO(),
            .Cause_in(CPU_CAUSE));
    

    ram_ipcore ram_ipcore(
        .clka(clk_fast),
        .addra(slave_ADDR[28:2]),
        .dina(slave_DAT_I),
        .wea(Ram_STB ? Ram_WE : 1'b0),
        .douta(Ram_DAT_O)
    );
    
    assign Ram_ACK = 1'b1;

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
    wire [8: 0] manual_disk_addr;
    wire [31: 0] disk_data_in, disk_data_out;
    wire disk_operate_done;

    // UART
    wire [7: 0] UART_data_in, UART_data_out;
    wire UART_RX_busy, UART_RX_done;
    wire UART_TX_busy, UART_TX_done;
    wire UART_dev_en, UART_dev_we;

    wire vga_read;
    wire [7:0] vram_out;
    assign VRam_DAT_O = {24'b0, vram_out[7:0]};
    assign VRam_ACK = 1'b1;
    
    vram_ipcore  vram_ipcore(
         .addra(slave_ADDR[13:2]), 
         .dina(slave_DAT_I[7:0]), 
         .wea(VRam_STB ? VRam_WE : 1'b0),
         .clka(clk100), 
         .douta(vram_out[7:0]),
         
         .addrb(addr_read[11:0]),
         .dinb(8'b0),
         .web(1'b0),
         .clkb(clk100),
         .doutb(vram_scan_data[7:0]));	

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
        .addr(SW[2: 0] == 7 ? manual_disk_addr : disk_addr),
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
    );

    keyboard keyboard_dev(
        .STB(Keyboard_STB),
        .ACK(Keyboard_ACK),
        .clk_scan(clk50),
		.clk_read(clk_slow),
        .reset(RST),
		.WE(Keyboard_WE),
		.PS2C(PS2C),
		.PS2D(PS2D),
		
		.key_data(Keyboard_DAT_O),
        .INT(Keyboard_INT)
    );

    wire [31: 0] display_data;

    display_select display_select(
        .sel(SW[2: 0]),
        .data0(CPU_pc),
        .data1(CPU_inst),
        .data2(CPU_ADDR),
        .data3(CPU_state),
        .data4(CPU_DAT_I),
        .data5(CPU_DAT_O),
        .data6(manual_disk_addr),
        .data7(disk_data_out),
        .data_out(display_data)
    );
        
    board_disp_sword board_disp_sword(
        .clk(clk100),
        .rst(RST),
        .en(8'hff),
        .data(display_data),   
        .dot(8'h0),
        .led({14'b0, UART_TX_busy, UART_RX_busy}),
        .led_clk(LED_CLK), 
        .led_en(LED_PEN),
        .led_clr_n(LED_CLR),
        .led_do(LED_DO),
        .seg_clk(SEGLED_CLK),
        .seg_en(SEGLED_PEN),
        .seg_clr_n(SEGLED_CLR),
        .seg_do(SEGLED_DO)
    );

    btn_scan_sword btn_scan_sword(
        .clk(clk100),
        .rst(RST),
        .btn_x(btn_x),
        .btn_y(btn_y),
        .result(btn)
    );

    pause_gen pause_gen(
        .clk(clk100),
        .rst(RST),
        .button(btn),
        .pause(pause)
    );

    disk_addr_gen disk_addr_gen(
        .clk(clk100),
        .rst(RST),
        .button(pause),
        .addr(manual_disk_addr)
    );

endmodule                                                           
