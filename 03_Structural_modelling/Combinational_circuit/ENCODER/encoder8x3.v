module encoder_4x2(
    input D0,
    input D1,
    input D2,
    input D3,
    output Y0,
    output Y1
);

assign Y0 = D1 | D3;
assign Y1 = D2 | D3;

endmodule


module encoder_8x3(
    input D0,
    input D1,
    input D2,
    input D3,
    input D4,
    input D5,
    input D6,
    input D7,
    output Y0,
    output Y1,
    output Y2
);

wire L0, L1;
wire U0, U1;

encoder_4x2 E0(
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .Y0(L0),
    .Y1(L1)
);

encoder_4x2 E1(
    .D0(D4),
    .D1(D5),
    .D2(D6),
    .D3(D7),
    .Y0(U0),
    .Y1(U1)
);

assign Y2 = D4 | D5 | D6 | D7;
assign Y1 = (~Y2 & L1) | (Y2 & U1);
assign Y0 = (~Y2 & L0) | (Y2 & U0);

endmodule