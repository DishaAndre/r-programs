#import data

#Creating a data frame

sampledata  = data.frame(
  Name= c("Alice","Bob","Charlie"),
  Age = c(25,30,35),
  Score = c(88,95,80)
)

#in Environment click on sampledata.
View(sampledata) #can view data in tabular format.

print(sampledata) #will show on console.
print(sampledata$Name)  #accessing specific column
print(sampledata$Age)
