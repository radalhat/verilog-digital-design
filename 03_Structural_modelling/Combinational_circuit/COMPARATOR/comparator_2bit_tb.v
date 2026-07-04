module comparator_2bit_tb;

reg A1, A0;
reg B1, B0;

wire AgtB, AltB, AeqB;

comparator_2bit uut(
    .A1(A1),
    .A0(A0),
    .B1(B1),
    .B0(B0),
    .AgtB(AgtB),
    .AltB(AltB),
    .AeqB(AeqB)
);

initial
begin
    $monitor("A=%b%b B=%b%b | G=%b L=%b E=%b",
            
              A1,A0,
              B1,B0,
              AgtB, AltB, AeqB);

    A1=0;A0=0; B1=0;B0=0;
    #2 A0=1;
    #2 B0=1;
    #2 A1=1;A0=0;
    #2 B1=1;B0=1;
    #2 A1=1;A0=1;
    #2 B1=0;B0=1;

end

endmodule