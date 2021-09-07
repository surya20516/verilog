module add4(a,b,cin,cout,s);
input [3:0]a;
input [3:0]b;
input cin;
output [3:0]s;
output cout;
wire [3:0]s;
wire cout;
assign {cout,s}=a+b+cin;
endmodule