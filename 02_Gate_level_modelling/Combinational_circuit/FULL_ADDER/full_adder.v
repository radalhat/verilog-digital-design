// Rahma A Dalhat — 05 July 2026 - Full Adder
module full_adder(A, B, Cin, S, Cout);
    input A, B, Cin;
    output S, Cout;

    wire w1, w2, w3;

    // Sum logic
    xor g0(w1, A, B);
    xor g1(S, w1, Cin);

    // Carry logic
    and g2(w2, w1, Cin);
    and g3(w3, A, B);
    or  g4(Cout, w2, w3);

endmodule