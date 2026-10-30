class employee;
rand bit[5:0] age;
 constraint age_range{
	age inside{[20:40]};
}
endclass
module cons_test;
	employee e;
initial begin
	e=new();
	e.randomize();
	$display("age=%d",e.age);
end
endmodule

	
