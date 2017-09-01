module fulladder(a,b,ic,o,oc);
input a,b,ic;
output o,oc;

assign o = (~ic & ((a & ~b) | (~a & b)) ) | (ic & ~((a & ~b) | (~a & b)) );

assign oc = (a & b) | (b & ic) | (ic & a);

endmodule