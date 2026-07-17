module or_gate_func(
	input a,b,
	output y
);
function reg mux_2x1(input a,b,s);
 mux_2x1=(~s&a)|(s&b);
endfunction
always @(*)begin
 y= mux_2x1(b,1'b1,a);
end
endmodule
