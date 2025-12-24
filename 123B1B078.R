#Name- Disha Andre
#PRN- 123B1B078
#SET- B

#Que-1

data1=data.frame(
  SN=(1:4),
  Name=c("Sam","Rob","Max","John"),
  Salary=c(25000,30000,29000,35000),
  BOJ=c("3/9/2005","3/5/2005","5/6/2007","1/3/1999"),
  Department=c("IT","HR","Marketing","Finance")
)
View(data1)



#Que-2

library(tidyr)
data2= data.frame(
  Student=rep(c("John","Sara"),tiems=3),
  Subject=rep(c("Math","Science","English"),times=2),
  Score=c(85,90,88,78,82,95)
)
View(data2)

wide_data2=spread(data2,key="Subject",value="Score")
View(wide_data2)



#Que-3(a)

Data=data.frame(
  ID=c("1,2,3"),
  DataTime=c("2023-08-01 12:45","2023-08-02 13:30","2023-08-03 14.00"),
  Street=c("123 Main St","456 Elm St","789 Oak St"),
  City=c("New York","Los Angeles","Chicago"),
  State=c("NY","CA","IL")
)
View(Data)

sep_Data=separate(Data,col=DataTime,into=c("Date","Time"),sep=" ")
View(sep_Data)

#Que-3(b)
uni_Data=unite(Data,col=Address,c("Street","City","State"),sep=",")
View(uni_Data)


#Que-4
library(dplyr)

data(CO2)
conc_data=select(CO2,conc,uptake)
View(conc_data)


#Que-5
filter_data=filter(CO2,conc >95,uptake > 30)
View(filter_data)

#Que-6
Data3=data.frame(
  Name=c("Alice","Bob","Carol"),
  Weight=c(120,150,140),
  Height=c(5.5,6.0,5.8)
)
View(Data3)

New_Data=mutate(Data3,BMI=(Weight * 703)/(Weight * Height))
View(New_Data)

