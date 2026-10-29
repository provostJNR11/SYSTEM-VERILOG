class ip_monitor;
transaction pkt;
mailbox im2s;
virtual interface mux_2x1_intf.tb inter;

function new(mailbox im2s,virtual interface mux_2x1_intf.tb inter);
    this.im2s=im2s;
    this.inter=inter;
endfunction

task run();
    pkt=new();
    forever
        begin
            @(inter.i0,inter.i1,inter.sel);
            pkt.i0=inter.i0;
            pkt.i1=inter.i1;
            pkt.sel=inter.sel;
            $display("\n>>>>INPUT MONITOR<<<<");
            $display("[ip monitor]: stored data in input monitor as packet data is i0=%0d i1=%0d sel=%0d",pkt.i0,pkt.i1,pkt.sel);


            //BFM
            case(pkt.sel)
                1'b0:pkt.out=pkt.i0;
                1'b1:pkt.out=pkt.i1;
                default:pkt.out=4'bxxxx;
            endcase
            $display("[BFM]: pkt.out=%0d",pkt.out);

            im2s.put(pkt);
            $display("[ip monitor to mailbox]: data sent from ip monitor to mailbox is pkt.out=%0d",pkt.out);
        end
endtask
endclass
