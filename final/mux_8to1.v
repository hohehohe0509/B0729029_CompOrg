module mux_8to1 (in7,in6,in5,in4,in3, in2, in1, in0, sel, out);
	input	[7:0]	in7,in6,in5,in4,in3,in2,in1,in0;
	input	[2:0]	sel;
	output	[7:0]	out;

	reg		[7:0]	out;

	always @(*) begin
		case (sel)
			3'b000:	out = in0;
			3'b001:	out = in1;
			3'b010:	out = in2;
			3'b011:	out = in3;
			3'b100:	out = in4;
			3'b101:	out = in5;
			3'b110:	out = in6;
			3'b111:	out = in7;
		endcase
	end
endmodule