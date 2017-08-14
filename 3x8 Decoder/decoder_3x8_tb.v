
module decoder_3x8_tb;

wire [7:0]out;
reg [2:0]in;

decoder_3x8 dec( .out(out), .in(in) );

initial
begin
$monitor(in,out);
in = 3'b000;
end

always #20 in = in + 3'b001;

endmodule