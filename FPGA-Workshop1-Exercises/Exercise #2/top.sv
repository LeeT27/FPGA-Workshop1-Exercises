module top (
    input  logic       clk,
    input  logic [3:0] BTN,
    output logic [2:0] RGB0
);

    logic [1:0] btn_press;

    button_conditioner u_btn (
        .clk       (clk),
        .btn       (BTN[1:0]),
        .btn_press (btn_press)
    );

    control_unit u_cu (
        .clk (clk),
        .rst (BTN[2]),
        .btn (btn_press),
        .rgb (RGB0)
    );

endmodule
