module fixed_arrayex1;
  bit [7:0] arr[5];
 initial begin
 	arr='{10,20,30,40,50};
	for(int i=0;i<5;i++)
	$display("element[%0d]=%0d",i,arr[i]);
end
endmodule
	
