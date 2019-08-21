module jkmaster(j,k,cp,qb,q,t);

input j;
input k;
input cp;
input qb;
output q;
output t;

wire q1,q2,q3,q4,q5,q6;


and a1(q1,j,cp,qb);
and a2(q2,k,cp,~qb);
xor x1(q3,q1,~qb);
xor x2(q4,q2,q3);
and a3(q5,q3,qb,~cp);
and a4(q6,q4,~qb,~cp);
xor x3(q,q5,~qb);
xor x4(t,q6,q);

endmodule

module testbench();

reg j,k,cp,qb;
wire q,t;

jkmaster f1(j,k,cp,qb,q,t);

initial
begin

$monitor("CP = %b : Q[1] = %b : J = %b : K = %b : Q = %b : Q` = %b",cp,qb,j,k,q,t);
$dumpfile("jkmaster.vcd");
$dumpvars;

cp = 1'b1 ; qb = 1'b0;
j = 1'b0 ; k = 1'b0 ; #5 
j = 1'b0 ; k = 1'b1 ; #5 
j = 1'b1 ; k = 1'b0 ; #5 
j = 1'b1 ; k = 1'b1 ; #5 
j = 1'b1 ; k = 1'b1 ; #5
cp = 1'b1 ; qb = 1'b1;
j = 1'b0 ; k = 1'b0 ; #5 
j = 1'b0 ; k = 1'b1 ; #5 
j = 1'b1 ; k = 1'b0 ; #5 
j = 1'b1 ; k = 1'b1 ; #5 
j = 1'b1 ; k = 1'b1 ; #5
cp = 1'b0 ; qb = 1'b0;
j = 1'b0 ; k = 1'b0 ; #5 
j = 1'b0 ; k = 1'b1 ; #5 
j = 1'b1 ; k = 1'b0 ; #5 
j = 1'b1 ; k = 1'b1 ; #5 
j = 1'b1 ; k = 1'b1 ; #5
cp = 1'b0 ; qb = 1'b1;
j = 1'b0 ; k = 1'b0 ; #5 
j = 1'b0 ; k = 1'b1 ; #5 
j = 1'b1 ; k = 1'b0 ; #5 
j = 1'b1 ; k = 1'b1 ; #5 
j = 1'b1 ; k = 1'b1 ; #5
j = 1'b1 ; k = 1'b1 ;

end

endmodule
