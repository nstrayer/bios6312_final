data <- read.csv("/Users/Nick/Dropbox/vandy/regression/bios6312_final/data/ivfedata-2013_full.csv")

# Line to plot just the numeric values against eachother in a scatter matrix. 
#plot(data[,sapply(data, is.numeric)])

#y n columns
y_n_cols <- c("hosp.death","unit.death", "bsi.inf","eent.inf","gi.inf","lri.inf","pneu.inf","ssi.inf","sst.inf","sys.inf","uti.inf")

#recode y and n values to 0=N, 1 = Y. 
data[, y_n_cols] = ifelse(data[, y_n_cols] == "N", 0, 1)

#make a binary column for if the patient recieved lipids during stay. 
data$lipids = ifelse(data$avgexp >  0.0, 1, 0)
hist(data$lipids)
#more people did not recieve them than recieved them. 

#write.csv(data, "/Users/Nick/Dropbox/vandy/regression/bios6312_final/data/nick_cleaned.csv")