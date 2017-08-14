
module freq_div_3_tb;

wire clk2;
reg clk,reset;

freq_div_3 fre( .clk(clk), .clk2(clk2), .reset(reset) );

initial begin
$monitor(clk,clk2,reset);
clk=0;
reset=0;
#20 reset=1;
#20 reset=0;

end

always #10 clk = ~clk;

endmodule