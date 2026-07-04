// Rahma A Dalhat — 05 July 2026 -comparator1bit


module comparator1bit(A, B, A_gt_B, A_lt_B, A_eq_B);
    input A, B;
    output A_gt_B, A_lt_B, A_eq_B;

    wire notA, notB;

    not g0(notA, A);
    not g1(notB, B);

    // A > B if A is 1 and B is 0
    and g2(A_gt_B, A, notB);

    // A < B if A is 0 and B is 1
    and g3(A_lt_B, notA, B);

    // A = B if both are identical (XNOR logic)
    xnor g4(A_eq_B, A, B);

endmodule