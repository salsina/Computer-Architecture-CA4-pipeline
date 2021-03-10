module MEM(clk, memRead, memWrite,adr, writeData,adrOut, ReadData);
    input [31:0] adr, writeData;
    input memRead, memWrite, clk;
    output wire [31:0] ReadData;
    output wire [31:0] adrOut;
    assign adrOut = adr;
    DataMem dataMem(adr, writeData, memRead, memWrite, clk, ReadData);
endmodule