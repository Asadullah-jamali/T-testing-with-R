attach(women)
women
#nomality check
shapiro.test(height)
hist((height),prob=T)
curve(dnorm(x,mean(height),sd(height)),add=T,col='REd')
t.test(height,mu=63)
getwdt()
write.csv(women,"C:/Users/M.Qasim/Documents/women.csv")
