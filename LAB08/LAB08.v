module LAB08(A,S,L,Z,Q,clk);
input	[7:0] A;
input			S;
input			L;
input [7:0] Z;
input			clk;
output[7:0]	Q;

wire	[7:0]	D;
wire	[7:0]	Q;
wire	[7:0]	add_out;

adder add(
	.a(A),
	.b(Q),
	.sum(add_out)
	);

mux_2 mux(
	.d_0(add_out),
	.d_1(Z),
	.dout(D),
	.d(S)
	);

register r(
	.load_data(D),
	.data(Q),
	.load(L),
	.clk(clk)
	);

endmodule