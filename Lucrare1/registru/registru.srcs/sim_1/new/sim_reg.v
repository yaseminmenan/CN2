`timescale 1ns / 1ps


module sim_reg();
reg clk, reset, en, inc, dec, shl, shr;
reg [3:0] in;
wire [3:0] out;

registru reg1(in, clk, reset, en, inc, dec, shl, shr, out);
initial begin 
#0   in=4'd5; clk=0; reset=0; en=1; inc=0; dec=0; shl=0; shr=0;
#20  reset=0; en=0; inc=1; dec=0; shl=0; shr=0;
#20  reset=1; en=0; inc=0; dec=0; shl=0; shr=0;
#20  in= 4'd8; reset=0; en=1; inc=0; dec=0; shl=0; shr=0;
#20  reset=0; en=0; inc=1; dec=1; shl=0; shr=0;
#20  reset=0; en=0; inc=0; dec=1; shl=1; shr=0;
#20  in=4'd1; reset=0; en=1; inc=0; dec=0; shl=0; shr=0;
#20  reset=0; en=0; inc=0; dec=0; shl=1; shr=1;
#20  reset=0; en=0; inc=0; dec=0; shl=0; shr=1;
#20  reset=0; en=0; inc=0; dec=0; shl=0; shr=0;
end

always #10 clk=~clk;
endmodule
