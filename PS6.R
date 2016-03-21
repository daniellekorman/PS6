# Problem Set 6
# Danielle Korman
# March 21 2016
rm(list=ls())
##
# Use devtools and roxygen packages
library(devtools)
library(roxygen2)
# Set working directory
setwd("/Users/drk/Desktop/R/PS6")
# Create Package called "electPack"
create("electPack")
# Update documentation
current.code <- as.package("electPack")
load_all(current.code)
document(current.code)
