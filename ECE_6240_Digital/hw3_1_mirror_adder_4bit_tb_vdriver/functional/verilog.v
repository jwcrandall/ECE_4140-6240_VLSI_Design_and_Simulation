//Verilog HDL for "ECE_6240_Digital", "hw3_1_adder_4bit_tb_vdriver" "functional"

`timescale 10us / 1us
module hw3_1_mirror_adder_4bit_tb_vdriver ( sum, c_out, A_data, B_data, c_in );

	input c_out;
	output c_in;
	output  [3:0] B_data;
	output  [3:0] A_data;
	input  [3:0] sum;

	reg [3:0] A_data, B_data;
	reg c_in;

	reg[4:0] sum_full_expected;   //most significant bit is expected for carry

 	integer i,j,k;
	initial begin
		c_in = 0;
		A_data = 0;
		B_data = 0;
		for (i=0; i<2;i=i+1)begin
			//#10 c_in = i;
			c_in = i;
			for (j=0; j<16; j=j+1)begin
				#100 A_data = j;
				for (k=0; k<16; k=k+1) begin
					B_data = k;
					//$monitor ($time, " A_data = %d, B_data= %d, c_in = %d, sum = %d, c_out = %d",A_data,B_data,c_in,sum,c_out);
					sum_full_expected = A_data + B_data + c_in;
					#10 if(sum == sum_full_expected[3:0] && c_out == sum_full_expected[4])
						$display("Pass: A_input = %d, B_input = %d, c_in = %d, Expected Sum = %d, Sum = %d, Expected Carry Out = %d, Carry Out %d",A_data, B_data, c_in, sum_full_expected[3:0], sum, sum_full_expected[4], c_out);
					else
						$display("Fail: A_input = %d, B_input = %d, c_in = %d, Expected Sum = %d, Sum = %d, Expected Carry Out = %d, Carry Out %d",A_data, B_data, c_in, sum_full_expected[3:0], sum, sum_full_expected[4], c_out);
				end
			end
		end
	#10 $finish;
	end
endmodule

