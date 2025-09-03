getwd()
setwd("C:\\Users\\IT24102139\\Desktop\\Lab 6")
# Exercise 1
n <- 50
p <- 0.85
cat("X ~ Binomial(", n, ",", p, ")\n")
prob_47_or_more <- pbinom(46, size=n, prob=p, lower.tail=FALSE)
cat("P(X >= 47) =", prob_47_or_more, "\n")
# Exercise 2
lambda <- 12
cat("X ~ Poisson(", lambda, ")\n")
prob_15 <- dpois(15, lambda)
cat("P(X = 15) =", prob_15, "\n")

