
`timescale 1us/10ns

module  Mini_Frame_trial2_V7_tb_vdriver (A, B, F, clk1);
	input [15:0] F;
	input clk1;
	output [7:0] A, B;
	reg [7:0] A, B;

	reg [15:0] product_expected; 
	
	integer fail_count = 0;

	integer i,j;
	initial begin
		A = 0;
		B = 0;
		/*#20 A = 1; B = 1;
		#20 A = 2; B = 2;
		#20 A = 3; B = 3;*/
		/*#8 A = 1;
		B = 1;
		#8.3/
		for (i = 2; i < 20; i = i + 1) begin
			for (j =2; j < 20; j = j + 1) begin
				A = i; B = j; 		
				//$monitor ($time, " A =%b, B =%b, F = %b", A, B, F);
				product_expected = A*B;
				#4.04 if (F == product_expected)
					$display ("PASS: A = %d, B = %d, Expected Product = %d, F = %d", A, B, product_expected, F);
				else begin
					$display ("FAIL:  A = %b, B = %b, Expected Product = %b, F = %b", A, B, product_expected, F);			
					fail_count = fail_count + 1;
				end
				//#8 $display("test");
			end		
		end
		$display("Number fails = %d", fail_count);
		#1 $finish;
	end*/
	/*#5 A = 1; B = 1; product_expected = A*B;
	#4.04
	if (F == product_expected)
		$display ("PASS: A = %d, B = %d, Expected Product = %d, F = %d", A, B, product_expected, F);
	else 
		$display ("FAIL:  A = %b, B = %b, Expected Product = %b, F = %b", A, B, product_expected, F);			
	
	*/
	#100 A =1; B = 1;
	#100 A = 2; B = 1;
//come BACK HERE

	#1000 $finish;
	end
	always@(posedge clk1) begin
		product_expected = A * B;
		#17.0 
		$monitor ($time, " A =%b, B =%b, F = %b", A, B, F);
		if (F == product_expected)
			$display ("PASS: A = %d, B = %d, Expected Product = %d, F = %d", A, B, product_expected, F);
		else 
			$display ("FAIL:  A = %b, B = %b, Expected Product = %b, F = %b", A, B, product_expected, F);
		
	//	#0.5 A = A + 2; B = B + 2;		
	end

					
endmodule

