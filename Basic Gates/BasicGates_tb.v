

module BasicGates_tb;
wire t_y1,t_y2,t_y3,t_y4,t_y5,t_y6;
reg t_a,t_b;

BasicGates my_gates( .input1(t_a), .input2(t_b), .output_and(t_y1), .output_or(t_y2), .output_not(t_y3), .output_nand(t_y4), .output_nor(t_y5), .output_xor(t_y6) );

initial
begin
$monitor(t_a,t_b,t_y1,t_y2,t_y3,t_y4,t_y5,t_y6);

t_a = 1'b0;
t_b = 1'b0;

#50

t_a = 1'b0;
t_b = 1'b1;

#50

t_a = 1'b1;
t_b = 1'b0;

#50

t_a = 1'b1;
t_b = 1'b1;

end
endmodule