*Sleep and Circadian
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , nolog
*contrast r.Tx##ib1.time
*contrast r.time@Tx
margins timepoint#Tx
marginsplot, xtitle("") ytitle("predicted weekday average TST") ///
title("") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) 

mixed WD_Bedtimeavg_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed TST_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog
*contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("Weekday-weekend TST discrepancy") ///
plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(TST_avgdiff_pre_FU6.gph)


mixed Bedtime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed WakeTime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("Weekday-weekend Waketime discrepancy") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(Waketime_avgdiff_pre_FU6.gph)


mixed SLEEPINESS_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("Sleepiness") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(sleepiness_pre_FU6.gph)


mixed PSQITOT_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("PSQI") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(PSQI_pre_FU6.gph)


mixed CBCL_SLEEP_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("CBCL Sleep composite") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(CBCL_SLEEP_pre_FU6.gph)


mixed CMEP_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("CMEP") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(CMEP_pre_FU6.gph)



*youth selfreport composite risk scores
mixed CDRS_BEST_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed MASC_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed ACS_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("ACS") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) 



mixed YSAS_COG_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed SSS_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed SU_SUM_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed YSAS_FRIEND_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed YSAS_FAMILY_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed YSAS_DATE_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed totalyearactivitymet_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed PHQ_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

*CBCL outcomes
mixed CBCL_anxious_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed CBCL_withdrawn_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed CBCL_thought_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("CBCL thought problem") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) 



mixed CBCL_attention_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed CBCL_rulebreak_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("CBCL rule breaking problem") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) 


mixed CBCL_aggressive_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed CBCL_social_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed CBCL_somatic_ Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

*Composite scores
mixed EMOTIONAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed COGNITIVE_COMP_2 Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed BEHAVIORAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed SOCIAL_COMP_2 Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed PHYSICAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed CBCL_EMOTIONAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed CBCL_COGNITIVE_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed CBCL_BEHAVIORAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed CBCL_SOCIAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time

mixed CBCL_PHYSICAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
contrast r.Tx##ib1.time
       
