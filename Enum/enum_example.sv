module enum_example;

enum {Sat,Sun,Mon,Tue,Wed,Thurs,Fri} Day;

initial begin

$display("The First Day is %s, The Value is %d", Day.first, Day.first);
$display("The Second Day is %s, The Value is %d", Day.next, Day.next);
$display("The Third Day is %s, The Value is %d", Day.next(2), Day.next(2));
$display("The Fourth Day is %s, The Value is %d", Day.next(3), Day.next(3));
$display("The Previous Day is %s, The Value is %d", Day.prev, Day.prev);
$display("The 2-Previous Day is %s, The Value is %d", Day.prev(2), Day.prev(3));
$display("The Number is Day is %d", Day.num);
end
endmodule
