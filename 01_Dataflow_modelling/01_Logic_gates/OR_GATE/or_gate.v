//------------------------------
// 2-Input OR Gate
// Dataflow Modelling
//------------------------------

module or_gate(
    input A,
    input B,
    output Y
);

    // Dataflow assignment
    assign Y = A | B;

endmodule