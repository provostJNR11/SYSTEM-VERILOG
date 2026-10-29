
class sample;
  bit [31:0] data;  //properties
  bit [31:0] addr;  //properties
  logic data_range;

  function void display();  //method
    $display("data=%0d, addr=%0d, data_range=%0d", data, addr, data_range);
  endfunction
endclass

module example;

  initial begin
    sample sam=new();  //custom new constructor
    sam.data=12;
    sam.addr=16;
    sam.display();
  end

endmodule
