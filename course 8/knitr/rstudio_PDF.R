library(knitr)
library(markdown)
##generate .md file
knit("data_analysis.Rmd")

##generate different format from .md file.
pandoc('data_analysis.md', format='html')  # HTML
pandoc('data_analysis.md', format='latex') # LaTeX/PDF
pandoc('data_analysis.md', format='docx')  # MS Word

system("pandoc -s -t slidy data_analysis.md -o My_Analysis.html")
system("pandoc -s -t beamer data_analysis.md -o My_Analysis.pdf")

##generate PDF that support Chinese.
getwd()
system("pandoc --latex-engine=xelatex data_analysis.md -o output.pdf")
system("pandoc --latex-engine=xelatex -V mainfont='SimSun' data_analysis.md -o output.pdf")


##reference.
##http://yijiebuyi.com/blog/17e31502e8a6229a18971a2499f0e72b.html
##http://zhouyichu.com/misc/Pandoc.html

