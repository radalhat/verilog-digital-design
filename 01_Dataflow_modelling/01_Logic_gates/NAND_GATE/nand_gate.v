// Rahma A Dalhat — 05 July 2026 -NAND Gate

module nand_gate(
    input A,
    input B,
    output Y
);

    // Dataflow assignment
    assign Y = ~(A & B);

endmodule