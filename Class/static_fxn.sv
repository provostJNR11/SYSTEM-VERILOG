class Static_Function;

  // Class/static variable
  static int static_count;

  // Object/instance variable
  int local_count;

  // Function
  function void disp();

    // Automatic variable: recreated every time disp() is called
    automatic int automatic_count;

    static_count = static_count + 1;
    automatic_count++;
    local_count++;

    $display("The static count is %0d, automatic count is %0d, local count is %0d",static_count, automatic_count, local_count);

  endfunction

endclass


module tb;

  // Create class object
  Static_Function obj;

  initial begin

    // Instantiate the class
    obj = new();

    // Call the function three times
    obj.disp();
    obj.disp();
    obj.disp();

  end

endmodule
