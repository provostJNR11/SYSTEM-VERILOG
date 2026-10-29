module array_iterator;

    int array[4];

    int E[$], G[$], L[$];

    initial begin

        array = '{0,4,2,1};

        E = array.find with (item == item.index);
        G = array.find with (item > item.index);
        L = array.find with (item < item.index);

        $display("E=%0d, G=%0d, L=%0d",E.size(), G.size(), L.size());

    end

endmodule

// Array values:
// 0 4 2 1
//
// Indexes:
// 0 1 2 3
