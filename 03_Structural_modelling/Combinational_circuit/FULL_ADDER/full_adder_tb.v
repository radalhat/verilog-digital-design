module full_adder_tb;

reg A;
reg B;
reg Cin;

wire Sum;
wire Cout;

full_adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial
begin
    $monitor("Time=%0t A=%b B=%b Cin=%b Sum=%b Cout=%b",
              $time, A, B, Cin, Sum, Cout);

    A=0; B=0; Cin=0;
    #2 A=0; B=0; Cin=1;
    #2 A=0; B=1; Cin=0;
    #2 A=0; B=1; Cin=1;
    #2 A=1; B=0; Cin=0;
    #2 A=1; B=0; Cin=1;
    #2 A=1; B=1; Cin=0;
    #2 A=1; B=1; Cin=1;

end

endmodule