module RegisterFile(rt, rs, rd,WriteData,clk, RegWrite, readdata1, readdata2);
    input [4:0] rt, rs, rd;
    input [31:0] WriteData;
    input clk, RegWrite;
    output wire [31:0] readdata1;
    output wire [31:0] readdata2;
    reg [31:0] registers [0:31] ;
    integer i;
    always @(negedge clk) begin
        registers[0] = 32'b0;
        if (RegWrite) begin  
            registers[rd] <= WriteData;   
            registers[0] = 32'b0;
            for (i = 0 ;i < 32; i = i + 1)
                $display("reg%d%d",i,registers[i]);
            $display("****************************************************");
        end
    end 
    assign readdata1 = registers[rt];  
    assign readdata2 = registers[rs];
endmodule