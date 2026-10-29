module struct_example2;

typedef struct {
    logic [7:0] data;
    logic parity;
} packet_t;

packet_t pkt1;

initial begin
    pkt1.data   = 8'h55;
    pkt1.parity = 1'b0;

    $display("Data = %h", pkt1.data);
    $display("Parity = %b", pkt1.parity);
end

endmodule
