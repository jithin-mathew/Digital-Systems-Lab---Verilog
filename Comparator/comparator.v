module comparator(A,B,less,	equal,greater);
	
	input [1:0] A;
	input [1:0] B;

	output less;
	output equal;
	output greater;

	reg less;
	reg equal;
	reg greater;

	always @(A or B)
	begin
		if(A > B)
		begin //check if A is bigger than B.
			less = 0;
			equal = 0;
			greater = 1;
		end
		else if(A == B) 
		begin //Check if A is equal to B
			less = 0;
			equal = 1;
			greater = 0;
		end
		else
		begin //Otherwise - check for A less than B.
			less = 1;
			equal = 0;
			greater =0;
		end
	end
endmodule
module tb_tm;

	reg [1:0] A;
	reg [1:0] B;

	wire less;
	wire equal;
	wire greater;

	comparator uut (.A(A),.B(B),.less(less),.equal(equal),.greater(greater));
	initial begin
		$monitor("A = %b ,B= %b , L = %b , E = %b , G = %b",A,B,less,equal,greater);
		$dumpfile("comparator.vcd");
		$dumpvars;

		A = 2'b00;B = 2'b00;
		#5;
		A = 2'b00;B = 2'b01;
		#5;
		A = 2'b00;B = 2'b10;
		#5;
		A = 2'b00;B = 2'b11;
		#5;
		A = 2'b01;B = 2'b00;
		#5;
		A = 2'b01;B = 2'b01;
		#5;
		A = 2'b01;B = 2'b10;
		#5;
		A = 2'b01;B = 2'b11;
		#5;
		A = 2'b10;B = 2'b00;
		#5;
		A = 2'b10;B = 2'b01;
		#5;
		A = 2'b10;B = 2'b10;
		#5;
		A = 2'b10;B = 2'b11;
		#5;
		A = 2'b11;B = 2'b00;
		#5;
		A = 2'b11;B = 2'b01;
		#5;
		A = 2'b11;B = 2'b10;
		#5;
		A = 2'b11;B = 2'b11;
		#5;
		A = 2'b11;B = 2'b11;
	end
endmodule
