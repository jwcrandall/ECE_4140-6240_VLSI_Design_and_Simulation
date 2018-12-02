
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
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.A[0]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.A[1]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.A[2]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.A[3]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.A[4]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.A[5]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.A[6]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.A[7]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.B[0]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.B[1]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.B[2]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.B[3]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.B[4]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.B[5]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.B[6]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.B[7]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[0]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[1]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[3]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[2]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[4]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[5]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[6]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[7]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[8]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[9]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[10]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[11]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[12]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[13]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[14]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.F[15]}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.net19}
probe -create -emptyok -database ams_database {Mini_Frame_trial2_V0_tb.net20}

