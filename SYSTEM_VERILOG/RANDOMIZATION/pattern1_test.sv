class pattern_1;
	rand bit arr[8] ;
	constraint cons_p{
	foreach(arr[i]){
             arr[i]==(i % 2);
}
}

endclass
module pattern1_test;
 pattern_1 p1;
initial begin
	p1=new();
	repeat(10) begin
	p1.randomize();
	$display("array=%p",p1.arr);
end
end
endmodule
	
