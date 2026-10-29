`include"dut.sv"
`include"assrt.sv"

module top;
    logic clk,rst,en;
    logic [3:0]count;

    counter dut(clk,rst,en,count);

    bind counter counter_assertion asrt_1(.rst(rst), .clk(clk), .en(en), .count(count));

    always #2 clk=~clk;

    initial begin
        clk=0;
        rst=1;
        #5;
        rst=0; en=1;
        #6;
        en=0;
        #2;
        $finish;
    end

endmodule
