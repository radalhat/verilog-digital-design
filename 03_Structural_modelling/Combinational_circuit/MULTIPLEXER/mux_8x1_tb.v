module mux_8x1_structural_tb;

reg I0, I1, I2, I3, I4, I5, I6, I7;
reg S0, S1, S2;

wire Y;

mux_8x1 uut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .S0(S0),
    .S1(S1),
    .S2(S2),
    .Y(Y)
);

initial
begin
    $monitor("S2=%b S1=%b S0=%b Y=%b",
              S2, S1, S0, Y);

    I0=0; I1=1; I2=0; I3=1;
    I4=1; I5=0; I6=1; I7=0;

    S2=0; S1=0; S0=0;
    #2 S2=0; S1=0; S0=1;
    #2 S2=0; S1=1; S0=0;
    #2 S2=0; S1=1; S0=1;
    #2 S2=1; S1=0; S0=0;
    #2 S2=1; S1=0; S0=1;
    #2 S2=1; S1=1; S0=0;
    #2 S2=1; S1=1; S0=1;

end

endmodule