#
#    source('random-walk-plane-1.R')
#

library(MASS)

T     <-  1000
c1    <-  0.50 
c2    <-  0.70
rho   <- -0.63
mu    <- c(0,0)
Sigma <- matrix(c(c1, rho*sqrt(c1*c2), rho*sqrt(c1*c2), c2), nrow=2)

phi11 <- 1;  phi12 <- 0.0005; phi21 <- -0.0005; phi22 <- 1;

Phi   <- matrix(c(phi11, phi12, phi21, phi22), nrow=2)

X     <- matrix(0, ncol=2, nrow=T)
X[1,] <- mvrnorm(1, mu, Sigma)

for(i in 2:T)
{
  X[i,] <- Phi%*%X[i-1,] + mvrnorm(1, mu, Sigma)
}  
#x11(); 
plot(X[,1], X[,2], type='l', xlab=expression(X[t]), ylab=expression(Y[t]))
