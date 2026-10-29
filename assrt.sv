module counter_assertion(input clk,rst,en, input logic [3:0]count);

    property p1;
        @(posedge clk) $rose(rst) |-> (count==0);
    endproperty

    property p2;
        @(posedge clk) $rose(en) |-> count == $past(count) + 1;
    endproperty

    property p3;
        @(posedge clk) !en |-> $stable(count);
    endproperty

    a1: assert property(p1)
        $display("assertion p1 is passed");
    else
        $error("assertion p1 is failed");

    a2: assert property(p2)
        $display("assertion p2 is passed");
    else
        $error("assertion p2 is failed");

    a3: assert property(p3)
        $display("assertion p3 is passed");
    else
        $error("assertion p3 is failed");

endmodule
