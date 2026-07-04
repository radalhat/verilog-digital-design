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

/* MSB comparison */
assign g1 = A1 & ~B1;
assign l1 = ~A1 & B1;
assign e1 = ~(A1 ^ B1);

/* LSB comparison */
assign g0 = e1 & A0 & ~B0;
assign l0 = e1 & ~A0 & B0;
assign e0 = e1 & ~(A0 ^ B0);

/* final outputs */
assign AgtB = g1 | g0;
assign AltB = l1 | l0;
assign AeqB = e0;

endmodule