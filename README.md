# bios6312_final

A repo to keep track of work on the final project for Robert Johnson's intro to regression class. 

We can store our code (stata files, markdown, latex etc.) here. 

## Objective
> The objective of this review is to retrospectively determine if IVFE has an adverse effect on outcomes in critically ill patients.

##Study design:
> This is a retrospective review of patients with a prolonged ICU stay defined as > 3 days in ICU. We will determine if the amount of IVFE received during the first three days of admission to the surgical ICU (SICU) is associated with several outcomes (controlling for other covariates as needed).

##Variable selection Notes:

- Add `ventdays` to 
    - Pneumonia
    - LRI
- Add the length (`hoslos`) of stay variables in the regressions for
    - Pneumonia
    - Surgical Site
    - Blood infection
    - This will be addressed in the limitations due to the chicken and egg problem. 
- Remove `race`. 
- For pneumonia we are using `unitlos` over `hoslos` as it is more predictive (greater correlation). 


## Model Notes

- Of 6 infections, 4 have significant risks from the dichotomized lipids consumption. 
- Look into including odds ratio results for different types of models. (E.g. ones with infections as predictors and ones without). 


## Model assembly

- Run models on dichotmous lipids variable
- Find significant infections
- Run second stage continious lipids analysis on significant infections. 


## Action Plan: 

- Tuesday April 12
    - Nick
        - Run described models and generate forest plot. 
        - Source of data. 
    - Matthew
        - Introduction. 
    - Lisa
        - Write methods. 

## Due Dates: 

- Monday, April 18.
  - First draft due. 
  - Revisions will be returned a week after submission. 
- Monday, May 2
  - Final draft due. 
- Tuesday, May 3, 9-12
  - Present to class. 


## Protocol for using repo: 

1. Fork repo (upper right corner of this screen)
2. Make your changes. 
3. git add, commit and push them to your private repo
4. Send a pull request through github and we can integrate it into the master repo. 


# The Models

All models control for `lipid, bmi, glucose, apache, gender, age`

Secondary model controls for other infections. 

- blood
    - total vent days. 
    - length of stay
- gastro
    - total vent days. 
    - length of stay
- lower resp
    - vent days
- pneumonia
    - vent days
    - unit los
- surgical site
- uti
    - hops length
- death


