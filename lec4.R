#Data visualization

library(ggplot2)
View=(diamonds)

ggplot(diamonds,aes(cut))+geom_bar()
ggplot(diamonds,aes(cut,fill=cut))+geom_bar()
ggplot(diamonds,aes(cut))+geom_bar(color="purple",fill="pink",width=0.5,alpha=0.7)

#compare frequencies of diamond as per their clarity and find highest
#frequency diamonds from which clarity?

ggplot(diamonds,aes(clarity))+geom_bar()


#stack bar plot 
ggplot(diamonds,aes(cut,fill=clarity))+geom_bar()
ggplot(diamonds,aes(cut,fill=clarity))+geom_bar(position="dodge")
ggplot(diamonds,aes(cut,fill=clarity))+geom_bar(position="dodge")+facet_wrap(~color)


#scatter plot(To find the relation between numerical variables)
ggplot(diamonds,aes(carat,price))+geom_point()


View(mtcars)
ggplot(mtcars,aes(wt,mpg))+geom_point()
ggplot(mtcars,aes(wt,mpg))+geom_point(size=3,shape="triangle",color="Red")

ggplot(mtcars,aes(wt,mpg,color = factor(am)))+geom_point()
ggplot(mtcars,aes(wt,mpg,color = factor(am), shape = factor(cyl)))+geom_point()





