module uart(
    input clk,
    input rst,
    input rx,
    output reg tx,
    input we,
    output rx_busy,
    output tx_busy,
    output reg rx_done,
    output reg tx_done,
    input [7: 0] data_in,
    output reg [7: 0] data_out
);

    `include "function.vh"

    parameter
        MAIN_FREQUENCY = 100000000,
        BAUD = 115200;
    localparam
        COUNT = MAIN_FREQUENCY / BAUD / 16,
        CNT_WIDTH = GET_WIDTH(COUNT - 1);
    localparam
        RX_IDLE = 0,
        RX_START = 1,
        RX_DATA = 2,
        RX_STOP = 3;
    localparam
        TX_IDLE = 0,
        TX_START = 1,
        TX_DATA = 2,
        TX_STOP = 3;

    reg[CNT_WIDTH: 0] count;
    reg uart_clk;

    // Syncronize
    reg rx_d1, rx_d2;
    always @(posedge clk) begin
        rx_d1 <= rx;
        rx_d2 <= rx_d1;
    end

    // Generate oversampling pause
    always @(posedge clk) begin
        if (rst) begin
            count <= 0;
        end else begin
            if (count == COUNT - 1) begin
                count <= 0;
            end else begin
                count <= count + 1;
            end
        end
    end

    wire sample_pause = (count == COUNT - 1);

    // Generate rx shift bit pause
    reg[3: 0] bit_spacing;
    always @(posedge clk) begin
        if (rx_state == RX_IDLE)
            bit_spacing <= 7;
        else begin
            if (sample_pause)
                bit_spacing <= bit_spacing + 1;
        end
    end

    wire rx_shift_bit = (bit_spacing == 0);

    // Receive
    reg[7: 0] rx_data;
    reg[1: 0] rx_state, rx_state_next;
    reg[2: 0] rx_data_cnt, rx_data_cnt_next;
    reg rx_stop, rx_stop_next;

    // Receive state machine
    always @(*) begin
        rx_state_next = rx_state;
        rx_data_cnt_next = rx_data_cnt;
        rx_stop_next = rx_stop;
        rx_done = 0;
        case(rx_state)
            RX_IDLE: begin
                if (rx_d2 == 0)
                    rx_state_next = RX_START;
            end
            RX_START: begin
                if (rx_d2 == 0)
                    rx_state_next = RX_DATA;
                else
                    rx_state_next = RX_IDLE;
            end
            RX_DATA: begin
                if (rx_data_cnt == 7) begin
                    rx_data_cnt_next = 0;
                    rx_state_next = RX_STOP;
                end else
                    rx_data_cnt_next = rx_data_cnt + 1;
            end 
            RX_STOP: begin
                if (rx_stop == 1) begin
                    rx_state_next = RX_IDLE;
                    rx_stop_next = 0;
                    rx_done = 1;
                end else
                    rx_stop_next = rx_stop + 1;
            end
        endcase
    end

    // Receive state trans
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            rx_state <= 0;
            rx_data_cnt <= 0;
            rx_stop <= 0;
        end else begin
            if (sample_pause)
                case(rx_state)
                    RX_IDLE: rx_state <= rx_state_next;
                    RX_START: begin
                        if (rx_shift_bit)
                            rx_state <= rx_state_next;
                    end
                    RX_DATA: begin
                        if (rx_shift_bit) begin
                            rx_state <= rx_state_next;
                            rx_data_cnt <= rx_data_cnt_next;
                        end
                    end
                    RX_STOP: begin
                        if (rx_shift_bit) begin
                            rx_state <= rx_state_next;
                            rx_stop <= rx_stop_next;
                        end
                    end
                endcase
        end
    end

    // Receive collect data
    always @(posedge clk) begin
        if (rst) begin
            data_out <= 0;
            rx_data <= 0;
        end else begin
            case (rx_state)
                RX_IDLE: begin
                    data_out <= rx_data;
                end
                RX_DATA: begin
                    if (rx_shift_bit & sample_pause)
                        rx_data <= {rx, rx_data[7: 1]};
                end
                default: begin
                    data_out <= data_out;
                end
            endcase
        end
    end

    // Receive signal
    assign rx_busy = rx_state != RX_IDLE;

    // Generate shift bit pause
    reg[3: 0] tx_bit_spacing;
    always @(posedge clk) begin
        if (tx_state == TX_IDLE)
            tx_bit_spacing <= 7;
        else begin
            if (sample_pause)
                tx_bit_spacing <= tx_bit_spacing + 1;
        end
    end

    wire tx_shift_bit = (tx_bit_spacing == 0);

    // Transmit state machine
    reg [2: 0] tx_state, tx_state_next;
    reg [3: 0] tx_data_cnt, tx_data_cnt_next;
    reg tx_stop, tx_stop_next;
    always @(*) begin
        tx_state_next = tx_state;
        tx_data_cnt_next = tx_data_cnt;
        tx_done = 0;

        case(tx_state)
            TX_IDLE: begin
                if (we) 
                    tx_state_next = TX_START;
            end
            TX_START: begin
                tx_state_next = TX_DATA;
            end
            TX_DATA: begin
                if (tx_data_cnt == 7) begin
                    tx_data_cnt_next = 0;
                    tx_state_next = TX_STOP;
                end else
                    tx_data_cnt_next = tx_data_cnt + 1;
            end
            TX_STOP: begin
                if (tx_stop == 1) begin
                    tx_stop_next = 0;
                    tx_state_next = TX_IDLE;
                    tx_done = 1;
                end else
                    tx_stop_next = tx_stop + 1;
            end
        endcase
    end

    // Transmit state trans
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            tx_state <= 0;
            tx_data_cnt <= 0;
            tx_stop <= 0;
        end else begin
            if (sample_pause)
                case(tx_state)
                    TX_IDLE: tx_state <= tx_state_next;
                    TX_START: begin
                        if (tx_shift_bit)
                            tx_state <= tx_state_next;
                    end
                    TX_DATA: begin
                        if (tx_shift_bit) begin
                            tx_state <= tx_state_next;
                            tx_data_cnt <= tx_data_cnt_next;
                        end
                    end
                    TX_STOP: begin
                        if (tx_shift_bit) begin
                            tx_state <= tx_state_next;
                            tx_stop <= tx_stop_next;
                        end
                    end
                endcase
        end
    end

    // Transmit data
    reg [7: 0] tx_data;
    always @(posedge clk) begin
        if (rst) begin
            tx_data <= 0;
            tx <= 1;
        end else begin
            case (tx_state)
                TX_IDLE: begin
                    tx_data <= data_in;
                    tx <= 1;
                end
                TX_START: begin
                    if (tx_shift_bit & sample_pause)
                        tx <= 0;
                end
                TX_DATA: begin
                    if (tx_shift_bit & sample_pause) begin
                        tx <= tx_data[0];
                        tx_data <= {1'b0, tx_data[7: 1]};
                    end
                end
                TX_STOP: begin
                    if (tx_shift_bit & sample_pause)
                        tx <= 1;
                end
            endcase
        end
    end

    // Transmit signal
    assign tx_busy = tx_state != TX_IDLE;

endmodule
