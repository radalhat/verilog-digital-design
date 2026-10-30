class scoreboard;
  mailbox #(transaction) in_mbx;
  mailbox #(transaction) out_mbx;

  function new(mailbox #(transaction) in_mbx,
               mailbox #(transaction) out_mbx);
    this.in_mbx  = in_mbx;
    this.out_mbx = out_mbx;
  endfunction

  task run();
    forever begin
      transaction in_tr, out_tr;
      logic expected;

      in_mbx.get(in_tr);
      out_mbx.get(out_tr);

      expected = in_tr.a & in_tr.b;

      if (out_tr.y === expected) begin
        $display("[SCOREBOARD PASS] Inputs: A=%0b B=%0b | Expected Y=%0b, Got Y=%0b",
                 in_tr.a, in_tr.b, expected, out_tr.y);
      end
      else begin
        $error("[SCOREBOARD FAIL] Inputs: A=%0b B=%0b | Expected Y=%0b, Got Y=%0b",
               in_tr.a, in_tr.b, expected, out_tr.y);
      end
    end
  endtask

endclass
