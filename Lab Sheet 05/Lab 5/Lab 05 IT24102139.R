setwd("C:\\Users\\it24102139\\Desktop\\Lab 5")
data<-read.table("Data.txt",header=TRUE,sep=",")
fix(data)
attach(data)
names(data)<-C("X1","X2")

attach(data)

hist(X2,main="Histogram for Number of Shareholders")
histogram<-hist(X2.main="Histogram for Number of Shaewholders",breaks = seq(130,270,length=8),right = FALSE)
?hist
breaks <-round(histogram$breaks)
freq <-histogram$counts
mids <-histogram$mids

classes <- c()

for(i in 1:length(break)-1){
  classes[i] <-paste0("[",breaks[i],",",breaks[i+1],")")
}
cbind(classes = classes,Freqency = freq)

lines(mids,freq)
plot(mids,freq,type = '1',main = " Frequency polygon for shareholders",xlab ="shareholders",ylab = "Frequency",ylim = c(0,max(freq)))
cum.freq <- cumsum(freq)

new <- c()
for(i in 1:length(breaks)){
  if(i == 1){
    new[i] <- 0
  } else {
    new[i] <- cum.freq[i - 1]
  }
}

plot(breaks, new, type = "l", main = "Cumulative Frequency Polygon for Shareholders",
     xlab = "Shareholders", ylab = "Cumulative Frequency", ylim = c(0, max(cum.freq)))

cbind(Upper = breaks, CumFreq = new)


#Exesice  # Lab 05
#Question 1
`Delivery Times` <- read.table("Exercise - Lab 05.txt", header = TRUE)

dt <- `Delivery Times`[[1]]

#Question 2
lower <- 20
upper <- 70
k <- 9
width <- (upper - lower) / k
breaks <- seq(lower, upper, by = width)

hist(dt,
     breaks = breaks,
     right = FALSE,
     include.lowest = TRUE,
     main = "Histogram of Delivery Times (9 right-open classes: [20,70))",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency")

#Question 3
mean_dt <- mean(dt)
median_dt <- median(dt)
sd_dt <- sd(dt)

m2 <- mean((dt - mean_dt)^2)
m3 <- mean((dt - mean_dt)^3)
skew_g1 <- m3 / (m2^(3/2))

cat("Mean =", mean_dt, "\n")
cat("Median =", median_dt, "\n")
cat("Standard Deviation =", sd_dt, "\n")
cat("Skewness (g1) =", skew_g1, "\n")

#Question 4
freq <- hist(dt, breaks = breaks, right = FALSE, include.lowest = TRUE, plot = FALSE)
cumfreq <- cumsum(freq$counts)
upper_bounds <- freq$breaks[-1]   

plot(upper_bounds, cumfreq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Upper Class Boundary",
     ylab = "Cumulative Frequency")
grid()

