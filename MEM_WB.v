module MEM_WB(clk, rst,inp3,inp5,inp1, inp2,inp4,out1, out2,out4,out3,out5);
    input [31:0] inp1, inp2;
    input [4:0] inp3;
    input [1:0] inp5;
    input inp4;
    input clk;
    input rst;
    output reg [31:0] out1, out2;
    output reg [4:0] out3;
    output reg [1:0] out5;
    output reg out4;
    always@(posedge clk) begin
        if (rst == 1'b1) begin
            out1 <= 32'b0;
            out2 <= 32'b0;
            out3 <= 5'b0;
            out4 <= 1'b0;
            out5 <= 2'b0;
        end
    end
    always@(posedge clk) begin
        if (rst == 1'b0) begin
            out1 <= inp1;
            out2 <= inp2;
            out3 <= inp3;
            out4 <= inp4;
            out5 <= inp5;
        end
    end
endmodule