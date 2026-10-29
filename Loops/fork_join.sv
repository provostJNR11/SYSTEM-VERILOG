module fork_join;

initial
begin

    fork
        #9  $display("Task A Finished"); // process1
        #5 $display("Task B Finished"); // process2
        #10 $display("Task C Finished"); // process3
    join

    $display("All Tasks Finished");

end

endmodule
