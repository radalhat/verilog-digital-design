module dynamic_array_ex1;

  int arr[];

  initial begin

    // Allocate memory for 5 elements
    arr = new[5];

    // Store values
    arr[0] = 10;
    arr[1] = 20;
    arr[2] = 30;
    arr[3] = 40;
    arr[4] = 50;

    // Print the array
    $display("Array = %p", arr);

    // Print the size
    $display("Size = %0d", arr.size());

  end

endmodule
