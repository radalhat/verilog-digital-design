module full_adder_func_tb;
reg A,B,Cin;
wire sum,carry;

full_adder_func dut(A,B,Cin,sum,carry);

initial begin
$monitor("A=%b B=%b Cin=%b Sum=%b Carry=%b",A,B,Cin,sum,carry);
repeat(10) begin
{A,B,Cin}=$random; #2;
end
end
endmodule

