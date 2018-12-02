`timescale 1ns/1ps
module Array_Multiplier_tb_vdriver (A, B, F);
	input [15:0] F;
	output [7:0] A, B;
	reg [7:0] A, B;

	reg [15:0] product_expected; 
	
	integer fail_count = 0;

	integer i,j;
	initial begin
		A = 0;
		B = 0;
		for (i = 250; i < 256; i = i + 1) begin
			//for (j = 0; j < 256; j = j + 1) begin
				#60 A = i; B = i; 		
				$monitor ($time, " A =%b, B =%b, F = %b", A, B, F);
				product_expected = A*B;
				#30 if (F == product_expected)
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

