// Rahma A Dalhat — 05 July 2026 -mux2x1
module mux2x1(
    input I0,
    input I1,
    input S,
    output reg Y
);

always @(*) begin
    case (S)
        1'b0: Y = I0;
        1'b1: Y = I1;
    endcase
end

endmodule