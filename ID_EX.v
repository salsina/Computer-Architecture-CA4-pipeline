module ID_EX(clk, rst,inp1, inp2, inp3,inp4, inp5, inp6,inp8,inp9, inp13,inp7, inp10, inp11, inp12,out1, out2, out3,out4, out5, out6,out8,out9, out13,out7, out10, out11, out12);
    input [31:0] inp1, inp2, inp3;
    input [4:0] inp4, inp5, inp6;
    input [2:0] inp8;
    input [1:0] inp9, inp13;
    input inp7, inp10, inp11, inp12;
    input clk, rst;
    output reg [31:0] out1, out2, out3;
    output reg [4:0] out4, out5, out6;
    output reg [2:0] out8;
    output reg [1:0] out9, out13;
    output reg out7, out10, out11, out12;
    always @(posedge clk) begin
        if (rst == 1'b0) begin
            out1 <= inp1;
            out2 <= inp2;
            out3 <= inp3;
            out4 <= inp4;
            out5 <= inp5;
            out6 <= inp6;
            out7 <= inp7;
            out8 <= inp8;
            out9 <= inp9;
            out10 <= inp10;
            out11 <= inp11;
            out12 <= inp12;
            out13 <= inp13;
        end
        else begin
            out1 <= 32'b0;
            out2 <= 32'b0;
            out3 <= 32'b0;
            out4 <= 5'b0;
            out5 <= 5'b0;
            out6 <= 5'b0;
            out7 <= 1'b0;
            out8 <= 3'b0;
            out9 <= 2'b0;
            out10 <= 1'b0;
            out11 <= 1'b0;
            out12 <= 1'b0;
            out13 <= 2'b0;
        end
    end
endmodule