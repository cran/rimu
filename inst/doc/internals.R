## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## -----------------------------------------------------------------------------
library(rimu)
data(ethnicity)
ethnicity
length(ethnicity)
unclass(ethnicity)
data.frame(ethnicity)

## -----------------------------------------------------------------------------
eth<-as.vmr(ethnicity, na.rm=TRUE)
eth
length(eth)
unclass(eth)

## -----------------------------------------------------------------------------
data(nzbirds)
nzbirds
d<-data.frame(nzbirds)
dim(d)
d
as.mr(nzbirds)


