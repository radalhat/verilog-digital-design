module and_gate_func(
	input a,b,
	output reg y
  );
function reg mux_2x1(input a,b,s);
  mux_2x1 =(~s&a)|(s&b);
endfunction

always @(*)begin 
	y=mux_2x1(1'b0,b,a);
end
endmodule
