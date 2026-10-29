class packet;
  rand bit [2:0] addr1;
  randc bit [2:0] addr2;
endclass

module randomi_zation;
  packet pkt;

  initial begin
    pkt = new(); //creating memory

    repeat(10) begin
      pkt.randomize();
      $display("addr1 = %0d and addr2 = %0d", pkt.addr1, pkt.addr2);
    end
  end
endmodule


/*repeat(10) begin
pkt.randomize;
$display("\taddr1 = %0d \t addr2 = %0d", pkt.addr1,pkt.addr2);
end*/
