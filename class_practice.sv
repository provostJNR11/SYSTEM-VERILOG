//1. 


class packet;
  rand int num;

  constraint even_num {
    num % 2 == 0;
  }
endclass

module test;
  packet p;

  initial begin
    p = new();

    repeat (10) begin
      p.randomize();
      $display("Even number = %0d", p.num);
    end
  end
endmodule


//2. 

class packet;
  rand int num;

  constraint odd_num {
    num % 2 != 0;
  }
endclass

module test;
  packet p;

  initial begin
    p = new();

    repeat (10) begin
      p.randomize();
      $display("Odd number = %0d", p.num);
    end
  end
endmodule


//3.

class packet;
  rand int num;

  constraint range_c {
    num >= 50;
    num <= 100;
  }
endclass

module test;
  packet p;

  initial begin
    p = new();

    repeat (10) begin
      p.randomize();
      $display("Number = %0d", p.num);
    end
  end
endmodule


//4. 1-bit signal: 70% 1 and 30% 0

//This is a distribution (dist) constraint.

class packet;
  rand bit signal;

  constraint signal_dist {
    signal dist {
      1 := 70,
      0 := 30
    };
  }
endclass

module test;
  packet p;

  initial begin
    p = new();

    repeat (100) begin
      p.randomize();
      $display("Signal = %0d", p.signal);
    end
  end
endmodule
