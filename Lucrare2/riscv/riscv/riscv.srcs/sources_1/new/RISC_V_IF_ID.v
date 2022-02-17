`timescale 1ns / 1ps

module RISC_V_IF_ID(input clk,reset,
                    input IF_ID_write, PCSrc, PC_write,
                    input [31:0] PC_Branch,
                    input RegWrite_WB,
                    input [31:0] ALU_DATA_WB,
                    input [4:0] RD_WB,
                    output [31:0] PC_ID, INSTRUCTION_ID, IMM_ID, REG_DATA1_ID, REG_DATA2_ID,
                    output [2:0] FUNCT3_ID,
                    output [6:0] FUNCT7_ID, OPCODE_ID,
                    output [4:0] RD_ID, RS1_ID, RS2_ID);
                    
wire [31:0] PC_IF, INSTRUCTION_IF, PC_ID,INSTRUCTION_ID;
                    
IF in1(clk, reset, PCSrc, PC_write, PC_Branch, PC_IF, INSTRUCTION_IF);
           
IF_ID_reg in2(clk,reset,IF_ID_write, PC_IF, INSTRUCTION_IF, PC_ID,INSTRUCTION_ID);
                 
ID in3(clk, PC_ID,INSTRUCTION_ID, RegWrite_WB, ALU_DATA_WB, RD_WB, IMM_ID, REG_DATA1_ID,
     REG_DATA2_ID, FUNCT3_ID, FUNCT7_ID, OPCODE_ID, RD_ID, RS1_ID, RS2_ID);                 

endmodule
