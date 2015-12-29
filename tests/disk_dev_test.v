`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:04:33 12/29/2015
// Design Name:   disk_dev
// Module Name:   /home/mforever78/Share/Xilinx/SimpleOS/tests/disk_dev_test.v
// Project Name:  SimpleOS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: disk_dev
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module disk_dev_test;

	// Inputs
	reg clk;
	reg rst;
	reg [8:0] addr;
	reg [31:0] data_in;
	reg [31:0] instruction;
	reg write_pause;
	reg read_pause;
	reg dev_read_done;
	reg dev_write_done;
	reg [7:0] dev_data_in;

	// Outputs
	wire [31:0] data_out;
	wire operate_done;
	wire dev_enable;
	wire dev_we;
	wire [7:0] dev_data_out;

	// Instantiate the Unit Under Test (UUT)
	disk_dev uut (
		.clk(clk), 
		.rst(rst), 
		.addr(addr), 
		.data_in(data_in), 
		.data_out(data_out), 
		.instruction(instruction), 
		.write_pause(write_pause), 
		.read_pause(read_pause), 
		.operate_done(operate_done), 
		.dev_read_done(dev_read_done), 
		.dev_write_done(dev_write_done), 
		.dev_enable(dev_enable), 
		.dev_we(dev_we), 
		.dev_data_out(dev_data_out), 
		.dev_data_in(dev_data_in)
	);

    integer i;
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		addr = 0;
		data_in = 0;
		instruction = 0;
		write_pause = 0;
		read_pause = 0;
		dev_read_done = 0;
		dev_write_done = 0;
		dev_data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
        rst = 0;
        instruction = 32'h80000000;
        for (i = 0; i < 512; i = i + 1) begin
            addr = i;
            data_in = i % 256;
            #4;
        end

        instruction = 32'h00000000;
        for (i = 0; i < 512; i = i + 1) begin
            addr = i >> 2 << 2;
            #4;
        end
	end

    always begin
        #4 clk = ~clk;
    end
      
endmodule

