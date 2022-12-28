/*

       Author: Garrett Botkin
Last Modified: 12/27/2022
       Module: execute
  Description: 

*/

module execute
#(
	parameter WIDTH=32
)
(
	input logic clk_i,
	input logic rst_i

);

/*
Clock Outputs
*/

always_ff @ (posedge clk_i) begin
	
	if (rst_i) begin
	
	end else begin
	
	end

end

endmodule