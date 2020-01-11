module function_unit(G,A,B,Cin,S0,S1,S2,N,Z,C,V);
input [7:0] A,B;
input Cin,S0,S1,S2;

output [7:0] G;
output N,Z,C,V;

reg V,C,N,Z;
reg [7:0] G;

always @(*)begin
	case({S2,S1,S0,Cin})
	4'b0000:
		G=A;
	4'b0001:
		begin
		G=A+1;
		if(A==8'b11111111)
		C=1;
		else
		C=0;
		end
	4'b0010:
		begin
		G=A+B;
		if((A[7]==1&G[7]==0)|(B[7]==1&G[7]==0)|(A[7]==1&B[7]==1))
		C=1;
		else
		C=0;
		end
	4'b0011:
		begin
		G=A+B+1;
		if((A[7]==1&G[7]==0)|(B[7]==1&G[7]==0)|(A[7]==1&B[7]==1))
		C=1;
		else if((A+B)==8'b11111111)
		C=1;
		else 
		C=0;
		end
	4'b0100:
		begin
		G=A+~B;
		if((A[7]==1&G[7]==0)|(~B[7]==1&G[7]==0)|(A[7]==1&~B[7]==1))
		C=1;
		else
		C=0;
		end
	4'b0101:
		begin
		G=A+~B+1;
		if((A[7]==1&G[7]==0)|(~B[7]==1&G[7]==0)|(A[7]==1&~B[7]==1))
		C=1;
		else if((A+~B)==8'b11111111)
		C=1;
		else 
		C=0;
		end
	4'b0110:
		begin
		G=A-1;
		if(A>0)
		C=1;
		else
		C=0;
		end
	4'b0111:
		G=A;
	4'b1000:
		G=A&B;	
	4'b1001:
		G=A|B;
	4'b1010:
		G=A^B;
	4'b1011:
		G=~A;
	4'b1100:
		G=B;
   4'b1101:
		G={1'b0, B[7:1]};
   4'b1110:
		G={B[6:0], 1'b0};
   4'b1111:
		G=8'hx;
	endcase
	
	if(G[7]==1)
	N=1;
	else
	N=0;
	
	if(G==8'b00000000)
	Z=1;
	else
	Z=0;
end
endmodule