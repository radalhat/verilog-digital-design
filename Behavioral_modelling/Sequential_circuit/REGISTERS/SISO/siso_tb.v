module siso_tb();

reg clk,rst,si;
wire so;

siso dut(clk,rst,si,so);

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

initial begin
$monitor("clk=%b rst=%b si=%b so=%b",clk,rst,si,so);
$fsdbDumpfile("dump.fsdb");
$fsdbDumpvars(0,siso_tb);
end
endmodule
