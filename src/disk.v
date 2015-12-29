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
    
    reg we_last;
    reg we_pause;
    always @(posedge clk) begin
        if (rst) begin
            we_last <= WE;
            we_pause <= 0;
        end else begin
            if (WE & ~we_last)
                we_pause <= 1;
            else
                we_pause <= 0;

            we_last <= WE;
        end
    end
    
    // use we pause when write to buffer to avoid clk align problem
    wire dev_we = ADDR[9] ? DAT_I[31] : we_pause;

    // instruction format:
    // 31th bit: 1: select device, 0: other bits has no meaning
    // 30th bit: we
    // 29th bit: 1: select disk, 0: select buffer
    // 28-0 bits: if select disk, they are block offset, otherwise no meaning
    assign instruction = {STB, dev_we, ADDR[9], DAT_I[29: 0]};
    assign disk_addr = {ADDR[8: 2], 2'b0};
    assign DAT_O = disk_data_in;
    assign disk_data_out = DAT_I;

    // if read from or write to buffer, complete immediately
    wire disk_ack = ADDR[9] ? disk_operate_done : STB;
    // otherwise, if receive disk_operate_done pause, pull up ack for 7 cycles
    reg[2: 0] ack_cnt;
    initial ack_cnt = 0;
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

    // generate disk read & write pause
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

