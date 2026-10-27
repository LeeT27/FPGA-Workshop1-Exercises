module button_conditioner #(
    parameter int WIDTH           = 2,
    parameter int DEBOUNCE_CYCLES = 1_000_000
) (
    input  logic             clk,
    input  logic [WIDTH-1:0] btn,
    output logic [WIDTH-1:0] btn_press
);

    for (genvar i = 0; i < WIDTH; i++) begin : g_btn
        logic sync0, sync1;
        logic stable;
        logic stable_prev;
        logic [$clog2(DEBOUNCE_CYCLES+1)-1:0] count;

        initial begin
            sync0 = 1'b0; sync1 = 1'b0;
            stable = 1'b0; stable_prev = 1'b0;
            count = '0;
        end

        always_ff @(posedge clk) begin
            // 1. synchronize
            sync0 <= btn[i];
            sync1 <= sync0;

            // 2. debounce: accept a new value only after it holds steady
            if (sync1 == stable) begin
                count <= '0;
            end else if (count == DEBOUNCE_CYCLES - 1) begin
                stable <= sync1;
                count  <= '0;
            end else begin
                count <= count + 1'b1;
            end

            // 3. remember last value for edge detection
            stable_prev <= stable;
        end

        // pulse for exactly one cycle when the clean signal rises
        assign btn_press[i] = stable & ~stable_prev;
    end

endmodule
