module control_unit (
    input  logic       clk,
    input  logic       rst,
    input  logic [1:0] btn,
    output logic [2:0] rgb
);

    logic [1:0] s;        // current state (2 flip-flops)
    logic [1:0] next_s;   // next state

    always_comb begin
        // TODO 1: Put your K-map equations here, one per state bit.

    end


    always_ff @(posedge clk) begin
        // TODO 2: Put your state flip-flops
        // On reset, go to your start state.
        // Otherwise, load next_s into s on every rising edge.
        
    end


    always_comb begin
        case (s)
            // TODO 3: output colors
            // Replace each 3'bxxx with a color for that state.
            // 3'b{blue, green, red}: 001 red, 010 green, 100 blue, 011 yellow, 110 cyan, 101 magenta, 111 white
            
            2'b00: rgb = 3'bxxx;
            2'b01: rgb = 3'bxxx;
            2'b10: rgb = 3'bxxx;
            2'b11: rgb = 3'bxxx;
        endcase
    end

endmodule
