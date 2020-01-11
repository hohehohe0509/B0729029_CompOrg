module datapath(AA,BA,DA,FS,CI,DI,LE,MD,MB,clk,BusD,Address_out,Data_out,N,Z,Bus_A,R0d,R1d,R2d,R3d,R4d,R5d,R6d,R7d);
input [2:0]AA,BA,DA;
input [3:0]FS;
input [7:0]CI,DI;
input LE,MD,MB,clk;
output[7:0]BusD,Data_out,R0d,R1d,R2d,R3d,R4d,R5d,R6d,R7d;
output[7:0]Address_out,Bus_A;
output N,Z;

reg [7:0]R0E,R1E,R2E,R3E,R4E,R5E,R6E,R7E;
wire[7:0]BusD,F,A,B_data,B,G,R0d,R1d,R2d,R3d,R4d,R5d,R6d,R7d,Bus_A;
wire[7:0]Address_out;
wire N,Z;

mux muxD(
	.in1(DI),
	.in0(F),
	.sel(MD),
	.out(BusD)
);

always @(*) begin
if(LE==1)begin
case(DA)
3'b000:
	begin
	R0E=1;
	R1E=0;
	R2E=0;
	R3E=0;
	R4E=0;
	R5E=0;
	R6E=0;
	R7E=0;
	end
3'b001:
	begin
	R0E=0;
	R1E=1;
	R2E=0;
	R3E=0;
	R4E=0;
	R5E=0;
	R6E=0;
	R7E=0;
	end
3'b010:
	begin
	R0E=0;
	R1E=0;
	R2E=1;
	R3E=0;
	R4E=0;
	R5E=0;
	R6E=0;
	R7E=0;
	end
3'b011:
	begin
	R0E=0;
	R1E=0;
	R2E=0;
	R3E=1;
	R4E=0;
	R5E=0;
	R6E=0;
	R7E=0;
	end
3'b100:
	begin
	R0E=0;
	R1E=0;
	R2E=0;
	R3E=0;
	R4E=1;
	R5E=0;
	R6E=0;
	R7E=0;
	end
3'b101:
	begin
	R0E=0;
	R1E=0;
	R2E=0;
	R3E=0;
	R4E=0;
	R5E=1;
	R6E=0;
	R7E=0;
	end
3'b110:
	begin
	R0E=0;
	R1E=0;
	R2E=0;
	R3E=0;
	R4E=0;
	R5E=0;
	R6E=1;
	R7E=0;
	end
3'b111:
	begin
	R0E=0;
	R1E=0;
	R2E=0;
	R3E=0;
	R4E=0;
	R5E=0;
	R6E=0;
	R7E=1;
	end
endcase
end
else begin
R0E=0;
R1E=0;
R2E=0;
R3E=0;
R4E=0;
R5E=0;
R6E=0;
R7E=0;
end
end

register R0(
	.clk(clk),
   .load(R0E),
   .load_data(BusD),
   .data(R0d)
);

register R1(
	.clk(clk),
   .load(R1E),
   .load_data(BusD),
   .data(R1d)
);

register R2(
	.clk(clk),
   .load(R2E),
   .load_data(BusD),
   .data(R2d)
);

register R3(
	.clk(clk),
   .load(R3E),
   .load_data(BusD),
   .data(R3d)
);

register R4(
	.clk(clk),
   .load(R4E),
   .load_data(BusD),
   .data(R4d)
);
register R5(
	.clk(clk),
   .load(R5E),
   .load_data(BusD),
   .data(R5d)
);
register R6(
	.clk(clk),
   .load(R6E),
   .load_data(BusD),
   .data(R6d)
);
register R7(
	.clk(clk),
   .load(R7E),
   .load_data(BusD),
   .data(R7d)
);

mux_8to1 MUXA(
	.in7(R7d),
	.in6(R6d),
	.in5(R5d),
	.in4(R4d),
	.in3(R3d),
	.in2(R2d),
	.in1(R1d),
	.in0(R0d),
	.sel(AA),
	.out(A)
);

assign Address_out=A;
assign Bus_A=A;
mux_8to1 MUXB(
	.in7(R7d),
	.in6(R6d),
	.in5(R5d),
	.in4(R4d),
	.in3(R3d),
	.in2(R2d),
	.in1(R1d),
	.in0(R0d),
	.sel(BA),
	.out(B_data)
);

mux muxB(
	.in1(CI),
	.in0(B_data),
	.sel(MB),
	.out(B)
);

assign Data_out=B;
function_unit FU(
	.A(A),
	.B(B),
	.Cin(FS[0]),
	.S0(FS[1]),
	.S1(FS[2]),
	.S2(FS[3]),
	.G(F),
	.N(N),
	.Z(Z)
);
endmodule