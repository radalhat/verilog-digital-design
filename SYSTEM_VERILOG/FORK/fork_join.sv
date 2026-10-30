module fork_join;

initial
begin

    fork
        #15  $display("Task A Finished"); // process1
        #10 $display("Task B Finished"); // process2
        #5 $display("Task C Finished"); // process3
    join

    $display("All Tasks Finished");

end

endmodule
