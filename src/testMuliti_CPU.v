`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:31:39 06/18/2015
// Design Name:   Muliti_CPU
// Module Name:   D:/project/ISE/LAB10/testMuliti_CPU.v
// Project Name:  LAB10
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

module testMuliti_CPU;

	// Inputs
	reg clk;
	reg [31:0] Data_in;
	reg INT;
	reg MIO_ready;
	reg reset;

	// Outputs
	wire [31:0] Addr_out;
	wire CPU_MIO;
	wire [31:0] Data_out;
	wire [31:0] inst_out;
	wire mem_r;
	wire mem_w; 
	wire [31:0] PC_out;
	wire [4:0] state;


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
		.mem_r(mem_r), 
		.mem_w(mem_w),
		.PC_out(PC_out), 
		.state(state)
	);

	reg [31:0] count;
	reg start;

	initial forever
	begin  
		#5;
		clk = 1; 
		#5; 
		clk = 0;
	end

	always @*
	begin
		case(Addr_out[31:2])
			0: Data_in = 32'h08000002;
			1: Data_in = 32'h00000024;
			2: Data_in = 32'h2008000f; 
			3: Data_in = 32'h20020001;			
            4: Data_in = 32'h0002000c;
			5: Data_in = 32'h3c094000;
			6: Data_in = 32'ha5280000;
			7: Data_in = 32'h21290001;	 
            8: Data_in = 32'h08000006;
			9: Data_in = 32'h20080fff;
			10: Data_in = 32'h40000018;
			11: Data_in = 32'hffffffff;
		endcase
        
	end

	initial begin
		// Initialize Inputs 
		clk = 0;
		Data_in = 0;
		INT = 0;
		MIO_ready = 1;
		reset = 0; 
		count=0;    
		Data_in <= 32'h0;
		start = 0;
		// Wait 100 ns for global reset to finish
		reset = 1;
		#100;
		reset = 0;
		start =1;
		// Add stimulus here

	end
      
endmodule

