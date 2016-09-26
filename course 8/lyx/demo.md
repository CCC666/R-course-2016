---
title: "Untitled"
author: "Qiang Shen"
date: ''
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


```r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

You can also embed plots, for example:

% latex table generated in R 3.2.2 by xtable 1.7-4 package
% Sat Dec 26 14:23:12 2015
\begin{table}[ht]
\centering
\begin{tabular}{rrrrr}
  \hline
 & Estimate & Std. Error & t value & Pr($>$$|$t$|$) \\ 
  \hline
(Intercept) & -0.17 & 0.09 & -2.0 & 0.05 \\ 
  x & 2.01 & 0.09 & 22.0 & 0.00 \\ 
   \hline
\end{tabular}
\end{table}

% Table created by stargazer v.5.2 by Marek Hlavac, Harvard University. E-mail: hlavac at fas.harvard.edu
% Date and time: Sat, Dec 26, 2015 - 14:23:12
\begin{table}[!htbp] \centering 
  \caption{} 
  \label{} 
\begin{tabular}{@{\extracolsep{5pt}} ccccc} 
\\[-1.8ex]\hline 
\hline \\[-1.8ex] 
 & Estimate & Std. Error & t value & Pr(\textgreater \textbar t\textbar ) \\ 
\hline \\[-1.8ex] 
(Intercept) & $$-$0.169$ & $0.086$ & $$-$1.975$ & $0.051$ \\ 
x & $2.005$ & $0.091$ & $21.981$ & $0$ \\ 
\hline \\[-1.8ex] 
\end{tabular} 
\end{table} 

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
