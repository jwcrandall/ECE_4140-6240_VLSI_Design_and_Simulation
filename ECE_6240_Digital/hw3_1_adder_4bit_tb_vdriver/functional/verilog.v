`timescale 10us / 1us
module hw3_1_adder_4bit_tb_vdriver (sum,c_out,A_data,B_data,c_in);
	input [3:0] sum;
	input c_out;

	output [3:0] A_data, B_data;
	output  c_in;
	
	reg [3:0] A_data, B_data;
	reg c_in;

	reg[4:0] sum_full_expected;   //most significant bit is expected for carry
							     //[3:0] expected for sum
	
	integer i,j,k;

	initial begin
		c_in = 0;
		A_data = 0;
		B_data = 0;
		for (i=0; i<2;i=i+1)begin
			#1 c_in = i;
			for (j=0; j<16; j=j+1)begin
				#1 A_data = j;
				for (k=0; k<16; k=k+1) begin
					#1 B_data = k;
					$monitor ($time, " A_data = %b, B_data= %b, c_in = %b, sum = %b, c_out = %b",A_data,B_data,c_in,sum,c_out);
					sum_full_expected = A_data + B_data + c_in;
					if(sum == sum_full_expected[3:0] && c_out == sum_full_expected[4])
						$display("Pass: A_input = %b, B_input = %b, c_in = %b, Expected Sum = %b, Sum = %b, Expected Carry Out = %b, Carry Out %b",A_data, B_data, c_in, sum_full_expected[3:0], sum, sum_full_expected[4], c_out);
					else
						$display("Fail: A_input = %b, B_input = %b, c_in = %b, Expected Sum = %b, Sum = %b, Expected Carry Out = %b, Carry Out %b",A_data, B_data, c_in, sum_full_expected[3:0], sum, sum_full_expected[4], c_out);
				end
			end
		end
	#10 $finish;
	end
      
endmodule
