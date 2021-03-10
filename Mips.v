module Mips(clk,rst);
    input clk;
    input rst;
    wire [5:0] OPC;
    wire PcWrite, Flush, IFIDWrite, ALUSrc_ID_out, memWrite_ID_out, memRead_ID_out, REgWrite_IDEX, memWrite_EXMEM, memRead_EXMEM,RegWrite_ID_out,AluSrcIDEX, memWrite_IDEX, memRead_IDEX, 
        RegWrite_exmem, RegWrite_MEMWB, HazardSrc, HazardAluSrc, HazardMemRead, HazardMemWrite, HazardRegWrite;
    wire [1:0] regDst_ID,pcSrc,RegDst_EXMEM, memtoreg_IDEX, memtoreg_ID, RegDst_IDEX, memtoreg_EXMEM, memtoreg_MEMWB, RegDstHazard, memtoregHazard, forwardUp, forwardDown;
    wire [31:0] JAdr, branchAdr, IFInstruction, IF_PC, IFID_Instruction, IFID_PC,RegRead1_IDEX, RegRead2_IDEX, MemAdr,dataoutput_WB,
        RegRead1_ID, RegRead2_ID, immediate_out, ReadData_MEM, ALUres_EX,
        IDEX_immediate, WriteData_EX, ALUres_EXMEM, WriteData_EXMEM, ReadData_MEMWB, RegData_MEMWB;
    wire [2:0] aluopIDEX , aluopID_out, aluopHazard;
    wire [4:0] rt_ID_out,rt_IDEX, rd_ID_out, rd_EX, rd_EXMEM,rd_IDEX,rd_MEMWB, rs_ID_out, rs_IDEX;    
    Hazard HU(rd_EXMEM,OPC, rt_IDEX, rs_ID_out, rt_ID_out, rd_IDEX, RegDst_IDEX, RegDst_EXMEM, memRead_IDEX, memRead_EXMEM,HazardSrc, PcWrite, IFIDWrite);
    Hazard_MUX mux_haz(aluopID_out, regDst_ID, memtoreg_ID, ALUSrc_ID_out, memWrite_ID_out, memRead_ID_out, RegWrite_ID_out, HazardSrc,
        aluopHazard, RegDstHazard, memtoregHazard, HazardAluSrc, HazardMemRead, HazardMemWrite, HazardRegWrite);
    Forward FU(rt_IDEX, rd_MEMWB,rd_EXMEM, rs_IDEX, RegWrite_MEMWB, RegWrite_exmem,  forwardUp, forwardDown);
    IF If( clk, rst,pcSrc, PcWrite, IFInstruction, IF_PC,JAdr, branchAdr);
    IF_ID ifid( clk, rst, Flush,IFIDWrite,IFInstruction, IF_PC, IFID_Instruction, IFID_PC);
    ID id(clk, RegRead1_ID, RegRead2_ID,immediate_out,IFID_PC,IFID_Instruction, dataoutput_WB, rd_MEMWB, RegWrite_MEMWB, JAdr, branchAdr, OPC, rt_ID_out, rd_ID_out, rs_ID_out, aluopID_out,
        memWrite_ID_out, memRead_ID_out, RegWrite_ID_out, Flush,regDst_ID, pcSrc, memtoreg_ID ,ALUSrc_ID_out);
    ID_EX idex(clk, rst,RegRead1_ID, RegRead2_ID, immediate_out, rt_ID_out, rd_ID_out, rs_ID_out, aluopHazard,RegDstHazard, memtoregHazard, HazardAluSrc, HazardMemWrite, HazardMemRead, HazardRegWrite,
        RegRead1_IDEX, RegRead2_IDEX, IDEX_immediate, rt_IDEX, rd_IDEX, rs_IDEX, aluopIDEX, RegDst_IDEX,memtoreg_IDEX, AluSrcIDEX, memWrite_IDEX, memRead_IDEX, REgWrite_IDEX);
    EX ex( dataoutput_WB, ALUres_EXMEM,RegRead1_IDEX, RegRead2_IDEX, IDEX_immediate, rt_IDEX, rd_IDEX,aluopIDEX, forwardUp, forwardDown, RegDst_IDEX, WriteData_EX, rd_EX, AluSrcIDEX, ALUres_EX);
    EX_MEM exmem(clk, rst, rd_EX, memtoreg_IDEX,ALUres_EX, WriteData_EX, RegDst_IDEX, memWrite_IDEX, memRead_IDEX,REgWrite_IDEX,
     ALUres_EXMEM, WriteData_EXMEM, rd_EXMEM, memtoreg_EXMEM, memRead_EXMEM, RegWrite_exmem,RegDst_EXMEM, memWrite_EXMEM);
    MEM mem(clk, memRead_EXMEM, memWrite_EXMEM, ALUres_EXMEM, WriteData_EXMEM, MemAdr,ReadData_MEM);
    MEM_WB memwb(clk, rst, rd_EXMEM, memtoreg_EXMEM,ReadData_MEM, MemAdr, RegWrite_exmem, ReadData_MEMWB,
        RegData_MEMWB, RegWrite_MEMWB,rd_MEMWB, memtoreg_MEMWB);
    MUX2_32 mux32_1(RegData_MEMWB, ReadData_MEMWB, memtoreg_MEMWB[0], dataoutput_WB);
endmodule