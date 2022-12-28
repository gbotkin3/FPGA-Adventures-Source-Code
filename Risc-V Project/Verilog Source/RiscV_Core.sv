module RISCV_Core

(
	input logic clk_i,
	input logic rst_i
);

fetch fetch_stage();
decode decode_stage();
issue issue_stage();
execute execute_stage();
memaccess memaccess_stage();
writeback writeback_stage();

endmodule