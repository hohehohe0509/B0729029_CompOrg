module LAB08_3(X,T,S,clock);
input X;
input T;
input clock;

output [1:0] S;

reg [1:0] S;

always @(posedge clock)begin
	case(S)
	2'b00:
		begin
			if (X==1)
			S<=2'b00;
			else
			S<=2'b01;
		end
	2'b01:
		begin
			if (T==1)
			S<=2'b10;
			else
			S<=2'b01;
		end
	2'b10:	S<=2'b11;
	2'b11:	S<=2'b00;
	endcase
end
endmodule