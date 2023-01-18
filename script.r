#PLEASE INSTALL install.packages("nortest") BEFORE RUNNIG THE NEXT LINE
library(nortest)


#############################################################
#PLEASE PUT YOUR REAL PATH
#############################################################

file = "C:\\Users\\grego\\github\\Shapiro_Wilk_STAT\\Height_of_Male_and_Female_by_Country 2022.csv"
dataHeights = read.csv(file,header=TRUE, stringsAsFactors=FALSE)

#############################################################

View(dataHeights)

male = dataHeights$Male.Height.in.Cm

female = dataHeights$Female.Height.in.Cm


hist(male,main = "Histogram of Male Heights",xlab = "Heights",col="green")

hist(female,main = "Histogram of Female Heights",xlab = "Heights",col="orange")

maleRandom = sample(male,50) #RANDOM SAMPLE 

femaleRandom = sample(female,50) #RANDOM SAMPLE

hist(maleRandom,main="Histogram of 50 Draw Randomly Heights Male",xlab = "Heights",col="green")

hist(femaleRandom,main="Histogram of 50 Draw Randomly Heights Female",xlab = "Heights",col="orange")

shapiro.test(male)

lillie.test(male)

shapiro.test(female)

lillie.test(female)

shapiro.test(maleRandom)

lillie.test(maeleRandom)

shapiro.test(femaleRandom)

lillie.test(femaleRandom)

