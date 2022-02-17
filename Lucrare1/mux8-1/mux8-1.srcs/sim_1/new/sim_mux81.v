`timescale 1ns / 1ps


module sim_mux81();
wire out;
reg a, b, c, d, e, f, g, h;
reg[2:0] ctrl;

mux81 m(a, b, c, d, e, f, g, h, ctrl, out);
initial begin
a=1'b0; b=1'b0; c=1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b0; ctrl=3'b000;

#10 a=1'b1; b=1'b0; c=1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b0; ctrl=3'b000;
#10 a=1'b1; b=1'b0; c=1'b1; d=1'b0; e=1'b1; f=1'b0; g=1'b1; h=1'b0; ctrl=3'b000;
#10 a=1'b0; b=1'b1; c=1'b0; d=1'b1; e=1'b0; f=1'b1; g=1'b0; h=1'b1; ctrl=3'b000;

#10 a=1'b1; b=1'b0; c=1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b0; ctrl=3'b001;
#10 a=1'b1; b=1'b0; c=1'b1; d=1'b0; e=1'b1; f=1'b0; g=1'b1; h=1'b0; ctrl=3'b001;
#10 a=1'b0; b=1'b1; c=1'b0; d=1'b1; e=1'b0; f=1'b1; g=1'b0; h=1'b1; ctrl=3'b001;

#10 a=1'b1; b=1'b0; c=1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b0; ctrl=3'b010;
#10 a=1'b1; b=1'b0; c=1'b1; d=1'b0; e=1'b1; f=1'b0; g=1'b1; h=1'b0; ctrl=3'b010;
#10 a=1'b0; b=1'b1; c=1'b0; d=1'b1; e=1'b0; f=1'b1; g=1'b0; h=1'b1; ctrl=3'b010;

#10 a=1'b1; b=1'b0; c=1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b0; ctrl=3'b011;
#10 a=1'b1; b=1'b0; c=1'b1; d=1'b0; e=1'b1; f=1'b0; g=1'b1; h=1'b0; ctrl=3'b011;
#10 a=1'b0; b=1'b1; c=1'b0; d=1'b1; e=1'b0; f=1'b1; g=1'b0; h=1'b1; ctrl=3'b011;

#10 a=1'b1; b=1'b0; c=1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b0; ctrl=3'b100;
#10 a=1'b1; b=1'b0; c=1'b1; d=1'b0; e=1'b1; f=1'b0; g=1'b1; h=1'b0; ctrl=3'b100;
#10 a=1'b0; b=1'b1; c=1'b0; d=1'b1; e=1'b0; f=1'b1; g=1'b0; h=1'b1; ctrl=3'b100;

#10 a=1'b1; b=1'b0; c=1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b0; ctrl=3'b101;
#10 a=1'b1; b=1'b0; c=1'b1; d=1'b0; e=1'b1; f=1'b0; g=1'b1; h=1'b0; ctrl=3'b101;
#10 a=1'b0; b=1'b1; c=1'b0; d=1'b1; e=1'b0; f=1'b1; g=1'b0; h=1'b1; ctrl=3'b101;

#10 a=1'b1; b=1'b0; c=1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b0; ctrl=3'b110;
#10 a=1'b1; b=1'b0; c=1'b1; d=1'b0; e=1'b1; f=1'b0; g=1'b1; h=1'b0; ctrl=3'b110;
#10 a=1'b0; b=1'b1; c=1'b0; d=1'b1; e=1'b0; f=1'b1; g=1'b0; h=1'b1; ctrl=3'b110;

#10 a=1'b1; b=1'b0; c=1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b0; ctrl=3'b111;
#10 a=1'b1; b=1'b0; c=1'b1; d=1'b0; e=1'b1; f=1'b0; g=1'b1; h=1'b0; ctrl=3'b111;
#10 a=1'b0; b=1'b1; c=1'b0; d=1'b1; e=1'b0; f=1'b1; g=1'b0; h=1'b1; ctrl=3'b111;

end 
endmodule
