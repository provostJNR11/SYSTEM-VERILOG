module static_casting;

real real_num;
int int_num;

// real to integer conversion

initial begin

//real_num = 12.4;
real_num = 12.6;

int_num = int'(real_num); //static casting

$display("the real value is %0f",real_num);
$display("the integer value is %0d",int_num);

end
endmodule
