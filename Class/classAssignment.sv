class packet;
  bit [31:0] data; //class property
  bit [31:0] addr; //class property

  function void display();
    $display("data=%0d, addr=%0d",data,addr);
  endfunction
endclass

module classAssignment;

  packet pkt1, pkt2;

  initial begin
    pkt1=new();
    pkt2=pkt1; //class assignment
    pkt2.data=12;
    pkt2.addr=16;
    pkt2.display();

    pkt1.data=16;
    pkt1.addr=12;
    pkt1.display();
  end

endmodule
