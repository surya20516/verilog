module Dfilpflop(d,reset,clk,q,qbar);
input d,reset,clk;
output q;
output qbar;
reg q;
wire qbar;
assign qbar=~q;
always @(posedge clk)
begin
if (reset==1) q=0;
else q=d;
end
endmodule