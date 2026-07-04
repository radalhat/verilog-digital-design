module mux_2x1(
    input I0,
    input I1,
    input S,
    output Y
);

assign Y = S ? I1 : I0;

endmodule


module mux_4x1(
    input I0,
    input I1,
    input I2,
    input I3,
    input S0,
    input S1,
    output Y
);

wire W0, W1;

mux_2x1 M0(
    .I0(I0),
    .I1(I1),
    .S(S0),
    .Y(W0)
);

mux_2x1 M1(
    .I0(I2),
    .I1(I3),
    .S(S0),
    .Y(W1)
);

mux_2x1 M2(
    .I0(W0),
    .I1(W1),
    .S(S1),
    .Y(Y)
);

endmodule