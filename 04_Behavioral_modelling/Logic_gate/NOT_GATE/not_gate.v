// Rahma A Dalhat — 05 July 2026 -not_gate
module not_gate(
    input A,
    output reg Y
);

always @(*) begin
    Y = ~A;
end

endmodule