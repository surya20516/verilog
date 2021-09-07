module ring(in,clk,reset,out);
input [3:0]in;
input clk,reset;
output [3:0]out;
reg [3:0]out;
always@(posedge clk)
begin 
if(reset)
begin 
out=in;
end
else
begin
out[1]<=out[0];
out[2]<=out[1];
out[3]<=out[2];
out[0]<=out[3];
end
end
endmodule 