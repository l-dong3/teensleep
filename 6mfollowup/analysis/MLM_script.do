*Sleep and Circadian
mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed WD_Bedtimeavg_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed TST_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed Bedtime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed WakeTime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed SLEEPINESS_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed PSQITOT_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed CBCL_SLEEP_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed CMEP_ Tx##time age_yr_0 sex_0 || ID: , nolog

*youth selfreport composite risk scores
mixed CDRS_BEST_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed MASC_ Tx##time age_yr_0 sex_0 || ID: , nolog

mixed ACS_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed YSAS_COG_ Tx##time age_yr_0 sex_0 || ID: , nolog

mixed SSS_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed SU_SUM_ Tx##time age_yr_0 sex_0 || ID: , nolog

mixed YSAS_FRIEND_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed YSAS_FAMILY_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed YSAS_DATE_ Tx##time age_yr_0 sex_0 || ID: , nolog

mixed totalyearactivitymet_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed PHQ_ Tx##time age_yr_0 sex_0 || ID: , nolog

*CBCL outcomes
mixed CBCL_anxious_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed CBCL_withdrawn_ Tx##time age_yr_0 sex_0 || ID: , nolog

mixed CBCL_thought_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed CBCL_attention_ Tx##time age_yr_0 sex_0 || ID: , nolog

mixed CBCL_rulebreak_ Tx##time age_yr_0 sex_0 || ID: , nolog
mixed CBCL_aggressive_ Tx##time age_yr_0 sex_0 || ID: , nolog

mixed CBCL_social_ Tx##time age_yr_0 sex_0 || ID: , nolog

mixed CBCL_somatic_ Tx##time age_yr_0 sex_0 || ID: , nolog

*Composite scores
mixed EMOTIONAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed COGNITIVE_COMP_2 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed BEHAVIORAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed SOCIAL_COMP_2 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed PHYSICAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog

mixed CBCL_EMOTIONAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed CBCL_COGNITIVE_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed CBCL_BEHAVIORAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed CBCL_SOCIAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog
mixed CBCL_PHYSICAL_COMPOSITE_2 Tx##time age_yr_0 sex_0 || ID: , nolog

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

*postest contrast
contrast r.Tx##ib1.time

         

mixed WD_TSTavg_ Tx##time age_yr_0 sex_0 || ID: , nolog
margins time##Tx, noatlegend
marginsplot, noci
marginsplot

mixed WD_Bedtimeavg_ Tx##time age_yr_0 sex_0 || ID: , nolog
margins time##Tx, noatlegend
marginsplot, noci
marginsplot

mixed TST_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog
margins time##Tx, noatlegend
marginsplot, noci
marginsplot

mixed Bedtime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog
margins time##Tx, noatlegend
marginsplot, noci
marginsplot

mixed WakeTime_Avgdif_ Tx##time age_yr_0 sex_0 || ID: , nolog
margins time##Tx, noatlegend
marginsplot, noci
marginsplot

mixed SLEEPINESS_ Tx##time age_yr_0 sex_0 || ID: , nolog
margins time##Tx, noatlegend
marginsplot, noci
marginsplot

mixed PSQITOT_ Tx##time age_yr_0 sex_0 || ID: , nolog
margins time##Tx, noatlegend
marginsplot, noci
marginsplot

mixed CBCL_SLEEP_ Tx##time age_yr_0 sex_0 || ID: , nolog
margins time##Tx, noatlegend
marginsplot, noci
marginsplot

mixed CMEP_ Tx##time age_yr_0 sex_0 || ID: , nolog
margins time##Tx, noatlegend
marginsplot, noci
marginsplot
       
