## ------------------------------------------------------------------------
Sys.getlocale()
Sys.setlocale(category = "LC_ALL", locale = "zh_cn.utf-8")

## ------------------------------------------------------------------------
'Hello world!'
print('Hello world!')
cat ('Hello world!')

## ------------------------------------------------------------------------
 help('lm')    #"" can be omited,but not for +-*/
 ?lm
 example('lm') # "" can be omited
 apropos("mean") # "" can't be omited
 vignette("caret") #"" can't be omited

## ------------------------------------------------------------------------
# library()
search() #loaded package

## ------------------------------------------------------------------------
ls() #user-defined object
#up/down arrow: command history
getwd()
list.files()
# setwd("~/desktop") # special case for windows.

## ------------------------------------------------------------------------
if(!require(foreign)) install.packages('foreign')


