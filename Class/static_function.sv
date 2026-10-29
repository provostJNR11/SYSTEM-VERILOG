module static_function;
  static int static_count;
      //automatic int automatic_count;
      int local_count;

function void disp();
automatic int automatic_count;
  static_count=static_count+1;
  automatic_count++;
  local_count++;
  $display("the static count is %0d , automatic count is %0d, local count is %0d",static_count,automatic_count,local_count);
endfunction

initial begin
  disp();
  disp();
  disp();
end

endmodule


//the static count is 1 , automatic count is 1, local count is 1
// the static count is 2, automatic count is 1, local count is 2
// the static count is 3 , automatic count is 1, local count is 3
