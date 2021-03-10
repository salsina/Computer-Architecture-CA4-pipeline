module Hazard_MUX(ALUOP_inp,RegDst_inp, MemToReg_inp,ALUSRC_inp, MemWrite_inp, MemRead_inp, RegWrite_inp, Hazard_Source,ALUOP_out, RegDst_out, MemToReg_out,ALUSRC_out, MemRead_out, MemWrite_out, RegWrite_out);
    input [2:0] ALUOP_inp;
    input [1:0] RegDst_inp, MemToReg_inp;
    input ALUSRC_inp, MemWrite_inp, MemRead_inp, RegWrite_inp, Hazard_Source;
    output reg [2:0] ALUOP_out;
    output reg[1:0] RegDst_out, MemToReg_out;
    output reg ALUSRC_out, MemRead_out, MemWrite_out, RegWrite_out;

    always@(Hazard_Source,MemWrite_inp,ALUSRC_inp,MemRead_inp,ALUOP_inp,RegWrite_inp,RegDst_inp,MemToReg_inp)begin
        if (Hazard_Source == 1'b0) begin
            MemWrite_out = MemWrite_inp;
            ALUSRC_out = ALUSRC_inp;
            MemRead_out = MemRead_inp;
            ALUOP_out = ALUOP_inp;
            RegWrite_out = RegWrite_inp;
            RegDst_out = RegDst_inp;
            MemToReg_out = MemToReg_inp;
        end
        else {MemWrite_out , ALUSRC_out , MemToReg_out,RegDst_out,RegWrite_out,ALUOP_out,MemRead_out} = 11'b0;
    end
endmodule