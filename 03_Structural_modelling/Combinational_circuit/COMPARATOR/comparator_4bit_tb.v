module comparator_4bit_tb;

reg A3, A2, A1, A0;
reg B3, B2, B1, B0;

wire AgtB, AltB, AeqB;

comparator_4bit uut(
    .A3(A3), .A2(A2), .A1(A1), .A0(A0),
    .B3(B3), .B2(B2), .B1(B1), .B0(B0),
    .AgtB(AgtB),
    .AltB(AltB),
    .AeqB(AeqB)
);

initial
begin
    $monitor(" A=%b%b%b%b B=%b%b%b%b | G=%b L=%b E=%b",
            
              A3,A2,A1,A0,
              B3,B2,B1,B0,
              AgtB, AltB, AeqB);

    A3=0;A2=0;A1=1;A0=1;
    B3=0;B2=0;B1=1;B0=0;

    #2 A3=0;A2=1;A1=0;A0=1;
    #2 B3=0;B2=1;B1=1;B0=0;

    #2 A3=1;A2=0;A1=0;A0=0;
    #2 B3=0;B2=1;B1=1;B0=1;

    #2 A3=1;A2=1;A1=1;A0=1;
    #2 B3=1;B2=1;B1=1;B0=0;

end

endmodule