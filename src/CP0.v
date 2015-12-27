`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:53:36 10/21/2015 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
	input wire clk,
	input wire reset,
	input wire mtc0,
	input wire wcau,
	input wire exc,
	input wire wsta,
	input wire inta,
	input wire wepc,
	
	input wire [31:0] data_in,
	input wire [31:0] cause_in,
	input wire [31:0] pc,
	input wire [31:0] npc,
	input wire [4:0] cp0_sel,
	
	
	output wire [31:0] cause_out,
	output wire [31:0] status_out,
	output wire [31:0] EPC_out,
	output wire [31:0] CP0_out
    );

	wire [31:0] cause_mux_in;
	wire [31:0] sta_right;
	wire [31:0] sta_left;
	wire [31:0] sta_mux3_in;
	wire [31:0] status_mux_in;
	wire [31:0] pc_mux5_in;
	wire [31:0] EPC_mux_in;

	mux2to1_32 mux1 (.sel(mtc0),
						  .a(data_in[31:0]),
						  .b(cause_in[31:0]),
						  .o(cause_mux_in[31:0]));
	
	REG32 Cause(.clk(clk), 
				 .rst(reset),
				 .CE(mtc0 ? (cp0_sel == 5'b10) : wcau),
				 .D(cause_mux_in[31:0]),
				 .Q(cause_out[31:0]));
				 
				 
	assign sta_right[31:0] = {16'b0, status_out[31:16]};
	assign sta_left[31:0] = {status_out[15:0], 16'b0};
				 
	mux2to1_32 mux2 (.sel(exc),
					  .a(sta_left[31:0]),
					  .b(sta_right[31:0]),
					  .o(sta_mux3_in[31:0]));
	
	mux2to1_32 mux3 (.sel(mtc0),
					  .a(data_in[31:0]),
					  .b(sta_mux3_in[31:0]),
					  .o(status_mux_in[31:0]));
					  
	REG32 Status(.clk(clk), 
				 .rst(reset),
				 .CE(mtc0 ? (cp0_sel == 5'b01) : wsta),
				 .D(status_mux_in[31:0]),
				 .Q(status_out[31:0]));
				 
	mux2to1_32 mux4(.sel(inta),
					  .a(npc[31:0]),
					  .b(pc[31:0]),
					  .o(pc_mux5_in[31:0]));
	
	mux2to1_32 mux5(.sel(mtc0),
				  .a(data_in[31:0]),
				  .b(pc_mux5_in[31:0]),
				  .o(EPC_mux_in[31:0]));
				  
	REG32 EPC(.clk(clk), 
				 .rst(reset),
				 .CE(mtc0 ? (cp0_sel == 5'b11) : wepc),
				 .D(EPC_mux_in[31:0]),
				 .Q(EPC_out[31:0]));
				 
	mux4to1_32 mux6 (.sel(cp0_sel[1:0]),
						  .x0(data_in[31:0]),
						  .x1(status_out[31:0]), 
						  .x2(cause_out[31:0]),  
						  .x3(EPC_out[31:0]),   
						  .o(CP0_out[31:0]));
	

endmodule
