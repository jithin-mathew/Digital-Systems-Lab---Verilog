module full_adder(a,b,cin,sum,cout);
input [2:0]a;
input [2:0]b;
input [2:0]cin;
output [2:0]sum;
output [2:0]cout;

assign sum = a^b^cin;
assign cout = (a & b) | (cin & (a^b)); 

endmodule


module tb_full_adder;

     reg [2:0]a;
	 reg [2:0]b;
	 reg [2:0]cin;
     wire [2:0]sum;
	 wire [2:0]cout;
	 integer i,j;
	 
     full_adder Fa (.a(a) ,.b(b),.sum(sum),.cin(cin),.cout(cout));
	 
     initial begin
		 
         $monitor("a = %b ,b= %b , sum = %b , carry = %b ",a,b,sum,cout);
		 $dumpfile("fulladder.vcd");
		 $dumpvars;
a = 0; b = 0; cin = 0;#5
a = 0; b = 1; cin = 0;#5
a = 0; b = 2; cin = 0;#5
a = 0; b = 3; cin = 0;#5
a = 0; b = 4; cin = 0;#5
a = 0; b = 5; cin = 0;#5
a = 0; b = 6; cin = 0;#5
a = 0; b = 7; cin = 0;#5

a = 1; b = 0; cin = 0;#5
a = 1; b = 1; cin = 0;#5
a = 1; b = 2; cin = 0;#5
a = 1; b = 3; cin = 0;#5
a = 1; b = 4; cin = 0;#5
a = 1; b = 5; cin = 0;#5
a = 1; b = 6; cin = 0;#5
a = 1; b = 7; cin = 0;#5

a = 2; b = 0; cin = 0;#5
a = 2; b = 1; cin = 0;#5
a = 2; b = 2; cin = 0;#5
a = 2; b = 3; cin = 0;#5
a = 2; b = 4; cin = 0;#5
a = 2; b = 5; cin = 0;#5
a = 2; b = 6; cin = 0;#5
a = 2; b = 7; cin = 0;#5

a = 3; b = 0; cin = 0;#5
a = 3; b = 1; cin = 0;#5
a = 3; b = 2; cin = 0;#5
a = 3; b = 3; cin = 0;#5
a = 3; b = 4; cin = 0;#5
a = 3; b = 5; cin = 0;#5
a = 3; b = 6; cin = 0;#5
a = 3; b = 7; cin = 0;#5

a = 4; b = 0; cin = 0;#5
a = 4; b = 1; cin = 0;#5
a = 4; b = 2; cin = 0;#5
a = 4; b = 3; cin = 0;#5
a = 4; b = 4; cin = 0;#5
a = 4; b = 5; cin = 0;#5
a = 4; b = 6; cin = 0;#5
a = 4; b = 7; cin = 0;#5

a = 5; b = 0; cin = 0;#5
a = 5; b = 1; cin = 0;#5
a = 5; b = 2; cin = 0;#5
a = 5; b = 3; cin = 0;#5
a = 5; b = 4; cin = 0;#5
a = 5; b = 5; cin = 0;#5
a = 5; b = 6; cin = 0;#5
a = 5; b = 7; cin = 0;#5

a = 6; b = 0; cin = 0;#5
a = 6; b = 1; cin = 0;#5
a = 6; b = 2; cin = 0;#5
a = 6; b = 3; cin = 0;#5
a = 6; b = 4; cin = 0;#5
a = 6; b = 5; cin = 0;#5
a = 6; b = 6; cin = 0;#5
a = 6; b = 7; cin = 0;#5

a = 7; b = 0; cin = 0;#5
a = 7; b = 1; cin = 0;#5
a = 7; b = 2; cin = 0;#5
a = 7; b = 3; cin = 0;#5
a = 7; b = 4; cin = 0;#5
a = 7; b = 5; cin = 0;#5
a = 7; b = 6; cin = 0;#5
a = 7; b = 7; cin = 0;

end
 
endmodule
