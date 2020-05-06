read.csv("diabetes_uva.csv")
summary(diabetes_uva$chol)
sd(diabetes_uva$chol, na.rm = TRUE)
230-179
179- 1.5*51 
230 + 1.5*51 
par(mfrow= c(1,2))
hist(diabetes_uva$chol, main= "Cholesterol Level",xlab = "Cholesterol Level (mg/dL)", ylab = "Frequency")
boxplot(diabetes_uva$chol, main= "Cholesterol Level", ylab= "Cholesterol Level (mg/dL)")
(207.8 - 206)/ (44.446/sqrt(402))
pt(.812, 401, lower.tail = FALSE) * 2
207.8 + 1.966* 44.446/sqrt(402)
207.8 - 1.966* 44.446/sqrt(402)
