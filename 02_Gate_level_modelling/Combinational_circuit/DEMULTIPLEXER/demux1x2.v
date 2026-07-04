// Rahma A Dalhat — 05 July 2026 - 1x2 Demultiplexer (Gate-Level)


module demux1x2(
    input D,
    input S,
    output Y0,
    output Y1
);

wire nS;

// Generate complement of select line
not (nS, S);

// Route data to the selected output
and (Y0, D, nS);
and (Y1, D, S);

endmodule