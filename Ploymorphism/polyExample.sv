class base_class;
    virtual function void disp();
        $display("from base class");
    endfunction
endclass

class child extends base_class;
    function void disp();
        $display("from child class");
    endfunction
endclass

class derived extends base_class;
    function void disp();
        $display("From derived class");
    endfunction
endclass

module top;
    base_class b,b2;
    child c;
    derived d;
    initial begin
        c=new();
        d=new();
        b=c;
        b.disp();
        b2=d;
        b2.disp();
    end
endmodule
