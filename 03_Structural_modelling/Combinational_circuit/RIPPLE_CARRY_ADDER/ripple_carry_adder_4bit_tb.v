module ripple_carry_adder_4bit_tb;

reg A0, A1, A2, A3;
reg B0, B1, B2, B3;
reg Cin;

wire S0, S1, S2, S3;
wire Cout;

ripple_carry_adder_4bit uut (
    .A0(A0),
    .A1(A1),
    .A2(A2),
    .A3(A3),
    .B0(B0),
    .B1(B1),
    .B2(B2),
    .B3(B3),
    .Cin(Cin),
    .S0(S0),
    .S1(S1),
    .S2(S2),
    .S3(S3),
    .Cout(Cout)
);

initial
begin
    $monitor("Time=%0t | A=%b%b%b%b | B=%b%b%b%b | Cin=%b | Sum=%b%b%b%b | Cout=%b",
              $time,
              A3, A2, A1, A0,
              B3, B2, B1, B0,
              Cin,
              S3, S2, S1, S0,
              Cout);

    A3=0; A2=0; A1=0; A0=0;
    B3=0; B2=0; B1=0; B0=0;
    Cin=0;

    #2 A3=0; A2=0; A1=1; A0=1;
       B3=0; B2=0; B1=0; B0=1;
       Cin=0;

    #2 A3=0; A2=1; A1=0; A0=1;
       B3=0; B2=0; B1=1; B0=1;
       Cin=0;

    #2 A3=1; A2=0; A1=1; A0=0;
       B3=0; B2=1; B1=0; B0=1;
       Cin=1;

    #2 A3=1; A2=1; A1=1; A0=1;
       B3=1; B2=1; B1=1; B0=1;
       Cin=0;

    #2 A3=1; A2=0; A1=0; A0=1;
       B3=0; B2=1; B1=1; B0=0;
       Cin=1;

end

endmodule