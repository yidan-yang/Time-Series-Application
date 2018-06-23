#
#    Simple Non IID White Noise
#
#     source('whitenoise-1.R')
#
  
#  Cleanse

   graphics.off()

# Set it up

   n   <- 100000
   Zt  <- rnorm(n)

   Xt  <- Zt

   odd <- 1+ which((2:n)%%2==1)

   Xt[odd] <- (Zt[odd-1]^2 - 1)/sqrt(2) 

   #x11()
   par(mfrow=c(1,2))
   hist(Zt, main='IID White Noise')
   hist(Xt, main='Non IID White Noise')
   
 