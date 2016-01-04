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
        input clk50,
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
    // we:        TTTTTTTT        ____
    // clk25:     TTTT____TTTT____TTTT____TTTT____TTTT____TTTT____
    // clk50:     TT__TT__TT__TT__TT__TT__TT__TT__TT__TT__TT__TT__
    
    // output:
    // wen:       ______TT        TTTT
    // data_out:  --TTTT--        ----
    // ack:       ______TT        TTTT
    
    // action:      
    //             write          read

    
    localparam S1 = 4'b0001, S2 = 4'b0010, S3 = 4'b0100, S4 = 4'b1000;
    reg [3:0] state;
    reg [2:0] cnt;
    initial begin 
        state <= S1;
        cnt <= 3'b0;
    end
    
    ////////////////////////////////////////
    //          alignment                 //
    ////////////////////////////////////////
    always @(posedge clk50) begin
        if (rst) cnt <= 0;
        else if (cnt < 3'h2) cnt <= cnt + 3'b1;
        else cnt <= 3'h2;  
    end
    ////////////////////////////////////////
    //          alignment                 //
    ////////////////////////////////////////
    

    always @(posedge clk100) begin
        if (rst) state <= S1;
        else
        if (cnt == 3'h2)
            case (state)
                S1: state<=S2;
                S2: state<=S3;
                S3: state<=S4;
                S4: state<=S1; 
                default: state<=S4;
            endcase
        else state <= S1;
    end
    
    
    assign SRAM_ADDR = addra;
    assign SRAM_CE = 1'b0;                                                      //always enable
    assign SRAM_OEN = 1'b0;                                                     //always output
    assign SRAM_WEN = stb ? we ? state[3]                                       //write
                               : 1'b1                                           //read
                          : 1'b1;                                               //not chosen
    assign SRAM_DQ = stb ? we ? ((state[1] | state[2]) ? dina : {48{1'hz}})     //write         
                              : {48{1'hz}}                                      //read
                         : {48{1'hz}};                                          //not chosen
                         
    assign ack = stb ? we ? state == S4                                         //write
                          : 1'b1                                                //read
                     : 1'b1;                                                    //not chosen
    
    assign douta = SRAM_DQ;
    
endmodule
