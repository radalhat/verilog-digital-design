class transaction;
  rand logic a;
  rand logic b;
       logic y;

  function void display(string name);
    $display("[%s] A=%0b, B=%0b | Y=%0b", name, a, b, y);
  endfunction
endclass
