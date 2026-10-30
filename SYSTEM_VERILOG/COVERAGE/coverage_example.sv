module coverage_example;

  bit [1:0] addr;
  bit [1:0] data;

  covergroup cg;

    cp_addr: coverpoint addr {
      bins addr_0 = {0};
      bins addr_1 = {1};
      bins addr_2 = {2};
      bins addr_3 = {3};
    }

    cp_data: coverpoint data {
      bins low  = {[0:1]};
      bins high = {[2:3]};
    }

    cross_addr_data: cross cp_addr, cp_data;

  endgroup

  cg cov;

  initial begin
    cov = new();

    addr = 0; data = 0; #10;
    addr = 1; data = 1; #10;
    addr = 2; data = 2; #10;
    addr = 3; data = 3; #10;

    $display("Coverage = %0.2f%%", cov.get_coverage());
  end

endmodule
