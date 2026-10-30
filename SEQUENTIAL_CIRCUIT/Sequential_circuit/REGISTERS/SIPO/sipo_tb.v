module sipo_tb();

reg clk,rst,si;
wire [3:0] po;

sipo dut(clk,rst,si,po);

initial
begin
    clk=0;
    forever #5 clk=~clk;
end

initial
begin
    rst=1;
    si=0;
    #10 rst=0;

    #10 si=1;
    #10 si=0;
    #10 si=1;
    #10 si=1;
    #20 $finish;
end

initial
$monitor("clk=%b rst=%b si=%b po=%b",clk,rst,si,po);
$fsdbDumpfile("dump.fsdb");
$fsdbDumpvars(0,sipo_tb);
end
endmodule
