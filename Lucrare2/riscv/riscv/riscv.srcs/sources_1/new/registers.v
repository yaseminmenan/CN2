`timescale 1ns / 1ps

module registers(input clk, reg_write,
                 input [4:0] read_reg1, read_reg2, write_reg,
                 input [31:0] write_data,
                 output [31:0] read_data1, read_data2);

reg [31:0] regFile [0:32];
reg [31:0] readData1, readData2; 
integer i;

initial begin
  for (i = 32'd0; i < 32'd32; i = i + 32'd1)
    regFile[i] = i;
end

always@(posedge clk) begin
    if (reg_write)
        regFile[write_reg] = write_data;
end 

always @(read_reg1) begin
   readData1 = regFile[read_reg1];
end

always @(read_reg2) begin
    readData2 = regFile[read_reg2];
end

assign read_data1 = readData1;
assign read_data2 = readData2;

endmodule