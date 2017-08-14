
module decoder_3x8(in,out);

input [2:0]in;
output [7:0]out;

reg [7:0]out;
wire [2:0]in;

always @(in)
begin

if(in==0)
out = 8'b00000001;
if(in==1)
out =8'b00000010;
if(in==2)
out =8'b00000100;
if(in==3)
out =8'b00001000;
if(in==4)
out =8'b00010000;
if(in==5)
out =8'b00100000;
if(in==6)
out =8'b01000000;
if(in==7)
out =8'b10000000;

end

endmodule
