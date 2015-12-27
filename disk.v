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
    assign disk_addr = ADDR[8: 0];
    assign DAT_O = disk_data_in;
    assign disk_data_out = DAT_I;

    // if read from or write to buffer, complete immediately
    assign ACK = ADDR[9] ? disk_operate_done : STB;

    // handle read && write with disk
    reg write_pause_last, read_pause_last;
    always @(posedge clk) begin
        if (rst) begin
            write_pause <= 0;
            write_pause_last <= 0;
            read_pause <= 0;
            read_pause_last <= 0;
        end else begin
            write_pause_last <= write_pause;
            read_pause_last <= read_pause;
            if (STB) begin
                if (ADDR[9] & DAT_I[31] & ~write_pause_last)
                    write_pause <= 1;
                else
                    write_pause <= 0;
                if (ADDR[9] & ~DAT_I[31] & ~read_pause_last)
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

