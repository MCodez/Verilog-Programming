
module D_ff (d,clk,q,q_bar,reset);

input d;
input clk;
input reset;

output q;
output q_bar;

reg q;

assign q_bar = ~q;

always @(posedge clk)
begin
if (reset) begin 
q<=1'b0;
end
else begin
q<=d;
end
end
endmodule

