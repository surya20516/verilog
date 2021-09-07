module dasyc(d,clk,reset,q);
input d,clk,reset;
output q;
reg q;
always@(reset)
begin 
if(reset) q=0;
else q=d;
end 
endmodule