// Rahma A Dalhat — 05 July 2026 - 2-Bit Magnitude Comparator

module comparator2bit(A1, A0, B1, B0, A_gt_B, A_lt_B, A_eq_B);
    input A1, A0, B1, B0;
    output A_gt_B, A_lt_B, A_eq_B;

    wire notA1, notA0, notB1, notB0;
    wire x1, x0;
    wire w1, w2, w3, w4;

    // Invert inputs
    not g0(notA1, A1);
    not g1(notA0, A0);
    not g2(notB1, B1);
    not g3(notB0, B0);

    // Bit-level equality conditions (XNOR)
    xnor g4(x1, A1, B1);
    xnor g5(x0, A0, B0);

    // Equality output logic
    and g6(A_eq_B, x1, x0);

    // Greater Than output logic
    and g7(w1, A1, notB1);
    and g8(w2, x1, A0, notB0);
    or  g9(A_gt_B, w1, w2);

    // Less Than output logic
    and g10(w3, notA1, B1);
    and g11(w4, x1, notA0, B0);
    or  g12(A_lt_B, w3, w4);

endmodule