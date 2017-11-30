# Generate grid of test data

v = seq(-2,2,length=200)
z = expand.grid(v,v)
colnames(z) <- c('d1','d2')
write.table(z, 'test.csv',row.names=F, col.names=F,sep=',')
