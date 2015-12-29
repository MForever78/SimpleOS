module disk_addr_gen(
    input clk,
    input rst,
    input [19: 0] button,
    output [8: 0] addr
);

    reg[6: 0] counter;

    assign addr = {counter, 2'b0};

    always @(posedge clk) begin
        if (rst) begin
            counter <= 0;
        end else begin
            if (button[5])
                counter <= counter - 1;
            else if (button[6])
                counter <= counter + 1;
        end
    end

endmodule

