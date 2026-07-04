// Rahma A Dalhat — 05 July 2026 -Full Adder
module full_adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

    // Output logic
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (Cin & (A ^ B));

endmodule