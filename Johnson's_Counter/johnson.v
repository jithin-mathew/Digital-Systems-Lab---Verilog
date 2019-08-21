module johnson(clk,reset,count);

input clk,reset;

output [3:0] count; 

reg[3:0] count;
reg [3:0] counter;

always @(posedge clk )

begin
  if (reset)
    assign counter=4'd0;
  else if(counter==4'b1111)
    begin
    assign counter=counter<<1;
    assign counter=counter+4'd0;
    end
else if(counter==4'b1000)
    begin
    assign counter=counter<<1;
    assign counter=counter+4'd0;
    end
else if(counter==4'b1100)
    begin
    assign counter=counter<<1;
    assign counter=counter+4'd0;
    end
else if(counter==4'b1110)
    begin
    assign counter=counter<<1;
    assign counter=counter+4'd0;
    end
  else
    begin
    assign counter=counter<<1;
    assign counter=counter+4'd1;
    end
assign count=counter;

end

endmodule

module testbench();

reg clk=0;
reg reset;

wire[3:0] count;

integer i;
johnson f1(.clk(clk),.count(count),.reset(reset));

always #1 clk=~clk;

initial 
begin

$monitor("count = %b",count);
$dumpfile("johnson.vcd");
$dumpvars;

reset=0;#1
reset=1;#1
reset=0;
#100 

$finish;

end

endmodule
