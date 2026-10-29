module while_loop_example;

    int i = 0;

    initial begin
        while (i < 5) begin
            $display("i = %0d", i);
            i++;
        end
    end

endmodule
