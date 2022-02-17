`timescale 1ns / 1ps

module or_gate(out, a, b, c, d, e, f, g, h); 
input a, b, c, d, e, f, g, h;
output out;

assign out = a | b | c | d | e | f | g | h; 

endmodule
