#might be issue of column names so kindly see the names , there should not be any space between them
library(readxl)
library(dplyr)
library(ggplot2)
exam_data <- read_excel("stud.xlsx")

View(exam_data)
exam_data$race<- as.factor(exam_data$race)

anova_result <- aov(mathscore ~ race, data = exam_data)
summary(anova_result)