data("airquality")
library(dplyr)
data_bar= slice(airquality,1:10)
View(data_bar)

#Bar plot
#Bar plot comes for single column or variable.

barplot(data_bar $Temp,
        main="airquality-Temperature",
        xlab = "X-axis",
        ylab = "Y-axis",
        col = "Purple"
        #horiz = T
        )
        

#Histogram plot
hist(data_bar $Temp,
        main="Histogram",
        xlab = "X-axis",
        #xlim = c(56,70),
        ylab = "Y-axis",
        col = "Pink",
        freq = T
      )

#Scatter plot
plot(data_bar $Temp,data_bar $Wind)

#Box plot
boxplot(data_bar $Temp,
        main="Box plot",
        xlab = "X-axis",
        ylab = "Y-axis",
        col="Orange",
        horizontal = T 
        #horizontal = F
        )
