// Rahma A Dalhat — 05 July 2026 -4x1 Multiplexer
module mux4x1(
    input I0,
    input I1,
    input I2,
    input I3,
    input [1:0] S,
    output Y
);

    // Output logic
    assign Y = (S == 2'b00) ? I0 :
               (S == 2'b01) ? I1 :
               (S == 2'b10) ? I2 :
                              I3;

endmodule