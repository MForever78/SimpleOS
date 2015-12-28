`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:38:43 04/28/2012 
// Design Name: 
// Module Name:    single_cycle_Cpu_9 
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
module Muliti_CPU(clk,               
                  Data_in, 
                  INT, 
                  MIO_ready, 
                  reset, 
                  Addr_out, 
                  CPU_MIO, 
                  Data_out, 
                  inst_out, 
                  mem_w, 
						mem_r,
                  PC_out, 
                  state,
						Cause_in);

    input clk;
    input [31:0] Data_in;
    input INT;
    input MIO_ready;
    input reset;
	 input [31:0] Cause_in;
   output [31:0] Addr_out;
   output CPU_MIO;
   output [31:0] Data_out;
   output [31:0] inst_out; 
   output mem_w;
	output mem_r;
   output [31:0] PC_out;
   output [5:0] state;
   
   wire IorD;
   wire IRWrite;
   wire RegWrite;
   wire [1:0] ALUSrcA;
   wire PCWrite;
   wire PCWriteCond;
   wire Branch;
   wire [1:0] RegDst;
   wire [1:0] MemtoReg;
   wire [1:0] ALUSrcB;
   wire [1:0] PCSource;
   wire [3:0] ALU_operation;
	wire [1:0] MDRSrc;
	wire [1:0] Data_sel;
   wire overflow;
   wire MemRead;
   wire MemRead_inv;
   wire MemWrite;
   wire zero;
   wire [31:0] inst_out_DUMMY;
	wire [31:0] Cause_in_tmp;
	
	//CP0 signal
	wire [31:0] CP0_out;
	wire [31:0] EPC_out;
	wire [31:0] cause_out;
	wire [31:0] IR_out;
	wire [31:0] status_out;
	
	//control signal
	wire cp0_selwt;
	wire [1:0] cp0_selpc;
	wire cp0_selmem;
	wire cp0_selcause;
	wire mtc0;
	wire wcau;
	wire exc;
	wire wsta;
	wire inta;
	wire wepc;
	wire cpu_int;
	wire [15:0] Cause_in_dec;
	
	dec4to16 dec4to16_dev(
				.a(Cause_in[3:0]), 
				.o(Cause_in_dec[15:0]));
   
	assign cpu_int = INT & (|(Cause_in_dec[15:0] & status_out[15:0]));
   assign inst_out[31:0] = inst_out_DUMMY[31:0];
	
	assign mem_w = MemWrite;
	assign mem_r = MemRead;
   ctrl  U11 (.clk(clk), 
                .Inst_in(inst_out_DUMMY[31:0]), 
                .MIO_ready(MIO_ready), 
                .overflow(overflow), 
					 .INT(cpu_int),
                .reset(reset), 
                .zero(zero), 
                .ALUSrcA(ALUSrcA),  
                .ALUSrcB(ALUSrcB[1:0]), 
                .ALU_operation(ALU_operation[3:0]), 
                .Branch(Branch), 
                .CPU_MIO(CPU_MIO), 
                .IorD(IorD), 
                .IRWrite(IRWrite), 
                .MemRead(MemRead), 
                .MemtoReg(MemtoReg[1:0]), 
                .MemWrite(MemWrite), 
                .PCSource(PCSource[1:0]), 
                .PCWrite(PCWrite), 
                .PCWriteCond(PCWriteCond), 
                .RegDst(RegDst[1:0]), 
                .RegWrite(RegWrite), 
                .state_out(state[5:0]),
					 .MDRSrc(MDRSrc[1:0]),
					 .Data_sel(Data_sel[1:0]),
					 
					 .cp0_selwt(cp0_selwt),
					 .cp0_selpc(cp0_selpc[1:0]),
					 .cp0_selmem(cp0_selmem), 
					 .cp0_selcause(cp0_selcause),
					 .cp0_status(status_out),
					 .mtc0(mtc0),
					 .wcau(wcau),
					 .exc(exc),
					 .wsta(wsta),
					 .inta(inta),
					 .wepc(wepc)
					 );
					 
   data_path  U12 (.ALUSrcA(ALUSrcA), 
                     .ALUSrcB(ALUSrcB[1:0]), 
                     .ALU_operation(ALU_operation[3:0]), 
                     .Branch(Branch), 
                     .clk(clk), 
                     .data2CPU(Data_in[31:0]), 
                     .IorD(IorD), 
                     .IRWrite(IRWrite), 
                     .MemtoReg(MemtoReg[1:0]), 
                     .MIO_ready(MIO_ready), 
                     .PCSource(PCSource[1:0]), 
                     .PCWrite(PCWrite), 
                     .PCWriteCond(PCWriteCond), 
                     .RegDst(RegDst[1:0]), 
                     .RegWrite(RegWrite), 
                     .reset(reset), 
                     .data_out(Data_out[31:0]), 
                     .Inst_R(inst_out_DUMMY[31:0]), 
                     .M_addr(Addr_out[31:0]), 
                     .overflow(overflow), 
                     .PC_Current(PC_out[31:0]), 
                     .zero(zero),
							.MDRSrc(MDRSrc[1:0]),
							.Data_sel(Data_sel[1:0]),
							
							.cp0_selwt(cp0_selwt),
							.cp0_selpc(cp0_selpc[1:0]),
							.cp0_selmem(cp0_selmem),
					  
					  
							.CP0_out(CP0_out[31:0]),
							.EPC(EPC_out[31:0]),
							.vector_addr(32'h00000004),    //ÖÐ¶Ï¹Ì¶¨Ìøµ½mem[4]
					  
							.IR_out(IR_out[31:0]));
	

	mux2to1_32 mux5(.sel(cp0_selcause),
			  .a(Cause_in[31:0]),
			  .b(Data_out[31:0]),
			  .o(Cause_in_tmp[31:0]));
	
	
	CP0 cp0_dev(.clk(clk),
					.reset(reset),
					.mtc0(mtc0),
					.wcau(wcau),
					.exc(exc),
					.wsta(wsta),
					.inta(inta),
					.wepc(wepc),
	
					.data_in(Data_out[31:0]),   //rdata_B = GPR[rt]
					.cause_in(Cause_in_tmp[31:0]),
					.pc(PC_out[31:0] - 32'h4),
					.npc(PC_out[31:0]),
					.cp0_sel(IR_out[15:11]),   //rd
	
	
					.cause_out(cause_out[31:0]),
					.status_out(status_out[31:0]),
					.EPC_out(EPC_out[31:0]),
					.CP0_out(CP0_out[31:0])
					);

endmodule




