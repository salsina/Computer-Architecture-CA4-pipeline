module ALU_Controller(alu_type,alu_op,func);
	input [1:0] alu_type;
	output reg [2:0] alu_op;
	input [5:0] func;
    always @(func, alu_type) begin
        if (alu_type == 2'b10) begin 
            case (func) //Rtypes
        		6'b100000 : alu_op = 3'b010;//add
        		6'b100010 : alu_op = 3'b110;//sub
        		6'b101010 : alu_op = 3'b111;//slt
                6'b100100 : alu_op = 3'b000;//and
      		    6'b100101 : alu_op = 3'b001;//or
      		endcase
    	end
		else if (alu_type == 2'b11) alu_op = 3'b000; // andi
		else if (alu_type == 2'b01) alu_op = 3'b110; // beq, bne        
	    else if (alu_type == 2'b00) alu_op = 3'b010; // lw, sw, addi        
	end

endmodule