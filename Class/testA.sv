class test;
    rand bit [3:0] a, b, c;

    constraint c1 {
        unique {a, b, c};
    }
endclass


module testClass;

    test t = new();

    initial begin
        t.randomize();

        $display("a = %b, b = %b, c = %b", t.a, t.b, t.c);
    end

endmodule
