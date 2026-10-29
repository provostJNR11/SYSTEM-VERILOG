module fork_join_any;

initial
begin

    fork
        #5  $display("Task A Finished"); // process1
        #10 $display("Task B Finished"); // process2
        #15 $display("Task C Finished"); // process3
    join_any

    $display("All Tasks Finished");

end

endmodule
