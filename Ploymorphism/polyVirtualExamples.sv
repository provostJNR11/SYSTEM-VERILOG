// virtual keyword to parent gives child methods using parent handle
// virtual keyword to both child and parent methods gives child methods using parent handle
// virtual keyword to child gives parent methods using parent handle

class parent;
  bit [31:0] data;
  
  function display();
    $display("parent: data=%0d", data);
  endfunction
endclass

class child_1 extends parent;
  function void display();
    $display("child_1: data=%0d", data);
  endfunction
endclass

class child_2 extends parent;
  function void display();
    $display("child_2: data=%0d", data);
  endfunction
endclass

class child_3 extends parent;
  function void display();
    $display("child_3: data=%0d", data);
  endfunction
endclass

module example;

  initial begin
    parent p1, p2, p3;
    child_1 c1;
    child_2 c2;
    child_3 c3;
    
    c1 = new();
    c2 = new();
    c3 = new();
    
    p1 = c1;
    p2 = c2;
    p3 = c3;
    
    p1.data = 12;
    p2.data = 14;
    p3.data = 16;
    
    p1.display();
    p2.display();
    p3.display();
  end
endmodule


