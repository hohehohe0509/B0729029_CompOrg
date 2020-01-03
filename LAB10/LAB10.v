module LAB10(AA,BA,DA,FS,CI,DI,LE,MD,MB,clk,BusD,Address_out,Data_out,N,Z);
input [1:0]AA,BA,DA;
input [3:0]FS;
input [7:0]CI,DI;
input LE,MD,MB,clk;
output[7:0]BusD,Data_out;
output[7:0]Address_out;
output N,Z;

reg [7:0]R0E,R1E,R2E,R3E;
wire[7:0]BusD,F,A,B_data,B,G,R0d,R1d,R2d,R3d;
wire[1:0]Address_out;
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
2'b00:
	begin
	R0E=1;
	R1E=0;
	R2E=0;
	R3E=0;
	end
2'b01:
	begin
	R0E=0;
	R1E=1;
	R2E=0;
	R3E=0;
	end
2'b10:
	begin
	R0E=0;
	R1E=0;
	R2E=1;
	R3E=0;
	end
2'b11:
	begin
	R0E=0;
	R1E=0;
	R2E=0;
	R3E=1;
	end
endcase
end
else begin
R0E=0;
R1E=0;
R2E=0;
R3E=0;
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

mux_4to1 MUXA(
	.in3(R3d),
	.in2(R2d),
	.in1(R1d),
	.in0(R0d),
	.sel(AA),
	.out(A)
);

assign Address_out=A;

mux_4to1 MUXB(
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