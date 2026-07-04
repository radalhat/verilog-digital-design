module demux_1x2(
    input D,
    input S,
    output Y0,
    output Y1
);

assign Y0 = (~S) & D;
assign Y1 = S & D;

endmodule


module demux_1x4(
    input D,
    input S0,
    input S1,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

wire W0, W1;

/* Stage 1: Split input using MSB select */
demux_1x2 U0(
    .D(D),
    .S(S1),
    .Y0(W0),
    .Y1(W1)
);

/* Stage 2: Final routing using LSB select */
demux_1x2 U1(
    .D(W0),
    .S(S0),
    .Y0(Y0),
    .Y1(Y1)
);

demux_1x2 U2(
    .D(W1),
    .S(S0),
    .Y0(Y2),
    .Y1(Y3)
);

endmodule