module mux (in1, in0, sel, out);
	input	[7:0]	in1;
	input	[7:0]	in0;
	input	sel;
	output	[7:0]	out;

	reg		[7:0]	out;

	always @(*) begin
		case (sel)
			1'b0:	out = in0;
			1'b1:	out = in1;
		endcase
	end
endmodule