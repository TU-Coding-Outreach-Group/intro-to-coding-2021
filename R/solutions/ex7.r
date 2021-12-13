(prop_ <- with(df, table(ProbType, safeChoice)) %>%
          prop.table())
(total_ <- prop_ * length(rownames(df)))  
(chi_ <- chisq.test(x = df$ProbType, 
                     y = df$safeChoice))
rm(chi,prop,total,prop_, total_, chi_)