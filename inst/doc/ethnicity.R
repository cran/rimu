## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## -----------------------------------------------------------------------------
library(rimu)
data(usethnicity)
head(usethnicity)

## -----------------------------------------------------------------------------
race<-as.mr(usethnicity$Q5,"")
mtable(race)

## -----------------------------------------------------------------------------
race<-mr_drop(race,c(" ","F","G","H"))
mtable(race)

## -----------------------------------------------------------------------------
race <- mr_recode(race, AmIndian="A",Asian="B", Black="C", Pacific="D", White="E")

## -----------------------------------------------------------------------------
hispanic<-as.mr(usethnicity$Q4==1, "Hispanic")
ethnicity<-mr_union(race, hispanic)
ethnicity[101:120]

## -----------------------------------------------------------------------------
plot(ethnicity,nsets=6)

## -----------------------------------------------------------------------------
mtable(ethnicity, usethnicity$QN30)
table(ethnicity %has% "Black", usethnicity$QN30)
table(ethnicity %hasonly% "Black", usethnicity$QN30)
table(as.character(ethnicity), usethnicity$QN30)

