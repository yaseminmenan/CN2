`timescale 1ns / 1ps

module top(clk, reset, load, a, b, c, d, e, f, out);
input clk, reset, load;
input [7:0] a, b, c, d, e, f;
output [7:0] out;

wire[7:0] a_out, b_out, c_out, d_out, e_out, f_out, imp1, imp2, imp3, inm1;
wire[7:0] imp1_out, imp2_out, imp3_out, inm1_out, imp3_out2, dif;

registru inst1(clk, reset, load, a, b, c, d, e, f, a_out, b_out, c_out, d_out, e_out, f_out);

impartire inst2(a_out, b_out, imp1);
impartire inst3(c_out, d_out, imp2);
impartire inst4(e_out, f_out, imp3);

registru inst5(clk, reset, load, imp1, imp2, imp3, 0, 0, 0, imp1_out, imp2_out, imp3_out, , , );

inmultire inst6(imp1_out, imp2_out, inm1);

registru inst7(clk, reset, load, inm1, imp3_out, 0, 0, 0, 0, inm1_out, imp3_out2, , , , );

scadere inst8(inm1_out, imp3_out2, dif);

registru i9(clk, reset, load, dif, 0, 0, 0, 0, 0, out, , , , ,);

endmodule
