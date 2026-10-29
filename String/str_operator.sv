module string_operator;

    string HYD  = "ULSIFIRST";
    string BGLR = "ulsifirst";

    initial begin

        // String Equality Check
        if (HYD == BGLR)
            $display("HYD=%s is equal to BGLR=%s", HYD, BGLR);

        if (HYD != BGLR)
            $display("HYD=%s is NOT equal to BGLR=%s", HYD, BGLR);

        // String Comparison
        if (HYD < BGLR)
            $display("HYD=%s is less than BGLR=%s", HYD, BGLR);

        if (HYD > BGLR)
            $display("HYD=%s is greater than BGLR=%s", HYD, BGLR);

        // String Concatenation
        $display("Full Name = %s", {HYD, " ", BGLR});

        // String Replication
        $display("%s", {3{HYD}});

    end

endmodule
