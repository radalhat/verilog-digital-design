class parent;
	function void display();
	$display("i am a parent");


endfunction
endclass
class child extends parent;
	function void display();
	$display("i am a child");


endfunction
endclass
module casting;
 parent p;
 child c;
initial begin
 c=new();
p=c;
 $cast(c,p);
 p.display();
end
endmodule

