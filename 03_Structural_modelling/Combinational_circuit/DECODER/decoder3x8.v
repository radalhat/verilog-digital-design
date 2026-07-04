// Rahma A Dalhat — 05 July 2026 — 3x8 Decoder (Structural)
module decoder2x4(
    input A,
    input B,
    input En,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

assign Y0 = En & ~A & ~B;
assign Y1 = En & ~A &  B;
assign Y2 = En &  A & ~B;
assign Y3 = En &  A &  B;

endmodule
// 3x8 Decoder Module (Built Using Two 2x4 Decoders)
module decoder3x8(
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

wire En0, En1;

// Enable signals
assign En0 = ~A;
assign En1 = A;

// First 2x4 Decoder
decoder2x4 D0(
    .A(B),
    .B(C),
    .En(En0),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

// Second 2x4 Decoder
decoder2x4 D1(
    .A(B),
    .B(C),
    .En(En1),
    .Y0(Y4),
    .Y1(Y5),
    .Y2(Y6),
    .Y3(Y7)
);

endmodule