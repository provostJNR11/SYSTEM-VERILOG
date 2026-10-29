// Code your testbench here
// or browse Examples

class sample;
  bit [31:0] data; //properties
  bit [31:0] addr; //properties

  function void display(); //method
    $display("data=%0d, addr=%0d", data, addr);
  endfunction
endclass

module sampleClass;

  initial begin
    sample sam=new(); //custom new constructor
    //sam.data=12;
    //sam.addr=16;
    sam.display();
  end

endmodule
