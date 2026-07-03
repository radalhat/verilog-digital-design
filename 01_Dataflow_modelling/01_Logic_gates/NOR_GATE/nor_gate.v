//------------------------------
// 2-Input NOR Gate
// Dataflow Modelling
//------------------------------

module nor_gate(
    input A,
    input B,
    output Y
);

    // Dataflow assignment
    assign Y = ~(A | B);

endmodule