module mux_2x1_dut(mux_2x1_intf.dut inter);
always @(*)
    begin
        case(inter.sel)
            1'b0:inter.out=inter.i0;
            1'b1:inter.out=inter.i1;
            default:inter.out=4'bxxxx;
        endcase
        $display("\n>>>>DUT<<<<");
        $display("[dut]output of mux 2x1 inter.out=%0d",inter.out);
    end
endmodule
