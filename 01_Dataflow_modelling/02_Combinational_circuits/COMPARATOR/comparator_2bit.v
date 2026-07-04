// Rahma A Dalhat — 05 July 2026 - 2-Bit Comparator


module comparator_2bit(
    input [1:0] A,
    input [1:0] B,
    output GT,
    output LT,
    output EQ
);

assign GT = (A > B);
assign LT = (A < B);
assign EQ = (A == B);

endmodule