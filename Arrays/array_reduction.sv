module array_reduction;

int array [4];

initial begin
   array={1,2,3,4};

   //array.sum
  $display("The sum is %0p", array.sum());

   //array.product 
   $display("The product is %0p", array.product());

   //array.and
    $display("The bitwise AND operation is %0p", array.and());

   //array.or
    $display("The bitwise OR operation is %0p", array.or());

   //array.xor
    $display("The bitwise XOR operation is %0p", array.xor());
end
endmodule  
