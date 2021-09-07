module dsyc(
input d,input clk,input reset,
output q);
reg q;
always@(posedge clk)
begin 
if(reset) q=0;
else q=d;
end
endmodule