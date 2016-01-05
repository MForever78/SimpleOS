`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:38:55 11/26/2015 
// Design Name: 
// Module Name:    SRAM 
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
module SRAM(
                input clk100,
                input clk50,
                input rst,
                
                input stb,
                input [19:0] addra,
                input [31:0] dina,
                input wea,
                output [47:0] douta, 
                output ack,
                
                output sram_stb,
                output [19:0] sram_addra,
                output [47:0] sram_dina,
                output sram_we,
                input [47:0] sram_douta,
                input sram_ack
     );
       

   
    assign sram_stb =      ~init_flag ? stb
                                      : 1'b1;
    assign sram_addra =    ~init_flag ? addra
                                      : init_addra;
    assign sram_we =       ~init_flag ? wea 
                                      : 1'b1;
    assign sram_dina =     ~init_flag ? (wea ? dina : {48{1'bz}})
                                      : init_dina;
                                      
    assign douta = {16'b0, sram_douta[31:0]};
    assign ack = ~init_flag ? stb ? sram_ack : 1'b1
                            : 1'b0; 
    
    


   
    ////////////////////////////////////////
    //          initial sram              //
    ////////////////////////////////////////
    reg init_flag;
    reg zero_flag;
    reg [2:0]zero_cnt;
    reg [9:0] cnt;
    reg [6:0] rom_addra;
    wire [47:0] rom_douta;
    wire [19:0] init_addra = zero_flag ? 20'h0 : {12'h800, 1'b0, cnt[6:0]};
    reg [47:0] init_dina;
    
    initial begin
        init_dina = 48'h08080000;
        zero_cnt = 3'b0;
        zero_flag = 1'b1;
        rom_addra = 20'b0;
        init_flag = 1'b1;
        cnt = 10'b1111111111;
    end
    
    
    ROM_127 ROM_127(
        .clk(clk100),
        .addra(rom_addra[6:0]),
        .douta(rom_douta[47:0]));
    
    //init_sram using clk50     
    always @(posedge clk50) begin
        if (init_flag & sram_ack) begin
            if (zero_cnt <= 3'b10) begin           //for the purpose of 0x08080000 writing
                zero_flag <= 1'b1;
                zero_cnt <= zero_cnt + 3'b1;
            end
            else begin
                zero_flag <= 1'b0;
                if (cnt != 10'd127) begin
                    cnt <= cnt + 10'b1;
                    rom_addra <= rom_addra + 7'h1;
                    init_dina <= rom_douta;
                end 
                else begin
                    rom_addra <= 20'h0;
                    init_flag <= 1'b0;
                end
            end
        end
    end
    ////////////////////////////////////////
    //        initial sram end            //
    ////////////////////////////////////////
    
    
endmodule
