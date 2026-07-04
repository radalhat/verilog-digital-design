module decoder_3x8_tb;

reg A, B, C;
wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

decoder_3x8 uut(
    .A(A),
    .B(B),
    .C(C),
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
    $monitor("A=%b B=%b C=%b | Y=%b%b%b%b%b%b%b%b",
               A, B, C,
              Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0);

    A=0; B=0; C=0;
    #2 C=1;
    #2 B=1; C=0;
    #2 C=1;
    #2 A=1; B=0; C=0;
    #2 C=1;
    #2 B=1; C=0;
    #2 C=1;

end

endmodule