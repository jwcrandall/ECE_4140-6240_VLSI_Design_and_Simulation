
# This is the NC-SIM(R) probe command file
# used in the AMS-ADE integration.


#
# Database settings
#
if { [info exists ::env(AMS_RESULTS_DIR) ] } { set AMS_RESULTS_DIR $env(AMS_RESULTS_DIR)} else {set AMS_RESULTS_DIR "../psf"}
database -open ams_database -into ${AMS_RESULTS_DIR} -default

#
# Probe settings
#
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.A_data[0]}
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.A_data[1]}
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.A_data[2]}
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.A_data[3]}
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.B_data[0]}
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.B_data[1]}
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.B_data[2]}
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.B_data[3]}
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.Cin}
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.sum[3]}
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.sum[2]}
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.sum[1]}
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.sum[0]}
probe -create -emptyok -database ams_database {hw3_1_adder_4bit_tb.Cout}

