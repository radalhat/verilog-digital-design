class output_monitor;
  virtual and_if vif;
  mailbox #(transaction) mbx;

  function new(virtual and_if vif, mailbox #(transaction) mbx);
    this.vif = vif;
    this.mbx = mbx;
  endfunction

  task run();
    forever begin
      transaction tr;
      #5; // Sample output after DUT evaluation
      tr   = new();
      tr.y = vif.y;
      mbx.put(tr);
      $display("[OUTPUT MONITOR] Captured Output: Y=%0b", tr.y);
    end
  endtask
endclass
