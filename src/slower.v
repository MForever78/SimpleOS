module slower(
    input clk,
    input rst,
    output reg clk1s,
    output reg clk2s
);

    reg[31: 0] cnt1s, cnt2s;
    
    always @(posedge clk) begin
        if (rst) begin
            cnt1s <= 0;
            clk1s <= 0;
        end else begin
            if (cnt1s == 24999999) begin
                clk1s <= ~clk1s;
                cnt1s <= 0;
            end else
                cnt1s <= cnt1s + 1;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            cnt2s <= 0;
            clk2s <= 0;
        end else begin
            if (cnt2s == 49999999) begin
                clk2s <= ~clk2s;
                cnt2s <= 0;
            end else
                cnt2s <= cnt2s + 1;
        end
    end

endmodule

