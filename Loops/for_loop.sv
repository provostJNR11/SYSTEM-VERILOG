module for_loop_example;

    int i;

    initial begin
        for (i = 0; i < 5; i++) begin
            $display("i = %0d", i);
        end
    end

endmodule
