interface alu_if; 
 logic [7:0]a;
 logic [7:0]b;
 logic [7:0] result;

modport DUT(
input a,input b,output result
);
modport TB(
output a,output b,input result
);
endinterface
module alu(alu_if.DUT oo);
assign oo.result=oo.a +oo.b;
endmodule

module tb;
alu_if oo();
alu dut(oo);
initial begin
oo.a=4;
oo.b=1;
$display("result=%d",oo.result);
end
endmodule
