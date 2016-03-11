# Problem Set 6
# Danielle Korman
# March 21 2016
rm(list=ls())
## 
library(devtools)
library(roxygen2)
setwd("/Users/drk/Desktop/R/PS6")
create("electPack")
# Create Candidate class with slots name, delegatesWon, party, and delegatesNeeded
setClass("Candidate", 
         slots= c(name = "character", 
                  delegatesWon = "numeric", 
                  party = "character", 
                  delegatesNeeded = "numeric" ))

  setGeneric(name="createCandidate",
             def=function(name, delegatesWon, party)
             {standardGeneric("createCandidate")}
  )

?setGeneric
setMethod(f="CreateCandidate",
          definition=function(x, y, ...){
            .add <- getSquares(addSquares(x, y))
            .subtract <- getSquares(subtractSquares(x, y))
            .multiply <- getSquares(multSquares(x, y))
            return(new("TotalSquares", addSquare=.add, subtractSquare=.subtract,
                       multSquare = .multiply, x = x, y = y))
          }
?setClass
