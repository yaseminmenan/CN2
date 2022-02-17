`timescale 1ns / 1ps

module and_gate(a, b, c, d, out);
input a,b,c,d;
output out;
 
assign out = a & b & c & d; 

endmodule
