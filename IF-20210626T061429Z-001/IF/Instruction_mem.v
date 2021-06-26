`timescale 1ns/1ns

module Instruction_mem(address,instr);

input [31:0]address;
output [31:0]instr;
reg [31:0] instruction_memory [39:0]; //capable of storing 50 instructions, each 32 bits wide

initial $readmemh("instrn_mem.txt",instruction_memory,0,39);//instructions already stored at 'instrn_mem.h', now load them into the instruction_memory


assign instr = instruction_memory[address];//executes whenever there is a change in the 'address' value

always @(address)
begin
    $display("Current instruction");
    $display("address: %d",address);
    $display("instruction: %x",instr);
end


endmodule
