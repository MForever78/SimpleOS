module data_path(input clk,
					  input reset,
					  
					  input MIO_ready,
					  input IorD,
					  input IRWrite,
					  input[1:0] RegDst,
					  input RegWrite,
					  input[1:0]MemtoReg,
					  input [1:0] ALUSrcA,
					  input [1:0] MDRSrc,
					  input [1:0] Data_sel,
					  
					  input[1:0]ALUSrcB,
					  input[1:0]PCSource,
					  input PCWrite,
					  input PCWriteCond,	
					  input Branch,
					  input[3:0]ALU_operation,
					  
					  
					  input cp0_selwt,
					  input [1:0] cp0_selpc,
					  input cp0_selmem,
					  
					  
					  input [31:0] CP0_out,
					  input [31:0] EPC,
					  input [31:0] vector_addr,
					  
					  output [31:0] IR_out,
					  
					  output[31:0]PC_Current,
					  input[31:0]data2CPU,
					  output[31:0]Inst_R,
					  output[31:0]data_out,
					  output[31:0]M_addr,
					  
					  output zero,
					  output overflow
					  );	
					  
		wire V5;
		wire N0;
		reg [31:0] IR;
		wire [31:0] MDR;
		wire [4:0] wt_addr;
		wire [31:0] wt_data;
		wire [31:0] ALU_out;
		wire [31:0] JR;
		wire [31:0] rdata_A;
		wire [31:0] rdata_B;
		wire [31:0] ALUdata_A;
		wire [31:0] ALUdata_B;
		wire [31:0] ALUresult;
		wire [31:0] PC_next;
		wire PC_enable;
		wire [31:0] Imm_32;
		
		wire [31:0] wt_data_tmp;
		wire [31:0] PC_next_tmp;
		wire [31:0] M_addr_tmp;
		reg [31:0] MDR_tmp;
		wire [31:0] MDR_lb;
		wire [31:0] MDR_lh;
		wire [31:0] Dataout_sb;
		wire [31:0] Dataout_sh;
		
		
		VCC  vcc_dev (.P(V5));
		GND  gnd_dev (.G(N0));

        always @(posedge clk or posedge reset)
        begin
            if (reset == 1) IR <= 32'b0;
            else IR <= data2CPU;
        end
        
        always @(posedge clk or posedge reset)
        begin
            if (reset == 1) MDR_tmp <= 32'b0;
            else MDR_tmp <= data2CPU;
        end
					 
		assign Inst_R = IR;
		assign IR_out = IR;
					 
		
		MDR_BYTE mdr_byte_dev(.pos(M_addr[1:0]),
									.MDR_in(MDR_tmp[31:0]),
									.data_out(MDR_lb[31:0]));
		MDR_HALF mdr_half_dev(.pos(M_addr[1]),
									.MDR_in(MDR_tmp[31:0]),
									.data_out(MDR_lh[31:0]));
									
		MdrByteStore MdrByteStore_dev(
									.pos(M_addr[1:0]),
									.MDR_in(MDR_tmp[31:0]),
									.data_in(rdata_B[7:0]),
									.data_out(Dataout_sb[31:0]));
									
		MdrHalfStore MdrHalfStore_dev(
									.pos(M_addr[1]),
									.MDR_in(MDR_tmp[31:0]),
									.data_in(rdata_B[15:0]),
									.data_out(Dataout_sh[31:0]));

		mux4to1_32 mux0(.sel(MDRSrc[1:0]),
							  .x0(MDR_tmp[31:0]),    //original
							  .x1(MDR_lb[31:0]),     //MDR_lb
							  .x2(MDR_lh[31:0]),         //MDR_lh
							  .x3(),
							  .o(MDR[31:0]));

		mux4to1_5 mux1 (.sel(RegDst[1:0]),
							  .x0(IR[20:16]),
							  .x1(IR[15:11]),
							  .x2({5{V5}}),  //$ra = 5'b11111
							  .x3({5{N0}}),
							  .o(wt_addr[4:0]));
							  
		mux4to1_32 mux2 (.sel(MemtoReg[1:0]),
							  .x0(ALU_out[31:0]),
							  .x1(MDR[31:0]),
							  .x2({IR[15:0], {16{N0}}}),  
							  .x3(JR[31:0]),
							  .o(wt_data_tmp[31:0]));
							  
		mux2to1_32 mux_cp0_wt(.sel(cp0_selwt),
							  .a(CP0_out[31:0]),
							  .b(wt_data_tmp[31:0]),
							  .o(wt_data[31:0]));
					  
		Regs U2 (.clk(clk), 
						  .rst(reset), 
						  .L_S(RegWrite),
						  .R_addr_A(IR[25:21]),
						  .R_addr_B(IR[20:16]), 
						  .Wt_addr(wt_addr[4:0]),
						  .Wt_data(wt_data[31:0]),
						  .rdata_A(rdata_A[31:0]), 
						  .rdata_B(rdata_B[31:0]));
		
		mux4to1_32 mux7(.sel(Data_sel[1:0]),
							  .x0(rdata_B[31:0]),    			//original
							  .x1(Dataout_sb[31:0]),     		//Dataout_sb
							  .x2(Dataout_sh[31:0]),         //Dataout_sh
							  .x3(),
							  .o(data_out[31:0]));
		
		mux4to1_32 mux3 (.sel(ALUSrcB[1:0]),
							  .x0(rdata_B[31:0]),
							  .x1({{29{N0}}, V5, N0, N0}), //4
							  .x2(Imm_32[31:0]),  
							  .x3({Imm_32[29:0], N0, N0}),   //Imm_32<<2
							  .o(ALUdata_B[31:0]));
							  
		mux4to1_32 mux4 (.sel(ALUSrcA),
							  .x0(JR[31:0]),
							  .x1(rdata_A[31:0]),
                              .x2(Imm_32[31:0]),
                              .x3(32'b0),
							  .o(ALUdata_A[31:0]));
							  
		ALU alu_dev(.ALU_operation(ALU_operation[3:0]),
						.A(ALUdata_A[31:0]),  
						.B(ALUdata_B[31:0]), 
						.overflow(overflow), 
						.res(ALUresult[31:0]), 
						.zero(zero));

		REG32 ALUOut (.clk(clk),
					 .rst(N0),
					 .CE(V5),
					 .D(ALUresult[31:0]),
					 .Q(ALU_out[31:0]));
		
		mux4to1_32 mux6 (.sel(PCSource[1:0]),
							  .x0(ALUresult[31:0]),
							  .x1(ALU_out[31:0]), 
							  .x2({PC_Current[31:28],IR[25:0],N0,N0}),  
							  .x3(ALU_out[31:0]),   
							  .o(PC_next_tmp[31:0]));
							  
		mux4to1_32 mux_cp0_pc (.sel(cp0_selpc[1:0]),
					  .x0(PC_next_tmp[31:0]),
					  .x1(EPC[31:0]), 
					  .x2(MDR[31:0]),  
					  .x3(32'b0),   
					  .o(PC_next[31:0]));					  
		
							  
		assign PC_enable = MIO_ready && (PCWrite || (PCWriteCond && (((~zero) && (~Branch)) || (zero && Branch))));
		
		
		REG32 PC (.clk(clk), 
					 .rst(reset),
					 .CE(PC_enable),
					 .D(PC_next[31:0]),
					 .Q(PC_Current[31:0]));
		
		
		
		assign JR = PC_Current;
				
		
		mux2to1_32 mux5 (.sel(IorD),
							  .a(ALU_out[31:0]),
							  .b(PC_Current[31:0]),
							  .o(M_addr_tmp[31:0]));
							  
		mux2to1_32 mux_cp0_mem (.sel(cp0_selmem),
							.a(vector_addr[31:0]),
							  .b(M_addr_tmp[31:0]),
							  .o(M_addr[31:0]));
							  
		Ext_32 ext_32_dev (.imm_16(IR[15:0]),
								 .Imm_32(Imm_32[31:0]));
 endmodule
