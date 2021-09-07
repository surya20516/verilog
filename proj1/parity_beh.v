module parity_data_beh(data,pe);
input [7:0]data;
output pe;
reg pe;
integer i,count=0;
always@(data)
begin
for(i=0;i<8;i=i+1) 
begin
if(data[i]==1)
count=count+1;
end
if(count%2==0)
pe=0;
else 
pe=1;
end
endmodule