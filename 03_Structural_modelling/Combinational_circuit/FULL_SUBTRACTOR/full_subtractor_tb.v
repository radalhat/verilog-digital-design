module full_subtractor_tb;

reg A;
reg B;
reg Bin;

wire D;
wire Bout;

full_subtractor uut(
    .A(A),
    .B(B),
    .Bin(Bin),
    .D(D),
    .Bout(Bout)
);

initial
begin
    $monitor("Time=%0t A=%b B=%b Bin=%b D=%b Bout=%b",
              $time, A, B, Bin, D, Bout);

    A=0; B=0; Bin=0;
    #2 A=0; B=0; Bin=1;
    #2 A=0; B=1; Bin=0;
    #2 A=0; B=1; Bin=1;
    #2 A=1; B=0; Bin=0;
    #2 A=1; B=0; Bin=1;
    #2 A=1; B=1; Bin=0;
    #2 A=1; B=1; Bin=1;

end

endmodule