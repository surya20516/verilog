module seq_melay(clk,reset,x,z);
input x,clk,reset;
output reg z;
reg [1:0]pres_st,next_st;
localparam A=2'b00,B=2'b01,C=2'b10,D=2'b11;
always@(posedge clk,negedge reset)
begin 
if(!reset) pres_st<=A;
else pres_st<=next_st;
end 
always@(pres_st,x)
begin
case(pres_st)
  A: if(x) next_st=A;else next_st=B;
  B: if(x) next_st=C;else next_st=B;
  C: if(x) next_st=A;else next_st=D;
  D: if(x) next_st=C;else next_st=B;
endcase
end
always@(pres_st,x)
begin
case(pres_st)
  A: if(x) z=0; else z=0;
  B: if(x) z=0; else z=0;
  C: if(x) z=0; else z=0;
  D: if(x) z=1; else z=0;
 endcase
 end
 endmodule