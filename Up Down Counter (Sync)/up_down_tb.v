
module up_down_tb;

reg clk,reset,mode;

wire [3:0]q;

up_down_counter updown( .clk(clk), .reset(reset), .mode(mode), .q(q) );

initial 
begin
clk=1'b0;
mode=1'b1;
end
always 
#5 clk = ~clk;

initial 
begin
reset=1'b1; 
mode=1'b0;
#20 reset = 1'b0; 
#20 mode=1'b1;
#180 reset = 1'b1; 
#180 mode=1'b0;
#20 reset = 1'b0; 
#20 mode=1'b1;

end
endmodule
