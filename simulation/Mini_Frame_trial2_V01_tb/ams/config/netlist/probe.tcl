
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
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.A[0]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.A[1]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.A[2]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.A[3]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.A[4]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.A[5]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.A[6]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.A[7]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.B[0]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.B[1]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.B[2]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.B[3]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.B[4]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.B[5]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.B[6]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.B[7]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1A[0]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1A[1]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1A[2]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1A[3]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1A[4]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1A[5]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1A[6]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1A[7]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1B[0]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1B[1]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1B[2]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1B[3]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1B[4]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1B[5]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1B[6]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1B[7]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[0]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[1]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[2]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[3]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[4]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[5]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[6]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[7]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[8]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[9]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[10]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[11]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[12]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[13]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[14]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk1F[15]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2A[0]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2A[1]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2A[2]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2A[3]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2A[4]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2A[5]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2A[6]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2A[7]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2B[0]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2B[1]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2B[2]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2B[3]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2B[4]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2B[5]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2B[6]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2B[7]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[0]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[1]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[2]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[3]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[4]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[5]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[6]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[7]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[8]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[9]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[10]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[11]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[12]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[13]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[14]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.Clk2F[15]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[0]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[1]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[2]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[3]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[4]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[5]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[6]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[7]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[8]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[9]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[10]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[11]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[12]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[13]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[14]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V01_tb.F[15]}
probe -create -emptyok -database ams_database {cds_globals.\vdd! }
probe -create -emptyok -database ams_database {cds_globals.\gnd! }

