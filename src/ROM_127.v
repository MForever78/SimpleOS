`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:09 12/30/2015 
// Design Name: 
// Module Name:    ROM_127 
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
module ROM_127(
    input clk,
    input wire [6:0] addra,
    output reg [47:0] douta
    );

    reg [31:0] mem[127:0];
    always @(posedge clk) begin
        douta = {16'b0, mem[addra]};
    end
   
    initial begin
        $readmemh("src/hex/bios4.hex", mem);
    end

endmodule
