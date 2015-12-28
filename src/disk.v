module disk(
    input clk,
    input rst,

    input WE,
    input STB,
    output ACK,
    input [31: 0] ADDR,
    input [31: 0] DAT_I,
    output [31: 0] DAT_O,

    output [31: 0] instruction,
    output reg write_pause,
    output reg read_pause,
    input disk_operate_done,
    output [8: 0] disk_addr,
    input [31: 0] disk_data_in,
    output [31: 0] disk_data_out
);

    reg [31: 0] status;
    
    assign instruction = {DAT_I[31], ADDR[9], DAT_I[29: 0]};
    assign disk_addr = {ADDR[8: 2], 2'b0};
    assign DAT_O = disk_data_in;
    assign disk_data_out = DAT_I;

    // if read from or write to buffer, complete immediately
    wire disk_ack = ADDR[9] ? disk_operate_done : STB;
    reg[2: 0] ack_cnt;
    reg long_ack;
    always @(posedge clk) begin
        if (rst) begin
            ack_cnt <= 0;
        end else begin
            if (disk_ack && ack_cnt == 0) begin
                // start counting
                ack_cnt <= 1;
            end else if (ack_cnt != 0) begin
                // already counting
                ack_cnt <= ack_cnt + 1;
            end
        end
    end

    assign ACK = ack_cnt != 0;

    // handle read && write with disk
    reg stb_last;
    always @(posedge clk) begin
        if (rst) begin
            write_pause <= 0;
            read_pause <= 0;
            stb_last <= 0;
        end else begin
            stb_last <= STB;
            if (STB & ~stb_last) begin
                if (ADDR[9] & DAT_I[31])
                    write_pause <= 1;
                else
                    write_pause <= 0;
                if (ADDR[9] & ~DAT_I[31])
                    read_pause <= 1;
                else
                    read_pause <= 0;
            end else begin
                write_pause <= 0;
                read_pause <= 0;
            end
        end
    end

endmodule

