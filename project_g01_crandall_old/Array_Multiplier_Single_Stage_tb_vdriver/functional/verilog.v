`timescale 10us/1us
module Array_Multiplier_Single_Stage_tb_vdriver (A, s_out);
	input [7:0] s_out;
	output [7:0] A;
	reg [7:0] A;

	reg [8:0] sum_full_expected; //MSB is expected carry out and [3:0] is expected sum

	integer i,j,k;
	initial begin
		A = 0;
		for (j = 0; j < 256; j = j + 1) begin
			#1 A = j; 		
			$monitor ($time, " A =%b, s_out =%b", A, s_out);
			sum_full_expected = A;
			#0.1 if (s_out == sum_full_expected[7:0])
				$display ("PASS: A = %b, Expected Sum = %b, s_out = %b", A, sum_full_expected[7:0], s_out);
			else
				$display ("FAIL:  A = %b, Expected Sum = %b, s_out = %b", A, sum_full_expected[7:0], s_out);			
		end
	#10 $finish;
	end
					
endmodule
/*module Array_Multiplier_Single_Stage_tb_vdriver (A, S, C_prev, B, C_out, s_out);
	input [7:0] s_out;
	input C_out;
	output [7:0] A;
	output [6:0] S;
	output C_prev, B;
	reg [7:0] A;
	reg [6:0] S;
	reg C_prev, B;

	reg [8:0] sum_full_expected; //MSB is expected carry out and [3:0] is expected sum

	integer i,j,k;
	initial begin
		C_prev = 0;
		B = 0;
		A = 0;
		S = 0;
		for (i = 0; i < 2; i = i + 1) begin
			for (j = 0; j < 256; j = j + 1) begin
				for (k = 0; k < 128; k = k + 1) begin
					#1 B = i; A = j; S = k;				
					$monitor ($time, " A =%b, S = %b, B = %b, s_out =%b, C_out = %b", A, S, B, s_out, C_out);
					sum_full_expected = S + A * B + C_prev;
					#0.1 if (s_out == sum_full_expected[7:0] && C_out == sum_full_expected[8])
						$display ("PASS: A = %b, S = %b, B = %b, Expected Sum = %b, s_out = %b, Expected Carry Out = %b, C_out = %b", A, S, B, sum_full_expected[7:0], s_out, sum_full_expected[8], C_out);
					else
						$display ("FAIL: A = %b, S = %b, B = %b, Expected Sum = %b, s_out = %b, Expected Carry Out = %b, C_out = %b", A, S, B, sum_full_expected[7:0], s_out, sum_full_expected[8], C_out);			
				end
			end
		end
	#10 $finish;
	end
					
endmodule
*/