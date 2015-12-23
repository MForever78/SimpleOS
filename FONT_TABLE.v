`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:58:29 12/21/2015 
// Design Name: 
// Module Name:    FONT_TABLE 
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
module FONT_TABLE(a, spo);

    input wire [10:0] a;
    output wire [7:0] spo;
    
    reg [7:0] mem[0:2047];

	assign spo = mem[a];

    initial begin
        $readmemh("hex/font.hex", mem);
    end

endmodule