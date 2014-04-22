add2 <- function(x,y){
  x+y
}

above10 <-function (x) {
        use <- x > 10
        x[use]
}
wd<- paste("/Users/Kuoseph/Documents/Coursera/","specdata",sep="")
wd
setwd(wd)
data<-data.frame(matrix(ncol=2))
data<- c(1,2)
colnames(data) <- c("a","b")
read.csv("001.csv")
test<- read.csv("001.csv")
ct<- nrow(na.omit(test))
test2<- rbind(data,ct)
id<- 1:10
total<- c(id, ct)


