module ID(clk, readreg1, readreg2, immediate,pc,Instruction, WriteDataRegister,RegWriteAdr,RegWriteInput, Jadr, adrOfBranch,OPC,rt, rd, rs,ALUoperation,MemWrite, MemRead, RegWrite, Flush,RegDst, PcSrc, MemToReg,ALUSrc);
    input [31:0] Instruction, pc, WriteDataRegister;
    input [4:0] RegWriteAdr;
    input RegWriteInput, clk;
    output wire[31:0] readreg1, readreg2, immediate, adrOfBranch;
    output wire[31:0] Jadr;
    output reg[5:0] OPC;
    output reg[4:0] rt, rd, rs;
    output wire[2:0] ALUoperation;
    output wire[1:0] RegDst, PcSrc, MemToReg;
    output wire ALUSrc, MemWrite, MemRead, RegWrite;
    output wire Flush;
    wire zero;
    wire [2:0] tmpSrc;
    wire [31:0] immediateShifted;

    always@(Instruction) begin
        rs = Instruction[25:21];
        rt = Instruction[20:16];
        rd = Instruction[15:11];
        OPC = Instruction[31:26];
    end
    RegisterFile RF(rs, rt, RegWriteAdr, WriteDataRegister, clk, RegWriteInput, readreg1, readreg2);
    Adder adder32bit(pc, immediateShifted, adrOfBranch);
    Shift2 twobitshifter(immediate, immediateShifted);
    SE sign_extend(Instruction[15:0], immediate);
    Controller cntrlr(Instruction[31:26], Instruction[5:0], zero, MemRead, MemWrite, ALUSrc, RegWrite, RegDst,PcSrc, MemToReg, ALUoperation);
    assign zero = (readreg1 == readreg2) ? 1'b1 : 1'b0;
    assign Flush = ((Instruction[31:26] == 6'b000100)/*beq*/ && zero) || ((Instruction[31:26] ==  6'b000101)/*bne*/ && ~zero) ? 1'b1 : 1'b0;
    assign Jadr = {pc[31:28], Instruction[25:0], pc[1:0]};
endmodule