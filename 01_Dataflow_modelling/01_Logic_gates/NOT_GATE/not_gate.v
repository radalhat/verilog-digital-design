//------------------------------
// NOT Gate
// Dataflow Modelling
//------------------------------

module not_gate(
    input A,
    output Y
);

    // Dataflow assignment
    assign Y = ~A;

endmodule