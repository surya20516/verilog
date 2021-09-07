module count_zeros_fun(data,count);
input [7:0]data;
output reg [3:0]count;
always@(data)
count=count_binary(data);
function [3:0]count_binary;
input [7:0]data;
integer i;
begin
count_binary=0;
for(i=0;i<8;i=i+1) 
if(!data[i]) count_binary=count_binary+1;
end
endfunction
endmodule

