module full_adder(a,b,bin,diff,cout);
input [2:0]a;
input [2:0]b;
input [2:0]bin;
output [2:0]diff;
output [2:0]cout;

assign diff = a^b^bin;
assign cout = (bin & b) | ((~a) & (bin|b)); 

endmodule


module tb_full_adder;

     reg [2:0]a;
	 reg [2:0]b;
	 reg [2:0]bin;
     wire [2:0]diff;
	 wire [2:0]cout;
	 integer i,j;
	 
     full_adder Fa (.a(a) ,.b(b),.diff(diff),.bin(bin),.cout(cout));
	 
     initial begin
		 
         $monitor("a = %b ,b= %b , diff = %b , borrow = %b ",a,b,diff,cout);
		 $dumpfile("fullsub.vcd");
		 $dumpvars;
a = 0; b = 0; bin = 0;#5
a = 0; b = 1; bin = 0;#5
a = 0; b = 2; bin = 0;#5
a = 0; b = 3; bin = 0;#5
a = 0; b = 4; bin = 0;#5
a = 0; b = 5; bin = 0;#5
a = 0; b = 6; bin = 0;#5
a = 0; b = 7; bin = 0;#5

a = 1; b = 0; bin = 0;#5
a = 1; b = 1; bin = 0;#5
a = 1; b = 2; bin = 0;#5
a = 1; b = 3; bin = 0;#5
a = 1; b = 4; bin = 0;#5
a = 1; b = 5; bin = 0;#5
a = 1; b = 6; bin = 0;#5
a = 1; b = 7; bin = 0;#5

a = 2; b = 0; bin = 0;#5
a = 2; b = 1; bin = 0;#5
a = 2; b = 2; bin = 0;#5
a = 2; b = 3; bin = 0;#5
a = 2; b = 4; bin = 0;#5
a = 2; b = 5; bin = 0;#5
a = 2; b = 6; bin = 0;#5
a = 2; b = 7; bin = 0;#5

a = 3; b = 0; bin = 0;#5
a = 3; b = 1; bin = 0;#5
a = 3; b = 2; bin = 0;#5
a = 3; b = 3; bin = 0;#5
a = 3; b = 4; bin = 0;#5
a = 3; b = 5; bin = 0;#5
a = 3; b = 6; bin = 0;#5
a = 3; b = 7; bin = 0;#5

a = 4; b = 0; bin = 0;#5
a = 4; b = 1; bin = 0;#5
a = 4; b = 2; bin = 0;#5
a = 4; b = 3; bin = 0;#5
a = 4; b = 4; bin = 0;#5
a = 4; b = 5; bin = 0;#5
a = 4; b = 6; bin = 0;#5
a = 4; b = 7; bin = 0;#5

a = 5; b = 0; bin = 0;#5
a = 5; b = 1; bin = 0;#5
a = 5; b = 2; bin = 0;#5
a = 5; b = 3; bin = 0;#5
a = 5; b = 4; bin = 0;#5
a = 5; b = 5; bin = 0;#5
a = 5; b = 6; bin = 0;#5
a = 5; b = 7; bin = 0;#5

a = 6; b = 0; bin = 0;#5
a = 6; b = 1; bin = 0;#5
a = 6; b = 2; bin = 0;#5
a = 6; b = 3; bin = 0;#5
a = 6; b = 4; bin = 0;#5
a = 6; b = 5; bin = 0;#5
a = 6; b = 6; bin = 0;#5
a = 6; b = 7; bin = 0;#5

a = 7; b = 0; bin = 0;#5
a = 7; b = 1; bin = 0;#5
a = 7; b = 2; bin = 0;#5
a = 7; b = 3; bin = 0;#5
a = 7; b = 4; bin = 0;#5
a = 7; b = 5; bin = 0;#5
a = 7; b = 6; bin = 0;#5
a = 7; b = 7; bin = 0;

end
 
endmodule
