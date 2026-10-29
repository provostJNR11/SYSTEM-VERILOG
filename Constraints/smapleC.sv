class sample;

    rand int data;

    constraint data_range {
        data inside {[0:100]};
    }

endclass


module even_odd_constraint;

    initial begin

        sample sam;
        sam = new();

        repeat (10) begin

            sam.randomize();

            if (sam.data % 2 == 0)
                $display("Even number = %0d", sam.data);
            else
                $display("Odd number = %0d", sam.data);

        end

    end

endmodule
