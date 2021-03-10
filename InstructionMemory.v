module InstructionMemory(adr,inst);
	input [31:0] adr;
	output reg [31:0] inst;
	reg [31:0] memory [0:16000];
	initial begin 
		$readmemb("test1.txt", memory);//enter the file name
	end
	always@(adr) begin
		inst = memory[adr/4];
	end
endmodule