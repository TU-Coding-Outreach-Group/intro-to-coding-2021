  ggplot(df, aes(x = EV_DiffAbs, y = rt)) +
         geom_smooth(method="lm", alpha = .25, size = 1.5) +
         labs(title = "Expected Value Difference Predicts Decision Reaction Time",
              subtitle = "Absolutle Difference in Expected Value Has No Effect on Reaction Time.",
              x = "Absolute Difference in Expected Value", 
              y ="Reaction time (in seconds)",
              caption = "I'm, like, a total R whiz") +
         coord_cartesian(ylim=c(0, 2)) +
         theme_classic() +
         theme(plot.title = element_text(face="bold", size=13, hjust = 1.0)) +
         theme(plot.subtitle = element_text(face = "italic", size = 10, hjust = 1.0)) +
         theme(plot.caption = element_text(face = "italic", size = 8, hjust = 0.0)) +
         theme(axis.title = element_text(size = 12)) +
         theme(axis.text.x = element_text(size = 14, color = "Blue")) +
         theme(axis.text.y = element_text(size = 14, color = "Blue"))