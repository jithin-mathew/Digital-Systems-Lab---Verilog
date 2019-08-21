module SR(s,r,qb,q,t);
input s;
input r;
input qb;
output q;
output t;

wire q1,q2;
nand na1(q1,s);
nand na2(q2,r);
nand na4(t,q2,qb);
nand na3(q,q1,t);


endmodule

module testbench();
reg s,r,qb;
wire q,t;

SR f1(s,r,qb,q,t);

initial
begin

$monitor("S = %b : R = %b : Q[1] =%b : Q = %b : Q` = %b",s,r,qb,q,t);
$dumpfile("sr.vcd");
$dumpvars;
qb = 1'b0;
s = 1'b0 ; r = 1'b0 ; #5 
s = 1'b0 ; r = 1'b1 ; #5 
s = 1'b1 ; r = 1'b0 ; #5 
s = 1'b1 ; r = 1'b1 ; #5 
s = 1'b1 ; r = 1'b1 ; #5
qb = 1'b1;
s = 1'b0 ; r = 1'b0 ; #5 
s = 1'b0 ; r = 1'b1 ; #5 
s = 1'b1 ; r = 1'b0 ; #5 
s = 1'b1 ; r = 1'b1 ; #5 
s = 1'b1 ; r = 1'b1 ; #5
s = 1'b1 ; r = 1'b1 ;
end
endmodule
