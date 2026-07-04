// Rahma A Dalhat — 05 July 2026 -demux_1x8
module demux_1x8_tb;

reg D;
reg S0, S1, S2;

wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

demux_1x8 uut(
    .D(D),
    .S0(S0),
    .S1(S1),
    .S2(S2),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
);

initial
begin
    $monitor("T=%0t D=%b S2S1S0=%b%b%b | Y=%b%b%b%b%b%b%b%b",
              $time, D, S2, S1, S0,
              Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0);

    D = 1;

    S2=0; S1=0; S0=0;
    #2 S0=1;

    #2 S0=0; S1=1;
    #2 S0=1;

    #2 S1=0; S2=1;
    #2 S0=1;

    #2 S0=0; S1=1;
    #2 S0=1;

end

endmodule