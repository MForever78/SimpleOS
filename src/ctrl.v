`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:00 06/04/2015 
// Design Name: 
// Module Name:    ctrl 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 001 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module ctrl(input  clk,
				input  reset,
				input  [31:0] Inst_in,
				input  zero,
				input  INT,
				input  overflow,
				input  MIO_ready,
				input  [31:0] cp0_status,
				
				output reg MemRead,
				output reg MemWrite,
				output reg [3:0] ALU_operation,
				output reg [5:0] state_out,
				output reg CPU_MIO,
				output reg IorD,
				output reg IRWrite,
				output reg [1:0] RegDst,
				output reg RegWrite,
				output reg [1:0] MemtoReg,
				output reg [1:0] ALUSrcA,
				output reg [1:0] ALUSrcB,
				output reg [1:0] PCSource,
				output reg PCWrite,
				output reg PCWriteCond,
				output reg Branch,
				output reg [1:0] MDRSrc,
				output reg [1:0] Data_sel,
				
				
				output reg cp0_selwt,
				output reg [1:0] cp0_selpc,
				output reg cp0_selmem,
				output reg cp0_selcause,
				output reg mtc0,
				output reg wcau,
				output reg exc,
				output reg wsta,
				output reg inta,
				output reg wepc
				); 
	
	`define CPU_ctrl_signals {PCWrite,PCWriteCond,IorD,MemRead,MemWrite,IRWrite,MemtoReg,PCSource, ALUSrcB,ALUSrcA,RegWrite,RegDst,Branch,CPU_MIO,MDRSrc,Data_sel,ALU_operation}
	`define CP0_ctrl_signals {cp0_selwt,cp0_selpc[1:0],cp0_selmem,mtc0,wcau,exc,wsta,inta,wepc,cp0_selcause}

	localparam IF=6'b00000, ID=6'b00001, EX_Mem=6'b00010, MEM_RD=6'b00011,  
				 WB_LW=6'b00100, MEM_WD=6'b00101,  EX_R=6'b00110, WB_R=6'b00111, 
				 EX_beq=6'b01000, EX_J=6'b01001, EX_I=6'b01010, WB_I=6'b01011, 
				 EX_LUI=6'b01100, EX_bne=6'b01101, EX_jr=6'b01110,  EX_JAL=6'b01111, 
				 MFC0 = 6'h16, MTC0 = 6'h17, STORE_CP0 = 6'h18, INT_MEM_READ = 6'h19,
				 INT_WB = 6'h1A, ERET = 6'h1B, HARD_INT = 6'h1C, WB_LB = 6'h1D, 
				 WB_LH = 6'h1E, MEM_RD_SHB = 6'h1F, MEM_WD_BYTE = 6'h20, MEM_WD_HALF = 6'h21,
				 Error=6'b111111; 
				 
	localparam alu=6'b000000, lw=6'h23, sw=6'h2b, slti=6'ha, addi=6'h8, andi=6'hc, 
				 ori=6'hd, xori=6'he, lui=6'hf, bne=6'h5, beq=6'h4, jump=6'h2, jal=6'h3,
				 lh=6'h21, lb=6'h20, sh=6'h29, sb=6'h28,
				 cp0 = 6'h10;
				
				//PCWrite,PCWriteCond,IorD,MemRead,MemWrite,IRWrite,MemtoReg[1:0],PCSource[1:0], ALUSrcB[1:0],ALUSrcA[1:0],RegWrite,RegDst[1:0],Branch,CPU_MIO,MDRSrc,Data_sel,ALU_operation[3:0]
	localparam 
			    SIG_IF =     			27'b1_0_0_1_0_1_00_00_01_00_0_00_0_1_00_00_0010,
				 SIG_ID =     			27'b0_0_0_0_0_0_00_00_11_00_0_00_0_0_00_00_0010,
				 SIG_EX_Mem = 			27'b0_0_0_0_0_0_00_00_10_01_0_00_0_0_00_00_0010,
				 SIG_MEM_RD = 			27'b0_0_1_1_0_0_00_00_10_01_0_00_0_1_00_00_0010,
				 SIG_WB_LW =  			27'b0_0_0_0_0_0_01_00_00_00_1_00_0_0_00_00_0010,
				 SIG_MEM_WD = 			27'b0_0_1_0_1_0_00_00_10_01_0_00_0_1_00_00_0010,
				 SIG_EX_R =   		  	27'b0_0_0_0_0_0_00_00_00_01_0_00_0_0_00_00_0010,
				 SIG_EX_R_SHAMT =   	27'b0_0_0_0_0_0_00_00_00_10_0_00_0_0_00_00_0010,
				 SIG_WB_R =   			27'b0_0_0_0_0_0_00_00_00_01_1_01_0_0_00_00_0010,
				 SIG_EX_beq = 			27'b0_1_0_0_0_0_00_01_00_01_0_00_1_0_00_00_0110,
				 SIG_EX_J =   			27'b1_0_0_0_0_0_00_10_11_00_0_00_0_0_00_00_0010,
				 SIG_EX_I =   			27'b0_0_0_0_0_0_00_00_10_01_0_00_0_0_00_00_0010,
				 SIG_WB_I =   			27'b0_0_0_0_0_0_00_00_10_01_1_00_0_0_00_00_0010,
				 SIG_EX_LUI = 			27'b0_0_0_0_0_0_10_00_11_00_1_00_0_0_00_00_0010,
				 SIG_EX_bne = 			27'b0_1_0_0_0_0_00_01_00_01_0_00_0_0_00_00_0110,
				 SIG_EX_jr =  			27'b1_0_0_0_0_0_00_00_00_01_0_00_0_0_00_00_0010,
				 SIG_EX_JAL = 			27'b1_0_0_0_0_0_11_10_11_00_1_10_0_0_00_00_0010,
				 
				 SIG_WB_LB = 			27'b0_0_1_0_0_0_01_00_00_00_1_00_0_0_01_00_0010,
				 SIG_WB_LH = 			27'b0_0_1_0_0_0_01_00_00_00_1_00_0_0_10_00_0010,
				 SIG_MEM_RD_SHB = 	    27'b0_0_1_1_0_0_00_00_10_01_0_00_0_1_00_00_0010,
				 SIG_MEM_WD_BYTE = 	    27'b0_0_1_0_1_0_00_00_10_01_0_00_0_1_00_01_0010,
				 SIG_MEM_WD_HALF = 	    27'b0_0_1_0_1_0_00_00_10_01_0_00_0_1_00_10_0010,
				 
				 
				 
				 SIG_MFC0 =   			27'b0_0_0_0_0_0_00_00_00_00_1_00_0_0_00_00_0010,
				 SIG_MTC0 =   		  	27'b0_0_0_0_0_0_00_00_00_00_0_00_0_0_00_00_0010,
				 SIG_ST_CP0 = 		  	27'b0_0_0_0_0_0_00_00_00_00_0_00_0_0_00_00_0010,
				 SIG_INT_MEM_READ = 	27'b0_0_0_1_0_0_00_00_00_00_0_00_0_1_00_00_0010,
				 SIG_INT_WB = 		  	27'b1_0_0_0_0_0_00_00_00_00_0_00_0_0_00_00_0010,
				 SIG_ERET =			  	27'b1_0_0_0_0_0_00_00_00_00_0_00_0_0_00_00_0010;
				 
	localparam
				CP0_NULL = 				11'b00000000000,
				CP0_MFC0 = 				11'b10000000000,
				CP0_MTC0 = 				11'b00001000000,
				CP0_ST_SYS =			11'b00000111110,
				CP0_ST_HARD =			11'b00000111011,
				CP0_INT_MEM_READ = 	11'b00010000000,
				CP0_INT_WB = 			11'b01000000000,
				CP0_ERET = 				11'b00100001000;
				
	
	initial begin
		`CPU_ctrl_signals <= SIG_IF;
		`CP0_ctrl_signals <= CP0_NULL; 
		state_out <= IF;
	end
	
	always @(posedge clk or posedge reset)
	begin
		if (reset) begin `CPU_ctrl_signals <= SIG_IF; state_out <= IF; end
		else 
            if (MIO_ready)
			case (state_out) 
				IF: if (~MIO_ready) begin `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL; state_out <= IF; end
					 else if (INT) begin `CPU_ctrl_signals <= SIG_ST_CP0;	`CP0_ctrl_signals <= CP0_ST_HARD; state_out <= STORE_CP0; end  //hardware int
					 else begin `CPU_ctrl_signals <= SIG_ID; `CP0_ctrl_signals <= CP0_NULL;state_out <= ID;  end
				ID:case (Inst_in[31:26])
						alu:begin
							case (Inst_in[5:0])
								6'b001000: begin `CPU_ctrl_signals <= SIG_EX_jr; `CP0_ctrl_signals <= CP0_NULL; state_out <= EX_jr; end //jr
								6'b100000: begin `CPU_ctrl_signals <= {SIG_EX_R[26:4], 4'b0010}; `CP0_ctrl_signals <= CP0_NULL;state_out <= EX_R; end  //add 
								6'b100010: begin `CPU_ctrl_signals <= {SIG_EX_R[26:4], 4'b0110}; `CP0_ctrl_signals <= CP0_NULL;state_out <= EX_R; end  //sub 
								6'b100100: begin `CPU_ctrl_signals <= {SIG_EX_R[26:4], 4'b0000}; `CP0_ctrl_signals <= CP0_NULL;state_out <= EX_R; end  //and 
								6'b100101: begin `CPU_ctrl_signals <= {SIG_EX_R[26:4], 4'b0001}; `CP0_ctrl_signals <= CP0_NULL;state_out <= EX_R; end  //or 
								6'b101010: begin `CPU_ctrl_signals <= {SIG_EX_R[26:4], 4'b0111}; `CP0_ctrl_signals <= CP0_NULL;state_out <= EX_R; end  //slt 
								6'b100111: begin `CPU_ctrl_signals <= {SIG_EX_R[26:4], 4'b0100}; `CP0_ctrl_signals <= CP0_NULL;state_out <= EX_R; end  //nor
								6'b000010: begin `CPU_ctrl_signals <= {SIG_EX_R_SHAMT[26:4], 4'b0101}; `CP0_ctrl_signals <= CP0_NULL;state_out <= EX_R; end  //srl 
								6'b000110: begin `CPU_ctrl_signals <= {SIG_EX_R[26:4], 4'b1001}; `CP0_ctrl_signals <= CP0_NULL;state_out <= EX_R; end  //srlv
								6'b000000: begin `CPU_ctrl_signals <= {SIG_EX_R_SHAMT[26:4], 4'b1000}; `CP0_ctrl_signals <= CP0_NULL;state_out <= EX_R; end  //sll 
								6'b000100: begin `CPU_ctrl_signals <= {SIG_EX_R[26:4], 4'b1010}; `CP0_ctrl_signals <= CP0_NULL;state_out <= EX_R; end  //sllv
								6'b100110: begin `CPU_ctrl_signals <= {SIG_EX_R[26:4], 4'b0011}; `CP0_ctrl_signals <= CP0_NULL;state_out <= EX_R; end  //xor
								6'hc		: begin `CPU_ctrl_signals <= SIG_ST_CP0;		     `CP0_ctrl_signals <= CP0_ST_SYS; state_out <= STORE_CP0; end  //syscall
								//default: begin `CPU_ctrl_signals <= 21'b0; state_out <= Error; end
							endcase
						end
						cp0:begin 
							case (Inst_in[5:0])
								6'h00:begin  `CPU_ctrl_signals <= SIG_MFC0; `CP0_ctrl_signals <= CP0_MFC0; state_out <= MFC0;  end   //mfc0
								6'h04:begin  `CPU_ctrl_signals <= SIG_MTC0; `CP0_ctrl_signals <= CP0_MTC0; state_out <= MTC0;  end   //mtc0
								6'h18:begin  `CPU_ctrl_signals <= SIG_ERET; `CP0_ctrl_signals <= CP0_ERET; state_out <= ERET;  end   //eret
							endcase
						end
						lw: begin `CPU_ctrl_signals <= SIG_EX_Mem;`CP0_ctrl_signals <= CP0_NULL;	state_out <= EX_Mem; end
						lb: begin `CPU_ctrl_signals <= SIG_EX_Mem;`CP0_ctrl_signals <= CP0_NULL;	state_out <= EX_Mem; end
						lh: begin `CPU_ctrl_signals <= SIG_EX_Mem;`CP0_ctrl_signals <= CP0_NULL;	state_out <= EX_Mem; end
						sw: begin `CPU_ctrl_signals <= SIG_EX_Mem;`CP0_ctrl_signals <= CP0_NULL;   state_out <= EX_Mem; end
						sb: begin `CPU_ctrl_signals <= SIG_EX_Mem;`CP0_ctrl_signals <= CP0_NULL;   state_out <= EX_Mem; end
						sh: begin `CPU_ctrl_signals <= SIG_EX_Mem;`CP0_ctrl_signals <= CP0_NULL;   state_out <= EX_Mem; end
						slti:begin `CPU_ctrl_signals <= {SIG_EX_I[26:4], 4'b0111};`CP0_ctrl_signals <= CP0_NULL; state_out <= EX_I; end //slti
						addi:begin `CPU_ctrl_signals <= {SIG_EX_I[26:4], 4'b0010};`CP0_ctrl_signals <= CP0_NULL; state_out <= EX_I; end //addi
					   andi:begin `CPU_ctrl_signals <= {SIG_EX_I[26:4], 4'b0000};`CP0_ctrl_signals <= CP0_NULL; state_out <= EX_I; end //andi
						ori: begin `CPU_ctrl_signals <= {SIG_EX_I[26:4], 4'b0001};`CP0_ctrl_signals <= CP0_NULL; state_out <= EX_I; end //ori
						xori:begin `CPU_ctrl_signals <= {SIG_EX_I[26:4], 4'b0011};`CP0_ctrl_signals <= CP0_NULL; state_out <= EX_I; end //xori
					   lui: begin `CPU_ctrl_signals <= SIG_EX_LUI;`CP0_ctrl_signals <= CP0_NULL;	state_out <= EX_LUI; end
						bne: begin `CPU_ctrl_signals <= SIG_EX_bne;`CP0_ctrl_signals <= CP0_NULL;  state_out <= EX_bne; end 
						beq: begin `CPU_ctrl_signals <= SIG_EX_beq;`CP0_ctrl_signals <= CP0_NULL;  state_out <= EX_beq; end
						jump:begin `CPU_ctrl_signals <= SIG_EX_J;	 `CP0_ctrl_signals <= CP0_NULL;	state_out <= EX_J;   end
						jal: begin `CPU_ctrl_signals <= SIG_EX_JAL;`CP0_ctrl_signals <= CP0_NULL;  state_out <= EX_JAL; end
						//default: begin `CPU_ctrl_signals <= 21'b0; state_out <= Error; end				
					endcase
				
				EX_Mem:
					if (~MIO_ready) begin `CPU_ctrl_signals <= SIG_EX_Mem;`CP0_ctrl_signals <= CP0_NULL;	state_out <= EX_Mem; end
					else case (Inst_in[31:26])
						lw: begin  `CPU_ctrl_signals <= SIG_MEM_RD;`CP0_ctrl_signals <= CP0_NULL; 	state_out <= MEM_RD; end
						lb: begin  `CPU_ctrl_signals <= SIG_MEM_RD;`CP0_ctrl_signals <= CP0_NULL; 	state_out <= MEM_RD; end
						lh: begin  `CPU_ctrl_signals <= SIG_MEM_RD;`CP0_ctrl_signals <= CP0_NULL; 	state_out <= MEM_RD; end
						
						sw: begin  `CPU_ctrl_signals <= SIG_MEM_WD;`CP0_ctrl_signals <= CP0_NULL;  state_out <= MEM_WD; end
						sh: begin  `CPU_ctrl_signals <= SIG_MEM_RD_SHB;`CP0_ctrl_signals <= CP0_NULL; 	state_out <= MEM_RD_SHB; end
						sb: begin  `CPU_ctrl_signals <= SIG_MEM_RD_SHB;`CP0_ctrl_signals <= CP0_NULL; 	state_out <= MEM_RD_SHB; end
						//default: begin `CPU_ctrl_signals <= 21'b0; state_out <= Error; end
					endcase 

				MEM_RD_SHB:
					if (~MIO_ready) begin  `CPU_ctrl_signals <= SIG_MEM_RD_SHB;`CP0_ctrl_signals <= CP0_NULL; state_out <= MEM_RD_SHB; end
					else case (Inst_in[31:26])
						sh: begin `CPU_ctrl_signals <= SIG_MEM_WD_HALF; `CP0_ctrl_signals <= CP0_NULL;   state_out <= MEM_WD_HALF;  end
						sb: begin `CPU_ctrl_signals <= SIG_MEM_WD_BYTE; `CP0_ctrl_signals <= CP0_NULL;   state_out <= MEM_WD_BYTE;  end
					endcase

				MEM_RD:  case (Inst_in[31:26])
						lw: begin  `CPU_ctrl_signals <= SIG_WB_LW;`CP0_ctrl_signals <= CP0_NULL;   state_out <= WB_LW;  end
						lb: begin  `CPU_ctrl_signals <= SIG_WB_LB;`CP0_ctrl_signals <= CP0_NULL;   state_out <= WB_LB;  end
						lh: begin  `CPU_ctrl_signals <= SIG_WB_LH;`CP0_ctrl_signals <= CP0_NULL;   state_out <= WB_LH;  end
					endcase 
						
				EX_R:     		begin  `CPU_ctrl_signals <= SIG_WB_R; `CP0_ctrl_signals <= CP0_NULL;	state_out <= WB_R;   end
				EX_I: 	 		begin  `CPU_ctrl_signals <= SIG_WB_I; `CP0_ctrl_signals <= CP0_NULL;   state_out <= WB_I;   end
				EX_bne:   		begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end
				EX_beq:   		begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end
				EX_J:     		begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end
				EX_JAL:   		begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end
				EX_jr:    		begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end
				WB_LW:    		begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end
				MEM_WD:   		begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end
				WB_R:     		begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end
				WB_I:     		begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end
				EX_LUI:   		begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end 
				WB_LB:			begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end 
				WB_LH:  			begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end 
				MEM_WD_BYTE: 	begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end 
				MEM_WD_HALF: 	begin  `CPU_ctrl_signals <= SIG_IF;   `CP0_ctrl_signals <= CP0_NULL;   state_out <= IF;     end 
				
				
				
				STORE_CP0:		begin `CPU_ctrl_signals <= SIG_INT_MEM_READ;  `CP0_ctrl_signals <= CP0_INT_MEM_READ;   state_out <= INT_MEM_READ;  end
				INT_MEM_READ:  begin `CPU_ctrl_signals <= SIG_INT_WB;  	 	`CP0_ctrl_signals <= CP0_INT_WB;   			state_out <= INT_WB;  end
				INT_WB:			begin `CPU_ctrl_signals <= SIG_IF;  		 	`CP0_ctrl_signals <= CP0_NULL;  				state_out <= IF;     end 
				MFC0:				begin `CPU_ctrl_signals <= SIG_IF;  		 	`CP0_ctrl_signals <= CP0_NULL;  				state_out <= IF;     end 
				MTC0:				begin `CPU_ctrl_signals <= SIG_IF;  		 	`CP0_ctrl_signals <= CP0_NULL;  				state_out <= IF;     end 
				ERET: 			begin `CPU_ctrl_signals <= SIG_IF;  		 	`CP0_ctrl_signals <= CP0_NULL;  				state_out <= IF;     end 
				
				default: begin `CPU_ctrl_signals <= 27'b0;      `CP0_ctrl_signals <= CP0_NULL;   state_out <= Error; end
		endcase
	end	
endmodule 

//µ±Ç°inst out 011
//next pc 111
//ramout 110