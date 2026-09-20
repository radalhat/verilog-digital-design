module nor_gate_tb;

reg A;
reg B;
wire Y;

// Module instantiation
nor_gate uut (
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin

    $monitor(" | A=%b | B=%b | Y=%b",
               A, B, Y);

    A = 0; B = 0;
    #2;

    A = 0; B = 1;
    #2;

    A = 1; B = 0;
    #2;

    A = 1; B = 1;
    #2;

end

endmodule