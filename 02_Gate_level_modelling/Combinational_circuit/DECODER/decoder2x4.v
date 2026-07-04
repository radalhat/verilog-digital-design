// Rahma A Dalhat — 05 July 2026 - 2x4 Decoder

module decoder2x4(A, B, EN, Y0, Y1, Y2, Y3);
    input A, B, EN;
    output Y0, Y1, Y2, Y3;
    
    wire notA, notB;

    not g0(notA, A);
    not g1(notB, B);

    and g2(Y0, notA, notB, EN);
    and g3(Y1, notA, B, EN);
    and g4(Y2, A, notB, EN);
    and g5(Y3, A, B, EN);

endmodule