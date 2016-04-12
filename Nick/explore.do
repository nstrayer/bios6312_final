*-------------------------------------------------------------------------------
* Final Project
* Nick Strayer, Lisa Lin, Matthew Lennart
* 3/28/2016
* Intro To Regression
*-------------------------------------------------------------------------------
clear all
import delimited "/Users/Nick/Dropbox/vandy/regression/bios6312_final/data/ivfedata-2013_full.csv", varnames(1) clear
*-------------------------------------------------------------------------------
* Some data recoding. 2 lines in R. 
*-------------------------------------------------------------------------------
// Recode the bsi infection column
label define bsi 0 "N" 1 "Y", replace
encode bsiinf, generate(bsi) label(bsi)
	mvdecode bsi, mv(2=.)
	
// Recode the eent infection column
label define eent 0 "N" 1 "Y", replace
encode eentinf, generate(eent) label(eent)
	mvdecode eent, mv(2=.)
	
// Recode the gi infection column
label define gi 0 "N" 1 "Y", replace
encode giinf, generate(gi) label(gi)
	mvdecode gi, mv(2=.)
	
// Recode the lri infection column
label define lri 0 "N" 1 "Y", replace
encode lriinf, generate(lri) label(lri)
	mvdecode lri, mv(2=.)
	
// Recode the pneu infection column
label define pneu 0 "N" 1 "Y", replace
encode pneuinf, generate(pneu) label(pneu)
	mvdecode pneu, mv(2=.)

// Recode the ssi infection column
label define ssi 0 "N" 1 "Y", replace
encode ssiinf, generate(ssi) label(ssi)
	mvdecode ssi, mv(2=.)
	
// Recode the sst infection column
label define sst 0 "N" 1 "Y", replace
encode sstinf, generate(sst) label(sst)
	mvdecode sst, mv(2=.)
	
// Recode the sys infection column
label define sys 0 "N" 1 "Y", replace
encode sysinf, generate(sys) label(sys)
	mvdecode sys, mv(2=.)
	
// Recode the uti infection column
label define uti 0 "N" 1 "Y", replace
encode utiinf, generate(uti) label(uti)
	mvdecode uti, mv(2=.)
	
// Recode the gender column
label define gender2 0 "M" 1 "F", replace
encode gender, generate(gender2) label(gender2)
	mvdecode gender2, mv(2=.)
	
// Recode the hopsital death column
label define death 0 "N" 1 "Y", replace
encode hospdeath, generate(death) label(death)
	mvdecode death, mv(2=.)

// Recode the race column
replace race = "?" if race == "UNKNOWN" 

label define race2 0 "?" 1 "ASIAN" 2 "BLACK" 3 "HISPANIC" 4 "OTHER" 5 "WHITE", replace
encode race, generate(race2) label(race2)
	mvdecode race2, mv(2=.)

// Generate a boolean lipids result. It is notable that this isnt neccesary
// as stata treats anything > 
gen lipids = avgexp > 0.0

gen lipidsCat = 0 if avgexp == 0
replace lipidsCat = 1 if avgexp < 0.314 & avgexp != 0
replace lipidsCat = 2 if avgexp > 0.314
*-------------------------------------------------------------------------------
* End of data recoding. 
*-------------------------------------------------------------------------------

logistic bsi lipids bmi glucose apache2 i.race2 i.gender2 age
lroc, name(bsi) title("bsi") nodraw

logistic gi lipids bmi glucose apache2 i.race2 i.gender2 age
lroc, name(gi) title("gi") nodraw

logistic lri lipids bmi glucose apache2 i.race2 i.gender2 age
lroc, name(lri) title("lri") nodraw

logistic pneu lipids bmi glucose apache2 i.race2 i.gender2 age
lroc, name(pneu) title("pneu") nodraw

logistic ssi lipids bmi glucose apache2 i.race2 i.gender2 age
lroc, name(ssi) title("ssi") nodraw

logistic uti lipids bmi glucose apache2 i.race2 i.gender2 age
lroc, name(uti) title("uti") nodraw

logistic death lipids bmi glucose apache2 i.race2 i.gender2 age
lroc, name(death) title("death") 

graph combine bsi gi lri pneu ssi uti

*-------------------------------------------------------------------------------


logistic bsi i.lipidsCat bmi glucose apache2 i.race2 i.gender2 age
lroc, name(bsi) title("bsi") nodraw

logistic gi i.lipidsCat bmi glucose apache2 i.race2 i.gender2 age
lroc, name(gi) title("gi") nodraw

logistic lri i.lipidsCat bmi glucose apache2 i.race2 i.gender2 age
lroc, name(lri) title("lri") nodraw

logistic pneu i.lipidsCat bmi glucose apache2 i.race2 i.gender2 age v
lroc, name(pneu) title("pneu") nodraw

logistic ssi i.lipidsCat bmi glucose apache2 i.race2 i.gender2 age
lroc, name(ssi) title("ssi") nodraw

logistic uti i.lipidsCat bmi glucose apache2 i.race2 i.gender2 age
lroc, name(uti) title("uti") nodraw

logistic death i.lipidsCat bmi glucose apache2 i.race2 i.gender2 age
lroc, name(death) title("death") nodraw

graph combine bsi gi lri pneu ssi uti

*-------------------------------------------------------------------------------

logistic Bsiinf i.indicator bmi glucose apache2 i.Gender age i.Giinf i.Lriinf i.Pneuinf i.Ssiinf i.Utiinf ventdaysunit ventdayshosp unitlos
logistic Lriinf i.indicator bmi glucose apache2 i.Gender age venttotal
logistic Pneuinf i.indicator bmi glucose apache2 i.Gender age venttotal unitlos
logistic Giinf i.indicator bmi glucose apache2 i.Gender age i.Lriinf i.Bsiinf i.Pneuinf i.Utiinf unitlos hosplos ventdaysunit ventdayshosp 
logistic Ssiinf i.indicator bmi glucose apache2 i.Gender age i.Lriinf i.Bsiinf i.Pneuinf i.Utiinf 
logistic Utiinf i.indicator bmi glucose apache2 i.Gender age 
