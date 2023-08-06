# a snippet for making simple graphs
# you need to change many things: the countries, the variables, the working directory, etc. 

install.packages('tidyverse') # you've probably already done this

setwd('~/research-methods') # or whatever folder you use for this course on your computer and/or in the labs

library(tidyverse) # this loads several helpful libraries including the 'ggplot2' library

####################################
###################################

# an example: graph life expectancy in Bangladesh over time

# first, load the wdi data
load('wdi.Rdata')

# filter to include only Bangladesh
bgd <- wdi %>%
  filter(country == 'Bangladesh') # note the double equality sign

# create the graph
g_lifeexp_bgd <- ggplot(bgd, aes(year, lifeexp)) +
                  geom_line()

# look at the graph
g_lifeexp_bgd

# that's a very simple graph. Let's add a title, change the axis labels, and add a caption:

g_lifeexp_bgd_2 <- g_lifeexp_bgd +
  labs(title = 'Life Expectancy in Bangladesh',
       x = 'Year',
       y = 'Life Expectancy',
       caption = 'Source: World Bank, World Development Indicators')

# look at the new graph
g_lifeexp_bgd_2

# save the graph as a .png file
ggsave('g_lifeexp_bgd_2.png', plot = g_lifeexp_bgd_2)

####################################
###################################

# now, we can use that snippet for different graphs
# note that 'bgd' has been changed to 'npl', and other changes (the country name, the graph title, the plot to save in the ggsave command)

# filter to include only Nepal
npl <- wdi %>%
  filter(country == 'Nepal')

# create the graph
g_lifeexp_npl <- ggplot(npl, aes(year, lifeexp)) +
  geom_line()

# look at the graph
g_lifeexp_npl

# that's a very simple graph. Let's add a title,change the axis labels, and add a caption:

g_lifeexp_npl_2 <- g_lifeexp_npl +
  labs(title = 'Life Expectancy in Nepal',
       x = 'Year',
       y = 'Life Expectancy',
       caption = 'Source: World Bank, World Development Indicators')

# look at the new graph
g_lifeexp_npl_2

# save the graph as a .png file
ggsave('g_lifeexp_npl_2.png', plot = g_lifeexp_npl_2)


###########################################
###########################################

# here's a fancier graph. What if we wanted a graph of maternal mortality
# by gdp per capita in the year 2015? Let's try it

# filter for year 2015 and filter out regions
wdi2015 <- wdi %>%
  filter(year == 2015) %>% # note the double equal sign. This tests for equality. This is common in computer languages.
  filter(region == FALSE) # we want only countries, not regions

# draw the graph
g_mmr_gdp_pc_2015 <- ggplot(wdi2015, aes(gdp_pc, maternal_mort_p100k)) +
  geom_smooth() + # geom_smooth gives a locally weighted regression curve
  labs(title = 'Maternal Mortality by GDP per capita, 2015',
       x= 'GDP per capita, USD',
       y = 'Maternal Mortality/100k Live Births',
       caption = 'Shaded area = 95% confidence interval\n Source: World Bank, World Development Indicators')
          # in computer-ese, \n means 'new line'. This just gives us a two=line caption

#look at the graph
g_mmr_gdp_pc_2015

# save the graph
ggsave('g_mmr_gdp_pc_2015.png', plot = g_mmr_gdp_pc_2015)

# note: we could save it in a different format than .png (Portable Network Graphics)
# for example, we could save it as a PDF:
ggsave('g_mmr_gdp_pc_2015.pdf', plot = g_mmr_gdp_pc_2015)

###########################################
###########################################

# another graph example: a bar graph of frequencies
# let's select the data for 2015

wdi_2015 <- wdi %>%
  filter(year == 2015) %>%
  filter(region == FALSE) # this isn't necessary here, but it's a good habit

# now a bar graph of the polity variable (Polity V's democracy score - autocracy score)
polity_bar_gr_2015 <- ggplot(wdi_2015, aes(polity)) + 
  geom_bar(fill = 'blue')

# add a title, etc.

polity_bar_gr_2015 <- polity_bar_gr_2015  +
  labs(title = 'PolityV Polity score, 2015',
       x = 'Polity Score (Democracy - Autocracy',
       y = 'Count')

# look at the graph
polity_bar_gr_2015

# save the graph
ggsave('polity_bar_gr_2015.pdf', plot = polity_bar_gr_2015)

###########################################
###########################################

# we might want to know about the distribution of a continuous variable (or an almost-continuous variable)
# to do that, we use a histogram. For example, the distribution of life expectancy in 2015:

wdi_2015 <- wdi %>%
  filter(year == 2015) %>%
  filter(region == FALSE) 

life_exp_plot_2015 <- ggplot(wdi_2015, aes(x = lifeexp)) +
  geom_histogram(color = 'white', fill = 'blue') +
  labs(title = 'Life Expectancy in 2015',
       x = 'Life Expectancy',
       y = 'Count (number of countries',
       caption = 'Source: World Bank, World Development Indicators')

life_exp_plot_2015

ggsave('life_exp_plot_2015.png', plot = life_exp_plot_2015)
