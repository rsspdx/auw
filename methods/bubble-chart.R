crime <- read.csv("http://datasets.flowingdata.com/crimeRatesByState2005.tsv", header=TRUE, sep="\t")
symbols(crime$murder, crime$burglary, circles=crime$population)
radius <- sqrt( crime$population/ pi )
symbols(crime$murder, crime$burglary, circles=radius)
symbols(crime$murder, crime$burglary, circles=radius, inches=0.35, fg="white", bg="red", xlab="Murder Rate", ylab="Burglary Rate")
names(crime)
text(crime$murder, crime$burglary, crime$state, cex=0.5)

setwd('~/data/auw/')
load('wdi.Rdata')

names(wdi)

symbols(wdi$gdp_pc, wdi$literacy_pct_f, circles = wdi$pop_dens)
radius <- sqrt(wdi$pop / pi)
symbols(wdi$gdp_pc, wdi$literacy_pct_f, circles=radius)
symbols(wdi$gdp_pc, wdi$literacy_pct_f, circles=radius, inches=0.1, fg="white", bg="blue", xlab="GDP Per Capita", ylab="Female Literacy (%)", xlim = c(0, 5000))

