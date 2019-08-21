module JK(j,k,qb,q,t);
input j;
input k;
input qb;
output q;
output t;

wire q1,q2;

nand na1(q1,k,qb);
nand na2(q2,j,(~qb));
nand na3(t,q1,qb);
nand na4(q,q2,t);

endmodule

module testbench();
reg j,k,qb;
wire q,t;

JK f1(j,k,qb,q,t);

initial
begin

$monitor("Q[1] = %b : J = %b : K = %b : Q = %b : Q` = %b",qb,j,k,q,t);
$dumpfile("jk.vcd");
$dumpvars;

qb = 1'b0;
j = 1'b0 ; k = 1'b0 ; #5 
j = 1'b0 ; k = 1'b1 ; #5 
j = 1'b1 ; k = 1'b0 ; #5 
j = 1'b1 ; k = 1'b1 ; #5 
j = 1'b1 ; k = 1'b1 ; #5
qb = 1'b1;
j = 1'b0 ; k = 1'b0 ; #5 
j = 1'b0 ; k = 1'b1 ; #5 
j = 1'b1 ; k = 1'b0 ; #5 
j = 1'b1 ; k = 1'b1 ; #5 
j = 1'b1 ; k = 1'b1 ; #5
j = 1'b1 ; k = 1'b1 ;

end
endmodule
