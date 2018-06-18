use "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/analysis/main_file_LONG.dta"
*Sleep and Circadian
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
margins timepoint#Tx
marginsplot, xtitle("") title("Weekday TST") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond)) saving(WD_TST_pre_FU6.gph)
use "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/analysis/all_data_pre_to_6mFU_w_ax_timing.dta"
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
contrast r.Tx@timepoint
contrast r.Tx##ib1.time
margins timepoint#Tx
quietly mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , nolog cov(un) stddev
estimates store ri
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
estimates store rc
lrtest rc ri
do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD11066.000000"
do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD11066.000000"
do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD11066.000000"
do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD11066.000000"
do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD11066.000000"
do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD11066.000000"
do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD11066.000000"
do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD11066.000000"
do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD11066.000000"
do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD11066.000000"
keep ID Tx age_yr_0 sex_0 timepoint WD_TSTavg_WD_Bedtimeavg_TST_Avgdif_Bedtime_Avgdif_WakeTime_Avgdif_SLEEPINESS_PSQITOT_CBCL_SLEEP_CMEP_
keep ID Tx age_yr_0 sex_0 timepoint-CMEP_
export delimited using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/analysis/Mplus/sleep_outcomes.csv", delimiter(tab) novarnames nolabel replace
