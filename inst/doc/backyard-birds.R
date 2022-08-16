## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
library(rimu)

## -----------------------------------------------------------------------------
data(birds)
names(birds)[1:12]

## -----------------------------------------------------------------------------
bird_count <- as.ms(birds[,-13],na.rm=TRUE)
bird_presence <- as.mr(bird_count)

## -----------------------------------------------------------------------------
head(bird_count)

## -----------------------------------------------------------------------------
head(bird_presence)

## -----------------------------------------------------------------------------
mtable(bird_presence)

## -----------------------------------------------------------------------------
plot(bird_presence,nsets=12)

## ----error=TRUE---------------------------------------------------------------
bird_presence<-mr_recode(bird_presence, 
  poorwill="Phalaenoptilus nuttallii",
  frigatebird="Fregata magnificens",       
  woodpecker ="Melanerpes lewis",          
  sparrow="Melospiza georgiana",   
  rail="Rallus limicola",      
  redstart="Myioborus pictus",          
  chickadee="Poecile gambeli",            
  duck="Aythya collaris",
  yellowhead="Xanthocephalus xanthocephalus",
  myna="Dracula religiosa",           
  oriole="Icterus parisorum",      
  cuckoo="Coccyzus erythropthalmus")

## -----------------------------------------------------------------------------
bird_presence<-mr_recode(bird_presence, 
  poorwill="Phalaenoptilus nuttallii",
  frigatebird="Fregata magnificens",       
  woodpecker ="Melanerpes lewis",          
  sparrow="Melospiza georgiana",   
  rail="Rallus limicola",      
  redstart="Myioborus pictus",          
  chickadee="Poecile gambeli",            
  duck="Aythya collaris",
  yellowhead="Xanthocephalus xanthocephalus",
  myna="Gracula religiosa",           
  oriole="Icterus parisorum",      
  cuckoo="Coccyzus erythropthalmus")

## -----------------------------------------------------------------------------
mtable(bird_presence)
mtable(bird_presence,bird_presence)
plot(bird_presence, nsets=12,nint=30)

## -----------------------------------------------------------------------------
image(bird_presence)
image(bird_presence, type="conditional")

## -----------------------------------------------------------------------------
common_birds<-mr_lump(bird_presence,n=4)
mtable(common_birds)
mtable(common_birds,common_birds)
plot(common_birds)

## -----------------------------------------------------------------------------
rare_birds<-mr_lump(bird_presence,n=-5,other_level="Common")
mtable(rare_birds)
mtable(rare_birds,rare_birds)
plot(rare_birds,nsets=6)
plot(mr_drop(rare_birds,"Common"),nsets=5)

