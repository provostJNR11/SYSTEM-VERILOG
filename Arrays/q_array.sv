module queue_arr1;

string cars[$] = '{"tata","suzuki","toyota","hyundai","mahindra","ford","kia","bmw"};

initial
begin

    $display("D1:total entries are %0d", cars.size());

    cars.insert(1,"ferrari");   // insert(index,value)

    $display("D2:the entire queue is %0p", cars);

    cars.push_front("nissan");

    $display("D3:the entries are %0p", cars);

    cars.push_back("mercedes");

    $display("D4:the entries are %0p", cars);

    cars.delete(0);

    $display("D5:the entries are %0p", cars);

    cars.pop_front();

    $display("D6:the element is %0p", cars);

    cars.pop_back();

    $display("D7:the element is %0p", cars);
	begin
    string v=cars.pop_back();
    string u=cars.pop_front();
    $display("D8:the element is %0p", cars);
	$display("D9:the element is %s", v);
	$display("D10:the element is %s", u);
	end
end

endmodule
