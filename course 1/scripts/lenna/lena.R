# source('http://bioconductor.org/biocLite.R')
# biocLite("EBImage")
# getwd()
require(EBImage)
# lenac = readImage(system.file("images", "lena-color.jpg", package="EBImage"))
lenac<-readImage('~/Documents/cloud/Nutstore/course/R language and data analysis/R-course-2016/course 1/scripts/lenna/lena.jpg')
# x = readImage(system.file('images', 'shapes.png', package='EBImage'))

display(lenac)
class(lenac)
lenac
lena1<-lenac+0.5
lena2<-lenac*3
lena3<-(lenac+0.2)^3
display(lena1)
display(lena2)
display(lena3)
