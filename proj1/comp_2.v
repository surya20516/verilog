module comp_2(a,b,g,l,e);
input [1:0]a;
input [1:0]b;
output g,l,e;
wire g,l,e;
assign g=(a>b)?1:0, l=(a<b)?1:0, e=(a==b)?1:0;
endmodule