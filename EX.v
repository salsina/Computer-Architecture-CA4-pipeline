module EX(WriteData, alu_res_mem,ReadReg1, ReadReg2, imdt,rt, rd,alu_op,Aforward, Bforward, RegDst,WriteData_out,rd_out,AluSrc,alu_res);
    input [31:0] ReadReg1, ReadReg2, imdt, WriteData, alu_res_mem;
    input [4:0] rt, rd;
    input [2:0] alu_op;
    input [1:0] Aforward, Bforward, RegDst;
    input AluSrc;
    output wire [31:0] alu_res, WriteData_out;
    output wire [4:0] rd_out;
    wire alu_zero_out;
    wire [31:0] mux_B_src_out, mux_A_out, mux_B_out;
    MUX2_32 mux_B_src(ReadReg2, imdt, AluSrc, mux_B_src_out);
    MUX3_32 mux_A(ReadReg1, WriteData, alu_res_mem, Aforward, mux_A_out);
    MUX3_32 mux_B(mux_B_src_out, WriteData, alu_res_mem, Bforward, mux_B_out);
    MUX2_5 RegDst_mux(rt, rd, RegDst[0], rd_out);
    ALU alu(mux_A_out, mux_B_out, alu_op, alu_res, alu_zero_out);
    assign WriteData_out = ReadReg2;
endmodule