class numbers;
    rand int even;

    constraint even_c {
        even % 2 == 0;
    }
endclass

module even_test;
    numbers n;
initial begin
  n = new();

    repeat(10) begin
              n.randomize();
        $display("Even Number = %d", n.even);
    end
end
endmodule
