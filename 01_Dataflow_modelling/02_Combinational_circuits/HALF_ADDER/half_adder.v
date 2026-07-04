// Rahma A Dalhat — 05 July 2026 -Half Adder


module half_adder(
    input A,
    input B,
    output Sum,
    output Carry
);

    // Output logic
    assign Sum = A ^ B;
    assign Carry = A & B;

endmodule