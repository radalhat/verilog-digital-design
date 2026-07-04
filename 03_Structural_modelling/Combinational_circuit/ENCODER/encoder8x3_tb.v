module encoder_8x3_structural_tb;

reg D0, D1, D2, D3;
reg D4, D5, D6, D7;

wire Y0, Y1, Y2;

encoder_8x3 uut(
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .D4(D4),
    .D5(D5),
    .D6(D6),
    .D7(D7),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2)
);

initial
begin
    $monitor("Time=%0t D=%b%b%b%b%b%b%b%b Y=%b%b%b",
              $time,
              D7,D6,D5,D4,D3,D2,D1,D0,
              Y2,Y1,Y0);

    D0=1; D1=0; D2=0; D3=0; D4=0; D5=0; D6=0; D7=0;
    #2 D0=0; D1=1;
    #2 D1=0; D2=1;
    #2 D2=0; D3=1;
    #2 D3=0; D4=1;
    #2 D4=0; D5=1;
    #2 D5=0; D6=1;
    #2 D6=0; D7=1;

end

endmodule