module WB_intercon(master_STB, master_DAT_I, master_DAT_O, master_ACK, master_WE, master_ADDR, slave_STB, slave_ACK, slave_WE, slave_DAT_I, slave_DAT_O, slave_ADDR);
    input wire master_STB, master_WE;
    input wire [31: 0] master_DAT_I, master_ADDR;
    input wire [255: 0] slave_DAT_I;
    input wire [7: 0] slave_ACK;
    output wire [31: 0] master_DAT_O, slave_DAT_O, slave_ADDR;
    output reg [7: 0] slave_STB;
    output wire master_ACK, slave_WE;

    assign master_ACK = slave_ACK[master_ADDR[31: 29]];
    assign slave_DAT_O = master_DAT_I;
    assign slave_WE = master_WE;

    wire [31: 0] slaves_DAT[0: 15];

    // generated code
    assign slaves_DAT[0] = slave_DAT_I[31: 0];
    assign slaves_DAT[1] = slave_DAT_I[63: 32];
    assign slaves_DAT[2] = slave_DAT_I[95: 64];
    assign slaves_DAT[3] = slave_DAT_I[127: 96];
    assign slaves_DAT[4] = slave_DAT_I[159: 128];
    assign slaves_DAT[5] = slave_DAT_I[191: 160];
    assign slaves_DAT[6] = slave_DAT_I[223: 192];
    assign slaves_DAT[7] = slave_DAT_I[255: 224];

    assign master_DAT_O = slaves_DAT[master_ADDR[31: 29]];
    assign slave_ADDR = {3'b0, master_ADDR[28: 0]};

    always @* begin
        slave_STB = 0;
        slave_STB[master_ADDR[31: 29]] = master_STB;
    end

endmodule

