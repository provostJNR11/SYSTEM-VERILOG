class generator;
transaction pkt;
mailbox g2d;

function new(mailbox g2d);
    this.g2d=g2d;
endfunction

task run();
    #1;
    pkt=new();
    repeat(10) begin
        pkt.randomize();
        pkt.display();
        g2d.put(pkt);
        $display("\n>>>>GENERATOR CLASS<<<<");
        $display("[generator]:input values are randomized and sent to mailbox");
        $display("[generator to mailbox]: data stored inside mailbox is i0=%0d i1=%0d sel=%0d",pkt.i0,pkt.i1,pkt.sel);
        #1;
    end

endtask
endclass
