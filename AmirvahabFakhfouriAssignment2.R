#' Assignment 2
#' author : "curtis kephart"
#' date : "winter 2016"
#' Assignment : 



### Question 0 
AmirvahabFakhfouriAssignment2 <- list(
firstName = "Amirvahab",
lastName = "Fakhfouri",
email = "afakhfou@ucsc.edu",
studentID= 1505020
)



### Question 1
diamonds <- get(
  load(
    file = url("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/diamonds.RData")
    )
  )

AmirvahabFakhfouriAssignment2$s1a <- nrow(diamonds)
AmirvahabFakhfouriAssignment2$s1b <- ncol(diamonds)
AmirvahabFakhfouriAssignment2$s1c <- names(diamonds)
AmirvahabFakhfouriAssignment2$s1d <- summary(diamonds$price)




### Question 2 

d <- read.table("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_TSV.txt",header = TRUE)
AmirvahabFakhfouriAssignment2$s2a <- nrow(d)
AmirvahabFakhfouriAssignment2$s2b <- ncol(d)
AmirvahabFakhfouriAssignment2$s2c <- names(d)
AmirvahabFakhfouriAssignment2$s2d <- mean(d$weight)
AmirvahabFakhfouriAssignment2$s2e <- median(d$weight)
hist(d$weight)
table(d$weight)
a<-ifelse(d$weight==996|d$weight==997|d$weight==998|d$weight==999,NA,d$weight)
AmirvahabFakhfouriAssignment2$s2f <- mean(a, na.rm = T)
AmirvahabFakhfouriAssignment2$s2g <- median(a, na.rm=T)
d1<-subset(d,SEX==2)
d2<-subset(d,SEX==1)
AmirvahabFakhfouriAssignment2$s2h <- summary(d1$weight) 
AmirvahabFakhfouriAssignment2$s2i <- summary(d2$weight)
hist(a)
### Question 3
vec <- c(letters, LETTERS)
vec
AmirvahabFakhfouriAssignment2$s3a <- vec[1:26*2]
AmirvahabFakhfouriAssignment2$s3b <- paste(vec[c(27,13,9)], collapse="")
arr <- array(c(letters,LETTERS),dim = c(3,3,3))
AmirvahabFakhfouriAssignment2$s3c<-arr[,1,2]
AmirvahabFakhfouriAssignment2$s3d<-paste(arr[2,2,1], arr[2,2,2], arr[2,2,3])
AmirvahabFakhfouriAssignment2$s3e<-paste(arr[3,3,3],arr[1,2,2],arr[3,3,1], sep="")

    save (AmirvahabFakhfouriAssignment2,
         file="AmirvahabFakhfouriAssignment2.RData")






