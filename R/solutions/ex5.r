  #Calculating values for new column
  df$EV_Diff <- df$EV1 - df$EV2
  #Checking values for new column
  df$EV_Diff
  #Rinse, Wash...
  df$Sample_Diff <- df$samplingCount_safe - df$samplingCount_risk
  #...Repeat
  df$Sample_Diff