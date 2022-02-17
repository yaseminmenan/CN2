`timescale 1ns / 1ps

module ID(input clk,
          input [31:0] PC_ID,INSTRUCTION_ID,
          input RegWrite_WB,
          input [31:0] ALU_DATA_WB,
          input [4:0] RD_WB,
          output [31:0] IMM_ID,
          output [31:0] REG_DATA1_ID, REG_DATA2_ID,
          output [2:0] FUNCT3_ID,
          output [6:0] FUNCT7_ID,
          output [6:0] OPCODE_ID,
          output [4:0] RD_ID,
          output [4:0] RS1_ID,
          output [4:0] RS2_ID);

assign OPCODE_ID = INSTRUCTION_ID[6:0];
assign FUNCT3_ID = INSTRUCTION_ID[14:12];
assign FUNCT7_ID = INSTRUCTION_ID[31:25];
assign RD_ID = INSTRUCTION_ID[11:7];
assign RS1_ID = INSTRUCTION_ID[19:15];
assign RS2_ID = INSTRUCTION_ID[24:20]; 

registers in1(clk, RegWrite_WB, RS1_ID, RS2_ID, RD_WB, ALU_DATA_WB, REG_DATA1_ID, REG_DATA2_ID);
                 
imm_gen in2(INSTRUCTION_ID, IMM_ID);     
   
  
endmodule