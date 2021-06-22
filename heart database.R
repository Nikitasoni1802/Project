data= read.csv(file.choose(), header = TRUE)
data

#line graph
x = data[1:15,"chol"]
plot(x,type = "b",col = "red", xlab = "row no", 
     ylab = "chol", main = "heart details of cholestrol" )

#pie chart
y = data[1:20,"oldpeak"]
Labels = data[1:21, "oldpeak"]
pie(y,labels, main = "oldpeak in heart disease", 
    col = rainbow(length(x)))

#Barplot
a = data[1:20,"age"]
b = data[1:20,"cp"]
barplot(a, names.arg = b,xlab = "cp",ylab = "age", 
        main = "ages and cp data")

#Scatter plot
c = data[1:300,c("trtbps","thalachh")]
c
plot(x=data$trtbps,y=data$thalachh,xlab = "thalachh", 
     ylab = "trtbps", main = "trtbps and thalachh")

#Boxplot
e = data[,c('chol','cp')]
boxplot(chol~cp, data = data,xlab = "chol",ylab = "cp",
        main = "details of heart patients",col ="purple","green")


#creting pdf
pdf("heart,plots.pdf")
plot(x,type = "b",col = "red", xlab = "row no", 
     ylab = "chol", main = "heart details of cholestrol" )
pie(y,labels, main = "oldpeak in heart disease", 
    col = rainbow(length(x)))
barplot(a, names.arg = b,xlab = "age",ylab = "cp", 
        main = "ages and cp data")
plot(x=data$trtbps,y=data$thalachh,xlab = "thalachh", 
     ylab = "trtbps", main = "trtbps and thalachh")
boxplot(chol~cp, data = data,xlab = "chol",ylab = "cp",
        main = "details of heart patients",col ="purple","green")
dev.off()
