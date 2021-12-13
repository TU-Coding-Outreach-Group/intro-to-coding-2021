#Applying an absolute value function to create a new variable
df$EV_DiffAbs <- abs(df$EV_Diff)
#Checking the new column values as compared to the old column values
table(df$EV_DiffAbs, df$EV_Diff)