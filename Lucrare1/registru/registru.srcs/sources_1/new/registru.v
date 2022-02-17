`timescale 1ns / 1ps

module registru(in, clk, reset, en, inc, dec, shl, shr, out);
input[3:0] in;
input clk, reset, en, inc, dec, shl, shr;
output reg[3:0] out; 

always @(posedge clk or posedge reset) begin
if (reset) 
    out <= 4'd0;
else if (en) 
    out <= in;
else if (inc)
    out <= out + 4'd1;
else if (dec)
    out <= out - 4'd1;
else if (shl) 
    out <=  out << 1;
else if (shr)
    out <= out >> 1;
end
  
endmodule 
