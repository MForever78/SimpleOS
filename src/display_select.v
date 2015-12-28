module display_select(
    input [2: 0] sel,
    input [31: 0] data0,
    input [31: 0] data1,
    input [31: 0] data2,
    input [31: 0] data3,
    input [31: 0] data4,
    input [31: 0] data5,
    input [31: 0] data6,
    input [31: 0] data7,
    output reg[31: 0] data_out
);

    always @(*) begin
        case(sel)
            3'b000: begin
                data_out = data0;
            end
            3'b001: begin
                data_out = data1;
            end
            3'b010: begin
                data_out = data2;
            end
            3'b011: begin
                data_out = data3;
            end
            3'b100: begin
                data_out = data4;
            end
            3'b101: begin
                data_out = data5;
            end
            3'b110: begin
                data_out = data6;
            end
            3'b111: begin
                data_out = data7;
            end
        endcase
    end

endmodule

