// Rahma A Dalhat — 05 July 2026 -decoder2x4

module decoder2x4(
    input [1:0] A,
    output reg Y0,
    output reg Y1,
    output reg Y2,
    output reg Y3
);

always @(*) begin

    // Activate one output based on the input
    Y0 = 1'b0;
    Y1 = 1'b0;
    Y2 = 1'b0;
    Y3 = 1'b0;

    case(A)
        2'b00: Y0 = 1'b1;
        2'b01: Y1 = 1'b1;
        2'b10: Y2 = 1'b1;
        2'b11: Y3 = 1'b1;
        default: begin
            Y0 = 1'b0;
            Y1 = 1'b0;
            Y2 = 1'b0;
            Y3 = 1'b0;
        end
    endcase

end

endmodule