`timescale 1ns / 1ps

interface fsm_counter_if (input logic clk);
    logic       rst_n;
    logic       enable;
    logic       seq_in;
    logic [3:0] count;
    logic       fsm_out;
endinterface

class transaction;
    rand logic       enable;
    rand logic       seq_in;
    
    constraint c_inputs {
        enable dist {1 := 80, 0 := 20};
        seq_in  dist {1 := 50, 0 := 50};
    }
endclass

module tb;
    logic clk;

    // Clock Generation: 10ns period (100 MHz)
    always #5 clk = ~clk;

    fsm_counter_if vif(clk);

    counter_fsm dut (
        .clk(clk),
        .rst_n(vif.rst_n),
        .enable(vif.enable),
        .seq_in(vif.seq_in),
        .count(vif.count),
        .fsm_out(vif.fsm_out)
    );

    // ---------------------------------------------------------
    // SystemVerilog Assertions (SVA) for Protocol Compliance
    // ---------------------------------------------------------
    // Check reset state after active clock edge with reset low
    property p_sync_reset;
        @(posedge clk) (!vif.rst_n) |=> (vif.count == 4'b0000);
    endproperty
    assert property (p_sync_reset) else $fatal(1, "[SVA FAIL] Counter failed to reset synchronously!");

    // Check that count is stable when enable is low (sampled correctly)
    property p_enable_hold;
        @(posedge clk) disable iff (!vif.rst_n)
        (!vif.enable) |=> ($stable(vif.count));
    endproperty
    assert property (p_enable_hold) else $fatal(1, "[SVA FAIL] Counter changed value while enable was low!");

    // ---------------------------------------------------------
    // Stimulus Generation (Driven safely away from clock edges)
    // ---------------------------------------------------------
    initial begin
        transaction tx;
        tx = new();

        // Initialize signals before clock starts
        clk        = 0;
        vif.rst_n  = 0;
        vif.enable = 0;
        vif.seq_in = 0;

        // Hold reset active across multiple clock edges
        #15;
        @(posedge clk);
        #1;
        vif.rst_n = 1;
        $display("[%0t] Reset released. Starting randomized verification suite...", $time);

        // Execute 120 randomized stimulus cycles with safe setup times
        repeat (120) begin
            @(posedge clk);
            #1; // Delay slightly past the active edge to prevent race conditions
            void'(tx.randomize());
            vif.enable = tx.enable;
            vif.seq_in = tx.seq_in;
        end

        #20;
        $display("[%0t] Test completed successfully with zero assertion violations.", $time);
        $finish;
    end

endmodule