module demux(s0,s1,I,en,d0,d1,d2,d3);

input s0,s1,I,en;

output d0,d1,d2,d3;

assign d0=(~s0)&(~s1)& I& en;
assign d1=(~s0)& s1& I& en;
assign d2=s0&(~s1)& I & en;
assign d3=s0& s1 & I & en;

endmodule

module testbench();

reg s0,s1,I,en;
wire d0,d1,d2,d3;
demux aa (.d0(d0),.d1(d1),.d2(d2),.d3(d3),.I(I),.en(en),.s1(s0),.s0(s1));

initial begin

$monitor("d0 = %b  : d1 = %b  : d2 =  %b  : d3 = %b  : s1 = %b  : s2 = %b  : en = %b  : I = %b",d0,d1,d2,d3,s1,s0,en,I);
$dumpfile("demux.vcd");
$dumpvars;


I=1'b1;en=1'b0;s1=1'b0;s0=1'b0;
#1
I=1'b1;en=1'b0;s1=1'b0;s0=1'b1;
#1
I=1'b1;en=1'b0;s1=1'b1;s0=1'b0;
#1
I=1'b1;en=1'b0;s1=1'b1;s0=1'b1;
#1
I=1'b0;en=1'b0;s1=1'b0;s0=1'b0;
#1
I=1'b0;en=1'b0;s1=1'b0;s0=1'b1;
#1
I=1'b0;en=1'b0;s1=1'b1;s0=1'b0;
#1
I=1'b0;en=1'b0;s1=1'b1;s0=1'b1;
#1
I=1'b1;en=1'b1;s1=1'b0;s0=1'b0;
#1
I=1'b1;en=1'b1;s1=1'b0;s0=1'b1;
#1
I=1'b1;en=1'b1;s1=1'b1;s0=1'b0;
#1
I=1'b1;en=1'b1;s1=1'b1;s0=1'b1;
#1
I=1'b0;en=1'b1;s1=1'b0;s0=1'b0;
#1
I=1'b0;en=1'b1;s1=1'b0;s0=1'b1;
#1
I=1'b0;en=1'b1;s1=1'b1;s0=1'b0;
#1
I=1'b0;en=1'b1;s1=1'b1;s0=1'b1;

end

endmodule
