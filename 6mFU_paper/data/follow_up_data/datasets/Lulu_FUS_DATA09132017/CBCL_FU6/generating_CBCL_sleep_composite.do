use "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/CBCL_FU6/CBCL_PROFILES_FU6.dta"
mvdecode _all, mv(-9 =.)
mvdecode _all, mv(-7 =.)
egen CBCL_sleep_composite = rowtotal (CBCL_47_2 CBCL_54_2 CBCL_76_2 CBCL_77_2 CBCL_92_2 CBCL_100_2 CBCL_108_2), missing
sum CBCL_sleep_composite
