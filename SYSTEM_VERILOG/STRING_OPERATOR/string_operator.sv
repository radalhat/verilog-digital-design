module string_operator;

    string EXLSV  = "EXCLUSIVE";
    string PRM = "Premium";

    initial begin

        // String Equality Check
        if (EXLSV == PRM)
            $display("EXLSV=%s is equal to PRM=%s", EXLSV, PRM);

        if (EXLSV != PRM)
            $display("EXLSV=%s is NOT equal to PRM=%s", EXLSV, PRM);

        // String Comparison
        if (EXLSV < PRM)
            $display("EXLSV=%s is less than PRM=%s", EXLSV, PRM);

        if (EXLSV > PRM)
            $display("EXLSV =%s is greater than PRM=%s", EXLSV, PRM );

        // String Concatenation
        $display("Full Name = %s", {PRM " ",PRM );

        // String Replication
        $display("%s", {3{PRM});

    end

endmodule
