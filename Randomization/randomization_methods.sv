class packet;
rand logic[3:0]addr;
rand bit[3:0]data;

function void pre_randomize();
addr.rand_mode(0);        //it disables the addr variable i.e., pre randomization takes place further there is no randomization of variable addr
//rand_mode(0);            //it disables the both addr and data variables
data.rand_mode(0);        //it disables the data variable i.e., pre randomization takes place further there is no randomization of variable data
//addr.rand_mode(1);
//data.rand_mode(1);       //it disables the data variable i.e., pre randomization takes place further there is no randomization of variable data
endfunction

function void post_randomize();
//addr.rand_mode(0);
//data.rand_mode(0);
rand_mode(1);             //only one value will be randomized and further the values are carried on upto 19 time
//rand_mode(0);            //only one value will be randomized and further the values are carried on upto 19 time
endfunction
endclass

module rand_methods;
initial begin
    packet pkt;
    pkt=new();
    repeat(20)begin
        pkt.randomize();
        $display("addr=%0d--data=%0d",pkt.addr,pkt.data);
    end
end
endmodule
