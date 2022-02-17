`timescale 1ns / 1ps

module registru(clk, reset, load, a, b, c, d, e, f, out_a, out_b, out_c, out_d, out_e, out_f);
input clk, reset, load;
input[7:0] a,b,c,d,e,f;
output reg[7:0] out_a, out_b, out_c, out_d, out_e, out_f;

always @(posedge clk, posedge reset, posedge load) begin
    if (reset) begin
        out_a <= 0;
        out_b <= 0;
        out_c <= 0;
        out_d <= 0;
        out_e <= 0;
        out_f <= 0;
    end
    else if (load) begin
        out_a <= a;
        out_b <= b;
        out_c <= c;
        out_d <= d;
        out_e <= e;
        out_f <= f;
    end
end
endmodule