module adder (
    input  logic [7:0] a,
    input  logic [7:0] b,
    output logic [8:0] sum
);
    always_comb begin
        sum = a + b;
    end
endmodule
