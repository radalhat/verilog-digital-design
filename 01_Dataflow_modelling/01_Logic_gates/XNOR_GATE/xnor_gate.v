//------------------------------
// 2-Input XNOR Gate
// Dataflow Modelling
//------------------------------

module xnor_gate(
    input A,
    input B,
    output Y
);

    // Dataflow assignment
    assign Y = ~(A ^ B);

endmodule