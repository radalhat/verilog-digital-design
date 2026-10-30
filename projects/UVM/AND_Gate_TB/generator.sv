class generator;
  transaction tr;
  mailbox #(transaction) mbx;
  event done;
  int count;

  function new(mailbox #(transaction) mbx);
    this.mbx = mbx;
  endfunction

  task run();
    repeat (count) begin
      tr = new();
      if (!tr.randomize()) $error("Randomization failed!");
      mbx.put(tr);
      tr.display("GENERATOR");
    end
    -> done;
  endtask
endclass
