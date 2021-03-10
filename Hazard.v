module Hazard(rd_EXMEM,OPC,rt_IDEX, rs_ID, rt_ID, rd_IDEX, RegDst_IDEX, RegDst_EXMEM,MemRead_IDEX, MemRead_EXMEM,Hazard_Source,PCWrite, IFIDWrite);
    input [5:0] OPC;
    input [4:0] rt_IDEX, rs_ID, rt_ID, rd_IDEX, rd_EXMEM;
    input [1:0] RegDst_IDEX, RegDst_EXMEM;
    input MemRead_IDEX, MemRead_EXMEM;
    output reg PCWrite, IFIDWrite, Hazard_Source;
    initial begin
        { IFIDWrite, Hazard_Source, PCWrite }= 3'b101;
    end
    always@(*) begin
        if (( (OPC == 6'b000101 || OPC == 6'b000100 ) && (MemRead_EXMEM == 1'b1 || RegDst_EXMEM[0] == 1'b1 || MemRead_IDEX == 1'b1  || RegDst_IDEX[0] == 1'b1) &&
           (rs_ID == rd_IDEX || rt_ID == rd_EXMEM || rt_ID == rd_IDEX || rs_ID == rd_EXMEM) ) || 
           (MemRead_IDEX && (rt_IDEX == rt_ID || rt_IDEX == rs_ID  )) ) 

            { IFIDWrite, Hazard_Source, PCWrite }= 3'b010;
        else 
            { IFIDWrite, Hazard_Source, PCWrite }= 3'b101;
    end
endmodule