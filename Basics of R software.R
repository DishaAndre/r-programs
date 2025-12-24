#R basics
x=30
y=2*30
y
z=x+y
w=55^2
v=5/3

#vector
u=c(1,2,3,4,5)

name=c("Disha","Ann","Gemmy")
df=data.frame(name)
View(df)
print(df)

data=data.frame(
  roll=c(10,11,12),
  name=c("Disha","Ann","Sana"),
  sub=c("Maths","English","Science")
)
print(data)
View(data)
print(data$name)
print(data $roll)
print(data $sub)
print(data[2,])
print(data[3,"name"])

data()
data(iris)
data(mtcars)
View(CO2)
str(CO2)
head(CO2)
tail(CO2)
plot(CO2)


#R as a calculator
2+3
2^3

c(1,2,3,4)^2

c(1,2,3,4)^c(2,3)
c(1,2,3,4)^c(2,3,4,5)
c(1,2,3,4)^c(2,3,4)
c(1,2,3,4)^c(-2,-3)

c(1,2,3,4)+c(2,3,4,5) 

#%/% will give u integer quotient.
3%/%2
7%/%2
# %% will give u remainder
3%%2
7%%2

c(2,3,5,7)%/%2 
c(2,3,5,7)%%2

max( c(1.2, 3.4, -7.8))
min( c(1.2, 3.4, -7.8))

abs(-4)
sqrt(4)
sqrt(c(4,9,16,25))
sum(c(2,3,5,7))
prod(c(2,3,5,7))
round(1.23)
round(1.85)

#functions
abc=function(x){x^2+x}
abc(3)

efg=function(x,y){x^2+y^2}
efg(3,2)

hig=function(x){sin(x)+2*cos(x)+5}
hig(10)

fun= function(x,y,z){x^3+y^2-z}
fun(2,1,3)





