module IF(clk, rst,PcSrc,pcWrite, instruction, newPC,jAdr, branchAdr);
    input [31:0] jAdr, branchAdr;
    input [1:0] PcSrc;
    input pcWrite, clk, rst;
    output wire[31:0] instruction, newPC;
    wire [31:0] pcInput, pcOutput;

    Adder adder32bit(pcOutput, 32'd4, newPC);
    PC pc(pcInput, pcWrite, clk, rst, pcOutput);
    InstructionMemory instrucionMemory(pcOutput, instruction);
    MUX3_32 mux32bit(newPC, branchAdr, jAdr, PcSrc, pcInput);
endmodule