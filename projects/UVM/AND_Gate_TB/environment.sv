class environment;
  generator      gen;
  driver         drv;
  input_monitor  in_mon;
  output_monitor out_mon;
  scoreboard     scb;

  mailbox #(transaction) gen2drv_mbx;
  mailbox #(transaction) in2scb_mbx;
  mailbox #(transaction) out2scb_mbx;

  virtual and_if vif;

  function new(virtual and_if vif);
    this.vif    = vif;
    gen2drv_mbx = new();
    in2scb_mbx  = new();
    out2scb_mbx = new();

    gen    = new(gen2drv_mbx);
    drv    = new(vif, gen2drv_mbx);
    in_mon = new(vif, in2scb_mbx);
    out_mon= new(vif, out2scb_mbx);
    scb    = new(in2scb_mbx, out2scb_mbx);
  endfunction

  task test();
    fork
      gen.run();
      drv.run();
      in_mon.run();
      out_mon.run();
      scb.run();
    join_any
  endtask

  task post_test();
    wait(gen.done.triggered);
    #10;
    $finish;
  endtask

  task run();
    test();
    post_test();
  endtask
endclass
