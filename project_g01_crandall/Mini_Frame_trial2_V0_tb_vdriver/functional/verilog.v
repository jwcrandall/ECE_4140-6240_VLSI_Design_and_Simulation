//Verilog HDL for "project_g01", "Mini_Frame_trial1_tb_vdriver" "functional"
`timescale 1ns/1ps

module Mini_Frame_trial2_V0_tb_vdriver (A, B, F );
	input [15:0] F;
	output [7:0] A, B;
	reg [7:0] A, B;

	reg [15:0] product_expected; 
	
	integer fail_count = 0;

	integer i,j;
	initial begin
		A = 0;
		B = 0;
		for (i = 0; i < 256; i = i + 10) begin
			//for (j = 0; j < 256; j = j + 1) begin
				#100 A = i; B = i; 		
				//$monitor ($time, " A =%b, B =%b, F = %b", A, B, F);
				product_expected = A*B;
				#200 if (F == product_expected)
					$display ("PASS: A = %d, B = %d, Expected Product = %d, F = %d", A, B, product_expected, F);
				else begin
					$display ("FAIL:  A = %b, B = %b, Expected Product = %b, F = %b", A, B, product_expected, F);			
					fail_count = fail_count + 1;
				end
		//	end		
		end
		$display("Number fails = %d", fail_count);
		#10 $finish;
	end
					
endmodule
