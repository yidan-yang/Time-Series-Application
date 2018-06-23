#
#      Univariate Random Walks
#
#    source('random-walk-1d-1.R')
#
#    X_t = Z_1 + Z_2 + ... + Z_t
#
#        EPF (c) 2009-2018
#


  T <- 100
  
# Random walk from a normally distributed white noise

  Z <- rnorm(T)
  X <- cumsum(Z)
  
  ts.plot(X, col='red')
  
# Random walk from Cauchy
  
  C <- rcauchy(T)
  X <- cumsum(C)
  
  ts.plot(X, col='blue')

# Random walk from Bernoulli
  
  B <- 2*rbinom(T, size=1, prob=0.55)-1
  X <- cumsum(B)
  
  ts.plot(X, ylab = expression(X[t]), col='black')    
  