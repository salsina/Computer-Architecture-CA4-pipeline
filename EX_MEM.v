module EX_MEM(clk, rst,rd_input,MemToReg_input,ALU_res_input, WriteData_input, RegDst_input,MemWrite_input, MemRead_input, RegWrite_input, ALU_res_output, WriteData_output,rd_output,MemToReg_output, MemRead_output, RegWrite_output,RegDst_output,MemWrite_output);
    input [31:0] ALU_res_input, WriteData_input;
    input [4:0] rd_input;
    input [1:0] MemToReg_input, RegDst_input;
    input MemWrite_input, MemRead_input, RegWrite_input, clk, rst;
    output reg [31:0] ALU_res_output, WriteData_output;
    output reg [4:0] rd_output;
    output reg [1:0] MemToReg_output, RegDst_output;
    output reg MemWrite_output, MemRead_output, RegWrite_output;

    always @(posedge clk) begin
        if (rst == 1'b0) begin
            rd_output <= rd_input;
            MemWrite_output <= MemWrite_input;
            WriteData_output <= WriteData_input;
            ALU_res_output <= ALU_res_input;
            RegWrite_output <= RegWrite_input;
            MemToReg_output <= MemToReg_input;
            MemRead_output <= MemRead_input;
            RegDst_output <= RegDst_input;
        end
        else if(rst == 1'b1) begin
            rd_output <= 5'b0;
            MemWrite_output <= 1'b0;
            WriteData_output <= 32'b0;
            ALU_res_output <= 32'b0;
            MemRead_output <= 1'b0;
            RegDst_output <= 2'b0;
            RegWrite_output <= 1'b0;
            MemToReg_output <= 2'b0;
        end
    end
endmodule