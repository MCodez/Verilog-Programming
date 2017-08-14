

module BasicGates(
input1,
input2,
output_and,
output_or,
output_not,
output_nand,
output_nor,
output_xor
);

input input1;
input input2;
output output_and;
output output_or;
output output_not;
output output_nand;
output output_nor;
output output_xor;

assign output_and = input1 & input2;
assign output_or = input1 | input2;
assign output_not = ~input1;
assign output_nand = ~(input1 & input2);
assign output_nor = ~(input1 | input2);
assign output_xor = (~input1 & input2) | (input1 & ~input2);

endmodule