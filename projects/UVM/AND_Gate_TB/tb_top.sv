module tb_top;
  and_if intf();

  and_gate dut (
    .a(intf.a),
    .b(intf.b),
    .y(intf.y)
  );

  test t1(intf);

  initial begin
    $dumpfile("and_gate.vcd");
    $dumpvars(0, tb_top);
  end
endmodule
