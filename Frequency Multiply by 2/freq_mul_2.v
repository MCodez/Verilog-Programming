
module freq_mul_2(clk,mod,clk2);

input clk,mod;
output clk2;

wire clk;
wire clk2;
wire mod;

assign clk2 = (~clk & mod) + (~mod & clk);

endmodule