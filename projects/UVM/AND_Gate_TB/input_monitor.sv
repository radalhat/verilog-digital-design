class input_monitor;
  virtual and_if vif;
  mailbox #(transaction) mbx;

  function new(virtual and_if vif, mailbox #(transaction) mbx);
    this.vif = vif;
    this.mbx = mbx;
  endfunction

  task run();
    forever begin
      transaction tr;
      #5; // Sample after signal settles
      tr   = new();
      tr.a = vif.a;
      tr.b = vif.b;
      mbx.put(tr);
      $display("[INPUT MONITOR] Captured Inputs: A=%0b, B=%0b", tr.a, tr.b);
    end
  endtask
endclass
