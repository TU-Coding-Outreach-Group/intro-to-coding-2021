  df <- subset(df, 
               df$ran == 1 & !is.na(df$safeChoice),
               select = c("PID", "Condition", "Run", "ProbType", "order", 
                          "EV1", "EV2", "samplingCount_risky", "samplingCount_safe",
                          "switchCount", "safeChoice", "rt"))