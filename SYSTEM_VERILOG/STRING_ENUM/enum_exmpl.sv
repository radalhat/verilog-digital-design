module enum_exmpl;

enum{Maroon,Blue,Green,Purple,Peach,Yellow,Red}colors;

initial begin
$display("name=%0s, value=%0d", colors.first, colors.first);
$display("name=%0s, value=%0d", colors.last, colors.last);
$display("name=%0s, value=%0d", colors.prev, colors.prev);
$display("name=%0s, value=%0d", colors.next, colors.next);
$display("name=%0s, value=%0d", colors.prev(3), colors.prev(3));
$display("number of element of enum=%0d", colors.num, colors.num);

colors=Purple;
$display("currenet name of the pointer=%s", colors.name);
$display("name=%0s, value=%0d", colors.next(4), colors.next(4));
$display("name=%0s, value=%0d", colors.prev(7), colors.prev(7));
end
endmodule