module counter(clk,reset,count);
input clk,reset;
output [3:0]count;
reg [3:0]count=4'b0000;
always@(clk)
begin
if(reset==1)
count=0;
else
count=count+1;
end
endmodule