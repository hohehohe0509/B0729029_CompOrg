module instruction_decoder(IR,DA,AA,BA,FS,MB,MD,RW,MW,PL,JB,BC);
input [15:0]IR;

output[2:0]DA,AA,BA;
output[3:0]FS;
output MB,MD,RW,MW,PL,JB,BC;

reg	[2:0]DA,AA,BA;
reg	[3:0]FS;
reg	MB,MD,RW,MW,PL,JB,BC;

always @(*) begin
DA=IR[8:6];
AA=IR[5:3];
BA=IR[2:0];
MB=IR[15];
MD=IR[13];
RW=~IR[14];
JB=IR[13];
BC=IR[9];
MW=IR[14]&~IR[15];
PL=IR[14]&IR[15];
FS[3:1]=IR[12:10];
FS[0]=~PL&IR[9];
end
endmodule