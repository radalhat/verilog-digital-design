// Rahma A Dalhat — 05 July 2026 - Half Adder
module half_adder(A, B, S, C);
    input A, B;
    output S, C;

    xor g0(S, A, B);
    and g1(C, A, B);

endmodule