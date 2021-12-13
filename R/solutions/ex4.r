  #Checking Structure
  str(df)
  #Coercing
  df$safeChoice <- as.factor(df$safeChoice)
  #Checking Structure Again
  str(df)