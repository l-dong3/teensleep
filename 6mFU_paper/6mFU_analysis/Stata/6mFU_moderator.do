*teen sleep 6mo follow up 
*testing moderators (sex, age, # risk count at baseline)

*mean centering 
*summarize age_yr_0, meanonly
*gen centered_age = age_yr_0 - r(mean)

************************************************************
*********************Sleep and Circadian********************
************************************************************

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
*margins, over (time Tx) at(age=(10(2)18))
*marginsplot, noci

*the difference between TranS-C and PE comparing FU6 and baseline was significant
*for younger vs. older adolescents
*for older adolescents, TranS-C had a set back from post to FU6; for younger adolescents
*TranS-C improved from post to FU6?

*mixed WD_Bedtimeavg_ Tx##time##older1 sex_0 || ID: , nolog
*margins, over(time Tx older1)
*marginsplot, noci

mixed TST_Avgdif_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog

mixed Bedtime_Avgdif_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog

mixed WakeTime_Avgdif_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog

mixed SLEEPINESS_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog

mixed PSQITOT_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog

mixed CBCL_SLEEP_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog

mixed CMEP_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog

*Number of risk count (categorical) at baseline as a moderator
mixed WD_TSTavg_ Tx##time##risk_count_3cat age_yr_0 sex_0 || ID: , nolog

mixed WD_Bedtimeavg_ Tx##time##risk_count_3cat age_yr_0 sex_0 || ID: , nolog

mixed TST_Avgdif_ Tx##time##risk_count_3cat age_yr_0 sex_0 || ID: , nolog

mixed Bedtime_Avgdif_ Tx##time##risk_count_3cat age_yr_0 sex_0 || ID: , nolog

mixed WakeTime_Avgdif_ Tx##time##risk_count_3cat age_yr_0 sex_0 || ID: , nolog

mixed SLEEPINESS_ Tx##time##risk_count_3cat age_yr_0 sex_0 || ID: , nolog

mixed PSQITOT_ Tx##time##risk_count_3cat age_yr_0 sex_0 || ID: , nolog

mixed CBCL_SLEEP_ Tx##time##risk_count_3cat age_yr_0 sex_0 || ID: , nolog

mixed CMEP_ Tx##time##risk_count_3cat age_yr_0 sex_0 || ID: , nolog
*significant 3-way interaction for CMEP

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


************************************************************
************youth selfreport composite risk scores**********
************************************************************

**SEX

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



***ways to understand 3 way interaction***
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
