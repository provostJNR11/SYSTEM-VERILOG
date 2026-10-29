class op_monitor;
transaction pkt;
mailbox om2s;
virtual interface mux_2x1_intf.tb inter;

function new(mailbox om2s,virtual interface mux_2x1_intf.tb inter);
    this.om2s=om2s;
    this.inter=inter;
endfunction

task run();
pkt=new();

forever
    begin
        @(inter.out);
        begin
            pkt.out=inter.out;
            $display("\n>>>>OUTPUT MONITOR<<<");
            $display("[op monitor]:stored data in op monitor as packet data=%0d",pkt.out);
        end
        om2s.put(pkt);
        $display("[op monitor to mailbox]: data sent from op monitor to mailbox=%0d",pkt.out);
    end
endtask
endclass
