//------------------------------
// 2-Input NAND Gate
// Dataflow Modelling
//------------------------------

module nand_gate(
    input A,
    input B,
    output Y
);

    // Dataflow assignment
    assign Y = ~(A & B);

endmodule