module counter(
    input clk,
    input rst,
    input WE,
    input STB,
    output ACK,
    input[31: 0] DAT_I,
    output[31: 0] DAT_O
);

    `include "function.vh"

    parameter
        MAIN_FREQUENCY = 100000000,
        COUNTER_FREQUENCY = 1000;
    localparam
        COUNT = MAIN_FREQUENCY / COUNTER_FREQUENCY,
        COUNT_WIDTH = GET_WIDTH(COUNT - 1);

    // I'm always ready
    assign ACK = STB;

    reg [31: 0] tick;
    reg [COUNT_WIDTH: 0] cnt;

    always @(posedge clk) begin
        if (rst) begin
            tick <= 0;
            cnt <= 0;
        end else begin
            if (STB & WE) begin
                cnt <= 0;
                tick <= DAT_I;
            end else begin
                if (cnt == COUNT - 1) begin
                    cnt <= 0;
                    tick <= tick + 1;
                end else
                    cnt <= cnt + 1;
            end
        end
    end
    
    assign DAT_O = tick;

endmodule

