
module mux_3x8_tb;

wire out;

reg [2:0]sel;
reg [7:0]in;

mux_3x8 mux( .out(out), .in(in), .sel(sel) );

initial begin
$monitor(sel,in,out);

sel=3'b000;
in=8'b10111011;

end

always #20 sel=sel+3'b001;

endmodule