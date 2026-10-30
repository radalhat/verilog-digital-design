class pattern;

    rand int arr[5];

    constraint c1 {
        foreach (arr[i])
            arr[i] == 11 * (i + 1);
    }

endclass


module pattern3_test;

    pattern p;

    initial begin
        p = new();
        p.randomize();

        foreach (p.arr[i])
            $write("%0d ", p.arr[i]);
    end

endmodule
