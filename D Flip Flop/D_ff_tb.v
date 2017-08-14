
module D_ff_tb;

reg clk;
reg reset;
reg d;

wire q;
wire qb;

D_ff dflipflop( .clk(clk), .reset(reset), .d(d), .q(q), .q_bar(qb) );

initial begin
$monitor(clk,d,q,qb,reset);

d = 1'b0;
reset = 1;
clk=1;

#10 
reset=0;
d=1'b1;

#100
reset=0;
d=1'b0;

#100
reset=0;
d=1'b0;

#100
reset=0;
d=1'b1;

#100
reset=1;
d=1'b1;

end
always #25 clk <= ~clk;

endmodule

