module struct_example1;

struct {
    logic [7:0] data;
    logic parity;
} packet;

initial begin
    packet.data   = 8'hA5;
    packet.parity = 1'b1;

    $display("Data = %h", packet.data);
    $display("Parity = %b", packet.parity);
end

endmodule
