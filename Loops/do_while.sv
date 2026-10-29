module do_while_example;

    int i = 0;

    initial begin
        do begin
            $display("i = %0d", i);
            i++;
        end while (i < 5);
    end

endmodule
