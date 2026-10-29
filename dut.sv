module counter(input clk,rst,en, output logic[3:0]count);
    always@(posedge clk)begin
        if(rst)
            count <=0;
        else if(en)
            count<=count+1;
    end
endmodule
