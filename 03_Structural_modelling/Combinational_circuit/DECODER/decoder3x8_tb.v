module decoder_3x8(
    input A,
    input B,
    input C,
    output Y0,
    output Y1,
    output Y2,
    output Y3,
    output Y4,
    output Y5,
    output Y6,
    output Y7
);

wire nC;

/* use MSB split */
assign nC = ~C;

/* lower block (C=0) */
wire y0_0, y1_0, y2_0, y3_0;
/* upper block (C=1) */
wire y0_1, y1_1, y2_1, y3_1;

decoder_2x4 D0(
    .A(A),
    .B(B),
    .Y0(y0_0),
    .Y1(y1_0),
    .Y2(y2_0),
    .Y3(y3_0)
);

decoder_2x4 D1(
    .A(A),
    .B(B),
    .Y0(y0_1),
    .Y1(y1_1),
    .Y2(y2_1),
    .Y3(y3_1)
);

/* enable selection */
assign Y0 = nC & y0_0;
assign Y1 = nC & y1_0;
assign Y2 = nC & y2_0;
assign Y3 = nC & y3_0;

assign Y4 = C & y0_1;
assign Y5 = C & y1_1;
assign Y6 = C & y2_1;
assign Y7 = C & y3_1;

endmodule