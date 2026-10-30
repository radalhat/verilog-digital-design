class pattern;

    rand int arr[4];

    constraint c1 {
        foreach (arr[i])
            arr[i] == 2 * (i + 1);
    }

endclass


module pattern2_test;

    pattern p;

    initial begin
        p = new();
        p.randomize();

        foreach (p.arr[i])
            $write("%0d ", p.arr[i]);
    end

endmodule
