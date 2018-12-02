//Verilog HDL for "project_g01", "Mini_Frame_trial1_tb_vdriver" "functional"
`timescale 1us/1ns

module Mini_Frame_trial2_V01_tb_vdriver (A, B, F, Clk1, Clk2, Clk1A, Clk2A, Clk1B, Clk2B, Clk1F, Clk2F);
	
	input [15:0] F;

	input [7:0] Clk1A;
	input [7:0] Clk2A;
	input [7:0] Clk1B;
	input [7:0] Clk2B;
	input [15:0] Clk1F;
	input [15:0] Clk2F;


	output [7:0] A, B;
	output Clk1;
	output Clk2;
	
	reg [7:0] A, B;
	reg Clk1;
	reg Clk2;

	reg [15:0] product_expected; 
	integer fail_count = 0;

	integer i,j;
	initial begin
		A = 0;
		B = 0;
		Clk1 = 0;
		Clk2 = 1;
		for (i = 0; i < 256; i = i + 1) begin
			for (j = 0; j < 256; j = j + 1) begin
				#1 A = i; B = j; 		
				$monitor ($time, " A =%b, B =%b, Clk1 = %d, Clk2 = %d, F = %b", A, B, Clk1, Clk2, F);
				product_expected = A*B;
				#2 if (F == product_expected)
					$display ("PASS: A = %d, B = %d, Expected Product = %d, F = %d", A, B, product_expected, F);
				else begin
					$display ("FAIL:  A = %d, B = %d, Expected Product = %b, F = %b", A, B, product_expected, F);			
					fail_count = fail_count + 1;
				end
			end		
		end
		$display("Number fails = %d", fail_count);
		#10 $finish;
	end

	always begin
	
	#1 Clk1 <= ~Clk1;
	#1 Clk2 <= ~Clk2;	

	end
					
endmodule
