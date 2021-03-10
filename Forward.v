module Forward( rt_IDEX, rd_MEMWB,rd_EXMEM, rs_IDEX,RegWrite_MEMWEB, RegWrite_EXMEM,forward_A, forward_B);
    input [4:0] rd_EXMEM, rs_IDEX, rt_IDEX, rd_MEMWB;
    input RegWrite_MEMWEB, RegWrite_EXMEM;
    output reg [1:0] forward_A, forward_B;

    always @(RegWrite_MEMWEB,RegWrite_EXMEM, rd_EXMEM, rt_IDEX,rs_IDEX) begin
        forward_A = 2'b00;
        forward_B = 2'b00;
        if (rd_EXMEM != 5'b0 && RegWrite_EXMEM == 1'b1 ) begin
            if (rd_EXMEM == rt_IDEX)
                forward_B = 2'b10;
            if (rd_EXMEM == rs_IDEX)
                forward_A = 2'b10;
        end          
        if (rd_MEMWB != 5'b0 && RegWrite_MEMWEB == 1'b1 ) begin
            if (rd_MEMWB == rt_IDEX)
                forward_B = 2'b01;
            if (rd_MEMWB == rs_IDEX)
                forward_A = 2'b01;
        end
    end
endmodule