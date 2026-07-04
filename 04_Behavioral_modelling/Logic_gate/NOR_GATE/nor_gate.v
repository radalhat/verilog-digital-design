// Rahma A Dalhat — 05 July 2026 -nor_gate
module nor_gate(
    input A,
    input B,
    output reg Y
);

always @(*) begin
    Y = ~(A | B);
end

endmodule