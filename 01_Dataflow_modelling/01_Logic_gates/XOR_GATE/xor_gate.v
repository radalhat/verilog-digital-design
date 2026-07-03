//------------------------------
// 2-Input XOR Gate
// Dataflow Modelling
//------------------------------

module xor_gate(
    input A,
    input B,
    output Y
);

    // Dataflow assignment
    assign Y = A ^ B;

endmodule