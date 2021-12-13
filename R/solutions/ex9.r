  (t_test<- t.test(x = df$rt[df$Condition == "Descriptive"],
                  y = df$rt[df$Condition == "Experiential"],
                  paired = TRUE,
                  alternative = "two.sided"))
  report(t_test)
  rm(ttest, t_test)