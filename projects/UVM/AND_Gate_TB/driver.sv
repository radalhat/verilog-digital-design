class driver;
  virtual and_if vif;
  mailbox #(transaction) mbx;

  function new(virtual and_if vif, mailbox #(transaction) mbx);
    this.vif = vif;
    this.mbx = mbx;
  endfunction

  task run();
    forever begin
      transaction tr;
      mbx.get(tr);
      vif.a <= tr.a;
      vif.b <= tr.b;
      #5; // Propagation delay
      tr.display("DRIVER");
    end
  endtask
endclass
