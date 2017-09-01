module adder_tb;


wire [3:0]oc;

wire [3:0]out;


reg [3:0]in1;

reg [3:0]in2;

reg ic;


main m(.oc(oc), .in1(in1), .in2(in2), .out(out), .ic(ic) );

initial

begin

$monitor("   ",in1,"  ",in2,"  ",out,"  ",oc[3]);

in1=4'b1010;

in2=4'b1001;

ic=0;



end


endmodule