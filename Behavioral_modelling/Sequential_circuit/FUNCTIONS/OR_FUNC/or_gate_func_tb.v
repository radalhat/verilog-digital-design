module or_gate_func_tb;
reg a,b;
wire y;

or_gate_func dut(a,b,y);

initial begin
 $monitor("A=%b B=%b Y=%b",a,b,y);
  a=0; b=0;
#2 a=0; b=1;
#2 a=1; b=0;
#2 a=1; b=1;
end
endmodule
