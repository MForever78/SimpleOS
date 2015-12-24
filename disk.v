module disk(
    input clk,
    input rst,

    input WE,
    input STB,
    output ACK,
    input [31: 0] ADDR,
    input [31: 0] DAT_I,
    output [31: 0] DAT_O,

    input [7: 0] dev_data_in,
    output [7: 0] dev_data_out,
    input dev_reading,
    input dev_read_done,
    input dev_writing,
    input dev_write_done,
    output dev_we
);

    localparam
        WRITE_IDLE = 0,
        DEV_WRITE = 1,
        CPU_WRITE = 2,
        DEV_WRITE_DONE = 3;
    localparam
        READ_IDLE = 0,
        DEV_READ = 1,
        DEV_READ_DONE = 2;

    reg [7: 0] buffer[0: 511];
    reg [31: 0] status;
    wire [7: 0] din_0, din_1, din_2, din_3;
    wire [7: 0] dout_0, dout_1, dout_2, dout_3;

    assign dout_0 = buffer[ADDR[8: 2]];
    assign dout_1 = buffer[ADDR[8: 2] + 1];
    assign dout_2 = buffer[ADDR[8: 2] + 2];
    assign dout_3 = buffer[ADDR[8: 2] + 3];

    assign DAT_O = {dout_3, dout_2, dout_1, dout_0};
    
    assign din_0 = DAT_I[7: 0];
    assign din_1 = DAT_I[15: 8];
    assign din_2 = DAT_I[23: 16];
    assign din_3 = DAT_I[31: 24];

    wire CPU_buffer_write = STB & WE & ~ADDR[9];
    wire CPU_buffer_read = STB & ~WE;
    wire dev_buffer_write = STB & WE & ADDR[9] & ~DAT_I[31] & dev_read_done;
    wire dev_buffer_read = STB & WE & ADDR[9] & DAT_I[31];

    // buffer write state machine
    reg [3: 0] buffer_state, buffer_state_next;
    reg [8: 0] dev_addr, dev_addr_next;
    always @(*) begin
        buffer_state_next = buffer_state;
        dev_addr_next = dev_addr;
        case(buffer_state)
            WRITE_IDLE: begin
                if (dev_buffer_write)
                    buffer_state_next = DEV_WRITE;
                else if (CPU_buffer_write)
                    buffer_state_next = CPU_WRITE;
            end
            DEV_WRITE: begin
                if (dev_addr == 511) begin
                    dev_addr_next = 0;
                    buffer_state_next = DEV_WRITE_DONE;
                end else
                    dev_addr_next = dev_addr + 1;
            end
            CPU_WRITE: begin
                buffer_state_next = WRITE_IDLE;
            end
            DEV_WRITE_DONE: begin
                buffer_state_next = WRITE_IDLE;
            end
        endcase
    end

    // buffer write state trans
    always @(posedge clk) begin
        if (rst) begin
            dev_addr <= 0;
            buffer_state <= WRITE_IDLE;
        end else begin
            case (buffer_state)
                DEV_WRITE: begin
                    if (dev_read_done) begin
                        dev_addr <= dev_addr_next;
                        buffer_state <= buffer_state_next;
                    end
                end
                default: buffer_state <= buffer_state_next;
            endcase
        end
    end

    // buffer write
    always @(posedge clk) begin
        case(buffer_state)
            DEV_WRITE: begin
                buffer[dev_addr] <= dev_data_in;
            end
            CPU_WRITE: begin
                buffer[ADDR[8: 2]] <= din_0;
                buffer[ADDR[8: 2] + 1] <= din_1;
                buffer[ADDR[8: 2] + 2] <= din_2;
                buffer[ADDR[8: 2] + 3] <= din_3;
            end
        endcase
    end

    reg [1: 0] buffer_read_state, buffer_read_state_next;
    reg [8: 0] dev_read_addr, dev_read_addr_next;

    // Disk read state machine
    always @(*) begin
        buffer_read_state_next = buffer_read_state;
        dev_read_addr_next = dev_read_addr;
        case(buffer_read_state)
            READ_IDLE: begin
                if (dev_buffer_read)
                    buffer_read_state_next = DEV_READ;
            end
            DEV_READ: begin
                if (dev_read_addr == 511) begin
                    dev_read_addr_next = 0;
                    buffer_read_state_next = DEV_READ_DONE;
                end else
                    dev_read_addr_next = dev_read_addr + 1;
            end
            DEV_READ_DONE: begin
                buffer_read_state_next = READ_IDLE;
            end
        endcase
    end

    // Disk read state trans
    always @(posedge clk) begin
        if (rst) begin
            buffer_read_state <= READ_IDLE;
            dev_read_addr <= 0;
        end else begin
            case(buffer_read_state)
                DEV_READ: begin
                    if (dev_write_done) begin
                        buffer_read_state <= buffer_read_state_next;
                        dev_read_addr <= dev_read_addr_next;
                    end
                end
                default: buffer_read_state <= buffer_read_state_next;
            endcase
        end
    end

    assign dev_we = (buffer_read_state != READ_IDLE) & ~dev_writing;
    assign dev_data_out = buffer[dev_read_addr];

    // ACK logic
    assign ACK = CPU_buffer_read | CPU_buffer_write | buffer_read_state == DEV_READ_DONE | buffer_state == DEV_WRITE_DONE;

endmodule
