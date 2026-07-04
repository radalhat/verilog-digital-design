// Rahma A Dalhat — 05 July 2026 - Half Subtractor
module half_subtractor(A, B, D, Bo);
    input A, B;
    output D, Bo;

    wire notA;

    // Difference logic
    xor g0(D, A, B);
    
    // Borrow logic
    not g1(notA, A);
    and g2(Bo, notA, B);

endmodule