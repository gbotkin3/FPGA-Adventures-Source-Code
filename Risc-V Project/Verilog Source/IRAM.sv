module IRAM
#(
	parameter DATAWIDTH=32,
	parameter ADDRWIDTH=5,
	parameter MEM_INIT_FILE=""
)
(
	input logic clk_i,
	
	input logic [ADDRWIDTH-1:0] address_i,
	output logic [DATAWIDTH-1:0] data_o
);

logic [DATAWIDTH-1:0] data [2**ADDRWIDTH];

initial begin
	if (MEM_INIT_FILE != "") begin
		$readmemh(MEM_INIT_FILE, data);
	end
end

always_ff @ (posedge clk_i) begin
		
	data_o <= data[address_i];
	
end

endmodule