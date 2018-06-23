#
#         Time Series Analysis and Forecasting
#
#       Simulation of Trend + Seasonality + Random
#


s<- function(t)
{
  return(1.3*cos(2*pi*(1/2)*t) - 0.7*sin(2*pi*(1/2)*t) - 0.7*cos(2*pi*(3/4)*t) + 1.3*sin(2*pi*(3/4)*t))
}  

m <- function(t)
{
  #return((2/5+(9/10)*t+(2/50)*t^2+(1/200)*t^3))
  return((1/10)*(2/5-(9/10)*t+(2/25)*t^2))
}  

st <- function(t)
{
  return(m(t)+s(t))
}  

n <- 100
x <- seq(0,54, length=n)

Y <- st(x) + arima.sim(n=n, list(ar=c(0.72)), sd=sqrt(1))
Y <- ts(Y,  frequency = 4)
x11(); plot(decompose(Y))

print(summary(lm(Y~x+I(x^2))))

x11(); plot(Y)

x11(); curve(st, 0,54)

