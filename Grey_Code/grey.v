module grey(b,g);
input [2:0]b;
output [2:0]g;

assign g[0] = b[0]^b[1];
assign g[1] = b[1]^b[2];
assign g[2] = b[2];

endmodule

module testbench;
reg [2:0]b;
wire [2:0]g;

grey f(.b(b),.g(g));

initial
begin
$monitor("Binary = %b --> Grey = %b",b,g);
$dumpfile("grey.vcd");
$dumpvars;
 b = 4'b000 ; 
#5;
 b = 4'b001 ; 
#5;
 b = 4'b010 ; 
#5;
 b = 4'b011 ; 
#5;
 b = 4'b100 ; 
#5;
 b = 4'b101 ; 
#5;
 b = 4'b110 ; 
#5;
 b = 4'b111 ; 
#5;
 b = 4'b111 ;  
end
endmodule
