xs <- runif(400,min=-1,max=0)
err <- rnorm(400,mean=0)
zs <- sample(c(1,-1),400,replace=TRUE)
ys <- 2*xs+5*zs+err

png("images/svm.png")
plot(xs,ys,col=zs+5,cex=0.4)
lines(xs,2*xs,lty="solid")
lines(xs,2*xs+2,lty="dashed")
lines(xs,2*xs-2,lty="dashed")
dev.off()

