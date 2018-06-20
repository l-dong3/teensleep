do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
sum Sleep_Health_0 WD_TSTavg_0 WD_Bedtimeavg_0 CMEP_0 CDRS_BEST_0 MASC_0 ACS_0 YSAS_COG_0 SSS_0 SU_SUM_0 YSAS_FRIEND_0 YSAS_FAMILY_0 YSAS_DATE_0 totalyearactivity_0 PHQ_0 EMOTIONAL_COMPOSITE_0 COGNITIVE_COMPOSITE_0 BEHAVIORAL_COMPOSITE SOCIAL_COMPOSITE_0 PHYSICAL_COMPOSITE_0
graph use "/Users/ldong/Dropbox/composite_sleep_health/new_Table5_Figure2/Graph.gph"
graph use "/Users/ldong/Dropbox/composite_sleep_health/new_Table5_Figure2/Panel_style_figure_all_five_domains_Vertical_w_coefficients.gph"
graph use "/Users/ldong/Dropbox/composite_sleep_health/new_Table5_Figure2/Panel_style_figure_all_five_domains_Vertical_w_coefficients.gph"
use "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/all_data_pre_to_6mFU.dta"
do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , nolog
estat group
estat icc
estat sd
test (0.Tx#0.timepoint 0.Tx#1.timepoint 0.Tx#2.timepoint 1.Tx#0.timepoint 1.Tx#1.timepoint 1.Tx#2.timepoint)
contrast Tx@timepoint
test (1.Tx)
contrast Tx#timepoint, overall
contrast Tx#timepoint, overall
test (1.Tx), mtest(holm)
test (0.Tx#0.timepoint 0.Tx#1.timepoint 0.Tx#2.timepoint 1.Tx#0.timepoint 1.Tx#1.timepoint 1.Tx#2.timepoint), mtest(holm)
estat summarize
estat summarize, equation
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , dfmethod(repeated) nolog
mixed, dftable(pvalue)
estat df
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, cov(unstructured) nolog
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, cov(unstructured) nolog dfmethod(kroger) reml
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, cov(unstructured) nolog dfmethod(residual) reml
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, cov(unstructured) nolog dfmethod(anova) reml
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , mle
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, nolog mle
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, nolog mle cov(un)
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, cov(unstructured) nolog dfmethod(repeated) reml
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , cov(unstructured) nolog dfmethod(repeated) reml
contrast Tx@timepoint
contrast r.Tx@timepoint
help atmeans
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , cov(unstructured) nolog dfmethod(repeated) reml
margins Tx#timepoint
marginsplot
margins timepoint#Tx
marginsplot
contrast r.Tx@timepoint
contrast Tx@timepoint
 mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , cov(unstructured) nolog dfmethod(repeated) reml
 contrast r.Tx@timepoint
 contrast r.Tx@timepoint
  mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, cov(unstructured) nolog dfmethod(repeated) reml
  contrast r.Tx@timepoint
   mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, cov(unstructured) nolog dfmethod(anova) reml
   contrast r.Tx@timepoint
   contrast ar.Tx@timepoint
   use "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/Risk_category_paper/risk_categories_pre_eligiblity_complete.dta"
   tab1 emo_risk-risk_count
   gen risk_count_3cat = 1 if risk_count == 1
   replace risk_count_3cat = 2 if risk_count == 2
   replace risk_count_3cat = 3 if risk_count > 2
   tab risk_count*
   drop _merge
   label variable risk_count_3cat "1=1 risk, 2 = 2 risk ct, 3 = 3, 4, 5 risk count"
   label variable risk_count_3cat "1=1 risk count, 2 = 2 risk count, 3 = 3, 4, 5 risk count"
   save "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/Risk_category_paper/risk_categories_pre_eligiblity_complete.dta", replace
   tab1 CDRS-risk_count_3cat
   use "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/all_data_pre_to_12mFU_w_text_msg.dta"
   mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time, nolog cov(un) stddev
   mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 text_messaging || ID: time, nolog cov(un) stddev
    mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: time if time !=3, nolog cov(un) stddev
	 mixed PSQITOT_ Tx##time age_yr_0 sex_0 || ID: , nolog 
	  mixed PSQITOT_ Tx##time age_yr_0 sex_0 || ID: time, nolog 
	   mixed PSQITOT_ Tx##time age_yr_0 sex_0 || ID: time if time!=3, nolog 
	    mixed PSQITOT_ Tx##time age_yr_0 sex_0 || ID: time if time!=3, nolog cov(un)
		gen non_evening_post = 1 if CMEP_  >= 28 & time == 1 
		replace non_evening_post= 0 if CMEP_ < 28 & time == 1
		tab non_evening_post
		gen non_evening_FU6 = 1 if CMEP_  >= 28 & time == 2
		replace non_evening_FU6= 0 if CMEP_ < 28 & time == 2
		tab non_evening_FU6
		gen non_evening_FU12 = 1 if CMEP_  >= 28 & time == 3
		replace non_evening_FU12= 0 if CMEP_ < 28 & time == 3
		tab non_evening_FU12
		tab non_evening_FU6 Tx
		tab non_evening_FU6 Tx, chi
		drop non_evening_post non_evening_FU6 non_evening_FU12
		gen non_evening_post = 1 if CMEP_  > 27 & time == 1 
		replace non_evening_post= 0 if CMEP_ <= 27 & time == 1
		tab non_evening_post
		gen non_evening_FU6 = 1 if CMEP_  > 27 & time == 2
		replace non_evening_FU6= 0 if CMEP_ <= 27 & time == 2
		tab non_evening_FU6
		gen non_evening_FU12 = 1 if CMEP_  >= 28 & time == 3
		drop non_evening_FU12
		gen non_evening_FU12 = 1 if CMEP_  > 27 & time == 3
		replace non_evening_FU12= 0 if CMEP_ <= 27 & time == 3
		tab non_evening_FU12
		tab non_evening_FU6 Tx
		tab non_evening_FU6 Tx, chi
		tab non_evening_FU12 Tx, chi
		use "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/all_data_pre_to_6mFU.dta", clear
		do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
		do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
		do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
		do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
		do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
		do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
		mixed ACS_ Tx##time age_yr_0 sex_0 || ID: , nolog
		contrast r.Tx##ib1.time
		margins timepoint#Tx
		marginsplot, xtitle("") title("ACS") plot1opt(lpattern(dash)) plot2opt(msymbol(diamond))
		do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
		do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
		use "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/all_data_pre_to_12mFU_w_text_msg.dta"
		mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog 
		contrast r.Tx@timepoint
		contrast r.Tx##ib1.time
		contrast r.timepoint@Tx
		mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 text_messaging || ID: if time == 3 | time == 2, nolog 
		contrast r.Tx@timepoint
		mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 text_messaging || ID: time , nolog cov(un) 
		contrast r.Tx@timepoint
		mixed CMEP Tx##time age_yr_0 sex_0  || ID: , nolog 
		contrast r.Tx@timepoint
		mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 text_messaging || ID: , nolog 
		mixed CMEP Tx##time age_yr_0 sex_0 text || ID: , nolog 
		contrast r.Tx@timepoint
		mixed CMEP Tx##time age_yr_0 sex_0  || ID: if time!=3 , nolog 
		contrast r.Tx@timepoint
		help ttest
		bysort Tx: sum CMEP_ 
		bysort Tx: sum CMEP_ if time == 3
		regress CMEP Tx sex_0 age_yr_0 text_messaging if time == 3
		regress CMEP Tx sex_0 age_yr_0  if time == 3
		regress CMEP Tx sex_0 age_yr_0 i.text_messaging if time == 3
		tab text Tx, chi
		egen pickone = tag(ID)
		tab text Tx if pickone== 1, chi
		mixed CMEP Tx##time age_yr_0 sex_0  || ID: , nolog 
		contrast r.Tx@timepoint
		mixed CMEP Tx##time##text age_yr_0 sex_0  || ID: , nolog 
		margins Tx##time##text
		marginsplot
		margins timepoint#Tx#text
		marginsplot
		contrast r.Tx@timepoint
		mixed CMEP Tx##time age_yr_0 sex_0  || ID: , nolog 
		sum age
		sum age if pickone==1
		gen age_centered = age_yr_0 -  14.77011
		mixed CMEP Tx##time##text age_center sex_0  || ID: , nolog 
		mixed CMEP Tx##time age_center sex_0  || ID: , nolog 
		import delimited /Users/ldong/Downloads/ml_logreg_data.csv, clear 
		rename ïid ID
		destring constr_resp, replace
		gen constr_resp1 = 1 if constr_resp =="Yes"
		replace constr_resp1 = 0 if constr_resp =="No"
		gen invite_resp1 = 1 if invite_resp =="Yes"
		replace invite_resp1 = 0 if invite_resp =="No"
		 xtmelogit constr_resp1 invite_resp1 || ID: , nolog
		  xtmelogit constr_resp1 invite_resp1 session || ID: , nolog
		   xtmelogit constr_resp1 invite_resp1 session therapist || ID: , nolog
		    xtmelogit constr_resp1 invite_resp1 session therapist fsiq_pre || ID: , nolog
			 xtmelogit constr_resp1 invite_resp1 session therapist fsiq_pre recode_edyr_edlevel || ID: , nolog
			  xtmelogit constr_resp1 invite_resp1 session therapist fsiq_pre recode_edyr_edlevel || ID: , nolog intpoints(10)
			   xtmelogit constr_resp1 invite_resp1 session therapist fsiq_pre recode_edyr_edlevel || ID: therapist, nolog intpoints(10)
			    xtmelogit constr_resp1 invite_resp1 session therapist fsiq_pre recode_edyr_edlevel || ID: session, nolog intpoints(10)
				 xtmelogit constr_resp1 invite_resp1 session therapist fsiq_pre recode_edyr_edlevel || ID: , nolog intpoints(10)
				 xtmelogit, or
				  xtmelogit constr_resp1 invite_resp1 session therapist fsiq_pre recode_edyr_edlevel || ID: session, nolog intpoints(10)
				  import excel "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/data/summer_winter.xlsx", sheet("summer_winter") firstrow clear
				  mvdecode _all, mv(-9=.)
				  sum _all
				  save "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/timing_of_FU_assessment.dta"
				  use "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/all_data_pre_to_6mFU.dta"
				  merge m:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/timing_of_FU_assessment.dta", generate(_merge3)
				  drop _merge*
				  drop ax_summer_3 ax_winter_3
				  save "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/all_data_pre_to_6mFU_w_ax_timing.dta"
				  mixed CMEP Tx##time age_yr_0 sex_0  || ID: , nolog 
				  mixed CMEP Tx##time age_yr_0 sex_0 ax_summer_2 ax_winter_2 || ID: , nolog 
				  tab1 ax_summer_2 ax_winter_2
				  gen ax_break = 1 if ax_summer_2 == 1 | ax_winter_2 == 1 
				  replace ax_break = 0 if ax_summer_2 == 0 & ax_winter_2 == 0
				  tab ax_break
				  egen pickone = tag(ID)
				  tab ax_break if pickone==1
				  tab ax_summer_2 if pickone == 1
				  tab ax_winter_2  if pickone == 1
				  save "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/all_data_pre_to_6mFU_w_ax_timing.dta", replace
				  mixed CMEP Tx##time age_yr_0 sex_0 ax_summer_2 ax_winter_2 || ID: , nolog 
				  mixed CMEP Tx##time age_yr_0 sex_0 ax_break || ID: , nolog 
				  contrast r.Tx@timepoint
				  mixed CMEP Tx##time age_yr_0 sex_0  || ID: , nolog 
				  contrast r.Tx@timepoint
				  mixed CMEP Tx##time age_yr_0 sex_0  || ID: time, nolog 
				  contrast r.Tx@timepoint
				  mixed CMEP Tx##time age_yr_0 sex_0  || ID: , nolog 
				  contrast r.Tx@timepoint
				  list ID if ax_break == 1
				  list ID time Tx WD_TSTavg_ WD_Bedtimeavg_ CMEP_ if ax_break == 1
				  sort ID timepoint
				  list ID time Tx WD_TSTavg_ WD_Bedtimeavg_ CMEP_ if ax_break == 1
				  regress WD_TSTavg_ ax_break if pickone == 1
				  regress WD_Bedtimeavg_ ax_break if pickone == 1
				  regress CMEP_ ax_break if pickone == 1
				  regress TST_Avgdif_ ax_break if pickone == 1
				  regress Bedtime_Avgdif_ ax_break if pickone == 1
				  regress WakeTime_Avgdif_ ax_break if pickone == 1
				  mixed CMEP Tx##time age_yr_0 sex_0  || ID: , nolog 
				  estat icc
				  use "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/all_data_pre_to_6mFU.dta"
				  mixed CMEP Tx##time age_yr_0 sex_0  || ID: , nolog 
				  merge m:1 ID using "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/Risk_category_paper/risk_categories_pre_eligiblity_complete.dta", generate(_merge3)
				  tab risk_count
				  mixed CMEP Tx##time## age_yr_0 sex_0  || ID: , nolog 
				  mixed CMEP Tx##time##c.risk_count age_yr_0 sex_0  || ID: , nolog 
				  mixed CMEP Tx##time##risk_count_3cat age_yr_0 sex_0  || ID: , nolog 
				  label define riskcount 1 "1 risk factor" 2 "2 risk factors" 3 "3 or more risk factors"
				  label values risk_count_3cat riskcount
				  mixed CMEP Tx##time##risk_count_3cat age_yr_0 sex_0  || ID: , nolog 
				  mixed CMEP Tx##time##c.risk_count age_yr_0 sex_0  || ID: , nolog 
				  mixed CMEP Tx##time##risk_count_3cat age_yr_0 sex_0  || ID: , nolog 
				  margins Tx##time##risk_count_3cat
				  marginsplot
				  margins time##Tx##risk_count_3cat
				  marginsplot
				  margins, over (time Tx risk_count_3cat)
				  marginsplot 
				  mixed CMEP Tx##time##risk_count_3cat age_yr_0 sex_0  || ID: , nolog 
				  contrast r.Tx@timepoint
				  contrast r.Tx##ib1.time
				  contrast r.Tx##time##risk_count
				  contrast Tx##time##risk_count_3cat
				  mixed CMEP Tx##time##c.age sex || ID: , nolog 
				  mixed CMEP Tx##time##sex c.age  || ID: , nolog 
				  contrast Tx##time##sex
				  *Sleep and Circadian
				  mixed WD_TSTavg_ Tx##time##sex_0 age_yr_0 || ID: , nolog
				  mixed WD_Bedtimeavg_ Tx##time##sex_0 age_yr_0 || ID: , nolog
				  mixed TST_Avgdif_ Tx##time##sex_0 age_yr_0 || ID: , nolog
				  mixed Bedtime_Avgdif_ Tx##time##sex_0 age_yr_0 || ID: , nolog
				  mixed WakeTime_Avgdif_ Tx##time##sex_0 age_yr_0 || ID: , nolog
				  mixed SLEEPINESS_ Tx##time##sex_0 age_yr_0 || ID: , nolog
				  mixed PSQITOT_ Tx##time##sex_0 age_yr_0 || ID: , nolog
				  mixed CBCL_SLEEP_ Tx##time##sex_0 age_yr_0 || ID: , nolog
				  mixed CMEP_ Tx##time##sex_0 age_yr_0 || ID: , nolog
				  contrast Tx##time##sex
				  contrast Tx##time , effects
				  contrast Tx##time
				  summarize age_yr_0, meanonly
				  gen centered_age = age_yr_0 - r(mean)
				  sum age_yr
				  sum centered_age
				  mixed TST_Avgdif_ Tx##time##sex_0 centered_age || ID: , nolog
				  egen pickone = tag(ID)
				  tab pickone
				  summarize age_yr_0 if pickone== 1, meanonly
				  gen centered_age_baseline = age_yr_0 - r(mean) if pickone == 1
				  sum centered_age centered_age_baseline
				  save "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/all_data_pre_to_6mFU.dta", replace
				  *Sleep and Circadian
				  **Sex as a moderator
				  mixed WD_TSTavg_ Tx##time##sex_0 centered_age || ID: , nolog
				  contrast Tx##time##sex
				  mixed WD_Bedtimeavg_ Tx##time##sex_0 centered_age || ID: , nolog
				  contrast Tx##time##sex
				  mixed TST_Avgdif_ Tx##time##sex_0 centered_age || ID: , nolog
				  contrast Tx##time##sex
				  mixed Bedtime_Avgdif_ Tx##time##sex_0 centered_age || ID: , nolog
				  contrast Tx##time##sex
				  mixed WakeTime_Avgdif_ Tx##time##sex_0 centered_age || ID: , nolog
				  contrast Tx##time##sex
				  mixed SLEEPINESS_ Tx##time##sex_0 centered_age || ID: , nolog
				  contrast Tx##time##sex
				  mixed PSQITOT_ Tx##time##sex_0 centered_age || ID: , nolog
				  contrast Tx##time##sex
				  mixed CBCL_SLEEP_ Tx##time##sex_0 centered_age || ID: , nolog
				  contrast Tx##time##sex
				  mixed CMEP_ Tx##time##sex_0 centered_age || ID: , nolog
				  contrast Tx##time##sex
				  mixed WD_TSTavg_ Tx##time##c.centered_age sex_0 || ID: , nolog
				  mixed WD_Bedtimeavg_ Tx##time##c.centered_age sex_0 || ID: , nolog
				  mixed TST_Avgdif_ Tx##time##c.centered_age sex_0 || ID: , nolog
				  mixed Bedtime_Avgdif_ Tx##time##c.centered_age sex_0 || ID: , nolog
				  mixed WakeTime_Avgdif_ Tx##time##c.centered_age sex_0 || ID: , nolog
				  mixed SLEEPINESS_ Tx##time##c.centered_age sex_0 || ID: , nolog
				  mixed PSQITOT_ Tx##time##c.centered_age sex_0 || ID: , nolog
				  mixed CBCL_SLEEP_ Tx##time##c.centered_age sex_0 || ID: , nolog
				  mixed CMEP_ Tx##time##c.centered_age sex_0 || ID: , nolog
				   mixed WD_Bedtimeavg_ Tx##time##c.centered_age sex_0 || ID: , nolog
				   margins time##Tx, at(centered_age=0)
				   marginsplot
				   margins time##Tx, at(centered_age=1)
				   marginsplot
				   margins time##Tx, at(centered_age=2)
				   sum centered_age
				   hist centered_age
				   sum age
				   margins time##Tx, dydx(centered_age)
				   quietly margins time##Tx, at(centered_age=(-4(1)4))
				   marginsplot, recast(line) noci addplot(scatter WD_Bedtimeavg_ centered_age, jitter(3) msym(oh))
				   marginsplot, recast(line) noci
				    mixed WD_Bedtimeavg_ Tx##time##c.centered_age sex_0 || ID: , nolog
					margins time##Tx, at(centered_age=0)
					marginsplot, noci
					 mixed WD_Bedtimeavg_ Tx##time##c.age sex_0 || ID: , nolog
					 margins time##Tx, at(age=(10(1)19))
					 marginsplot
					 margins, over (time Tx) at(age=(10(1)19))
					 marginsplot, noci
					 margins, over (time Tx) at(age=(10(2)18))
					 marginsplot, noci
					 margins, over (time Tx) at(age=(10(2)18))
					 margins, over (time Tx) at(age=12)
					 margins, over (time Tx) at(age=16)
					 marginsplot, noci
					 margins, over (time Tx) at(age=12)
					 margins, over (time Tx) at(age=12)
					 marginsplot, noci
					 sum age, detail
					 hist age
					 gen older = 1 if age >= 15
					 replace older = 0 if age < 15
					 tab older
					 drop older
					 gen older = 1 if age >= 15 & pickone == 1
					 replace older = 0 if age < 15 & pickone == 1
					 tab older
					 tab age
					 tab age if pickone == 1
					 drop older
					 gen older = 1 if age >= 15
					 replace older = 0 if age < 15
					  mixed WD_Bedtimeavg_ Tx##time##older sex_0 || ID: , nolog
					  margins, over(time Tx age)
					  marginsplot, noci
					  mixed WD_Bedtimeavg_ Tx##time##older sex_0 || ID: , nolog
					  margins, over(time Tx older)
					  marginsplot, noci
					  gen older16 = 1 if age >=16
					  replace older16= 0 if age <16
					  tab older16
					  mixed WD_Bedtimeavg_ Tx##time##older1 sex_0 || ID: , nolog
					  margins, over(time Tx older1)
					  marginsplot, noci
					  twoway lfit WD_Bedtimeavg_ age_yr_0, by(time Tx)
					  save "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/all_data_pre_to_6mFU.dta", replace
					  rename older older15
					  label variable older15 "1 = age ≥ 15; 0 otherwise"
					  label variable older16 "1 = age ≥ 16; 0 otherwise"
					  save "/Users/ldong/Dropbox/Harvey_lab_research/TEEN_SLEEP/6mFU_paper/all_data_pre_to_6mFU.dta", replace
					  do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
					  *Number of risk count at baseline (continuous) as a moderator
					  mixed WD_TSTavg_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed WD_Bedtimeavg_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed TST_Avgdif_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed Bedtime_Avgdif_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed WakeTime_Avgdif_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed SLEEPINESS_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed PSQITOT_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_SLEEP_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CMEP_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  *Sleep and Circadian
					  **Sex as a moderator
					  mixed WD_TSTavg_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  *contrast Tx##time##sex
					  mixed WD_Bedtimeavg_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  *contrast Tx##time##sex
					  mixed TST_Avgdif_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  *contrast Tx##time##sex
					  mixed Bedtime_Avgdif_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  *contrast Tx##time##sex
					  mixed WakeTime_Avgdif_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  *contrast Tx##time##sex
					  mixed SLEEPINESS_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  *contrast Tx##time##sex
					  mixed PSQITOT_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  *contrast Tx##time##sex
					  mixed CBCL_SLEEP_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  *contrast Tx##time##sex
					  mixed CMEP_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  *contrast Tx##time##sex
					  *Age as a moderator
					  mixed WD_TSTavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed TST_Avgdif_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed Bedtime_Avgdif_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed WakeTime_Avgdif_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed SLEEPINESS_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed PSQITOT_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_SLEEP_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CMEP_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  ************************************************************
					  **********************COMPOSITE SCORES**********************
					  ************************************************************
					  *sex
					  mixed EMOTIONAL_COMPOSITE_2 Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed COGNITIVE_COMP_2 Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed BEHAVIORAL_COMPOSITE_2 Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed SOCIAL_COMP_2 Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed PHYSICAL_COMPOSITE_2 Tx##time##sex_0 age_yr_0|| ID: , nolog
					  mixed CBCL_EMOTIONAL_COMPOSITE_2 Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed CBCL_COGNITIVE_COMPOSITE_2 Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed CBCL_BEHAVIORAL_COMPOSITE_2 Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed CBCL_SOCIAL_COMPOSITE_2 Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed CBCL_PHYSICAL_COMPOSITE_2 Tx##time##sex_0 age_yr_0 || ID: , nolog
					  *age
					  mixed EMOTIONAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0|| ID: , nolog
					  mixed COGNITIVE_COMP_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed BEHAVIORAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed SOCIAL_COMP_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed PHYSICAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_EMOTIONAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_COGNITIVE_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_BEHAVIORAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_SOCIAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_PHYSICAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  *number of risk count at baseline
					  mixed EMOTIONAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed COGNITIVE_COMP_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed BEHAVIORAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed SOCIAL_COMP_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed PHYSICAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_EMOTIONAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_COGNITIVE_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_BEHAVIORAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_SOCIAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_PHYSICAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  ************************************************************
					  ************youth selfreport composite risk scores**********
					  ************************************************************
					  *sex
					  mixed CDRS_BEST_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed MASC_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed ACS_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed YSAS_COG_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed SSS_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed SU_SUM_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed YSAS_FRIEND_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed YSAS_FAMILY_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed YSAS_DATE_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed totalyearactivitymet_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed totalyearactivity_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed PHQ_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  *CBCL outcomes
					  mixed CBCL_anxious_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_withdrawn_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_thought_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_attention_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_rulebreak_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_aggressive_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_social_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_somatic_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  *AGE
					  mixed CDRS_BEST_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed MASC_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed ACS_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed YSAS_COG_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed SSS_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed SU_SUM_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed YSAS_FRIEND_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed YSAS_FAMILY_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed YSAS_DATE_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed totalyearactivitymet_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed PHQ_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  *CBCL outcomes
					  mixed CBCL_anxious_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_withdrawn_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_thought_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_attention_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_rulebreak_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_aggressive_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_social_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_somatic_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  *number of risk count at baseline
					  mixed CDRS_BEST_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed MASC_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed ACS_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed YSAS_COG_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed SSS_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed SU_SUM_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed YSAS_FRIEND_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed YSAS_FAMILY_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed YSAS_DATE_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed totalyearactivitymet_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed PHQ_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  *CBCL outcomes
					  mixed CBCL_anxious_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_withdrawn_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_thought_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_attention_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_rulebreak_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_aggressive_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_social_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  mixed CBCL_somatic_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
					  do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
					  ************************************************************
					  ************youth selfreport composite risk scores**********
					  ************************************************************
					  *sex
					  mixed CDRS_BEST_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed MASC_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed ACS_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed YSAS_COG_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed SSS_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed SU_SUM_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed YSAS_FRIEND_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed YSAS_FAMILY_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed YSAS_DATE_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed totalyearactivitymet_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed totalyearactivity_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed PHQ_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  *CBCL outcomes
					  mixed CBCL_anxious_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed CBCL_withdrawn_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed CBCL_thought_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed CBCL_attention_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed CBCL_rulebreak_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed CBCL_aggressive_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed CBCL_social_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  mixed CBCL_somatic_ Tx##time##sex_0 age_yr_0 || ID: , nolog
					  do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
					  do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD00797.000000"
					  mixed CMEP_ Tx##time#c.age_yr_0 sex_0 || ID: ,nolog
					  mixed CMEP_ Tx##time##c.age_yr_0 sex_0 || ID: ,nolog
					  mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  margins  Tx#time, at (age = (10 18))
					  marginsplot, bydimension(Tx) noci
					  margins  time#Tx, at (age = (10 18))
					  marginsplot, bydimension(Tx) noci
					  contrast Tx#c.age_yr_0@time, pveffects
					  margins  Tx#time, at (age = (10 18))
					  marginsplot, bydimension(Tx) noci
					  margins  time#Tx, at (age = (10 18))
					  help mixed
					  mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog  dfmethod(repeated)
					  margins  Tx#time, at (age = (10 18))
					  contrast Tx#time#c.age_yr_0
					  mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog  dfmethod(anova)
					  contrast Tx#time#c.age_yr_0
					  mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog  dfmethod(residual)
					  contrast Tx#time#c.age_yr_0
					  mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: time, nolog  
					  mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: time, nolog cov(un)
					  contrast Tx#time#c.age_yr_0
					  margins, dydx(age) over(Tx time)
					  contrast Tx#time#c.age_yr_0
					  contrast Tx#time#c.age_yr_0, nowald pveffects
					  contrast Tx#time#c.age_yr_0,  pveffects
					  contrast Tx#c.age_yr_0@time,  pveffects
					  contrast Tx#c.age_yr_0@time, nowald pveffects
					  mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog cov(un)
					  contrast Tx#c.age_yr_0@time,  pveffects
					  contrast Tx#time#c.age_yr_0
					  contrast time#c.age@Tx
					  contrast ar.time#c.age@Tx, pveffects
					  margins, dydx(age) over(time Tx)
					  contrast ar.Tx#c.age@timepoint, pveffects
					  contrast ar.timepoint#r.Tx#c.age, pveffects
					  mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  display r(chi2)/r(df)
					  contrast Tx#time#c.age_yr_0
					  mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog reml dfmethod(anova)
					  contrast Tx#time#c.age_yr_0
					  anova CMEP_ Tx / ID|Tx timepoint Tx#time
					  display 14.79/2
					  anova CMEP_ Tx / ID|Tx timepoint Tx##time##c.age_
					  anova CMEP_ Tx / ID|Tx timepoint age Tx##time##c.age_
					  mixed WD_TSTavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  test Tx#time#c.age_yr_0
					  test Tx
					  help test
					  mixed WD_TSTavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed TST_Avgdif_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed Bedtime_Avgdif_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed WakeTime_Avgdif_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed SLEEPINESS_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed PSQITOT_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed CBCL_SLEEP_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed CMEP_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed WD_TSTavg_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed WD_Bedtimeavg_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed TST_Avgdif_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed Bedtime_Avgdif_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed WakeTime_Avgdif_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed SLEEPINESS_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed PSQITOT_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed CBCL_SLEEP_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed CMEP_ Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed EMOTIONAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0|| ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed COGNITIVE_COMP_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed BEHAVIORAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed SOCIAL_COMP_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed PHYSICAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed CBCL_EMOTIONAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed CBCL_COGNITIVE_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed CBCL_BEHAVIORAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed CBCL_SOCIAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed CBCL_PHYSICAL_COMPOSITE_2 Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.age_yr_0
					  mixed EMOTIONAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed COGNITIVE_COMP_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed BEHAVIORAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed SOCIAL_COMP_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed PHYSICAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed CBCL_EMOTIONAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed CBCL_COGNITIVE_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed CBCL_BEHAVIORAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed CBCL_SOCIAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed CBCL_PHYSICAL_COMPOSITE_2 Tx##time##c.risk_count age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time#c.risk_count
					  mixed CMEP Tx##time age_yr_0 sex_0  || ID: , nolog 
					  contrast Tx#timepoint
					  mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time
					  mixed WD_Bedtimeavg_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time
					  mixed TST_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time
					  mixed Bedtime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time
					  mixed WakeTime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time
					  mixed SLEEPINESS_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time
					  mixed PSQITOT_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time
					  mixed CBCL_SLEEP_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time
					  mixed CMEP_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#time
					  mixed CMEP_ Tx##time age_yr_0 sex_0 || ID: if time !=3, nolog
					  mixed CMEP_ Tx##time age_yr_0 sex_0 || ID: if time !=2, nolog
					  contrast Tx#time
					  mixed CBCL_SLEEP_ Tx##time age_yr_0 sex_0 || ID: if time!=2, nolog
					  contrast Tx#time
					  mixed CMEP_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#timepoint
					  margins Tx#timepoint
					  marginsplot
					  margins timepoint#Tx
					  marginsplot
					  contrast timepoint@Tx
					  contrast Tx@timepoint
					  contrast Tx@timepoint, pveffects nowald
					  contrast timepoint@Tx, pveffects
					  contrast Tx#timepoint, pveffects
					  *this provides the estimate of the size of the interaction effect, SE, and a test of the significance of the interaction
					  margins, over(time Tx)
					  marginsplot
					  margins Tx@timepoint, contrast(nowald pveffects)
					  margins Tx@timepoint
					  contrast Tx@timepoint, pveffects
					  mixed WakeTime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog 
					  margins timepoint#Tx
					  marginsplot
					  contrast timepoint@Tx
					  contrast Tx@timepoint
					  contrast Tx@timepoint, pveffects nowald
					  contrast timepoint@Tx, pveffects
					  mixed PSQITOT_ Tx##time age_yr_0 sex_0 || ID: , nolog
					  margins timepoint#Tx
					  contrast timepoint@Tx
					  contrast Tx@timepoint
					  contrast Tx@timepoint, pveffects nowald
					  mixed SLEEPINESS_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
					  mixed SLEEPINESS_ Tx##time##c.age_yr_0 sex_0 || ID: c.age, nolog
					  mixed SLEEPINESS_ Tx##time##c.age_yr_0 sex_0 || ID: time, nolog
					  mixed SLEEPINESS_ Tx##time##c.age_yr_0 sex_0 || ID: time, nolog
					  mixed SLEEPINESS_ Tx##time c.age_yr_0 sex_0 || ID: time, nolog
					  mixed SLEEPINESS_ Tx##time c.age_yr_0 sex_0 || ID: , nolog
					  contrast Tx#timepoint
					  pwcompare  Tx#timepoint
					  contrast Tx#timepoint, pveffect
					  contrast i.Tx#i.timepoint, pveffect
					  pwcompare  Tx#timepoint, effects
					  pwcompare  Tx#timepoint, effects bon
					  mixed SLEEPINESS_ Tx##time c.age_yr_0 sex_0 || ID: Tx, nolog
					  mixed SLEEPINESS_ Tx##time c.age_yr_0 sex_0 || ID: Tx, nolog cov(un)
					  mixed SLEEPINESS_ Tx##time c.age_yr_0 sex_0 || ID: time, nolog cov(un)
					  
