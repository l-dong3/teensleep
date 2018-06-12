*Sleep and Circadian
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("Weekday TST") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(WD_TST_pre_FU6.gph)

mixed WD_Bedtimeavg_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("Weekday Bedtime") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(WD_Bedtime_pre_FU6.gph)

mixed TST_Avgdif_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("Weekday-weekend TST discrepancy") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(TST_avgdiff_pre_FU6.gph)

mixed Bedtime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("Weekday-weekend Bedtime discrepancy") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(Bedtime_avgdiff_pre_FU6.gph)


mixed WakeTime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("Weekday-weekend Waketime discrepancy") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(Waketime_avgdiff_pre_FU6.gph)


mixed SLEEPINESS_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("Sleepiness") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(sleepiness_pre_FU6.gph)


mixed PSQITOT_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
contrast r.timepiont@Tx
margins timepoint#Tx
marginsplot, xtitle("") title("PSQI") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(PSQI_pre_FU6.gph)


mixed CBCL_SLEEP_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
contrast r.timepiont@Tx
margins timepoint#Tx
marginsplot, xtitle("") title("CBCL Sleep composite") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(CBCL_SLEEP_pre_FU6.gph)


mixed CMEP_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
contrast r.timepiont@Tx
margins timepoint#Tx
marginsplot, xtitle("") title("CMEP") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(CMEP_pre_FU6.gph)


*youth selfreport composite risk scores
mixed CDRS_BEST_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed MASC_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev

mixed ACS_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed YSAS_COG_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev

mixed SSS_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed SU_SUM_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev

mixed YSAS_FRIEND_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed YSAS_FAMILY_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed YSAS_DATE_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev

mixed totalyearactivitymet_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed PHQ_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev

*CBCL outcomes
mixed CBCL_anxious_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed CBCL_withdrawn_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev

mixed CBCL_thought_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed CBCL_attention_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev

mixed CBCL_rulebreak_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed CBCL_aggressive_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev

mixed CBCL_social_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev

mixed CBCL_somatic_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev

*Composite scores
mixed EMOTIONAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed COGNITIVE_COMP_2 Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed BEHAVIORAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed SOCIAL_COMP_2 Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed PHYSICAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev

mixed CBCL_EMOTIONAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed CBCL_COGNITIVE_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed CBCL_BEHAVIORAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed CBCL_SOCIAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
mixed CBCL_PHYSICAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev

*12moFU
mixed EMOTIONAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed COGNITIVE_COMPOSITE_3 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed BEHAVIORAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed SOCIAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed PHYSICAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 || ID: , nolog

mixed CBCL_EMOTIONAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed CBCL_COGNITIVE_COMPOSITE_3 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed CBCL_BEHAVIORAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed CBCL_SOCIAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed CBCL_PHYSICAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 || ID: , nolog
