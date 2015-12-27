`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:25 08/26/2015 
// Design Name: 
// Module Name:    keyboard 
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
module keyboard(
        input STB,
        input ACK,
        
		input clk_cpu,
        input reset,
		input WE,
		input PS2C,
		input PS2D,
		
		output [31:0] key_data,
        output INT
        
    );

	wire [7:0] data;  					//data from ps2_kbd
	wire wea;
	wire ready;
	wire overflow;
	reg [31:0] key_data_buffer;
	
    assign wea = STB ? WE : 1'b1;
    assign INT = ready;
    assign ACK = STB;
    
	initial begin
		key_data_buffer[31:0] <= 32'h0;
	end

	always @(posedge clk_cpu)
	begin
		if (reset)
		begin
			key_data_buffer[31:0] <= 32'h0; 
		end
		else begin
			if (!wea && ready == 1'b1) 
                key_data_buffer <= {key_data_buffer[23:0], data[7:0]};
		end
	end
	assign key_data = ready ? {key_data_buffer[23:0], data[7:0]} : key_data_buffer[31:0];
	
	ps2_kbd ps2_kbd_dev(
		.clk(clk_cpu),
		.clrn(~reset),
		.ps2_clk(PS2C),
		.ps2_data(PS2D), 
		.rdn(wea),
		.data(data[7:0]), 
		.ready(ready),
		.overflow(overflow));  
	
endmodule
