# Plot predictions
# Requires data to be in the same format as spiral
#   - two variables and three classes

png('plot.png')

data_orig = read.csv('spiral.csv', header=F)
colnames(data_orig) <- c('t1','t2','t3','d1','d2')
data = read.csv('test_output.csv', header=F)
colnames(data) <- c('t1','t2','t3','d1','d2')

data$result = apply(data[c('t1','t2','t3')],1,which.max)
colfn <- function(n){ ifelse(n==1,'red',ifelse(n==2,'green','blue')) }
plot(data[c('d1','d2')], col=colfn(data['result']))
points(data_orig[,c('d1','d2')])

dev.off()
