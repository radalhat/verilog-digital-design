module queue_arr1;

  string cars[$] = {"tata", "suzuki", "toyota", "hyundai", "mahindra", "ford", "kia", "bmw"};

  initial
  begin
    $display("D1: total entries are %0d", cars.size());

    cars.insert(1, "ferrari");  // Inserts "ferrari" at index 1

    $display("D2: the entire queue is %0p", cars);

    cars.push_front("nissan");  // Adds to head

    $display("D3: the entries are %0p", cars);

    cars.push_back("mercedes"); // Adds to tail

    $display("D4: the entries are %0p", cars);

    cars.delete(0);            // Deletes element at index 0

    $display("D5: the entries are %0p", cars);

    cars.pop_front();          // Removes element from head

    $display("D6: the element is %0p", cars);

    cars.pop_back();           // Removes element from tail

    $display("D7: the element is %0p", cars);

    cars.pop_back();

    $display("D8: the element is %0p", cars);
  end
endmodule
