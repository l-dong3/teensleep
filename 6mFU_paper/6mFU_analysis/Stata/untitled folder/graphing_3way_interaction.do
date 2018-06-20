use "/Users/ldong/Documents/Workspace/teensleep/6mFU_paper/6mFU_analysis/Stata/all_data_pre_to_6mFU.dta"

*summary stat for age
sum age
sum age if pickone == 1
display 14.78 + 1.84
*16.62
display 14.78 - 1.84
*12.94

*age moderation for tx effect on wkday bedtime
mixed WD_Bedtimeavg_ Tx##time##c.age_yr_0 sex_0 || ID: , nolog
contrast Tx#time#c.age_yr_0

margins Tx#timepoint, at (age = (16.6, 12.9))
marginsplot, bydimension(Tx) noci

margins Tx#timepoint, at (age = (10, 18))
marginsplot, bydimension(Tx) noci
