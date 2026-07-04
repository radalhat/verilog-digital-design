// Rahma A Dalhat — 05 July 2026 -mux_8x1
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

mux_2x1 M0(.I0(I0), .I1(I1), .S(S0), .Y(W0));
mux_2x1 M1(.I0(I2), .I1(I3), .S(S0), .Y(W1));
mux_2x1 M2(.I0(W0), .I1(W1), .S(S1), .Y(Y));

endmodule


module mux_8x1(
    input I0,
    input I1,
    input I2,
    input I3,
    input I4,
    input I5,
    input I6,
    input I7,
    input S0,
    input S1,
    input S2,
    output Y
);

wire W0, W1;

mux_4x1 M3(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S0(S0),
    .S1(S1),
    .Y(W0)
);

mux_4x1 M4(
    .I0(I4),
    .I1(I5),
    .I2(I6),
    .I3(I7),
    .S0(S0),
    .S1(S1),
    .Y(W1)
);

mux_2x1 M5(
    .I0(W0),
    .I1(W1),
    .S(S2),
    .Y(Y)
);

endmodule