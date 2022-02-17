`timescale 1ns / 1ps

module imm_gen(input [31:0] in,
               output reg [31:0] out);
               
  reg[6:0] opcode;
 
  always @(in) begin
   opcode = in[6:0];
   case(opcode)
        7'b0000011: out = { {21{in[31]}}, in[30:25], in[24:21], in[20]};  // I-Type (LW)
        7'b0010011: out = { {21{in[31]}}, in[30:25], in[24:21], in[20]}; // I-Type (ADDI, ANDI, ORI, XORI, SLTI, SLTIU)
        7'b0100011: out = { {21{in[31]}}, in[30:25], in[11:8], in[7]}; // S-Type (SW)
        7'b1100011: out = { {20{in[31]}}, in[7], in[30:25], in[11:8], 1'b0};  // B-Type (BEQ, BNE, BLT, BGE, BLTU, BGEU)
        default: out = 32'b0;
    endcase
  end
 
endmodule
