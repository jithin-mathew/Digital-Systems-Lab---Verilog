module bcd_adder(a,b,carry_in,sum,carry);

	input [3:0] a,b;
	input carry_in;

	output [3:0] sum;
	output carry;


	reg [4:0] sum_temp;
	reg [3:0] sum;
	reg carry;


	always @(a,b,carry_in)
	begin
		sum_temp = a+b+carry_in; 
		if(sum_temp > 9)
		begin
			sum_temp = sum_temp+6; //add 6, if result is more than 9.
			carry = 1; //set the carry output
			sum = sum_temp[3:0];
		end
		else
		begin
			carry = 0;
			sum = sum_temp[3:0];
		end
	end
endmodule

module tb_bcdadder;
	
	reg [3:0] a;
	reg [3:0] b;
	reg carry_in;

	
	wire [3:0] sum;
	wire carry;
	
	
	bcd_adder uut (.a(a),.b(b),.carry_in(carry_in),.sum(sum),.carry(carry));
	initial begin
	$monitor("A = %b ,B= %b , Sum = %b , carry = %b ",a,b,sum,carry);
	$dumpfile("bcd.vcd");
	$dumpvars;	
	
a = 0; b = 0; carry_in = 0;#5
a = 0; b = 1; carry_in = 0;#5
a = 0; b = 2; carry_in = 0;#5
a = 0; b = 3; carry_in = 0;#5
a = 0; b = 4; carry_in = 0;#5
a = 0; b = 5; carry_in = 0;#5
a = 0; b = 6; carry_in = 0;#5
a = 0; b = 7; carry_in = 0;#5
a = 0; b = 8; carry_in = 0;#5
a = 0; b = 9; carry_in = 0;#5

a = 1; b = 0; carry_in = 0;#5
a = 1; b = 1; carry_in = 0;#5
a = 1; b = 2; carry_in = 0;#5
a = 1; b = 3; carry_in = 0;#5
a = 1; b = 4; carry_in = 0;#5
a = 1; b = 5; carry_in = 0;#5
a = 1; b = 6; carry_in = 0;#5
a = 1; b = 7; carry_in = 0;#5
a = 1; b = 8; carry_in = 0;#5
a = 1; b = 9; carry_in = 0;#5

a = 2; b = 0; carry_in = 0;#5
a = 2; b = 1; carry_in = 0;#5
a = 2; b = 2; carry_in = 0;#5
a = 2; b = 3; carry_in = 0;#5
a = 2; b = 4; carry_in = 0;#5
a = 2; b = 5; carry_in = 0;#5
a = 2; b = 6; carry_in = 0;#5
a = 2; b = 7; carry_in = 0;#5
a = 2; b = 8; carry_in = 0;#5
a = 2; b = 9; carry_in = 0;#5

a = 3; b = 0; carry_in = 0;#5
a = 3; b = 1; carry_in = 0;#5
a = 3; b = 2; carry_in = 0;#5
a = 3; b = 3; carry_in = 0;#5
a = 3; b = 4; carry_in = 0;#5
a = 3; b = 5; carry_in = 0;#5
a = 3; b = 6; carry_in = 0;#5
a = 3; b = 7; carry_in = 0;#5
a = 3; b = 8; carry_in = 0;#5
a = 3; b = 9; carry_in = 0;#5

a = 4; b = 0; carry_in = 0;#5
a = 4; b = 1; carry_in = 0;#5
a = 4; b = 2; carry_in = 0;#5
a = 4; b = 3; carry_in = 0;#5
a = 4; b = 4; carry_in = 0;#5
a = 4; b = 5; carry_in = 0;#5
a = 4; b = 6; carry_in = 0;#5
a = 4; b = 7; carry_in = 0;#5
a = 4; b = 8; carry_in = 0;#5
a = 4; b = 9; carry_in = 0;#5

a = 5; b = 0; carry_in = 0;#5
a = 5; b = 1; carry_in = 0;#5
a = 5; b = 2; carry_in = 0;#5
a = 5; b = 3; carry_in = 0;#5
a = 5; b = 4; carry_in = 0;#5
a = 5; b = 5; carry_in = 0;#5
a = 5; b = 6; carry_in = 0;#5
a = 5; b = 7; carry_in = 0;#5
a = 5; b = 8; carry_in = 0;#5
a = 5; b = 9; carry_in = 0;#5

a = 6; b = 0; carry_in = 0;#5
a = 6; b = 1; carry_in = 0;#5
a = 6; b = 2; carry_in = 0;#5
a = 6; b = 3; carry_in = 0;#5
a = 6; b = 4; carry_in = 0;#5
a = 6; b = 5; carry_in = 0;#5
a = 6; b = 6; carry_in = 0;#5
a = 6; b = 7; carry_in = 0;#5
a = 6; b = 8; carry_in = 0;#5
a = 6; b = 9; carry_in = 0;#5

a = 7; b = 0; carry_in = 0;#5
a = 7; b = 1; carry_in = 0;#5
a = 7; b = 2; carry_in = 0;#5
a = 7; b = 3; carry_in = 0;#5
a = 7; b = 4; carry_in = 0;#5
a = 7; b = 5; carry_in = 0;#5
a = 7; b = 6; carry_in = 0;#5
a = 7; b = 7; carry_in = 0;#5
a = 7; b = 8; carry_in = 0;#5
a = 7; b = 9; carry_in = 0;#5

a = 8; b = 0; carry_in = 0;#5
a = 8; b = 1; carry_in = 0;#5
a = 8; b = 2; carry_in = 0;#5
a = 8; b = 3; carry_in = 0;#5
a = 8; b = 4; carry_in = 0;#5
a = 8; b = 5; carry_in = 0;#5
a = 8; b = 6; carry_in = 0;#5
a = 8; b = 7; carry_in = 0;#5
a = 8; b = 8; carry_in = 0;#5
a = 8; b = 9; carry_in = 0;#5

a = 9; b = 0; carry_in = 0;#5
a = 9; b = 1; carry_in = 0;#5
a = 9; b = 2; carry_in = 0;#5
a = 9; b = 3; carry_in = 0;#5
a = 9; b = 4; carry_in = 0;#5
a = 9; b = 5; carry_in = 0;#5
a = 9; b = 6; carry_in = 0;#5
a = 9; b = 7; carry_in = 0;#5
a = 9; b = 8; carry_in = 0;#5
a = 9; b = 9; carry_in = 0;
	end
endmodule
