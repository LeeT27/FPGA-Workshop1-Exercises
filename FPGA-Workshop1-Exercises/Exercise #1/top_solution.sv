module top (
    input  logic [15:0] SW,
    output logic [15:0] LED
);

    adder u_adder (
        .a   (SW[15:8]),
        .b   (SW[7:0]),
        .sum (LED[8:0])
    );


    // Unused LEDs stay off (already done for you)
    assign LED[15:9] = '0;

endmodule
