module task_1;
//input a,b;
//output sum;

//begin
task add;

input a;

input b;

output sum;

begin

sum=a+b;
end
endtask
begin
assign eg=add(4,6,sum);
end

endmodule
