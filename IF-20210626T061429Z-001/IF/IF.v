`timescale 1ns/1ns

`include "Instruction_mem.v"

module IF(clk,instr);

input clk;
output [31:0]instr;//should this be stored in a register , to help pipelining ?
reg [31:0]pc=0;//always starts at address 0x0

always@(negedge clk)
begin 
    pc=pc+1;
end

Instruction_mem inst_mem(.address(pc),.instr(instr));

endmodule



