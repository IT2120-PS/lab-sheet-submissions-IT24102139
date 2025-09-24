getwd()
setwd("C:\\Users\\IT24102139\\Desktop\\Lab8")

data<-read.table("Data - Lab 8.txt", header = TRUE)

fix(data)
attach(data)

popmean<-mean(Nicotine)

popvar<-(Nicotine)
samples<-c()
n<-c()
for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

samplemean<-mean(s.means)
samplevars<-var(s.means)

popmean
samplemean
truevar=popvar/5
samplevars





#Exercise
getwd()
setwd("C:\\Users\\IT24102139\\Desktop\\Lab8")

data<- read.table("Exercise - LaptopsWeights.txt" , header = TRUE)
fix(data)
attach(data)

#Q1
pop_mean <- mean(Weight.kg.)
pop_sd <- sd(Weight.kg.)


#Q2
samples <- c()
sample_names <- c()

for(i in 1:25) {
  s <- sample(Weight.kg., 6, replace=TRUE)
  samples <- cbind(samples, s)
  sample_names <- c(sample_names, paste("s", i))
}

colnames(samples) <- sample_names

#Q3
sample_means <- apply(samples, 2, mean)
sample_sds <- apply(samples, 2, sd)

mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

pop_mean
pop_sd
mean_of_sample_means
sd_of_sample_means
getwd()

