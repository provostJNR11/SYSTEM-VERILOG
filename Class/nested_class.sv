class A; 
  int j; 
endclass 
 
class B; 
  int k; 
  A a1; 
endclass 
 
program nested_class; 
  B b1; 
 
  initial begin 
    b1 = new(); 
    b1.a1 = new(); 
 
    b1.k = 20; 
    b1.a1.j = 30; 
  end 
endprogram
