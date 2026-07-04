module mux_4x1_structural_tb;

reg I0, I1, I2, I3;
reg S0, S1;

wire Y;

mux_4x1 uut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S0(S0),
    .S1(S1),
    .Y(Y)
);

initial
begin
    $monitor("Time=%0t I0=%b I1=%b I2=%b I3=%b S1=%b S0=%b Y=%b",
             $time, I0, I1, I2, I3, S1, S0, Y);

    I0=0; I1=1; I2=0; I3=1; S1=0; S0=0;
    #2 S1=0; S0=1;
    #2 S1=1; S0=0;
    #2 S1=1; S0=1;
    #2 I0=1; I1=0; I2=1; I3=0; S1=0; S0=0;
    #2 S1=0; S0=1;
    #2 S1=1; S0=0;
    #2 S1=1; S0=1;

end

endmodule