module mod9(clk,reset,count);

input clk,reset;
output [3:0] count; 

reg[3:0] count;
reg [3:0] counter;

always @(posedge clk )
begin
	
  if (reset)
    assign counter=4'd0;
  else if(counter==4'b1000)
    assign counter=4'd0;
  else
    assign counter=counter+4'd1;

assign count=counter;

end

endmodule

module testbench();

reg clk=0;
reg reset;

wire[3:0] count;

integer i;

mod9 f1(.clk(clk),.count(count),.reset(reset));

always #1 clk=~clk;

initial 
begin

$monitor(" count = %b",count);
$dumpfile("mod9.vcd");
$dumpvars;

reset=0;#1
reset=1;#1
reset=0;
#100 

$finish;

end

endmodule
