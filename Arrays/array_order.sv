module array_ordering;

int array [5];

initial begin

array= {6,4,9,2,0};

array.sort();
$display("The content of the array is %0p", array);

array.reverse();
$display("The content of the array is %0p", array);

array.rsort();
$display("The content of the array is %0p", array);

array.shuffle();
$display("The content of the array is %0p", array);

end
endmodule
