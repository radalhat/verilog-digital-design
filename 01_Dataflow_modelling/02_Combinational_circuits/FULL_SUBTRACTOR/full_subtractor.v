// Rahma A Dalhat — 05 July 2026 -Full Subtractor
module full_subtractor(
    input A,
    input B,
    input Bin,
    output Diff,
    output Bout
);

    // Output logic
    assign Diff = A ^ B ^ Bin;
    assign Bout = (~A & B) | (~(A ^ B) & Bin);

endmodule