//arrays

module array_2D;
    int arr[3][2]; // array consisting of 3 rows and 2 columns

    initial begin
        arr='{ {10,11}, {12,13}, {14,15} };
        foreach(arr[i,j])begin
            $display("arr[%0d][%0d]=%0d", i,j,arr[i][j]);
        end
        $monitor("arr=%p", arr);
    end
endmodule



