module top (
    input  logic [15:0] SW,
    output logic [15:0] LED
);

    // TODO: instantiate the adder module here


    // Unused LEDs stay off (already done for you)
    assign LED[15:9] = '0;

endmodule
