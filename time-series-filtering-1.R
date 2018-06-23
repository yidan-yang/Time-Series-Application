#
#  source('time-series-filtering-1.R')
#

#  Lake Huron Levels Time Series Data

  ts.plot(LakeHuron, col=1)

# 3-filter
  lines(filter(LakeHuron, filter=rep(1/3,3)), col=2, lwd=2, lty=2)

# 11-filter
  lines(filter(LakeHuron, filter=rep(1/11,11)), col=3, lwd=2, lty=3 )

# 23-filter    
  lines(filter(LakeHuron, filter=rep(1/23,23)), col=4, lwd=2, lty=4 )
  
  legend('top', inset=0.01, c('Raw series', 'q=1', 'q=5', 'q=11'), col=1:4, lty=1:4)
 