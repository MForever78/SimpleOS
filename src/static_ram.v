`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:09:49 12/30/2015 
// Design Name: 
// Module Name:    static_ram 
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
module static_ram(
        
        input clk100,
        input rst,
        
        input stb,
        input [19:0] addra,
        input [47:0] dina,
        input we,
        output [47:0] douta, 
        output ack,

        output [19:0] SRAM_ADDR,
        output SRAM_CE,
        output SRAM_OEN,
        output SRAM_WEN,
        inout [47:0] SRAM_DQ
    );


    // There are two type of sram operation : write and read
    // write take 1 50mhz clk begin with posedge of 50mhz
    // read  take 1 25mhz clk begin with posedge of 25mhz
    //
    // Example:
    // input:
    // we:        TTTTTTTTTTTTTTTTTTTTTTTT____
    // clk50:     TTTT____TTTT____TTTT____TTTT____TTTT____TTTT____
    // clk100:    TT__TT__TT__TT__TT__TT__TT__TT__TT__TT__TT__TT__
    //             ID WAIT S0  S1  S2  S3  ID  ID
    
    // output:
    // wen:               ____________TTTT        TTTTTTTT
    // data_out:          ----TTTTTTTT----        --------
    // ack:               ____________TTTT        TTTTTTTT
    
    // action:      
    //             write          read

    
    localparam S0 = 3'h0, S1 = 3'h1, S2 = 3'h2, S3 = 3'h3, IDLE = 3'h4, WAIT = 3'h5;
    reg [2:0] state;
    initial state <= IDLE; 

    always @(posedge clk100) begin
        if (rst) state <= IDLE;
        else 
            if (stb & we) begin
                case (state)
                    IDLE: state <= WAIT;
                    WAIT: state <= S0;
                    S0: state<=S1;
                    S1: state<=S2;
                    S2: state<=S3;
                    S3: state<=IDLE; 
                    default: state<=IDLE;
                endcase
            end
            else state <= IDLE;
    end
    
    assign SRAM_ADDR = addra;
    assign SRAM_CE = 1'b0;                                                      
    assign SRAM_OEN = 1'b0;                                                     
    assign SRAM_WEN = (stb & we) ? state == S3 : 1'b1;                       
    assign SRAM_DQ = (stb & we) ? ((state == S1 || state == S2) ? dina : {48{1'hz}}) 
                                : {48{1'hz}};                                    
    assign ack = (stb & we) ? state == S3 : 1'b1;                                   
    assign douta = SRAM_DQ;
    
endmodule
