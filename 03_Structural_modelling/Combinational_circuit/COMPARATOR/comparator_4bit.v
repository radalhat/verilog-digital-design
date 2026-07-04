module comparator_2bit(
    input A1, A0,
    input B1, B0,
    output AgtB,
    output AltB,
    output AeqB
);

wire g1, g0;
wire l1, l0;
wire e1, e0;

/* MSB */
assign g1 = A1 & ~B1;
assign l1 = ~A1 & B1;
assign e1 = ~(A1 ^ B1);

/* LSB */
assign g0 = e1 & A0 & ~B0;
assign l0 = e1 & ~A0 & B0;
assign e0 = e1 & ~(A0 ^ B0);

/* final outputs */
assign AgtB = g1 | g0;
assign AltB = l1 | l0;
assign AeqB = e0;

endmodule


module comparator_4bit(
    input A3, A2, A1, A0,
    input B3, B2, B1, B0,
    output AgtB,
    output AltB,
    output AeqB
);

wire gt_high, lt_high, eq_high;
wire gt_low, lt_low, eq_low;

/* upper 2 bits */
comparator_2bit U1(
    .A1(A3),
    .A0(A2),
    .B1(B3),
    .B0(B2),
    .AgtB(gt_high),
    .AltB(lt_high),
    .AeqB(eq_high)
);

/* lower 2 bits */
comparator_2bit U2(
    .A1(A1),
    .A0(A0),
    .B1(B1),
    .B0(B0),
    .AgtB(gt_low),
    .AltB(lt_low),
    .AeqB(eq_low)
);

/* final decision logic */
assign AgtB = gt_high | (eq_high & gt_low);
assign AltB = lt_high | (eq_high & lt_low);
assign AeqB = eq_high & eq_low;

endmodule