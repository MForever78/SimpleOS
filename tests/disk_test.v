`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:15:58 12/28/2015
// Design Name:   disk
// Module Name:   /home/mforever78/Share/Xilinx/SimpleOS/tests/disk_test.v
// Project Name:  SimpleOS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: disk
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module disk_test;

	// Inputs
	reg clk;
	reg rst;
	reg WE;
	reg STB;
	reg [31:0] ADDR;
	reg [31:0] DAT_I;
	reg disk_operate_done;
	reg [31:0] disk_data_in;

	// Outputs
	wire ACK;
	wire [31:0] DAT_O;
	wire [31:0] instruction;
	wire write_pause;
	wire read_pause;
	wire [8:0] disk_addr;
	wire [31:0] disk_data_out;

	// Instantiate the Unit Under Test (UUT)
	disk uut (
		.clk(clk), 
		.rst(rst), 
		.WE(WE), 
		.STB(STB), 
		.ACK(ACK), 
		.ADDR(ADDR), 
		.DAT_I(DAT_I), 
		.DAT_O(DAT_O), 
		.instruction(instruction), 
		.write_pause(write_pause), 
		.read_pause(read_pause), 
		.disk_operate_done(disk_operate_done), 
		.disk_addr(disk_addr), 
		.disk_data_in(disk_data_in), 
		.disk_data_out(disk_data_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		WE = 0;
		STB = 0;
		ADDR = 0;
		DAT_I = 0;
		disk_operate_done = 0;
		disk_data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
        rst = 0;
        STB = 1;
        ADDR = 32'h00000200;
        DAT_I = 32'h00000000;
        #100;
        disk_operate_done = 1;
        #8;
        disk_operate_done = 0;
	end
    
    always begin
        #4 clk = ~clk;
    end
      
endmodule

