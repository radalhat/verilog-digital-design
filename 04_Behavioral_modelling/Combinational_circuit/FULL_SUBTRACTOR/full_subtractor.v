// Rahma A Dalhat — 05 July 2026 -full_subtractor
module full_subtractor(
    input A,
    input B,
    input Bin,
    output reg Difference,
    output reg Borrow
);

always @(*) begin

    // Calculate difference and borrow
    Difference = A ^ B ^ Bin;
    Borrow = ((~A) & B) | ((~A) & Bin) | (B & Bin);

end

endmodule