use "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/CBCL_FU12/CBCL_PROFILES_FU12.dta"
mvdecode _all, mv(-9 =.)
mvdecode _all, mv(-7 =.)
egen CBCL_sleep_composite_FU12 = rowtotal (CBCL_47_3 CBCL_54_3 CBCL_76_3 CBCL_77_3 CBCL_92_3 CBCL_100_3 CBCL_108_3), missing
save "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/CBCL_FU12/CBCL_PROFILES_FU12.dta", replace
