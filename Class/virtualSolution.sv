virtual class parent;

  bit [31:0] data;

  function void display();
    $display("data=%0d", data);
  endfunction

endclass

class child extends parent;
endclass

module example;

  initial begin
    child p = new();
    p.data = 12;
    p.display();
  end

endmodule
