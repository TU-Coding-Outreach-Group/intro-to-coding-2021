  df2 <- subset(df, !is.na(df$samplingCount_risky))
  m3 <- lm(rt~samplingCount_risky + samplingCount_safe, df2)
  stargazer(m3,
            type = "text", 
            title= "Sample Count Predicting Reaction time",
            column.labels = c("Model 3"),
            dep.var.labels = "Reaction Time (in secs.)", 
            star.cutoffs = c(0.05, 0.01,0.001),
            covariate.labels = c("Risky Sample Count", "Safe Sample Count", "Intercept"),
            notes = "")  
  rm(df2,m2,m3)