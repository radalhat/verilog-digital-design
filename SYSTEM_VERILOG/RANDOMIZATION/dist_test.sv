class biit;
rand bit vals;
 constraint dist_c{
	vals dist{1:=70, 0:=30};
}
endclass
module dist_test;
biit b;
initial begin
	b= new();
	repeat(10) begin
	b.randomize();
	$display("vals=%d",b.vals);
end
end
endmodule
