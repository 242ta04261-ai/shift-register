`timescale 1ns/1ps

module shift_register_4bit (
    input  wire       clk,
    input  wire       reset,
    input  wire       serial_in,
    output reg  [3:0] q
);

    always @(posedge clk) begin
        if (reset)
            q <= 4'b0000;
        else
            q <= {serial_in, q[3:1]};
    end

endmodule
