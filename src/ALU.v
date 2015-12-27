////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : sch2hdl
//  /   /         Filename : ALU.vf
// /___/   /\     Timestamp : 05/24/2015 10:33:15
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: sch2hdl -sympath D:/project/ISE/LAB7/ipcore_dir -intstyle ise -family spartan6 -verilog D:/project/ISE/LAB7/ALU.vf -w D:/project/ISE/LAB7/ALU.sch
//Design Name: ALU
//Device: spartan6
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module ALU(A, 
           ALU_operation, 
           B, 
           overflow, 
           res, 
           zero);

    input [31:0] A;
    input [3:0] ALU_operation;
    input [31:0] B;
   output overflow;
   output [31:0] res;
   output zero;
   
   wire N0;
   wire [32:0] S;
   wire [31:0] XLXN_7;
   wire [31:0] XLXN_8;
   wire [31:0] XLXN_11;
   wire [31:0] XLXN_12;
   wire [31:0] XLXN_13;
   wire [31:0] xor_lut;
   wire [31:0] XLXN_16;
   wire [31:0] XLXN_23;
   wire [31:0] XLXN_14;
   wire [31:0] res_DUMMY;
	wire [31:0] sllv_out;
	wire [31:0] srlv_out;
	
   
   assign res[31:0] = res_DUMMY[31:0];
   ADC32  ADC_32 (.A(A[31:0]), 
                 .B(XLXN_8[31:0]), 
                 .C0(ALU_operation[2]), 
                 .S(S[32:0]));
   mux16to1_32  ALU_MUX (.sel(ALU_operation[3:0]), 
                       .x0(XLXN_16[31:0]), 
                       .x1(XLXN_23[31:0]), 
                       .x2(S[31:0]), 
                       .x3(XLXN_11[31:0]), 
                       .x4(XLXN_12[31:0]), 
                       .x5(XLXN_13[31:0]), 
                       .x6(S[31:0]), 
                       .x7({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, 
         N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, 
         N0, S[32]}),
							  .x8(XLXN_14[31:0]),
							  .x9(srlv_out[31:0]),
							  .x10(sllv_out[31:0]),
							  .x11(),
							  .x12(),
							  .x13(),
							  .x14(),
							  .x15(),
                       .o(res_DUMMY[31:0]));
   and32  ALU_U1 (.A(A[31:0]), 
                 .B(B[31:0]), 
                 .res(XLXN_16[31:0]));
   or32  ALU_U2 (.A(A[31:0]), 
                .B(B[31:0]), 
                .res(XLXN_23[31:0]));
   xor32  ALU_U3 (.A(A[31:0]), 
                 .B(B[31:0]), 
                 .res(XLXN_11[31:0]));
   nor32  ALU_U4 (.A(A[31:0]), 
                 .B(B[31:0]), 
                 .res(XLXN_12[31:0]));
   srl32  ALU_U5 (.A(A[31:0]), 
                 .B(B[31:0]), 
                 .res(XLXN_13[31:0]));
	sll32  ALU_U8 (.A(A[31:0]), 
				  .B(B[31:0]), 
				  .res(XLXN_14[31:0]));
				  
   xor32  ALU_U7 (.A(XLXN_7[31:0]), 
                 .B(B[31:0]), 
                 .res(XLXN_8[31:0]));
					  
	srlv32  ALU_U9 (.A(A[31:0]), 
				  .B(B[31:0]), 
				  .res(srlv_out[31:0]));
					  
	sllv32  ALU_U10(.A(A[31:0]), 
				  .B(B[31:0]), 
				  .res(sllv_out[31:0]));
					  
   or_bit_32  ALU_Zero (.A(res_DUMMY[31:0]), 
                       .o(zero));
   GND  gnd1 (.G(N0));
   SignalExt_32  Signal1_32 (.S(ALU_operation[2]), 
                            .So(XLXN_7[31:0]));
endmodule
