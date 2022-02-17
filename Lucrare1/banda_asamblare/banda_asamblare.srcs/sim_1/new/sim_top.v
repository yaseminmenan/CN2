`timescale 1ns / 1ps

module sim_top();
reg clk, reset, load;
reg [7:0] a, b, c, d, e, f;
wire [7:0] out;

top inst(clk, reset, load, a, b, c, d, e, f, out);
initial begin
 #0 clk = 0; load = 1; reset = 0;
 #40 a = 8'd9; b = 8'd3; c = 8'd1; d = 8'd1; e = 8'd0; f = 8'd1; //3
 #40 a = 8'd20; b= 8'd5; c = 8'd6; d = 8'd2; e = 8'd4; f= 8'd2; //10
 #40 a = 8'd10; b = 8'd3; c = 8'd6; d = 8'd1; e = 8'd2; f = 8'd1; //16
 #40 a = 8'd50; b = 8'd10; c = 8'd24; d = 8'd8; e = 8'd7; f = 8'd5; //14
 #40 a = 8'd99; b = 8'd9; c = 8'd100; d = 8'd25; e = 8'd63; f = 8'd7; //35
 end
 
 always
     #20 clk = ~clk;
endmodule