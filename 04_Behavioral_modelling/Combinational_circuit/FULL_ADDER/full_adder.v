// Rahma A Dalhat — 05 July 2026 -full_adder
module full_adder(
    input A,
    input B,
    input Cin,
    output reg Sum,
    output reg Carry
);

always @(*) begin

    // Calculate sum and carry
    Sum   = A ^ B ^ Cin;
    Carry = (A & B) | (A & Cin) | (B & Cin);

end

endmodule