#meanEstimating Mean
#1. Estimate the average marks in mathematics by all the students.

library(readxl)
stud2<-read_excel("stud.xlsx")
View(stud2)

mean_math<-mean(stud2$'math score',na.rm=TRUE)
cat(mean_math)


#2. Estimate the standard deviation in mathematics by all the students.
st<-sd(stud2$'math score',na.rm=TRUE)
cat(st)

#3. Place a 2-standard-error bound on the average marks in mathematics by all students.
n<-sum(!is.na(stud2$`math score`))
se<-st/sqrt(n)
lb<-mean_math -2*se
ub<-mean_math +2*se
cat(lb,ub)

#4. Estimate the average marks in mathematics with a confidence coefficient of 95%.

em<-qt(0.975, df = n-1)*se
lob<-st - em
uob<-st + em
cat(lob,uob)
