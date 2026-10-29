module string_method;

    string S = "ULSIFIRST";
    string tmp;

    initial begin

        // Print length of the string
        $display("Len = %0d", S.len());

        // Assign S to tmp and replace character at index 3 with 'J'
        tmp = S;
        tmp.putc(3, "J");
        $display("tmp.putc(3,'J') = %s", tmp);

        // Get the character at index 5
        $display("Getc = %s", S.getc(5));

        // Compare the string with itself
        $display("Comparison = %0d", tmp.compare(S));

    end

endmodule
