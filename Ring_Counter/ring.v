module ring(clk,reset,count);

input clk,reset;

output [3:0] count; 

reg[3:0] count;
reg [3:0] counter;

always @(posedge clk )

begin

  if (reset)
    assign counter=4'd1;
  else
    assign counter=counter<<1;

assign count=counter;

end

endmodule

module testbench();

reg clk=0;
reg reset;

wire[3:0] count;

integer i;

ring f1(.clk(clk),.count(count),.reset(reset));

always #1 clk=~clk;

initial 
begin

$monitor("count = %b",count);
$dumpfile("ring.vcd");
$dumpvars;

reset=0;#1
reset=1;#1
reset=0;
#100 

$finish;

end

endmodule
