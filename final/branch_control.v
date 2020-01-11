module branch_control(PL,JB,BC,N,Z,IR,Bus_A,PC,clk,CI);
input PL,JB,BC,N,Z,clk;
input [15:0] IR;
input [7:0] Bus_A;
output [7:0] PC,CI;
reg [7:0] PC,M1,M2,A_out,constant,CI;
reg S1,S2;

always @(*) begin
	constant={IR[8:6],IR[2:0]};
	CI={4'b0000,IR[2:0]};
	if(PL==1&JB==1)
		begin 
		S1=0;
		S2=1;
		end
	else	if(PL==1&BC==0&Z==1)
		begin 
		S1=1;
		S2=0;
		end
	else if(PL==1&BC==1&N==1)
		begin
		S1=1;
		S2=0;
		end
	else
		begin
		S1=0;
		S2=0;
		end
end
always @(posedge clk) begin
case({S1,S2})
	2'b00:
		begin
		M1=8'b00000001;
		A_out=M1+PC;
		PC=A_out;
		end
	2'b01:
		begin
		M1=8'b00000001;
		A_out=M1+PC;
		PC=Bus_A;
		end
	2'b10:
		begin
		M1=constant;
		A_out=M1+PC;
		PC=A_out;
		end
	2'b11:
		begin
		M1=constant;
		A_out=M1+PC;
		PC=Bus_A;
		end
endcase
end
endmodule
	