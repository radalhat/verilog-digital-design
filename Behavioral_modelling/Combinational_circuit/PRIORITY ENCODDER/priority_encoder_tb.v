
module priority_encoder_tb;

reg  [3:0] d;
wire [1:0] y;
wire valid;

reg [1:0] expected_y;
reg expected_valid;
integer i;
integer errors;

priority_encoder dut (
    .d(d),
    .y(y),
    .valid(valid)
);

initial begin
    errors = 0;

    for (i = 0; i < 16; i = i + 1) begin
        d = i;
        #10;

        expected_valid = (d != 4'b0000);

        if (d[3])
            expected_y = 2'b11;
        else if (d[2])
            expected_y = 2'b10;
        else if (d[1])
            expected_y = 2'b01;
        else
            expected_y = 2'b00;

        if ((y !== expected_y) ||
            (valid !== expected_valid)) begin
            $display("FAIL: d=%b y=%b valid=%b expected_y=%b expected_valid=%b",
                     d, y, valid, expected_y, expected_valid);
            errors = errors + 1;
        end
        else begin
            $display("PASS: d=%b y=%b valid=%b", d, y, valid);
        end
    end

    if (errors == 0)
        $display("ALL TESTS PASSED");
    else
        $display("TESTS FAILED: %0d errors", errors);

    $finish;
end

initial begin
    $dumpfile("priority_encoder.vcd");
    $dumpvars(0, priority_encoder_tb);
end

endmodule

