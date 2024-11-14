`timescale 1ns / 1ps

module tb_ALU;

       // Inputs
    logic [3:0] a;
    logic [3:0] b;
    logic [1:0] s;

    // Outputs
    logic [3:0] f;
    logic [3:0] y;

    // Instantiate the ALU
    ALU uut (
        .a(a),
        .b(b),
        .s(s),
        .f(f),
        .y(y)
    );

    // Stimulus generation
    initial begin
        
         
        // Display the results
        $monitor("Time=%0t | a=%b, b=%b, s=%b | f=%b, y=%b", $time, a, b, s, f, y);
        
        // Test cases
        // Test 1: Addition
        a = 4'b0101; b = 4'b0011; s = 2'b00; // Expected result: f = 4'b1000, y = 4'b0000 (Add)
        #10;

        // Test 2: Subtraction
        a = 4'b0101; b = 4'b0011; s = 2'b01; // Expected result: f = 4'b0010, y = 4'b0001 (Sub)
        #10;

        // Test 3: Shift operation
        a = 4'b0101; b = 4'b0011; s = 2'b10; // Expected result: f = 4'b1000, y = 4'b0000 (Shift)
        #10;

        // Test 4: AND operation
        a = 4'b0101; b = 4'b0011; s = 2'b11; // Expected result: f = 4'b1000, y = 4'b0000 (AND)
        #10;
  

        $finish;
    end

endmodule