module shallow_copy_nested;  // instead of writting seperate module and classes. written classes inside module. // if i write module here, inside it we have classes, that means class are user defined datatypes that declared inside module

class transaction;// first class
int a;
int b;
endclass

class generator; // second class
int c;
int d;
transaction ajay; //created handle for first class
                  // creating handle for a class inside other class is called as nested class
endclass

//module shallow_copy_nested; // Instead of writing here we written module in first line

generator vino;   // creating two handles for 2nd class
generator vino1;
initial begin
    vino = new();
    vino.ajay = new();// creating memory for first class. But here we don't have first class handle. so by using second class handle we are accessing the second class and from their we are accessing te first class using first class handle.
    vino.c = 15;
    vino.d = 25;
    vino.ajay.a = 10;
    vino.ajay.b = 15;
$display ("c = %0d",vino.c);
$display ("d = %0d",vino.d);
$display ("a = %0d",vino.ajay.a);
$display ("b = %0d",vino.ajay.b);

vino1=new vino;// above 5-lines are equal to this single line.

vino1.ajay.a = 33;// we updated values of a and b using vino1 handle
vino1.ajay.b = 28;
vino1.c = 14;

$display (">>>PRINTING NEW <<<");
$display ("c = %0d",vino1.c);
$display ("d = %0d",vino1.d);
$display ("a = %0d",vino1.ajay.a);
$display ("b = %0d",vino1.ajay.b);
$display ("------------------------------------");

$display (">>>PRINTING OLD<<<");
$display ("c = %0d",vino.c);
$display ("d = %0d",vino.d);
$display ("a = %0d",vino.ajay.a);
$display ("b = %0d",vino.ajay.b);  // here we are displaying values of a and b  using vino handles. but we get updated values , which are updated using vino1 handle
$display ("------------------------------------"); //i.e; a and b values of vino and vino1 are shared among this both handles
                                                   // this we will overcome using deep copy
end
endmodule
