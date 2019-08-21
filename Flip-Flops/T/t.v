module T(t1,qb,q,t);

input t1;
input qb;
output q;
output t;

wire q1,q2,t11;

//not no1(t11,t1);
/*nand na1(q2,qb,t11);
nand na2(t,q2,qb);
nand na3(q1,t1,t);
nand na4(q,q1,t);
*/
nand na1(q1,t1,qb);
nand na2(q2,t1,(~qb));
nand na3(t,q1,qb);
nand na4(q,q2,t);

endmodule

module testbench();

reg t1,qb;
wire q,t;

T f1(t1,qb,q,t);

initial
begin

$monitor("Q[1] = %b :T = %b : Q = %b : Q` = %b",qb,t1,q,t);
$dumpfile("t.vcd");
$dumpvars;

qb = 1'b0 ;
t1 = 1'b0 ; #5
t1 = 1'b1 ; #5

qb = 1'b1 ;
t1 = 1'b0 ; #5
t1 = 1'b1 ; #5
t1 = 1'b1 ;

end

endmodule
