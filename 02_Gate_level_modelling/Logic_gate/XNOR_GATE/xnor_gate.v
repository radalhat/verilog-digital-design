// Rahma A Dalhat — 05 July 2026 - XNOR Gate (Gate-Level)
module xnor_gate(
    input A,
    input B,
    output Y
);

    // Implement XNOR operation
    xnor (Y, A, B);

endmodule//========================================
// Author : Rahma A. Dalhat
// Testbench : XNOR Gate
//========================================

module xnor_gate_tb;

reg A;
reg B;
wire Y;

xnor_gate uut(
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin

    // Monitor input and output changes
    $monitor("A=%b B=%b Y=%b",
             A, B, Y);

    // Apply test vectors
    A=0; B=0; #2;
    A=0; B=1; #2;
    A=1; B=0; #2;
    A=1; B=1; #2;

end

endmodule