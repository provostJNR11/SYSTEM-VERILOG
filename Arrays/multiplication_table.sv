module multiplication_table;

    int table[10][10];

    initial begin

        // Generate multiplication table
        foreach(table[i,j]) begin
            table[i][j] = (i+1) * (j+1);
        end

        // Display multiplication table
        foreach(table[i,j]) begin
            $display("%0d x %0d = %0d",
                     i+1, j+1, table[i][j]);
        end

    end

endmodule
