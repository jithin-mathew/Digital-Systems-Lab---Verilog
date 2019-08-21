module MUX(i3,i2,i1,i0,s1,s0,out);

input i3,i2,i1,i0,s1,s0;

output out;

wire n_s1,n_s0,t3,t2,t1,t0;
	
not n1(n_s1,s1);
not n0(n_s0,s0);
and a0(t0,i0,n_s1,n_s0);
and a1(t1,i1,n_s1,s0);
and a2(t2,i2,s1,n_s0);
and a3(t3,i3,s1,s0);
or o0(out,t0,t1,t2,t3);
	
endmodule

module shift(IP3,IP2,IP1,IP0,SEL1,SEL0,OP3,OP2,OP1,OP0);

input IP3;
input IP2;
input IP1;
input IP0;
input SEL1;
input SEL0;

output OP3;
output OP2;
output OP1;
output OP0;

wire OP3,OP2,OP1,OP0;
	
	
MUX m0( .i3(IP1), .i2(IP1),  .i1(1'b1), .i0(IP0), .s1(SEL1), .s0(SEL0), .out(OP0) );
MUX m1( .i3(IP2), .i2(IP2),  .i1(IP0),  .i0(IP1), .s1(SEL1), .s0(SEL0), .out(OP1) );
MUX m2( .i3(IP3), .i2(IP3),  .i1(IP1),  .i0(IP2), .s1(SEL1), .s0(SEL0), .out(OP2) );
MUX m3( .i3(IP0), .i2(1'b1), .i1(IP2),  .i0(IP3), .s1(SEL1), .s0(SEL0), .out(OP3) );
	
endmodule

module testbench();


reg IP3,IP2,IP1,IP0,SEL1,SEL0;
wire OP3,OP2,OP1,OP0;

shift f1(IP3,IP2,IP1,IP0,SEL1,SEL0,OP3,OP2,OP1,OP0);

initial 
begin
	
$monitor("IP = %b%b%b%b :  SEL = %b%b  :  OUT = %b%b%b",IP3,IP2,IP1,IP0,SEL1,SEL0,OP3,OP2,OP1,OP0);
$dumpfile("shift.vcd");
$dumpvars;
	

    	IP3=1'b0;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b0;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b0;
		#10;
		
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b0;
		SEL0=1'b1;
		#10
		
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b1;
		SEL0=1'b0;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b0;
		#10

		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b0;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b0;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b0;	
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b0;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b0;		
		SEL1=1'b1;
		SEL0=1'b1;
		#10
		IP3=1'b1;
		IP2=1'b1;
		IP1=1'b1;
		IP0=1'b1;		
		SEL1=1'b1;
		SEL0=1'b1;
		#10;		
	
end

endmodule
