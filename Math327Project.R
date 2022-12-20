# load csv file into the variable sat
library(readr)
sat <- read_csv("SAT2012.csv")
# Making a bar plot of Num_of_SAT_Test_Takers
barplot(table(sat$Num_of_SAT_Test_Takers), main  = "Number of SAT Test Takers", ylab = "Frequency", xlab = "Amount of students taking test per school")
# Making a bar plot of SAT_Critical_Reading_Avg_Score
barplot(table(sat$SAT_Critical_Reading_Avg_Score), main  = "SAT Critical Reading Avg Score", ylab = "Frequency", xlab = "Avg reading score")
# Making a bar plot of SAT_Math_Avg_Score
barplot(table(sat$SAT_Math_Avg_Score), main  = "SAT Math Avg Score", ylab = "Frequency", xlab = "Avg math score")
# Making a bar plot of SAT_Writing_Avg_Score
barplot(table(sat$SAT_Writing_Avg_Score), main  = "SAT Writing Avg Score", ylab = "Frequency", xlab = "Avg writing score")

#Compute the mean, median, variance, and standard deviation of the column data for SAT_Critical_Reading_Avg_Score.
median(sat$SAT_Critical_Reading_Avg_Score)
mean(sat$SAT_Critical_Reading_Avg_Score)
var(sat$SAT_Critical_Reading_Avg_Score)
sd(sat$SAT_Critical_Reading_Avg_Score)
#Compute the mean, median, variance, and standard deviation of the column data for SAT_Math_Avg_Score.
median(sat$SAT_Math_Avg_Score)
mean(sat$SAT_Math_Avg_Score)
var(sat$SAT_Math_Avg_Score)
sd(sat$SAT_Math_Avg_Score)

#The 95% confidence interval for the mean. I didn't know how to do this tbh I just did on paper. 

#This is the scatter plot for the pair of quantitative data which are 
plot(SAT_Critical_Reading_Avg_Score ~ SAT_Math_Avg_Score, data = sat,
     xlab = "Reading Average Score",
     ylab = "Math Average Score",
     main = "SAT_Critical_Reading_Avg_Score VS SAT_Math_Avg_Score",
     pch  = 20,
     cex  = 2,
     col  = "dodgerblue")


stop_dist_model = lm(SAT_Critical_Reading_Avg_Score ~ SAT_Math_Avg_Score, data = sat)
stop_dist_model

plot(SAT_Critical_Reading_Avg_Score ~ SAT_Math_Avg_Score, data = sat,
     xlab = "Reading Average Score",
     ylab = "Math Average Score",
     main = "SAT_Critical_Reading_Avg_Score VS SAT_Math_Avg_Score",
     pch  = 20,
     cex  = 2,
     col  = "dodgerblue")
abline(stop_dist_model, lwd = 3, col = "darkorange")
names(stop_dist_model)
