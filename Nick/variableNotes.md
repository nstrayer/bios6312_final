- avgexp: 
- maxexp:
    - Could be used to show if there is a measurement in avgexp that is throwing off the average. Could be used for outlier detection.
- age:
    - Confounder. 
- gender:
- race:
- bmi:
- apache2: 
- glucose: 
- hosp.los: 
- hosp.death: 
- unit.los: 
- unit.death: 
- ventdays.hosp: 
- ventdays.unit: 
- ventfree.unit: 
- bsi.inf: 
- eent.inf: 
    - Only one got this so ignore.
- gi.inf:
- lri.inf: 
- pneu.inf: 
- ssi.inf: 
- sst.inf: 
    - Only one got this so ignore. 
- sys.inf: 
    - This is only 0 so we can ignore this. 
- uti.inf:

Control for these: 
- BMI 
- 
- APACHE
- race
- gender
- Age


Apache score should be confounder for adverse effects. So include as factor in regression for all tests. 

We want to focus on infection rate as it's a cause of hospital stays. 