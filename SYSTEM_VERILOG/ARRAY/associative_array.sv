module associative_array;

    // Associative array with integer index and string value
    string arr1[int];

    // Associative array with string index and integer value
    int arr2[string];

    initial begin
       

        // Initialize array1
        arr1 = '{6:"bmw", 2:"audi", 7:"benz", 0:"tata"};

        $display("Array1 = %p", arr1);
        $display("Size = %0d", arr1.size());
        $display("Number of entries = %0d", arr1.num());

        $display("Index 0 exists = %0d", arr1.exists(0));
        $display("Index 3 exists = %0d", arr1.exists(3));

        // first()
        int i;
        if (arr1.first(i))
            $display("First index = %0d, Value = %s", i, arr1[i]);

        // last()
        if (arr1.last(i))
            $display("Last index = %0d, Value = %s", i, arr1[i]);

        // next()
        i = 2;
        if (arr1.next(i))
            $display("Next after 2 = %0d, Value = %s", i, arr1[i]);

        // prev()
        i = 7;
        if (arr1.prev(i))
            $display("Previous before 7 = %0d, Value = %s", i, arr1[i]);

        // Delete one element
        arr1.delete(0);
        $display("After deleting index 0 = %p", arr1);

        // Delete entire array
        arr1.delete();
        $display("After deleting all entries = %p", arr1);
    end

    initial begin

        // Initialize array2
        arr2 = '{"sun":20, "mon":30, "tues":40};

        $display("Array2 = %p", arr2);
        $display("Size = %0d", arr2.size());
        $display("Number of entries = %0d", arr2.num());

        $display("'sun' exists = %0d", arr2.exists("sun"));
        $display("'fri' exists = %0d", arr2.exists("fri"));

        // first()
        string day;

        if (arr2.first(day))
            $display("First key = %s, Value = %0d", day, arr2[day]);

        // last()
        if (arr2.last(day))
            $display("Last key = %s, Value = %0d", day, arr2[day]);

        // next()
        day = "mon";
        if (arr2.next(day))
            $display("Next after mon = %s, Value = %0d", day, arr2[day]);

        // prev()
        day = "tues";
        if (arr2.prev(day))
            $display("Previous before tues = %s, Value = %0d", day, arr2[day]);

        // Delete one entry
        arr2.delete("mon");
        $display("After deleting mon = %p", arr2);

        // Delete entire array
        arr2.delete();
        $display("After deleting all entries = %p", arr2);
    end

endmodule
