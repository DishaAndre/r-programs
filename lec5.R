#typeof()

x=1:10
typeof(x)

y=c(1,6,10)
typeof(y)

y1=c(1L,6L, 10L)
typeof(y1)

u1=c(1,2,3,4)
typeof(u1)

v1=as.integer(u1)
typeof(v1)

u2=c(10, 0.5, 2.5, -100)
typeof(u2)
v2=as.character(u2)
typeof(v2)

data("mtcars")
View(mtcars)

#delete 4th row of 'mtcars' dataset.
new_mtcars=mtcars[-4,]
View(new_mtcars)

new_mtcars2=mtcars[-c(1, 2, 3, 4, 5),]
View(new_mtcars2)

new_mtcars3=mtcars[-c(25:32),]
View(new_mtcars3)

new_mtcars4=subset(mtcars, select = -mpg)
View(new_mtcars4)

