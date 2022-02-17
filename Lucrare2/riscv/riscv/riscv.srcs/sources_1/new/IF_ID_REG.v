`timescale 1ns / 1ps

module IF_ID_reg(input clk,reset,write,
                 input [31:0] pc_in, instruction_in,
                 output reg [31:0] pc_out, instruction_out);
  
always@(posedge clk) begin
    if (reset) begin
       pc_out = 32'b0;
       instruction_out = 32'b0;
    end
    else if (write) begin
       pc_out = pc_in;
       instruction_out = instruction_in;
    end
end 
endmodule
