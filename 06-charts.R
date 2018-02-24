hist(CO2$uptake)

hist(CO2$uptake, breaks = 20)


# load package and data
library(ggplot2)
library(ggExtra)
data(mpg, package = "ggplot2")

# Scatterplot
theme_set(theme_bw()) # pre-set the bw theme.
mpg_select <- mpg[mpg$hwy >= 35 & mpg$cty > 27,]
g <- ggplot(mpg, aes(cty, hwy)) +
    geom_count() +
    geom_smooth(method = "lm", se = F) + theme(legend.position = "none")

ggMarginal(g, type = "histogram", fill = "red")

# ggplotgui

library(ggplotgui)

ggplot_shiny(mpg)
df <- mpg






# solution

library(ggplot2)

g <- ggplot(dataset, aes(factor(HouseOwnerFlag), YearlyIncome)) + geom_violin()
plot(g)