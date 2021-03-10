module PC(pcInput, pcWrite, clk, rst, pc);
    input [31:0] pcInput;
    input pcWrite;
    input clk, rst; 
    output reg [31:0] pc;
    always @(posedge clk or posedge rst) begin
        if (rst == 1'b1)
	        pc <= 32'b0;
	    else
            if (pcWrite == 1'b1) pc <= pcInput;
    end
endmodule 