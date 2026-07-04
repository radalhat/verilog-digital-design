// Rahma A Dalhat — 05 July 2026 -XOR GateHalf Subtractor
module half_subtractor(
    input A,
    input B,
    output Diff,
    output Borrow
);

    // Output logic
    assign Diff = A ^ B;
    assign Borrow = ~A & B;

endmodule