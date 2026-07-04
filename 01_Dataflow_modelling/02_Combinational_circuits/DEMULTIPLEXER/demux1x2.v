// Rahma A Dalhat — 05 July 2026 - 1x2 Demultiplexer
module demux1x2(
    input I,
    input S,
    output Y0,
    output Y1
);

    // Output logic
    assign Y0 = ~S & I;
    assign Y1 =  S & I;

endmodule