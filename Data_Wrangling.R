install.packages(tidyr)
library(tidyr)

# gather() function-Wide to Long
# Create a data frame in wide format
wide_data = data.frame(
  math = c(80, 90, 85),
  science = c(85, 95, 80),
  english = c(78, 88, 91)
)
View(wide_data)

# Using gather() to convert to long format
long_data=gather(wide_data, key = "course", value = "marks", math:english)
View(long_data)

#spread()-long date to wide data
long_data1 <- data.frame(
  id = rep(1:3, each = 3),
  subject = rep(c("math", "science", "english"), times = 3),
  score = c(80, 85, 78, 90, 95, 88, 85, 80, 91)
)
View(long_data1)

# Using spread() to convert to wide format
wide_data1 = spread(long_data1, key = "subject", value = "score")
View(wide_data1)


#seperate-data frame with a single column that combines different pieces of information

data1=data.frame(dates=c("Jan/2/2018", "Feb/24/2019", "Jan/14/2015", "Mar/4/2016", "Nov/23/2017", "July/1/2016"))


sep_data=separate(data1, col = dates, into = c("month", "day", "year"), sep = "/")


#unite-data frame with multiple columns that we want to combine into a single column
unite_data=unite(sep_data, col = new_dates, c("month", "day", "year"), sep = ",")
View(unite_data)
#dplyr
#The dplyr package in R is a powerful and popular package for data manipulation. 
#It provides a set of functions (also known as "verbs") that make it easy to 
#manipulate data frames (tibbles). Below are examples of some of the most 
#commonly used functions in the dplyr package.

#select()-It used to select specific columns from a data frame.

install.packages("dplyr")
library(dplyr)


data2 = data.frame(
  id = 1:5,
  name = c("John", "Jane", "Jim", "Jack", "Jill"),
  age = c(23, 30, 25, 27, 22),
  salary = c(50000, 55000, 60000, 52000, 48000)
)

select_data=select(data2, name, age)  

#filter ()-It is used to filter rows based on a condition.
filtered_data=filter(data2, age>25)

#mutate()-It is used to add new columns or modify existing ones.
mutated_data1=mutate(data2, age_after_5yrs=age+5)
mutated_data2=mutate(data2, salary_in_thousands =salary/1000)
# Increase everyone's age by 5
mutated_data3 <- mutate(data2, age = age + 5)
# Add a new column 'row_id' that contains the row number
mutated_data4=mutate(data2, row_id = row_number()) 

#arrange()-It is used to sort rows by one or more columns.
arranged_data1=arrange(data2, desc(age)) #descending order
arranged_data2=arrange(data2, salary) #ascending order
# Sort by age first, then by salary within each age group
arranged_data2=arrange(data2, age, salary)
arranged_data3=arrange(data2, age, desc(salary))

# Modify age to a new column and then sort by the new column
sorted_data = data2 %>%
  mutate(age_plus_five = age + 5) %>%
  arrange(age_plus_five)

#summarise()-It is used to create a summary of the data. 
summary_data1=summarise(data2, mean_data=mean(salary), median_data=median(salary), mode_data=mode(salary))
summary_data2=summarise(data2, total_salary=sum(salary), min_age=min(age))

#Operator  %>%-It essentially takes the output of one function and passes it as an input to the next function.
data3 <- data.frame(
  id = 1:5,
  name = c("John", "Jane", "Jim", "Jack", "Jill"),
  age = c(23, 30, 25, 27, 22),
  salary = c(50000, 55000, 60000, 52000, 48000)
)
# Using the pipe operator to find the average salary
average_salary = data3 %>%
  summarise(avg_salary = mean(salary))
print(average_salary)
