package RiscVDefines;

	`define WIDTH 32;
	
	typedef enum logic [1:0] {ProgramCounterPlus4, JumpJAL, JumpJALR, Branch} pcsource;

endpackage