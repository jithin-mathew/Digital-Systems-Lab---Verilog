module updowncountermod(clk, clear, updown, q);

input clk;

input clear;

input updown;

output [3:0] q;

reg [3:0] q;

always@(posedge clear or posedge clk)

begin

if(clear)

q <=4'b0000;

else if(updown)

q <= q+1'b1;

else

q <= q-1'b1;

end

 

endmodule

module updowncountert_b;

reg clk;

reg clear;

reg updown;

wire [3:0] q;

updowncountermod uut (.clk(clk),.clear(clear), .updown(updown), .q(q)   );

initial begin

$monitor("Clock = %b : Clear = %b : Updown = %b : Q = %b",clk,clear,updown,q);
$dumpfile("updown.vcd");
$dumpvars;

clk = 0;

clear = 0;

updown = 0;

 

#5 clear=1'b1;

#5 clear=1'b0;

#100 updown=1'b1;

end

always #5 clk=~clk;

initial #150 $finish;

endmodule
