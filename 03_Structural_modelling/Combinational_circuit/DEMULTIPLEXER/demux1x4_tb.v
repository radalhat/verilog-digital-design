module demux_1x4_tb;

reg D;
reg S0, S1;

wire Y0, Y1, Y2, Y3;

demux_1x4 uut(
    .D(D),
    .S0(S0),
    .S1(S1),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial
begin
    $monitor("Time=%0t D=%b S1S0=%b%b | Y=%b%b%b%b",
              $time, D, S1, S0, Y3, Y2, Y1, Y0);

    D = 1;

    S1=0; S0=0;
    #2 S0=1;
    #2 S1=1; S0=0;
    #2 S0=1;

end

endmodule