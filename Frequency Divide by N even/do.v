

module do(clk,clk2,reset);
  
  input clk,reset;
  output clk2;
  
  wire clk,reset;
  reg clk2;
  reg [1:0]count;
	reg [2:0]n;
  initial
    begin
      count=1;
	n=6;
    end
  
  
  always @(posedge clk) begin
	if (reset) begin
		count=1;
		clk2=0;
	end
	else if (count==(n/2)) begin
		count=1;
		clk2=~clk2;
	end
	else begin
		count=count+1;
	end
end
      
      endmodule