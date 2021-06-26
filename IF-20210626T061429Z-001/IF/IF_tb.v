`timescale 1ns/1ns
`include "IF.v"

module IF_tb;

reg clk;
wire [31:0]instr;

IF uut(.clk(clk),.instr(instr));

initial begin
clk=1;
$dumpfile("IF_tb.vcd");
$dumpvars(0,IF_tb); 
#20 clk=~clk;
#20 clk=~clk;
#20 clk=~clk;
#20 clk=~clk;
#20 clk=~clk;
end

endmodule
