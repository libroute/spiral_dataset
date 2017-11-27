# Spiral 2-dimensional data set
# Ref: http://cs231n.github.io/neural-networks-case-study/

n = 100
th = function(k){ seq(k*4,(k+1)*4,length=n) + rnorm(n)*0.2}
r = seq(0,1,length=n)
z = function(k) { cbind(r*sin(th(k)),r*cos(th(k))) }
z0 = z(0)
z1 = z(1)
z2 = z(2)
plot(z0,col="red",xlim=c(-1,1),ylim=c(-1,1))
points(z1,col="green")
points(z2,col="blue")
s = c(rep(1,n),rep(2,n),rep(3,n))
z_all = rbind(z0,z1,z2)
m = cbind(s==1,s==2,s==3,z_all)
write.table(m, 'spiral.csv',row.names=F, col.names=F)
