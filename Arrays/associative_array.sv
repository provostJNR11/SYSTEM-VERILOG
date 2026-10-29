module associative_array;
	
	string arr1 [int];
	int arr2 [string];
	
initial begin
	arr1 = {6:"bmw", 2:"audi", 7:"benz", 0:"toyota"};
	$display("array1=%p",arr1);
	$display("size of the array1=%d",arr1.size());
	$display("entries of the array1=%d",arr1.num());
	$display("given index is present or not in the  array1=%d",arr1.exists(0));
	$display("given index is present or not in the  array1=%d",arr1.exists(3));


	arr1.delete(0);
	$display("after deleting array1=%d",arr1);

	end
initial begin
	arr2 = {"bmw":6, "audi":2, "benz":7, "toyota":0};
	$display("array2=%p",arr2);
	$display("size of the array1=%d",arr2.size());
	$display("entries of the array1=%d",arr2.num());
	$display("given index is present or not in the  array1=%d",arr2.exists("audi"));
	$display("given index is present or not in the  array1=%d",arr2.exists("Honda"));

	arr2.delete("bmw");
	$display("after deleting array1=%d",arr2);

	end

endmodule
