module string_method;

    string S = "System Verilog";
    string tmp;

    initial begin

        // Print length of the string
        $display("Len = %0d", S.len());

        // Assign S to tmp and replace character at index 3 with 'J'
        tmp = S;
        tmp.putc(3, "J");
        $display("tmp.putc(3,'k') = %s", tmp);

        // Get the character at index 5
        $display("Getc = %s", S.getc(5));

// Get the chracters to upper case
$display("toupper =%0d",S.toupper());

// Get the chracters to lower case
$display("tolower =%0d",S.lower());


        // Compare the string with itself
        $display("Comparison = %0d", S.compare(S));

    end

endmodule
