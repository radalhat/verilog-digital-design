module not_gate_tb;

reg A;
wire Y;

// Instantiate DUT
not_gate dut(
    .A(A),
    .Y(Y)
);

initial begin
    $monitor("A=%b Y=%b",A,Y);

    A=0;
    #10 A=1;
end

endmodule