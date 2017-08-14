
module up_down_counter(q,clk,reset,mode);

input mode,clk,reset;
output [3:0]q;

reg [3:0]q;

always @(posedge clk) begin
	if (reset) begin
		q=4'b0000;
		
	end
	else if (mode) begin
		q=q+4'b0001;
	end
	else begin
		q=q-4'b0001;
	end
end

endmodule

