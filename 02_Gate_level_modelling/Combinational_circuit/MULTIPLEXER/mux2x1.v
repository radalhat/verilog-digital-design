// Rahma A Dalhat — 05 July 2026 - 2x1 Multiplexer (Gate-Level)
module mux2x1(
    input I0,
    input I1,
    input S,
    output Y
);

wire nS;
wire w1;
wire w2;

// Generate complement of select line
not (nS, S);

// Select input
and (w1, I0, nS);
and (w2, I1, S);

// Produce output
or (Y, w1, w2);

endmodule