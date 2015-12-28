`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:06 12/21/2015 
// Design Name: 
// Module Name:    RAM_B 
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

module RAM_B(addra, clka, dina, wea, douta);

    input wire [19:0] addra;
    input clka, wea;
    input wire [31:0] dina;
    output reg [47:0] douta;
    
    reg [31:0] mem[0:127];

    initial begin
        $readmemh("hex/test_uart.hex", mem);
    end

    always @(posedge clka) begin 
        if (wea) begin
            douta <= {48{1'bz}};
            mem[addra] <= dina;
        end else begin
            douta <=  (addra <= 12'd127) ? {16'h0000, mem[addra]} : {16'h0000, 32'h0};
        end
    end

endmodule
