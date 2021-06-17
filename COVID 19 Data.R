rm(list=ls()) #clears environment

#library
library (covid19.analytics)

#Data
ag<-covid19.data(case= 'aggregated')
tsc <- covid19.data(case= 'ts-confirmed')

#Summary
report.summary(Nentries = 10,
               graphical.output = TRUE)

#Totals per location
tots.per.location(tsc, geo.loc = 'US')
tots.per.location(tsc,geo.loc= c('US','India'))

#Growth rate
growth.rate (tsc,geo.loc = 'US')

#world map
live.map(tsc)

#SIR model
#S= Healthy but susceptible to disease. I=Infected, R= recovered
generate.SIR.model(tsc,'US', tot.population= 328200000)