// Rahma A Dalhat — 05 July 2026 -2x4 Decoder


module decoder2x4(
    input A,
    input B,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

    // Output Y0 is HIGH when AB = 00
    assign Y0 = ~A & ~B;

    // Output Y1 is HIGH when AB = 01
    assign Y1 = ~A & B;

    // Output Y2 is HIGH when AB = 10
    assign Y2 = A & ~B;

    // Output Y3 is HIGH when AB = 11
    assign Y3 = A & B;

endmodule