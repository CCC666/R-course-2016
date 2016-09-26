# install.packages('gcookbook')
library(gcookbook)
simpledat
barplot(simpledat,beside=T)
barplot(t(simpledat),beside=T)

plot(simpledat[1,],type='l')
lines(simpledat[2,],type='l',col='blue')


library(ggplot2)
simpledat_long


ggplot(simpledat_long,aes(x=Aval,y=value,fill=Bval))+geom_bar(stat='identity',position='dodge')
ggplot(simpledat_long,aes(x=Bval,y=value,fill=Aval))+geom_bar(stat='identity',position='dodge')
ggplot(simpledat_long,aes(x=Aval,y=value,colour=Bval,group=Bval))+geom_line()



dat<-data.frame(xval=1:4,yval=c(3,5,6,9),group=c('A','B','A','B'))
dat
ggplot(dat,aes(x=xval,y=yval))+geom_point()
p<-ggplot(dat,aes(x=xval,y=yval))
p+geom_point(aes(colour=group))# equvilaent to colour=group in aes.
p+geom_point(colour='blue')
p+geom_point()+scale_x_continuous(limits=c(0,8))
p+geom_point()+scale_colour_manual()
