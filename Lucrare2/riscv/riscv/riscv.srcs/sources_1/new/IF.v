`timescale 1ns / 1ps

module IF (input clk, reset, PCSrc, PC_write, 
           input [31:0] PC_Branch, 
           output [31:0] PC_IF, INSTRUCTION_IF);

wire [31:0] mux_out, PC_out, PC_initial, adder_out;

mux2_1 in1(PC_initial, PC_Branch, PCSrc, mux_out);

PC in2(clk, reset, PC_write, mux_out, PC_out);

instruction_memory in3(PC_out[11:2], INSTRUCTION_IF);

assign PC_IF = PC_out;

adder in4(PC_out, 32'd4, PC_initial);

endmodule
