/*

       Author: Garrett Botkin
Last Modified: 12/27/2022
       Module: fetch
  Description: 

*/

import RiscVDefines::*;

module fetch
#(
	parameter WIDTH=32
)
(
	input logic clk_i,
	input logic rst_i,
	
	input pcsource pcsource_i, 
	
	output logic [WIDTH-1:0] instruction_decode_o
);


logic [WIDTH-1:0] program_counter;
logic [WIDTH-1:0] program_counter_plus4;

logic [WIDTH-1:0] instruction;

always_comb begin
	program_counter_plus4 = program_counter + 4;
end

always_ff @ (posedge clk_i) begin
	
	if (rst_i) begin
		program_counter <= 0;
	end else begin
	
		case (pcsource_i)
		
			ProgramCounterPlus4 : program_counter <= program_counter_plus4;
			
			JumpJAL : program_counter <= 0;
			
			JumpJALR : program_counter <= 0;
			
			Branch : program_counter <= 0;
			
			default : program_counter <= 0;
		
		endcase
	end
end

/* Instruction Ram (32 32 Bit Registers) */
IRAM #(.MEM_INIT_FILE("IRAM_Init.mem")) instruction_ram

(
.clk_i(clk_i), 
.address_i(program_counter >> 2),
.data_o(instruction)
);

/*
Clock Outputs
*/

always_ff @ (posedge clk_i) begin
	
	if (rst_i) begin
		instruction_decode_o <= 0;
	end else begin
		instruction_decode_o <= instruction;
	end

end


endmodule