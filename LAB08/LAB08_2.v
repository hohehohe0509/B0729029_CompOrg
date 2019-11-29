module LAB08_2(X,A,B,Y,clock);
input	X;
input clock;

output A;
output B;
output Y;

reg A;
reg B;

always @(posedge clock)begin
A<=(A&X)|(B&X);
B<=~A&X;
end
assign Y=(A|B)&~X;

endmodule