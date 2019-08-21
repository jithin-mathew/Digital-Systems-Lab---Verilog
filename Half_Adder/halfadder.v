module half_adder( a , b , sum , carry );
 
  input  a;
  input  b;
  output sum;
  output carry;
 
  assign sum   = a ^ b;  
  assign carry = a & b;  
 
endmodule 
 
module half_adder_tb;
 
  reg a = 0;
  reg b = 0;
  wire sum;
  wire carry;
   
  half_adder half_adder_inst( .a(a) , .b(b) , .sum(sum) , .carry(carry) );
 
  initial
    begin
	$monitor("A = %b ,B= %b , Sum = %b , carry = %b ",a,b,sum,carry);
	$dumpfile("halfadder.vcd");
	$dumpvars;
	  #5
      a = 0;
      b = 0;
      #5;
      a = 0;
      b = 1;
      #5;
      a = 1;
      b = 0;
      #5;
      a = 1;
      b = 1;
      #5;
	  a = 1;
      b = 1;

    end 
 
endmodule 

