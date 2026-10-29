class sample;

    rand bit [4:0] data; // property

    // constraint data_range { soft data < 15; } // constraint
    constraint data_range { data < 15; } // constraint

endclass

module inline;

initial begin

    sample sam;
    sam = new();

    repeat(6)
    begin
        // sam.randomize() with {soft data > 15;};
        sam.randomize() with {data > 15;};
        $display("data = %0d", sam.data);
    end

end
endmodule
