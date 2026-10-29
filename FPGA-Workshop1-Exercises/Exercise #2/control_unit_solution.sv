module control_unit (
    input  logic       clk,
    input  logic       rst,
    input  logic [1:0] btn,
    output logic [2:0] rgb
);

    logic [1:0] s;
    logic [1:0] next_s;

    always_comb begin
        next_s[1] = (s[1] & s[0]) | (s[1] & ~btn[1]) | (s[0] & btn[1] & ~btn[0]);
        next_s[0] = (s[1] & s[0]) | (~s[0] & ~btn[1] & btn[0]) | (s[0] & ~btn[1] & ~btn[0]);
    end

    always_ff @(posedge clk) begin
        if (rst)
            s <= 2'b00;
        else
            s <= next_s;
    end

    always_comb begin
        case (s)
            2'b00: rgb = 3'b001;
            2'b01: rgb = 3'b011;
            2'b10: rgb = 3'b011;
            2'b11: rgb = 3'b010;
        endcase
    end

endmodule
