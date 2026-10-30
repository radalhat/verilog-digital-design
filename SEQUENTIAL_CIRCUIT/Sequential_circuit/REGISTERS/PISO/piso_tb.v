module piso_tb();

reg clk,rst,mode;
reg [3:0] pi;
wire so;

piso dut(clk,rst,pi,mode,so);

initial
begin
    clk=0;
    forever #5 clk=~clk;
end

initial
begin
    rst=1;
    mode=0;
    pi=4'b1101;

    #10 rst=0;

    #10 mode=1;

    #40 $finish;
end

initial begin
$monitor("clk=%b rst=%b mode=%b pi=%b so=%b",clk,rst,mode,pi,so);
$fsdbDumpfile("dump.fsdb");
$fsdbDumpvars(0,piso_tb);
end
endmodule
