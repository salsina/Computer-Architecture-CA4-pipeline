module Controller(OPC, func,zero,mem_read, mem_write, alu_src, reg_write,reg_dst, PC_src, mem_to_reg,alu_op);
    input [5:0] OPC, func;
    input zero;
    output reg mem_read, mem_write, alu_src, reg_write;
    output reg [1:0] reg_dst, PC_src, mem_to_reg;
    output wire [2:0] alu_op;
    reg [1:0] alu_type;
    reg branch, not_branch;
    
    always @(OPC) begin
        {alu_src, alu_type, reg_write, PC_src, branch, not_branch,reg_dst, mem_read, mem_write, mem_to_reg} = 14'b0;
        case(OPC)
            6'b000000 : begin alu_type = 2'b10; 
                                reg_dst = 2'b01; 
                                    reg_write = 1'b1;end//Rtype

            6'b001000 : {alu_src, reg_write} = 2'b11; //Addi

            6'b001100 : begin alu_type = 2'b11; 
                                {alu_src, reg_write} = 2'b11;end//Andi

            6'b100011 : begin {alu_src, reg_write, mem_read} = 3'b111; 
                                mem_to_reg = 2'b01;end //LW

            6'b101011 : {alu_src, mem_write} = 2'b11; //SW

            6'b000100 : begin alu_type = 2'b01; 
                                branch = 1'b1; end//beq

            6'b000101 : begin alu_type = 2'b01; 
                                not_branch = 1'b1; end //bne

            // 6'b000010 : PC_src = 2'b10;//j
        endcase
    end
    ALU_Controller alu_cntrlr(alu_type, alu_op,func);
    always @(OPC,branch,not_branch,zero) begin
        PC_src = 2'b00;
        if (OPC == 6'b000010) PC_src = 2'b10;
        else begin
          if( (~zero  && not_branch) || (zero && branch) ) PC_src = 2'b01;
          else if (not_branch || branch )PC_src = 2'b00;
        end
    end
        // PC_src = ( (~zero  && not_branch) || (zero && branch) )? 2'b01 :  not_branch || branch ? 2'b00 : PC_src;

endmodule