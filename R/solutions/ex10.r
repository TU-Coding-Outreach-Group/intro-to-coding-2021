Summary <- CustomSummary(df, "rt", c("ProbType", "Condition"))
ggplot(df, aes(x = ProbType, y = rt, color = Condition, group = Condition)) +
    # The line below places the point geoms on the plot which represent the mean value for each condition.
    # Position_dodge determines how far apart different groups within the same category are positioned on the plot. At 0 they are on top of each other and they get progressively further apart as the value increases
    stat_summary(geom="point", fun = mean, size = 3.5, position=position_dodge(width = 0.45)) +
    # geom_errorbar creates errorbars around the 95% confidence intervals defined by Summary.
    geom_errorbar(data=Summary, aes(ymin = rt-ci, ymax = rt+ci), size= 0.75, width=0.25, position=position_dodge(width = 0.45)) +
    scale_color_brewer(palette="Dark2", name="Condition", breaks=c("Descriptive", "Experiential"), labels=c("Descriptive", "Experiential")) +
    scale_x_discrete(name = "Problem Type", labels = c("Mixed Domain", "Risky Risk", "Single Domain")) +
    labs(title = "Differences in Reaction Time by Problem Type and Condition",
       subtitle = "",
       x =NULL, 
       y ="Reaction Time (in seconds)",
       caption = "p > 0.05: N.S. \np < 0.05: * \np < 0.01: ** \np < 0.001: ***") +
    coord_cartesian(ylim=c(0.00, 2.00)) +
    theme_classic() +
    theme(plot.title = element_text(face="bold", size=13, hjust = 0.5)) +
    theme(plot.subtitle = element_text(size = 10, hjust = 0.5, face = "italic")) +
    theme(plot.caption = element_text(size = 8, hjust = 0.0, face = "italic")) +
    theme(axis.title = element_text(size = 12)) +
    theme(axis.text.x = element_text(size = 14, color = "Black")) +
    theme(axis.text.y = element_text(size = 14, color = "Black"))
rm(Summary,CustomSummary,aov)