module tb_counter_4bit;
    reg clk;
    reg rst_n;
    reg enable;
    wire [3:0] count;

    // Instantiate the Unit Under Test (UUT)
    counter_4bit uut (
        .clk(clk),
        .rst_n(rst_n),
        .enable(enable),
        .count(count)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        rst_n = 0;
        enable = 0;

        // Apply reset
        #12;
        rst_n = 1;
        enable = 1;

        // Run simulation for enough cycles to see rollover
        #100;
        
        // Disable counting momentarily
        enable = 0;
        #20;
        enable = 1;
        #40;

        $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time=%0t | rst_n=%b | enable=%b | count=%0d", $time, rst_n, enable, count);
    end
    initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_counter_4bit);
end

endmodule