module final(clk,BusD,IR,R0d,R1d,R2d,R3d,R4d,R5d,R6d,R7d,Address);
input clk;
output [15:0]IR;
output [7:0] BusD,R0d,R1d,R2d,R3d,R4d,R5d,R6d,R7d,Address;

wire [15:0] IR;
wire [2:0] DA,AA,BA;
wire [3:0] FS;
wire PL,JB,BC,N,Z,MB,MD,RW,MW;
wire [7:0] PC,Bus_A,BusD,Address,Data_out,DI,CI,R0d,R1d,R2d,R3d,R4d,R5d,R6d,R7d;

branch_control branch(
.PL(PL),
.JB(JB),
.BC(BC),
.N(N),
.Z(Z),
.IR(IR),
.Bus_A(Bus_A),
.PC(PC),
.clk(clk),
.CI(CI)
);

IMEM IMEM(
.Address(PC),
.Instruction_out(IR)
);

instruction_decoder ID(
.IR(IR),
.DA(DA),
.AA(AA),
.BA(BA),
.FS(FS),
.MB(MB),
.MD(MD),
.RW(RW),
.MW(MW),
.PL(PL),
.JB(JB),
.BC(BC)
);

datapath datapath(
.AA(AA),
.BA(BA),
.DA(DA),
.FS(FS),
.CI(CI),
.DI(DI),
.LE(RW),
.MD(MD),
.MB(MB),
.clk(clk),
.BusD(BusD),
.Bus_A(Bus_A),
.Address_out(Address),
.Data_out(Data_out),
.N(N),
.Z(Z),
.R0d(R0d),
.R1d(R1d),
.R2d(R2d),
.R3d(R3d),
.R4d(R4d),
.R5d(R5d),
.R6d(R6d),
.R7d(R7d)
);

data_memory DEME(
.MW(MW),
.Address(Address),
.Data_in(Data_out),
.Data_out(DI),
.clk(clk)
);
endmodule
