library(datasets)
library(caTools)
library(party)
library(dplyr)
library(magrittr)

data("readingSkills")
print(head(readingSkills))

sample_data = sample.split(readingSkills, SplitRatio = 0.8)
train_data <- subset(readingSkills, sample_data == TRUE)
test_data <- subset(readingSkills, sample_data == FALSE)
model<- ctree(nativeSpeaker ~ ., train_data)
plot(model)
#print(model)
# testing the people who are native speakers
# and those who are not
predict_model<-predict(model, test_data)

# creates a table to count how many are classified
# as native speakers and how many are not
m_at <- table(test_data$nativeSpeaker, predict_model)
acu<-sum(diag(m_at)) / sum(m_at)
print(paste('Accuracy for decision tree of Reading Skills is', acu))

