module TB();
    reg rst;
	reg clk;
	Mips pipeline(clk, rst);

	initial begin
		#15 clk = 0; rst = 1;
		#15 clk = 1;
		#15 rst = 0;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;
		#15 clk = 1;
		#15 clk = 0;

	end
endmodule
