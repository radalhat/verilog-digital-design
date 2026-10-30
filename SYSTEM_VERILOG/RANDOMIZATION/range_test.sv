class range_v;
rand bit[6:0] vals;
 constraint range_c{
	vals >=50;
	vals <=100;
}
endclass
module range_test;
 range_v rv;
initial begin
	rv=new();
	repeat(10)begin
	rv.randomize();
	$display("vals=%d",rv.vals);
end
end
endmodule

