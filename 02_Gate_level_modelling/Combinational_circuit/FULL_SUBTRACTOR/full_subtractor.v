// Rahma A Dalhat — 05 July 2026 - Full Subtractor
module full_subtractor(A, B, Bin, D, Bout);
    input A, B, Bin;
    output D, Bout;

    wire notA, w1, not_w1, w2, w3;

    xor g0(w1, A, B);
    xor g1(D, w1, Bin);

    not g2(notA, A);
    and g3(w2, notA, B);
    
    not g4(not_w1, w1);
    and g5(w3, not_w1, Bin);
    
    or  g6(Bout, w2, w3);

endmodule