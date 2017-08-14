
module freq_mul_2_tb;

reg in,mod;
wire out;

freq_mul_2 fre( .clk(in), .mod(mod), .clk2(out) );

initial 
begin
$monitor(in,out);
in=1'b0;
mod=1'b0;
end

always begin
#50 in = ~in;
#55 mod= ~mod;
end

endmodule

