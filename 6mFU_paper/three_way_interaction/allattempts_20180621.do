use "/Users/ldong/Documents/Workspace/teensleep/6mFU_paper/6mFU_analysis/Stata/all_data_pre_to_6mFU.dta"
sum age
sum age if pickone == 1
display 14.78+1.84
display 14.78 - 1.84
mixed Bedtime_Avgdif_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
contrast Tx#time#c.age_yr_0
margins, dydx(Tx) at(age_yr_0=(16.62 12.94) ) vsquish
tab Tx
margins, dydx(Tx) at( timepoint age_yr_0=(16.62 12.94) ) vsquish
marginsplot
margins Tx##timepoint, at( timepoint age_yr_0=(16.62 12.94) ) vsquish
marginsplot
margins Tx#timepoint, at( timepoint age_yr_0=(16.62 12.94) ) vsquish
marginsplot
margins Tx#timepoint, at(age_yr_0=(16.62 12.94) ) vsquish
marginsplot
help margins
margins Tx, over (timepoint) at( age_yr_0=(16.62 12.94) ) vsquish
marginsplot
margins Tx, over (timepoint) at( age_yr_0=(16.62 12.94) ) vsquish
margins Tx#timepoint, at( age_yr_0=(16.62 12.94) ) vsquish
marginsplot
marginsplot, noci
margins, dydx(age) over (time Tx)
marginsplot
margins , over (time Tx) at( age_yr_0=(16.62 12.94) ) vsquish
marginsplot
margins, dydx(age) over (time Tx)  mcompare(bonferroni)
margins, dydx(age) over (time Tx) 
help margins
margins, dydx(age) over (Tx) 
marginsplot
margins, over (time Tx) at(age=(10(2)18))
marginsplot, noci
mixed Bedtime_Avgdif_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
margins Tx#timepoint, at (age = (16.6, 12.9))
marginsplot, bydimension(Tx) noci
margins Tx#timepoint, at (age = (10, 18))
marginsplot, bydimension(Tx) noci
contrast timepoint#Tx#c.age_yr_0
contrast timepoint#Tx#c.age_yr_0, pveffects
mixed Bedtime_Avgdif_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
contrast Tx#time#c.age_yr_0
mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
do "/var/folders/7y/ywft0jwn2c1ff4fq_6y2tt500000gn/T//SD14245.000000"
margins Tx#timepoint, at (age = (16.6, 12.9))
marginsplot, bydimension(Tx) noci
margins Tx#timepoint, at (age = (10, 18))
marginsplot, bydimension(Tx) noci
