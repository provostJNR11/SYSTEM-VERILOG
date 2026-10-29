module array_locator;

int array[] = {10,12,12,14,16,18};
int res[$];

initial begin

    // array[6] = {10,12,12,14,16,20};

    $display("the given array is %0p", array);

    res = array.min();
    $display("min value is %0p", res);

    res = array.max();
    $display("max value is %0p", res);

    res = array.unique();
    $display("unique value is %0p", res);

    res = array.unique_index();
    $display("unique index is %0p", res);

    // res = array.find(x) with (x < 16);
    res = array.find(x) with (x < 16);
    $display("values less than 16 are %0p", res);

    res = array.find_first(x) with (x < 16);
    $display("the first value with x < 16 is %0p", res);

    res = array.find_last(x) with (x < 16);
    $display("the last value with x < 16 is %0p", res);

    res = array.find_index(x) with (x < 5);
    $display("the index with x < 5 is %0p", res);

    res = array.find_first_index(x) with (x < 5);
    $display("the first index with x < 5 is %0p", res);

end

endmodule
