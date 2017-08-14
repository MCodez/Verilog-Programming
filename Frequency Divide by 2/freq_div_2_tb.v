
module freq_div_2_tb;

reg in;
wire out;

freq_div_2 fre( .clk(in), .clk2(out) );

initial 
begin
$monitor(in,out);
in=1'b0;
end

always #25 in = ~in;

endmodule