*testing random slope vs. random intercept model

quietly mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , nolog cov(un) stddev
estimates store ri
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
estimates store rc
lrtest rc ri
drop _est_rc _est_ri

quietly mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , nolog cov(un) stddev
estimates store ri
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: age_yr_0, nolog cov(un) stddev
estimates store rc
lrtest rc ri
drop _est_rc _est_ri

quietly mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , nolog cov(un) stddev
estimates store ri
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: sex_0, nolog cov(un) stddev
**this model takes too long; had to break
estimates store rc
lrtest rc ri
drop _est_rc _est_ri

***

quietly mixed WD_Bedtimeavg_ Tx##time age_yr_0 sex_0 || ID: , nolog cov(un) stddev
estimates store ri
mixed WD_Bedtimeavg_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
estimates store rc
lrtest rc ri
drop _est_rc _est_ri

***

quietly mixed TST_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog cov(un) stddev
estimates store ri
mixed TST_Avgdif_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
estimates store rc
lrtest rc ri
drop _est_rc _est_ri

***

quietly mixed Bedtime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog cov(un) stddev
estimates store ri
mixed Bedtime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
estimates store rc
lrtest rc ri
drop _est_rc _est_ri

***

quietly mixed WakeTime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog cov(un) stddev
estimates store ri
mixed WakeTime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
estimates store rc
lrtest rc ri
drop _est_rc _est_ri

***

quietly mixed SLEEPINESS_ Tx##time age_yr_0 sex_0 || ID: , nolog cov(un) stddev
estimates store ri
mixed SLEEPINESS_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
estimates store rc
lrtest rc ri
drop _est_rc _est_ri

***

quietly mixed PSQITOT_ Tx##time age_yr_0 sex_0 || ID: , nolog cov(un) stddev
estimates store ri
mixed PSQITOT_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
estimates store rc
lrtest rc ri
drop _est_rc _est_ri

***

quietly mixed CBCL_SLEEP_ Tx##time age_yr_0 sex_0 || ID: , nolog cov(un) stddev
estimates store ri
mixed CBCL_SLEEP_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
estimates store rc
lrtest rc ri
drop _est_rc _est_ri

***

quietly mixed TST_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog cov(un) stddev
estimates store ri
mixed TST_Avgdif_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
estimates store rc
lrtest rc ri
drop _est_rc _est_ri
