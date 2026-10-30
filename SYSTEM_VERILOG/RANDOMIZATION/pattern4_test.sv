class pattern;

    rand int arr[3];

    constraint c1 {
        arr[0] == 1221;
        arr[1] == 1221;
        arr[2] == 1221;
    }

endclass


module pattern4_test;

    pattern p;

    initial begin
        p = new();
        p.randomize();

        foreach (p.arr[i])
            $write("%0d ", p.arr[i]);
    end

endmodule
