library(dplyr)
library(ggplot2)


data <- read.csv("/Users/CompLab25/Desktop/StudentsPerformance.csv")
print(exam_data)


data$race.ethnicity <- as.factor(data$race.ethnicity)
annova_result <- aov(math.score ~ race.ethnicity , data=data)
summary(annova_result)


qf(0.95,4,995)


maths_passing_marks <- quantile(data$math.score , 0.40 , na.rm=TRUE)
maths_passing_marks


total_m_p <- sum(data$math.score[data$gender == 'male'] > maths_passing_marks , na.rm = TRUE)
total_m_p


total_f_p <- sum(data$math.score[data$gender == 'female'] > maths_passing_marks , na.rm = TRUE)
total_f_p


male_pass_rate <- total_m_p/length(data$gender[data$gender == 'male'])
male_pass_rate


female_pass_rate <- total_f_p/length(data$gender[data$gender == 'female'])
female_pass_rate


# Load necessary libraries
library(ggplot2)


# Load dataset
students <- read.csv("/Users/CompLab25/Desktop/StudentsPerformance.csv")


# 1. Bar Plot: Gender distribution
ggplot(students, aes(x = gender)) +
  geom_bar(fill = "skyblue") +
  labs(title = "Gender Distribution", x = "Gender", y = "Count")


# 2. Box Plot: Math scores across gender
ggplot(students, aes(x = gender, y = math.score, fill = gender)) +
  geom_boxplot() +
  labs(title = "Math Scores by Gender", x = "Gender", y = "Math Score")


# 3. Scatter Plot: Reading vs Writing scores
ggplot(students, aes(x = reading.score, y = writing.score, color = test.preparation.course)) +
  geom_point(alpha = 0.7) +
  labs(title = "Reading vs Writing Scores", x = "Reading Score", y = "Writing Score") +
  theme_minimal()
