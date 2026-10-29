module deep_copy_nested;

class transaction;
    int a;
    int b;

    // Custom copy method for the nested class
    function transaction copy();
        copy = new();
        copy.a = this.a;
        copy.b = this.b;
    endfunction
endclass

class generator;
    int c;
    int d;
    transaction ajay;

    function new();
        ajay = new(); // Initialize handle
    endfunction

    // Deep copy method that copies primitives AND calls copy() on nested objects
    function generator copy();
        copy = new();
        copy.c = this.c;
        copy.d = this.d;
        copy.ajay = this.ajay.copy(); // Creates a new transaction instance!
    endfunction
endclass

generator vino, vino1;

initial begin
    vino = new();
    vino.c = 15;
    vino.d = 25;
    vino.ajay.a = 10;
    vino.ajay.b = 15;

    // Executing Deep Copy
    vino1 = vino.copy();

    // Modifying vino1
    vino1.c = 14;
    vino1.ajay.a = 33;
    vino1.ajay.b = 28;

    $display(">>> PRINTING VINO1 (New) <<<");
    $display("c = %0d, d = %0d, a = %0d, b = %0d", vino1.c, vino1.d, vino1.ajay.a, vino1.ajay.b);

    $display(">>> PRINTING VINO (Old) <<<");
    $display("c = %0d, d = %0d, a = %0d, b = %0d", vino.c, vino.d, vino.ajay.a, vino.ajay.b);
end
endmodule
