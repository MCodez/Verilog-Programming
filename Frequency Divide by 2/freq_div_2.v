
// procedure is to change the output state at every positive edge of input
module freq_div_2(clk,clk2);

input clk;
output clk2;


wire clk,clk2;

reg mod;

initial mod=0;

always @(posedge clk) begin
	mod = ~mod;
end

assign clk2 = mod;

endmodule


