module led_onoff(clk,count,led);
input clk;
output [28:0]count;
output led;
reg [28:0]count=0;
reg led=0;
always@(posedge clk)
begin
count=count+1;
if(count>=0 && count<=200000000) 
led=1'b1;
else if(count>200000000 && count<=300000000) 
led=1'b0;
if(count==300000000) 
count=0;
end 
endmodule