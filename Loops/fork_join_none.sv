module fork_join_none;

initial
begin

    fork
        #5  $display("Task A Finished"); // process1
        #3 $display("Task B Finished"); // process2
        #15 $display("Task C Finished"); // process3
    join_none

    $display("All Tasks Finished");

end

endmodule
