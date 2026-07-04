// Rahma A Dalhat — 05 July 2026 - 4x2 Encoder (Gate-Level)
module encoder4x2(
    input I0,
    input I1,
    input I2,
    input I3,
    output Y0,
    output Y1
);

    // Generate encoded outputs
    or (Y0, I1, I3);
    or (Y1, I2, I3);

endmodule