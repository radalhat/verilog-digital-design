module dynamic_array;

int arr1[];
int arr2[];
int arr3[];

initial
begin
    arr1 = '{12,16,20,24,28};
    $display("Size of arr1 = %0d", arr1.size());

    arr2 = arr1;
    $display("arr2 = %p", arr2);

    arr2[1] = 32;
    $display("arr2 = %p", arr2);

    arr1[0] = 36;
    $display("arr1 = %p", arr1);
    $display("arr2 = %p", arr2);

    arr2 = new[10](arr2);
    $display("Size of arr2 = %0d", arr2.size());

    arr2 = new[15];
    $display("Size of arr2 = %0d", arr2.size());

    arr2 = '{2,4,6,8,10};
    $display("Elements are %p", arr2);

    $display("arr1 = %p", arr1);

    arr1.delete();
    $display("arr1 after delete = %p", arr1);
    $display("Size of arr1 = %0d", arr1.size());
end

initial
begin
    arr1 = arr2;
    $display("arr1 = %p", arr1);

    arr1 = new[15](arr1);
    $display("arr1 after resize = %p", arr1);

    // arr1.reverse();

    arr3 = arr1;
    $display("arr3 = %p", arr3);
end

endmodule
