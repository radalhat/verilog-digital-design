class student;
 rand bit [3:0] age;
constraint age_range{
	age inside{[8:28]};
}
endclass
module test_constraint;
 student s;
initial begin
s=new();
s.randomize()
$display("age=%d",s.age);
end
endmodule
