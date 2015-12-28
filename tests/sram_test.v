`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:10:50 12/28/2015
// Design Name:   SRAM
// Module Name:   /home/mforever78/Share/Xilinx/SimpleOS/tests/sram_test.v
// Project Name:  SimpleOS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SRAM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sram_test;

	// Inputs
	reg clk_25mhz;
	reg clk_50mhz;
	reg r_stb;
	reg [19:0] r_addra;
	reg [47:0] r_dina;
	reg r_we;
	reg v_stb;
	reg [19:0] v_addra;
	reg [47:0] v_dina;
	reg v_we;
	reg [19:0] vram_scan_addr;

	// Outputs
	wire [47:0] r_douta;
	wire r_ACK;
	wire [47:0] v_douta;
	wire v_ACK;
	wire [19:0] SRAM_ADDR;
	wire SRAM_CE;
	wire SRAM_OEN;
	wire SRAM_WEN;
	wire [15:0] vram_scan_data;

	// Bidirs
	wire [47:0] SRAM_DQ;

	// Instantiate the Unit Under Test (UUT)
	SRAM uut (
		.clk_25mhz(clk_25mhz), 
		.clk_50mhz(clk_50mhz), 
		.r_stb(r_stb), 
		.r_addra(r_addra), 
		.r_dina(r_dina), 
		.r_we(r_we), 
		.r_douta(r_douta), 
		.r_ACK(r_ACK), 
		.v_stb(v_stb), 
		.v_addra(v_addra), 
		.v_dina(v_dina), 
		.v_we(v_we), 
		.v_douta(v_douta), 
		.v_ACK(v_ACK), 
		.SRAM_ADDR(SRAM_ADDR), 
		.SRAM_CE(SRAM_CE), 
		.SRAM_OEN(SRAM_OEN), 
		.SRAM_WEN(SRAM_WEN), 
		.SRAM_DQ(SRAM_DQ), 
		.vram_scan_addr(vram_scan_addr), 
		.vram_scan_data(vram_scan_data)
	);

	initial begin
		// Initialize Inputs
		clk_25mhz = 0;
		clk_50mhz = 0;
		r_stb = 0;
		r_addra = 0;
		r_dina = 0;
		r_we = 0;
		v_stb = 0;
		v_addra = 0;
		v_dina = 0;
		v_we = 0;
		vram_scan_addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end

    always begin
        #2 clk_50mhz = ~clk_50mhz;
    end

    always begin
        #4 clk_25mhz = ~clk_25mhz;
    end
      
endmodule

