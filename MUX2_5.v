module MUX2_5(inp1,inp2,s,out);
    input [4:0] inp1,inp2;
    input s; 
    output wire [4:0] out;
    assign out = s ? inp2 : inp1;
endmodule
