module demux_1x2(
    input D,
    input S,
    output Y0,
    output Y1
);

assign Y0 = D & (~S);
assign Y1 = D & S;

endmodule


module demux_1x8(
    input D,
    input S0,
    input S1,
    input S2,
    output Y0,
    output Y1,
    output Y2,
    output Y3,
    output Y4,
    output Y5,
    output Y6,
    output Y7
);

wire w0, w1;
wire w2, w3, w4, w5;

/* Stage 1 */
demux_1x2 U0(.D(D), .S(S2), .Y0(w0), .Y1(w1));

/* Stage 2 */
demux_1x2 U1(.D(w0), .S(S1), .Y0(w2), .Y1(w3));
demux_1x2 U2(.D(w1), .S(S1), .Y0(w4), .Y1(w5));

/* Stage 3 */
demux_1x2 U3(.D(w2), .S(S0), .Y0(Y0), .Y1(Y1));
demux_1x2 U4(.D(w3), .S(S0), .Y0(Y2), .Y1(Y3));
demux_1x2 U5(.D(w4), .S(S0), .Y0(Y4), .Y1(Y5));
demux_1x2 U6(.D(w5), .S(S0), .Y0(Y6), .Y1(Y7));

endmodule