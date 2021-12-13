  #Notice we are setting our working directory
  setwd(Path)
  df <- read.csv(file = "df.csv", 
                 header = T, 
                 sep=",",
                 na.strings=c("","N/A","NA"),
                 check.names = TRUE,
                 stringsAsFactors = TRUE)