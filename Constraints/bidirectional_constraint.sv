class sample;

rand bit [4:0] a;
rand bit [3:0] b;
rand bit [3:0] c;

constraint a_value { a == b+c; }
constraint b_value { b > 5; }
constraint c_value { c < 6; }

function void display();
$display("a=%0d, b=%0d and c=%0d", a,b,c);
endfunction

endclass

module bidirectional_constraint;

initial begin

sample sam;
sam=new();

repeat(10) begin
sam.randomize();
$display("value of a=%0d, b=%0d and c=%0d",sam.a,sam.b,sam.c);
end

end
endmodule
