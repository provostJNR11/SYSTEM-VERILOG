class packet; //CLASSROOM CODE
bit [3:0] address;
bit [3:0] data;
function void display();
$display("Address = %0b, Data = %0b",address,data);
endfunction
endclass

module shallow_copy;
/////////////////////////////////////////////////////////////////
// 1. Shallow copy will copy only once                         //
// 2. Any updation in the initial packet will not affect the other packet  //
/////////////////////////////////////////////////////////////////

packet pkt1, pkt2;
initial begin
pkt1 = new();
pkt1.address = 4'b1101;
pkt1.data = 4'b1100;
$display("----------- packet 1------------");
pkt1.display();
$display("----------- packet 2------------");
pkt2 = new pkt1; //shallow copy syntax
pkt2.display();
pkt2.address = 4'b0001;
pkt2.data = 4'b0010;
$display("-----------Modified packet 2------------");
pkt2.display();
$display("-----------Checking packet 1 for any changes-->(observed no changes)------------");
pkt1.display(); // Pkt2 modified is not reflected in pkt1
pkt1.address = 4'b1010;
$display("-----------Modified packet 1------------");
pkt1.display();
pkt2.display(); // Doesnot reflect changes of pkt1 in pkt2
end
endmodule
