module pause_gen(
    input clk,
    input rst,
    input [19: 0] button,
    output reg[19: 0] pause
);

    reg[19: 0] button_last;

    always @(posedge clk) begin
        if (rst) begin
            button_last <= 0;
            pause <= 0;
        end else begin
            button_last <= button;
            if (button != button_last) begin
                pause <= button;
            end else
                pause <= 0;
        end
    end

endmodule
