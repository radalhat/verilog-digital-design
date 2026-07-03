//------------------------------
// 2-Input AND Gate
// Dataflow Modelling
//------------------------------

module and_gate(
    input A,
    input B,
    output Y
);

    // Dataflow assignment
    assign Y = A & B;

endmodule