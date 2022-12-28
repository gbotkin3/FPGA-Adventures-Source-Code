/*

       Author: Garrett Botkin
Last Modified: 12/27/2022
       Module: fetch_tb
  Description: 

*/
import RiscVDefines::*;

module fetch_tb();

parameter CLK_PERIOD = 20;
parameter WIDTH = 32;


logic clk = 0;
logic rst = 1;
pcsource pc_source;

logic [WIDTH-1:0] instruction;

fetch fetch_module

(
.clk_i(clk),
.rst_i(rst),
.pcsource_i(pcsource),

.instruction_decode_o(instruction)
);

always begin
	#(CLK_PERIOD*0.5) clk = ~clk;
end

initial begin
	#(CLK_PERIOD*5) rst = 0;
end

endmodule