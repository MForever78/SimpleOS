`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:59:21 12/24/2015
// Design Name:   Muliti_CPU
// Module Name:   D:/project/ISE/project/SimpleOS/test_cpu.v
// Project Name:  SimpleOS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Muliti_CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_cpu;

	// Inputs
	reg clk;
	reg [31:0] Data_in;
	reg INT;
	reg MIO_ready;
	reg reset;
	reg [31:0] Cause_in;

	// Outputs
	wire [31:0] Addr_out;
	wire CPU_MIO;
	wire [31:0] Data_out;
	wire [31:0] inst_out;
	wire mem_w;
	wire mem_r;
	wire [31:0] PC_out;
	wire [5:0] state;

	// Instantiate the Unit Under Test (UUT)
	Muliti_CPU uut (
		.clk(clk), 
		.Data_in(Data_in), 
		.INT(INT), 
		.MIO_ready(MIO_ready), 
		.reset(reset), 
		.Addr_out(Addr_out), 
		.CPU_MIO(CPU_MIO), 
		.Data_out(Data_out), 
		.inst_out(inst_out), 
		.mem_w(mem_w), 
		.mem_r(mem_r), 
		.PC_out(PC_out), 
		.state(state), 
		.Cause_in(Cause_in)
	);


    	initial forever
	begin  
		#10;
		clk = 1;  
		#10; 
		clk = 0;
	end

    always @*begin
    MIO_ready = ~(mem_w & ~mem_r);
    end

	initial begin
		// Initialize Inputs 
		clk = 0;
		Data_in = 32'had090000; 
		INT = 1'b0;
		MIO_ready = 1;
		reset = 0; 
		Cause_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

