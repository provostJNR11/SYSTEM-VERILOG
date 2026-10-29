module swap_blocking;

reg [3:0] A, B;
reg [3:0] temp;

initial begin
    // Initialize variables
    A = 4'd5;
    B = 4'd10;

    $display("Before Swapping: A = %d, B = %d", A, B);

    // Swapping using blocking assignment
    temp = A;
    A = B;
    B = temp;

    $display("After Swapping : A = %d, B = %d", A, B);

    $finish;
end

endmodule
