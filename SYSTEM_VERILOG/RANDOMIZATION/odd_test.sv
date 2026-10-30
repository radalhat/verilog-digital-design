class ONumbers;
rand int odd;
constraint odd_c{
	odd % 2!=0;
}
endclass

module odd_test;
	ONumbers ON;
initial begin
	ON=new();
	repeat(10)begin
	ON.randomize();
	$display("odd number=%d",ON.odd);
end
end
endmodule


