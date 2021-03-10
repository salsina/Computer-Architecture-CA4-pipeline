module IF_ID(clk, rst,Flush, IFIDWrite,inp1, inp2,out1, out2);
    input [31:0] inp1, inp2;
    input Flush, clk, rst, IFIDWrite;
    output reg [31:0] out1, out2;
    always @(posedge clk) begin
        if (rst) begin
            out1 <= 32'b0;
            out2 <= 32'b0;
        end
        else begin
            if ((IFIDWrite == 1'b1) && (Flush == 1'b1) ) begin
                out1 <= 32'b0;
                // out2 <= 32'b0;
            end
            if (IFIDWrite == 1'b1) begin
                out1 <= inp1;
                out2 <= inp2;
            end
        end
    end
endmodule