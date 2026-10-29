module dynamic_array;

int arr1[];
int arr2[];
int arr3[];

initial
begin
    arr1 = '{12,16,20,24,28};

    $display("size of arr1=%0d", arr1.size());

    arr2 = arr1;

    //$display("%p", arr2);

    arr2[1] = 32;
    $display("%p", arr2);

    arr1[0] = 36;
    $display("%p", arr1);
    $display("%p", arr2);

    arr2 = new[10](arr2);
    $display("size of arr2 = %0d", arr2.size());

    arr2 = new[15];
    $display("size of arr2=%0d", arr2.size());

    arr2 = '{2,4,6,8,10};
    $display("elements are %p", arr2);

    arr1 = arr2;
    $display("the array1 is %p", arr1);

    arr1.delete();
    $display("array is %p", arr1);
    $display("the size of array1 is %p", arr1.size());

end

initial
begin
    arr1 = arr2;
    $display("%p", arr1);

    //arr1 = new[15](arr1);

    //arr1.reverse();
    $display("%p", arr1);

end

endmodule
