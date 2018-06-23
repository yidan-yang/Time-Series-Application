#
#   Time Series Analysis and Forecasting
#
#      IID, White Noise, MA and AR
#


    x <- rbinom(200, 1, 0.5)
    x11(); plot(ts(x))
    xx <- 2*x-1
    w <- cumsum(xx)
    grx11(); plot(ts(w))
    
    
    x <- rnorm(200, 0, 3)
    w <- cumsum(x)
    x11(); plot(ts(w), col='red')
    
    x11()
    par(mfrow=c(2,1))
    x.ma <- arima.sim(n=400, list(ma=c(0.9)))
    plot(x.ma)
    acf(x.ma)
    
    x11()
    par(mfrow=c(2,1))
    x.ar <- arima.sim(n=400, list(ar=c(0.72)))
    plot(x.ar, col='red')
    acf(x.ar)
    
    
    x11()
    par(mfrow=c(2,1))
    x.iid <- rnorm(200, 0, 2) 
    plot(ts(x.iid), col='red')
    acf(x.iid)
    
  