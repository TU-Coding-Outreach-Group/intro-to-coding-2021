  ggplot(df, aes(x = EV_Diff, y = rt)) +
         geom_smooth(method="lm", alpha = .25, size = 1.5) +
         labs(title = "Expected Value Difference Predicts Decision Reaction Time",
              subtitle = "As expected value differences increase, reaction time decreases.",
              x = "Difference in Expected Value", 
              y ="Reaction time (in seconds)",
              caption = "p > 0.05: N.S. \np < 0.05: * \np < 0.01: ** \np < 0.001: ***") +
         coord_cartesian(ylim=c(0, 2)) +
         theme_classic() +
         theme(plot.title = element_text(face="bold", size=13, hjust = 0.5)) +
         theme(plot.subtitle = element_text(face = "italic", size = 10, hjust = 0.5)) +
         theme(plot.caption = element_text(face = "italic", size = 8, hjust = 0.0)) +
         theme(axis.title = element_text(size = 12)) +
         theme(axis.text.x = element_text(size = 14, color = "Black")) +
         theme(axis.text.y = element_text(size = 14, color = "Black"))
rm(m1)