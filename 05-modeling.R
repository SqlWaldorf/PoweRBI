age_in_days <- runif(100, 1, 10000)
age_in_years <- round(age_in_days / 365)

plot(age_in_years)

abline(h = (mean(age_in_years) + sd(age_in_years)), col = "blue")
abline(h = (mean(age_in_years) - sd(age_in_years)), col = "red")

plot(age_in_years ~ age_in_days)

model <- lm(age_in_years ~ age_in_days)
abline(model)
model

1/365

newdata <- data.frame(age_in_days = c(365, 2000, 3700))
predict(model, newdata)

outlierdata <- data.frame(age_in_days = c(300, 2000, 3700),
    age_in_years = c(1, 2, 10))

plot(outlierdata$age_in_years ~ outlierdata$age_in_days)
abline(model)

outlierdata$expected_years <- predict(model, outlierdata)

points(outlierdata$expected_years ~ outlierdata$age_in_days, pch = 8)

outlierdata$deviation <- abs(outlierdata$age_in_years - outlierdata$expected_years) / outlierdata$age_in_years
outlierdata[outlierdata$deviation>1,]

outlierdata[order(outlierdata$deviation, decreasing = T),]

library(ggplot2)
names(mpg)
mpgset <- mpg[,c("displ", "year", "cyl", "cty", "hwy")]
View(mpgset)

lm(hwy ~ ., data = mpgset)
mpgset$predictedhwy <- predict(lm(hwy ~ ., data = mpgset), newdata = mpgset)
mpgset$abs_pct_difference <- abs(mpgset$hwy - mpgset$predictedhwy) / mpgset$hwy
result <- mpgset[order(mpgset$abs_pct_difference, decreasing = T),]

View(result)

hist(result$abs_pct_difference)

#solution

result <- dataset
result$predicted_hwy <- predict(lm(hwy ~ ., data = dataset), newdata = dataset)
result$abs_pct_difference <- abs(result$hwy - result$predicted_hwy) / result$hwy

