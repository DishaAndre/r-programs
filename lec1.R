#%>% pip operator
data("CO2")
View(CO2)
library(dplyr)
data_select=select(CO2,1:2)
data_pip=CO2 %>% select(1:2)
#group_by() function
#example1
data_test1=data.frame(
  category=c("A","B","A","C","B","C"),
  value=c(10,20,30,40,50,60)
)
View(data_test1)
data_group=data_test1 %>% group_by(category) %>% summarise(sum_value=sum(value))
#example2
data_test2=data.frame(
  code=c("A","B","A","C","B","C"),
  subcode=c("X","Y","X","Z","Y","Z"),
  value=c(10,20,30,40,50,60)
)
data_group2=data_test2 %>% group_by(code,subcode) %>% summarise(sum_value=sum(value))
#example3 mutate
data_group3=data_test1 %>% group_by(category) %>% mutate(percent_value=(value/sum(value))*100)
#count fun
data_count=data_test1 %>% count(category)

combine_data=rbind(Book1,Book3)
#research papers=googlescholar

