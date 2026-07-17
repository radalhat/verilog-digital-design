module pipo_tb();

reg clk,rst;
reg [3:0] pi;
wire [3:0] po;

pipo dut(clk,rst,pi,po);

initial
begin
    clk=0;
    forever #5 clk=~clk;
end

initial
begin
    rst=1;
    pi=4'b0000;
    #10 rst=0;

    #10 pi=4'b1100;
    #10 pi=4'b1010;
    #10 pi=4'b0111;
    #10 $finish;
end

initial begin
$monitor("clk=%b rst=%b pi=%b po=%b",clk,rst,pi,po);
$fsdbDumpfile("dump.fsdb");
$fsdbDumpvars(0,pipo_tb);
end
endmodule
