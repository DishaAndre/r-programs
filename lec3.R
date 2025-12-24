install.packages("ggplot2")
library(ggplot2)

data("airquality")
names(airquality)

plot(airquality $Temp, airquality $Wind)

library(ggplot2)
ggplot(airquality, aes(x =Temp, y = Wind))+ geom_point(size=0.75, shape= "square", col="Purple") + geom_line(col = "Red")