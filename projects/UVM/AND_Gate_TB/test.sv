import and_pkg::*;

program test(and_if vif);
  environment env;

  initial begin
    env = new(vif);
    env.gen.count = 10;
    env.run();
  end
endprogram
