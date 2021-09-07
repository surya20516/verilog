module parity_data(data,o_data);
input [7:0]data;
output [8:0]o_data;
wire pe;
assign pe=^data;
assign o_data={pe,data};
endmodule