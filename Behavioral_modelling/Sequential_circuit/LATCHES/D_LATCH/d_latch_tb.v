module d_latch_tb();

reg d,en;
wire q;

d_latch dut(d,en,q);

initial
begin
    d=0; en=0;
    #10 en=1;
    #10 d=1;
    #10 d=0;
    #10 en=0;
    #10 d=1;
    #10 en=1;
    #10 $finish;
end

initial
$monitor("d=%b en=%b q=%b",d,en,q);
$fsdbDumpfile("dump.fsdb");
$fsdbDumpvars(0,d_latch_tb);
end

endmodule
