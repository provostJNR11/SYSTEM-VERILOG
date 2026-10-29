class scoreboard;
transaction ref_pkt,dut_pkt;
mailbox im2s;
mailbox om2s;

function new(mailbox im2s,mailbox om2s);
    this.im2s=im2s;
    this.om2s=om2s;
endfunction

task run();
forever
    begin
        im2s.get(ref_pkt);
        om2s.get(dut_pkt);
        $display("\n>>>>SCOREBOARD<<<<----");
        $display("[scoreboard]: ref_pkt=%0d",ref_pkt.out);
        $display("[scoreboard]: dut_pkt=%0d",dut_pkt.out);

        if(ref_pkt.out==dut_pkt.out)
        begin
            $display("-----------TEST PASSED--[at time=%0t]----------",$time);
            $display("[scoreboard]: ref_pkt=%0d dut_pkt=%0d",ref_pkt.out,dut_pkt.out);
            $display("\n-------------------------------------------------------------------------------------------------------------------");
        end
        else
        begin
            $error("-----------TEST FAILED--[at time=%0t]---------",$time);
            $display("[scoreboard]: ref_pkt=%0d dut_pkt=%0d",ref_pkt.out,dut_pkt.out);
        end
    end
endtask
endclass
