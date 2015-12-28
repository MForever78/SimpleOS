module disk_dev(
    input clk,
    input rst,

    // addr's last two bit should always be 0
    input[8: 0] addr,
    input[31: 0] data_in,
    output[31: 0] data_out,
    
    input[31: 0] instruction,
    input write_pause,
    input read_pause,
    output operate_done,

    input dev_read_done,
    input dev_write_done,
    output reg dev_enable,
    output reg dev_we,
    output reg[7: 0] dev_data_out,
    input [7: 0] dev_data_in
);

    // Disk will get the pause and do its work at next posedge clk
    // It will not respond any pause during read or write
    //
    // Example:
    // clk:     /¯¯\__/¯¯\__/¯¯\__/¯¯\__/¯¯\__/¯¯\__/¯¯\__/¯¯\__
    // pause:   ______/¯¯¯¯¯\___________________________________
    // state:   ____________/¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\___________

    localparam
        READ_IDLE = 0,
        // Send a 32-bit (4-byte) read instruction to computer
        // Cost 4 uart cycle to complete
        READ_REQUEST = 1,

        // Receive 1 byte ack from computer: 8'hff for success, otherwise
        // failure
        // Cost 1 uart cycle to complete
        READ_HELLO = 2,
        READ_WAIT = 3,

        // Receive 512-byte data from computer
        // Cost 512 uart cycle 
        READ_DATA = 4,

        // Acknoledge computer that read has succeed
        // Cost 1 uart cycle
        READ_GOODBYE = 5;
    localparam
        WRITE_IDLE = 0,
        WRITE_REQUEST = 1,
        WRITE_HELLO = 2,
        WRITE_WAIT = 3,
        WRITE_DATA = 4,
        WRITE_GOODBYE = 5;

    // device internal buffer
    reg[7: 0] buffer [511: 0];
    reg[8: 0] buffer_addr;

    wire[7: 0] byte_instruction [3: 0];

    assign byte_instruction[0] = instruction[7: 0];
    assign byte_instruction[1] = instruction[15: 8];
    assign byte_instruction[2] = instruction[23: 16];
    assign byte_instruction[3] = instruction[31: 24];

    wire [7: 0] din_0, din_1, din_2, din_3;
    wire [7: 0] dout_0, dout_1, dout_2, dout_3;

    assign dout_0 = buffer[addr];
    assign dout_1 = buffer[addr + 1];
    assign dout_2 = buffer[addr + 2];
    assign dout_3 = buffer[addr + 3];

    assign data_out = {dout_3, dout_2, dout_1, dout_0};
    
    assign din_0 = data_in[7: 0];
    assign din_1 = data_in[15: 8];
    assign din_2 = data_in[23: 16];
    assign din_3 = data_in[31: 24];
    
    // Read state machine
    reg read_data_done;
    reg[2: 0] read_state, read_state_next;
    reg[9: 0] read_data_cnt, read_data_cnt_next;
    reg read_operate_done;
    always @(*) begin
        if (rst) begin
            read_state_next = READ_IDLE;
            read_data_cnt_next = 0;
            read_data_done = 0;
        end else begin
            read_state_next = read_state;
            read_data_cnt_next = 0;
            read_data_done = 0;
            case(read_state)
                READ_IDLE: begin
                    if (read_pause) 
                        read_state_next = READ_REQUEST;
                end
                READ_REQUEST: begin
                    if (read_data_cnt == 4) begin
                        read_data_cnt_next = 0;
                        read_state_next = READ_HELLO;
                    end else
                        read_data_cnt_next = read_data_cnt + 1;
                end
                READ_HELLO: begin
                    if (dev_read_done) begin
                        // if remote feedback ok, prepare to receive data
                        // otherwise send request again
                        if (dev_data_in == 8'hff)
                            read_state_next = READ_WAIT;
                        else
                            read_state_next = READ_REQUEST;
                    end
                end
                READ_WAIT: begin
                    // wait one cycle to clear the dev_read_pause
                    read_state_next = READ_DATA;
                end
                READ_DATA: begin
                    if (read_data_cnt == 512) begin
                        read_data_cnt_next = 0;
                        read_state_next = READ_GOODBYE;
                        read_data_done = 1;
                    end else begin
                        read_data_cnt_next = read_data_cnt + 1;
                        read_state_next = READ_WAIT;
                    end
                end
                READ_GOODBYE: begin
                    read_state_next = READ_IDLE;
                end
            endcase
        end
    end

    // Read state trans
    always @(posedge clk) begin
        if (rst) begin
            read_state <= READ_IDLE;
            read_data_cnt <= 0;
        end else begin
            case(read_state)
                READ_IDLE: begin
                    read_state <= read_state_next;
                    read_data_cnt <= read_data_cnt_next;
                    read_operate_done <= 0;
                end
                READ_REQUEST: begin
                    if (dev_write_done)
                        read_data_cnt <= read_data_cnt_next;
                    read_state <= read_state_next;
                end
                READ_HELLO: begin
                    read_state <= read_state_next;
                    // clear the data cnt
                    read_data_cnt <= read_data_cnt_next;
                end
                READ_WAIT: begin
                    read_state <= read_state_next;
                end
                READ_DATA: begin
                    if (dev_read_done | read_data_done) begin
                        read_data_cnt <= read_data_cnt_next;
                        read_state <= read_state_next;
                    end
                end
                READ_GOODBYE: begin
                    if (dev_write_done) begin
                        read_state <= read_state_next;
                        read_operate_done <= 1;
                    end
                    read_data_cnt <= read_data_cnt_next;
                end
            endcase
        end
    end

    // Write state machine
    reg write_data_done;
    reg[2: 0] write_state, write_state_next;
    reg[9: 0] write_data_cnt, write_data_cnt_next;
    reg write_operate_done;
    always @(*) begin
        if (rst) begin
            write_state_next = WRITE_IDLE;
            write_data_cnt_next = 0;
            write_data_done = 0;
        end else begin
            write_state_next = write_state;
            write_data_cnt_next = 0;
            write_data_done = 0;
            case(write_state)
                WRITE_IDLE: begin
                    if (write_pause == 1 && read_state == READ_IDLE) 
                        write_state_next = WRITE_REQUEST;
                end
                WRITE_REQUEST: begin
                    if (write_data_cnt == 4) begin
                        write_data_cnt_next = 0;
                        write_state_next = WRITE_HELLO;
                    end else
                        write_data_cnt_next = write_data_cnt + 1;
                end
                WRITE_HELLO: begin
                    if (dev_read_done) begin
                        // if remote feedback ok, prepare to receive data
                        // otherwise send request again
                        if (dev_data_in == 8'hff)
                            write_state_next = WRITE_WAIT;
                        else
                            write_state_next = WRITE_REQUEST;
                    end
                end
                WRITE_WAIT: begin
                    // wait one cycle to clear the dev_read_pause
                    write_state_next = WRITE_DATA;
                end
                WRITE_DATA: begin
                    if (write_data_cnt == 512) begin
                        write_data_cnt_next = 0;
                        write_state_next = WRITE_GOODBYE;
                        write_data_done = 1;
                    end else begin
                        write_data_cnt_next = write_data_cnt + 1;
                        write_state_next = WRITE_WAIT;
                    end
                end
                WRITE_GOODBYE: begin
                    write_state_next = WRITE_IDLE;
                end
            endcase
        end
    end

    // Write state trans
    always @(posedge clk) begin
        if (rst) begin
            write_state <= WRITE_IDLE;
            write_data_cnt <= 0;
        end else begin
            case(write_state)
                WRITE_IDLE: begin
                    write_state <= write_state_next;
                    write_data_cnt <= write_data_cnt_next;
                    write_operate_done <= 0;
                end
                WRITE_REQUEST: begin
                    if (dev_write_done)
                        write_data_cnt <= write_data_cnt_next;
                    write_state <= write_state_next;
                end
                WRITE_HELLO: begin
                    write_state <= write_state_next;
                    // clear the data cnt
                    write_data_cnt <= write_data_cnt_next;
                end
                WRITE_WAIT: begin
                    write_state <= write_state_next;
                end
                WRITE_DATA: begin
                    if (dev_write_done | write_data_done) begin
                        write_data_cnt <= write_data_cnt_next;
                        write_state <= write_state_next;
                    end
                end
                WRITE_GOODBYE: begin
                    if (dev_write_done) begin
                        write_state <= write_state_next;
                        write_operate_done <= 1;
                    end
                    write_data_cnt <= write_data_cnt_next;
                end
            endcase
        end
    end

    // device control
    wire[7: 0] state = instruction[31] == 1 ? write_state : read_state;
    always @(clk) begin
        if (rst) begin
            dev_enable <= 0;
            dev_we <= 0;
            dev_data_out <= 0;
        end else begin
            if (instruction[30]) begin
                case(instruction[31])
                    0: begin
                        case(state)
                            READ_IDLE: begin
                                dev_enable <= 0;
                            end
                            READ_REQUEST: begin
                                dev_enable <= 1;
                                dev_we <= 1;
                                dev_data_out <= byte_instruction[read_data_cnt];
                            end
                            READ_HELLO: begin
                                dev_enable <= 1;
                                dev_we <= 0;
                            end
                            READ_WAIT: begin
                                dev_enable <= 1;
                                dev_we <= dev_we;
                            end
                            READ_DATA: begin
                                dev_enable <= 1;
                                dev_we <= 0;
                                if (dev_read_done)
                                    buffer[read_data_cnt] <= dev_data_in;
                            end
                            READ_GOODBYE: begin
                                dev_enable <= 1;
                                dev_we <= 1;
                                dev_data_out <= 8'hff;
                            end
                            default: begin
                                dev_enable <= 0;
                                dev_we <= 0;
                            end
                        endcase
                    end
                    1: begin
                        case(state)
                            WRITE_IDLE: begin
                                dev_enable <= 0;
                            end
                            WRITE_REQUEST: begin
                                dev_enable <= 1;
                                dev_we <= 1;
                                dev_data_out <= byte_instruction[write_data_cnt];
                            end
                            WRITE_HELLO: begin
                                dev_enable <= 1;
                                dev_we <= 0;
                            end
                            WRITE_WAIT: begin
                                dev_enable <= 1;
                                dev_we <= dev_we;
                            end
                            WRITE_DATA: begin
                                dev_enable <= 1;
                                dev_we <= 1;
                                if (dev_write_done)
                                    dev_data_out <= buffer[write_data_cnt];
                            end
                            WRITE_GOODBYE: begin
                                dev_enable <= 1;
                                dev_we <= 1;
                                dev_data_out <= 8'hff;
                            end
                            default: begin
                                dev_enable <= 0;
                                dev_we <= 0;
                            end
                        endcase
                    end
                endcase
            end else begin
                // write to buffer
                if (instruction[31]) begin
                    buffer[addr] <= din_0;
                    buffer[addr + 1] <= din_1;
                    buffer[addr + 2] <= din_2;
                    buffer[addr + 3] <= din_3;
                end
            end
        end
    end

    assign operate_done = instruction[30] & ((instruction[31] & write_operate_done) | (instruction[31] & read_operate_done));

endmodule
