
library(beeswarm)
library(rgdal)
library(stringr)
library(dplyr)

setwd("C:/Users/ScaleUp Institute/Documents/R/projects/scaleup-beeswarms/charts")


lads_path <- "C:/Users/ScaleUp Institute/Documents/stata/ONS ScaleUp numbers/output/reference tables/LAD figures (no dupl).csv"

lads <- read.csv(lads_path)

lads_trim <- filter(lads, sutotal_per100k2016 < 100)

#Draw graph
svg(filename = "Scaleup density beeswarm.svg")

beeswarm(lads_trim$sutotal_per100k2016, method="swarm", col="#247BA0", pch=16)

dev.off()

#Draw graph
svg(filename = "Scaleup growth beeswarm.svg")

beeswarm(lads_trim$sutotal_growth13_16, method="swarm", col="#247BA0", pch=16)

dev.off()