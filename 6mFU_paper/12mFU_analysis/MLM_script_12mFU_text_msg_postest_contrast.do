*Sleep and Circadian
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
contrast r.Tx##ib2.time
margins timepoint#Tx
marginsplot, xtitle("") ytitle("predicted weekday average TST") ///
title("") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) ///
saving(TST_pre-12mo.gph)


mixed WD_Bedtimeavg_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
contrast r.Tx##ib2.time
margins timepoint#Tx
marginsplot, xtitle("") ytitle("predicted weekday average bedtime") ///
title("") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) ///
saving(bedtime_pre-12mo.gph)


mixed TST_Avgdif_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
contrast r.Tx##ib2.time
margins timepoint#Tx
marginsplot, xtitle("") ytitle("predicted weekday-weekend TST discrepancy") ///
title("") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) ///
saving(TST_avg_diff_pre-12mo.gph)


mixed Bedtime_Avgdif_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
contrast r.Tx##ib2.time
margins timepoint#Tx
marginsplot, xtitle("") ytitle("predicted weekday-weekend bedtime discrepancy") ///
title("") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) ///
saving(BT_diff_pre-12mo.gph)


mixed WakeTime_Avgdif_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
contrast r.Tx##ib2.time
margins timepoint#Tx
marginsplot, xtitle("") ytitle("predicted weekday-weekend waketime discrepancy") ///
title("") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) ///
saving(WakeTime_Avgdif_pre-12mo.gph)


mixed SLEEPINESS_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
contrast r.Tx##ib2.time
margins timepoint#Tx
marginsplot, xtitle("") ytitle("predicted daytime sleepiness") ///
title("") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) ///
saving(sleepiness_pre-12mo.gph)


mixed PSQITOT_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
contrast r.Tx##ib2.time
margins timepoint#Tx
marginsplot, xtitle("") ytitle("predicted PSQI score") ///
title("") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) ///
saving(PSQI_pre-12mo.gph)


mixed CBCL_SLEEP_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
contrast r.Tx##ib2.time
margins timepoint#Tx
marginsplot, xtitle("") ytitle("predicted CBCL Sleep Composite") ///
title("") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) ///
saving(CBCL_SLEEP_pre-12mo.gph)


mixed CMEP_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
contrast r.Tx##ib2.time
margins timepoint#Tx
marginsplot, xtitle("") ytitle("predicted CMEP") ///
title("") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) ///
saving(CMEP_pre-12mo.gph)


*youth selfreport composite risk scores
mixed CDRS_BEST_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed MASC_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog

mixed ACS_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed YSAS_COG_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog

mixed SSS_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed SU_SUM_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog

mixed YSAS_FRIEND_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed YSAS_FAMILY_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed YSAS_DATE_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog

mixed totalyearactivitymet_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed PHQ_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog

*CBCL outcomes
mixed CBCL_anxious_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed CBCL_withdrawn_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog

mixed CBCL_thought_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed CBCL_attention_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog

mixed CBCL_rulebreak_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed CBCL_aggressive_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog

mixed CBCL_social_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog

mixed CBCL_somatic_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog

*Composite scores *12moFU
mixed EMOTIONAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed COGNITIVE_COMPOSITE_3 Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed BEHAVIORAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed SOCIAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed PHYSICAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog

mixed CBCL_EMOTIONAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed CBCL_COGNITIVE_COMPOSITE_3 Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed CBCL_BEHAVIORAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed CBCL_SOCIAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
mixed CBCL_PHYSICAL_COMPOSITE_3 Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog
