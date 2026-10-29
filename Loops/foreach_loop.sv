module foreach_example;

    int data[5] = '{10, 20, 30, 40, 50};
    int i;

    initial begin
        foreach (data[i]) begin
            $display("data[%0d] = %0d", i, data[i]);
        end
    end

endmodule
