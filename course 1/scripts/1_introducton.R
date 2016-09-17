## Contents
  
# >- 1. a brief introduction of R
# >- 2. Installment and interface
# >- 3. basics of R
# >- 4. data class and structure
# >- 5. data import and output
  
  ## R version 
  
#   >- version 3.2 (2015)
# >- 32 bit / 64 bit (3.0) 

  
  ## Program installment
  
#   >- R website:http://www.r-project.org/
#   >- Revolution Analytics:http://www.revolutionanalytics.com/get-revolution-r
# >- Integrated Development Environment (IDE):Notepad++, Submile, Eclipse (StatET)...
# >- Rstudio: http://www.rstudio.com/
  
  
  
#   ## Rstudio settings
#   - menu:Tools-> Global options
# - appearance (tomorrow night bright) 
# - default directory (preference->default woring directory)
# - svn/git
 
  ## Rstudio interface
  
#   >- console: interactive 
# >- source: shortcuts(ctrl+enter),cursor
# >- Enviorment,history,presentation 
# >- plot,packages

 
  ## help
  
help('lm')    #"" can be omited,but not for +-*/
?lm
example('lm') # "" can be omited
apropos("mean") # "" can't be omited
vignette("caret") #"" can't be omited

# - English
# - www.google.com
# - http://www.rseek.org/
#   - http://stackoverflow.com/tags
# - http://www.r-bloggers.com/
  
  ## Workspace
  
search() #loaded package
  
  ## packages
#   Packages are collections of R functions, data, and compiled code in a well-defined format.

# - https://mirrors.ustc.edu.cn/CRAN/

  
  ## Workspace
  
list() #user-defined object
#up/down arrow: command history
getwd()
list.files()
# setwd("~/desktop") #

  ## packages installment
  
#   - search() .libPaths()
# - install.packages() ## need "",with menu
# - install.packages("packageName.tgz",repos = "http://cran.us.r-project.org/", type="source")
# - install_github(repo =, username = ) library(devtools) #be cautious.

  
  ## packages loading/unloading
 library(foreign); require(foreign)
 detach(package:foreign)

# >- bonus
{r,echo=F}
if(!require(foreign)) install.packages('foreign')


  