`timescale 1ns/1ps

module tb_shift_register_4bit;

    reg clk;
    reg reset;
    reg serial_in;
    wire [3:0] q;

    // Instantiate the shift register
    shift_register_4bit uut (
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .q(q)
    );

    // Clock generation: 10 ns period
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        serial_in = 0;

        // Reset the shift register
        #10;
        reset = 0;

        // Shift in 1
        serial_in = 1;
        #10;

        // Shift in 0
        serial_in = 0;
        #10;

        // Shift in 1
        serial_in = 1;
        #10;

        // Shift in 1
        serial_in = 1;
        #10;

        // Continue shifting
        serial_in = 0;
        #10;

        serial_in = 1;
        #10;

        $finish;
    end

    // Display values
    initial begin
        $monitor("Time = %0t | Reset = %b | Serial In = %b | Q = %b",
                 $time, reset, serial_in, q);
    end

endmodule
