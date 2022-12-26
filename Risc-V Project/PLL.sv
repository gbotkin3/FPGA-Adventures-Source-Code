module adder 
(

input logic [4:0] a,
input logic [4:0] b,
output logic [4:0] out

);

	always_comb begin
	
		out = a + b;
	
	end
	
endmodule