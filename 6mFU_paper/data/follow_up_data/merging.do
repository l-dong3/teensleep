use "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/ACS_FU6/ACS_RECODED_SCORED_FU6.dta"
use "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/ACS_FU6/ACS_SCORED_FU6.dta"
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/ACS_FU12/ACS_RECODED_SCORED_FU12.dta"
sum ACS_score_FU6 ACS_SCORED_FU12
keep ID ACS_score_FU6 ACS_SCORED_FU12
rename ACS_score_FU6 ACS_sum_FU6
rename ACS_SCORED_FU12 ACS_sum_FU12
save "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/primary_second_outcomes.dta"
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/ASU_FU6/ASU_SCORED_FU6.dta"
drop ASU_CAFFEINE_FU6-ASU_OTHER_SUBSTANCES
rename ASU_SUM_FU6 ASU_sum_FU6
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/ASU_FU12/ASU_SCORED_FU12.dta"
keep ID ACS_sum_FU6 ACS_sum_FU12 ASU_sum_FU6 ASU_SUM_FU12
rename ASU_SUM_FU12 ASU_sum_FU12
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/CBCL_FU6/CBCL_PROFILES_FU6_sumscores.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/CBCL_FU12/CBCL_PROFILES_FU12_sumscores.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/CDRS_FU6/CDRS_SCORED_FU6.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/CDRS_FU12/CDRS_SCORED_FU12.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/CMEP_FU6/CMEP_SCORED_FU6.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/CMEP_FU12/CMEP_SCORED_FU12.dta"
drop CMEP_0_1-CMEP_0_10
drop _merge
rename CMEP_SCORED_FU12 CMEP_FU12
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/MAQ_FU6/MAQ_FU6_SCORED.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/MAQ_FU12/MAQ_FU12_SCORED.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/MASC_FU6/MASC_SCORED_FU6.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/MASC_FU12/MASC_SCORED_FU12.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/PHQ15_FU6/PHQ15_SCORED_FU6.dta"
drop _merge
rename PHQ_SORE_FU16 PHQ_score_FU6
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/PHQ15_FU12/PHQ15_SCORED_FU12.dta"
rename PHQ_SCORE_FU12 PHQ_sum_FU12
rename PHQ_score_FU6 PHQ_sum_FU6
label variable PHQ_sum_FU6 "PHQ sum FU6"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/PSQI_FU6/PSQI_TotalScore_FU6.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/PSQI_FU12/PSQI_TotalScore_FU12.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/SAS_FU6/SAS_SCORED_FU6.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/SAS_FU12/SAS_SCORED_FU12.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/SSHB_FU6/SSHB_SLEEPINESS_SCORED_FU6.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/SSHB_FU12/SSHB_SLEEPINESS_SCORED_FU12.dta"
drop _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/SSS_FU6/SSS_RECODEDSCORED_FU6.dta"
drop SSS_6_1-SSS_6_8 _merge
merge 1:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/SSS_FU12/SSS_RECODEDSCORED_FU12.dta"
drop SSS_12_1-SSS_12_8 _merge
drop CBCL*
order CDRS_P_FU6-CDRS_BEST_FU12, after(ID)
order MASC_SCORE_FU6 MASC_SCORE_FU12, after (CDRS_BEST_FU12)
order YSAS_COG_FU6-YSAS_SOCFU12, after (ACS_sum_FU12)
order SSS_SCORED_FU6 SSS_SCORE_FU12, after (ASU_sum_FU12)
order TotalYearLeisureActivityhr_FU6-PHQ_sum_FU12, after (SSS_SCORE_FU12)
order gender age, after (ID)
save "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/TeenSleep_analysis/Teen_sleep_follow_up/Lulu_FUS_DATA09132017/primary_second_outcomes.dta", replace
