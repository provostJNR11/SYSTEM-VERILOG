module array_3D;
    int arr[3][3][3];

    initial begin
        arr = '{ {{1,2,3},{4,5,6},{7,8,9}},
                 {{10,11,12},{13,14,15},{16,17,18}},
                 {{20,21,22},{23,24,25},{26,27,28}} };

        foreach(arr[i,j,k])begin
            $display("arr[%0d][%0d][%0d]=%0d", i,j,k,arr[i][j][k]);
        end
    end
endmodule
