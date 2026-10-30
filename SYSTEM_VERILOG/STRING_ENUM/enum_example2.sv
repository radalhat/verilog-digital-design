module enum_example2;
 
	enum{IDLE,READ,WRITE,DONE}state;
initial begin
	state=READ;
	$display("value=%d ",state);
	$display("name=%s,",state.name());
end


endmodule
