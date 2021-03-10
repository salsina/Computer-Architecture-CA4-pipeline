module DataMem(adr, WriteData, MemRead, MemWrite, clk, ReadData);
    input [31:0] adr, WriteData;
    input MemRead, MemWrite, clk;
    output reg [31:0] ReadData;
    reg [31:0] memory [0:16000];
    initial begin
        $readmemb("test1.txt", memory);//enter the file name
    end
    always @(posedge clk) 
        if (MemWrite == 1'b1) begin 
            memory[adr] <=  WriteData;
            $writememb("test1.txt",memory);//enter file name
        end

    always@(MemRead,adr)begin
        if (MemRead) ReadData = memory[adr];
    end

endmodule