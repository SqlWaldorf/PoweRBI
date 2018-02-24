correct_city_name <- c("London", "Greenwich", "Charleroi")
input_names <- c("Grenwish","Londen","London", "Greenwitch", "Brussels", "Sjarlerwa")

library(stringdist)
amatch(input_names, correct_city_name, maxDist = 5)
correct_city_name[2]
correct_city_name[amatch(input_names, correct_city_name, maxDist = 5)]
result <- data.frame(input = input_names, correction = correct_city_name[amatch(input_names, correct_city_name, maxDist = 5)], stringsAsFactors = F)
View(result)

result$correction[is.na(result$correction)] <- result$input[is.na(result$correction)]
View(result)


# solution
library(stringdist)
handles <- read.csv(file = "C:/Users/Nico/OneDrive - U2U Training/Talks/2018/PoweR BI - SQLBits/Speakers.csv", header = TRUE)
colnames(handles) <- c("Speaker", "twitterhandle")
dataset$CorrectedHandle <- handles$twitterhandle[amatch(dataset$twitterhandle, handles$twitterhandle, maxDist = 5)]
dataset$SpeakerName <- handles$speaker[amatch(dataset$twitterhandle, handles$twitterhandle, maxDist = 5)]
rm(handles)






result <- dataset