module coverage_ex;

  bit [1:0] addr;

  covergroup cg;
    cp_addr: coverpoint addr;
  endgroup

  cg cov;

  initial begin
    cov = new();

    addr = 0;
    #10;
    addr = 1;
    #10;
    addr = 2;
    #10;
    addr = 3;
    #10;

    $display("Coverage = %0.2f%%", cov.get_coverage());
  end

endmodule
