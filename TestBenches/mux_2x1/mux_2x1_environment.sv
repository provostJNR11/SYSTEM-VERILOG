`include"transaction.sv"
`include"generator.sv"
`include"driver.sv"
`include"ip_monitor.sv"
`include"op_monitor.sv"
`include"scoreboard.sv"

class environment;
    transaction pkt;
    generator gen;
    driver drv;
    op_monitor opmn;
    ip_monitor ipmn;
    scoreboard scbd;

    mailbox g2d;
    mailbox im2s;
    mailbox om2s;

virtual interface mux_2x1_intf.tb inter;

function new(virtual interface mux_2x1_intf.tb inter);
    this.inter=inter;
endfunction

function void build();
    pkt=new();
    g2d=new();
    im2s=new();
    om2s=new();
    gen=new(g2d);
    drv=new(g2d,inter);
    ipmn=new(im2s,inter);
    opmn=new(om2s,inter);
    scbd=new(im2s,om2s);
endfunction

task run();
build();
    fork
        gen.run();
        drv.run();
        ipmn.run();
        opmn.run();
        scbd.run();
    //join_any
    join
endtask
endclass
