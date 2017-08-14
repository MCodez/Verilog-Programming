
module freq_div_3(clk,clk2,reset);

input clk,reset;
output clk2;

wire clk,clk2,reset;

reg [1:0]pos_cnt;
reg [1:0]neg_cnt;

always @(posedge clk) begin

if (reset) begin
pos_cnt=2'b00;
end else if(pos_cnt==2'b10) begin
pos_cnt=2'b00;
end
else begin
pos_cnt=pos_cnt+2'b01;
end
end 

always @(negedge clk) begin

if (reset) begin
neg_cnt=2'b00;
end else if(neg_cnt==2'b10) begin
neg_cnt=2'b00;
end
else begin
neg_cnt=neg_cnt+2'b01;
end
end 

assign clk2 = ((pos_cnt !=2) && (neg_cnt !=2));

endmodule
