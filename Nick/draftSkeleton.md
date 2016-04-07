# Abstract

- Does the administration of lipid emulsions improve outcome (measured in infection insidence.)
- Data comes from medical records of a cohort of critically ill patients. 

---

# Background

- We want to understand the impact of these lipid emulsions on patient outcome through the rate of infection. 
- It has been speculated and looked at a bit that emulsions containing fatty acids coming from soybeans are potentially worse than no emulsions at all. 
- This study aims to investigate the effects of lipid emulsions on infection outcomes. 


---

# Question of Interest

- "The objective of this review is to retrospectively determine if IVFE has an adverse effect on outcomes in critically ill patients." 
- Does the administration of IVFE have an adverse effect on varying infection rates? 


---

# Source of the Data

- "adult patients [over 18] admitted to SICU for three or more days."
- "patients with a prolonged ICU stay defined as > 3 days in ICU"

---

# Statistical Methods

- We used a binomial regression with a logit link to analyse the data. 
- We controlled for the covariates "bmi", "glucose", "apache2", "gender", "age". 
- For analysis of pneumonia and lri outcomes we also controlled for days on ventelator as they are both resperatory related infections. 
- For analysis of pneumonia, surgical site infection and blood infection we also controlled for length of hospital stay as these have been previously shown to be associated [CITATION]
- All models were run in STATA and visualizations/ exploration done in R. 	
- We analysed if there was a difference in the patient's odds of contracting the various infections based upon their status of lipid emulsion intake. 
- If the odds ratio confidence interval is above 1 that means that there is an increase in the odds of an average patient contracting the infection when they are given lipid emulsions. 

---

# Results

## Descriptive Statistics

- The sample is mostly white (85%) and 60% male, 40% female. 
- There are many more incidences of no infection than there are of infection. 
- Tables and plots will go here. 

## Major Analysis

- We found that lipid emulsions resulted in a significant increase in the odds of a patient contracting the following diseases ...
- More plots go here. 
- With resperatory illnesses there is a problem of ventilator status being a confounder. 
- With skin infections time of stay is a confounder due to bed sores. 

## Exploratory Analysis (if any)

- Perhaps throw in some results about infection rate at all, or death. 


---

# Discussion

- 

