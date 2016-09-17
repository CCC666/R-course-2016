
## data import and export


  ## import and export
- text file
- excel file
- stata,spss
- online table


  
  ## console 
  
  - output<-file(output.txt);close(output)

{r,eval=F}
file.remove(c('output_new.txt','output.txt','output2.txt'))
out<-data.frame(x1=runif(3)*10,x2=letters[1:3])
out<-format(out,digits=3)
out
output<-file('output.txt')
cat(paste(out$x2,out$x1,sep=" = "),sep="\n",file=output)
close(output)



  
  ## console 2
  
  
output<-file('output2.txt')
cat(1:100,sep='\t',file=output)
close(output)
## another example
output<-file("output_new.txt")
cat(runif(10),sep='\n',file=output)
close(output)
# file.remove('output_new.txt')
output<-file("output_new.txt")
input<-scan(file=output)
input
close(output)



  
  ## import text file
  
  {r, eval=FALSE}
str(read.table)
# write.table(iris,file='data/iris.txt',sep=',',quote=F,row.names=F)
# write.table(iris,file='data/iris.csv',sep=',',quote=F,row.names=F)
iris_csv<-read.csv("data/iris.csv",header=T)#stringsAsFactors = F
iris_txt<-read.table("data/iris.txt",sep=",",header=T)#stringsAsFactors = F
system.time(dat2 <- read.table("data/NYNEWYOR.txt", 
                               col.names=c("DAY","MONTH","YEAR","TEMP")))

library(readr) #new package.
system.time(dat <- read_table("data/NYNEWYOR.txt",
                              col_names=c("DAY","MONTH","YEAR","TEMP")))



  
  ## import excel file
  {r, eval=FALSE}
library(xlsx)
indicator_xls<-read.xlsx("data/indicator hiv estimated prevalence% 15-49.xlsx", 1)

library(XLConnect)
wb <- loadWorkbook("data/indicator hiv estimated prevalence% 15-49.xlsx")
df <- readWorksheet(wb, sheet=1) 

library(readxl)
head(read_excel("data/indicator hiv estimated prevalence% 15-49.xlsx", 1))



  
  ## speed test for excel packages
  {r,eval=F}
a<-Sys.time()
library(xlsx)
read.xlsx("data/indicator hiv estimated prevalence% 15-49.xlsx", 1)
b<-Sys.time()
x1<-b-a
x1

a<-Sys.time()
library(XLConnect)
wb <- loadWorkbook("data/indicator hiv estimated prevalence% 15-49.xlsx")
df <- readWorksheet(wb, sheet=1) 
b<-Sys.time()
x2<-b-a
x2
# sample <- system.file("extdata", "datasets.xlsx", package = "readxl")
# sample
# excel_sheets(sample)
library(readxl)
a<-Sys.time()
indicator_excel<-head(read_excel("data/indicator hiv estimated prevalence% 15-49.xlsx", 1))
b<-Sys.time()
x3<-b-a
x3
value<-c(x1,x2,x3)
names(value)<-c('read.xlsx','readWorksheet','read_excel')
value



  
  ## import data from SPSS and Stata
  
  {r, eval=FALSE}
library(foreign)
Restaurant_dta<-read.dta('data/Restaurant.dta')
head(Restaurant_dta)
Restaurant_spss<-read.spss('data/restaurant.sav',
                           to.data.frame=TRUE)
head(Restaurant_spss)[1:5,]
#Restaurant<-read.ssd('restaurant.ssd',
#to.data.frame=TRUE)
head(Restaurant)



  
  ## online table
  
## example 1
library(XML)
theURL="http://mirrors.ustc.edu.cn/CRAN/web/packages/available_packages_by_date.html"
Rpackages = readHTMLTable(theURL, header=T, which=1,stringsAsFactors=F)
dim(Rpackages)
head(Rpackages)[1:4,1:3]
write.csv(Rpackages,'Rpackages.csv',sep='\t',1)



  
  ## online table 2
  
  
URL="http://www.jaredlander.com/2015/03/teaching-r-in-asia-2/"
location = readHTMLTable(URL, header=T, which=2,stringsAsFactors=F)
head(location)[1:4,1:4]



  
  ##  export data
  
  - text,csv,xlsx

{r, eval=FALSE}
write.table(Restaurant,'output/Restaurant.txt',
            sep="\t",quote=F,row.name=F)
write.csv(Restaurant,'output/Restaurant.csv',
          row.names=F)
write.xlsx(Restaurant,'output/Restaurant.xlsx',
           row.name=F)
writeWorksheetToFile('indicator.xlsx', data=df, sheet="FirstSheet")



  
  ## end