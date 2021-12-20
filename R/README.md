# Coding Outreach Group Bootcamp
# R Tutorial
12/16/2021  
UPDATED: 12/20/2021

__**Instructor:**__ William Mitchell


## Description
This workshop will review basic coding skills relevant to conducting statistical analyses for an audience that has ***little to no experience in R***. It will build upon the groundwork laid in days 1 and 2 by using the same data that we had organized in Bash and cleaned in Python. We will review further data wrangling techniques, especially those unique to R. We will also review how to conduct basic statistical tests in R, including Chi Square tests, T-Tests, ANOVAs, and various forms of Regression. While a background in statistical theory is *helpful*, the module was designed such that it should not be *necessary* to follow along.

## Prerequisites
1. [bash tutorial]()
2. [python tutorial]()

## To-do before the tutorial
1. Download R  
         Windows: https://archive.linux.duke.edu/cran/bin/windows/base/R-4.1.2-win.exe  
         Mac: https://archive.linux.duke.edu/cran/bin/macosx/            
         Linux: https://archive.linux.duke.edu/cran/  
2. Download RStudio (which allows us to navigate R, but is a different program from R)  
         Windows: https://download1.rstudio.org/desktop/windows/RStudio-2021.09.1-372.exe  
         Mac: https://download1.rstudio.org/desktop/macos/RStudio-2021.09.1-372.dmg  
         Linux: https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2021.09.1-372-amd64.deb  
3. Download relevant packages. Following the installation of R and R studio, copy, paste, and run the following code into the R Studio console:

          install.packages("effects")    
          install.packages("ggthemes")
          install.packages("plyr")
          install.packages("psych")   
          install.packages("report")  
          install.packages("skimr")  
          install.packages("stargazer")  
          install.packages("tidyverse")  

## Tutorial objectives:
- Learn R syntax relating to dataframes
- Get familiar with RStudio and rmarkdown (and more generally notebook style coding)
- Learn how to complete statistical analysis
- Learn how to visualize data

## Workshop Materials
- [Notebook Viewer](https://tu-coding-outreach-group.github.io/intro-to-coding-2021/R/index.html)
