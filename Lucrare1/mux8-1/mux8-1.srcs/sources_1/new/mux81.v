`timescale 1ns / 1ps

module mux81(a, b, c, d, e, f, g, h, ctrl, out);
input a,b,c,d,e,f,g,h;
input[2:0] ctrl;
output out;

wire S0, S1, S2, not_S0, not_S1, not_S2;
wire and1, and2, and3, and4, and5, and6, and7, and8;

assign S2 = ctrl[0];
assign S1 = ctrl[1];
assign S0 = ctrl[2];

not_gate i1(S0, not_S0);
not_gate i2(S1, not_S1);
not_gate i3(S2, not_S2);

and_gate i4(a, not_S0, not_S1, not_S2, and1);
and_gate i5(b, S0, not_S1, not_S2, and2);
and_gate i6(c, not_S0, S1, not_S2, and3);
and_gate i7(d, S0, S1, not_S2, and4);
and_gate i8(e, not_S0, not_S1, S2, and5);
and_gate i9(f, S0, not_S1, S2, and6);
and_gate i10(g, not_S0, S1, S2, and7);
and_gate i11(h, S0, S1, S2, and8);

or_gate i12(out, and1, and2, and3, and4, and5, and6, and7, and8);

endmodule
