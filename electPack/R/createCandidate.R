#' Create an instance of class Candidate
#'
#' Takes candidate information and creates an instance of class Candidate with delegates needed
#'
#' @param name A character object
#' @param delegatesWon A numeric object
#' @param party A character object
#'
#' @return An object of class Candidate containing
#'  \item{name}{The name of the candidate}
#'  \item{delegatesWon}{How many delegates the candidate has won}
#'  \item{party}{The political party of the candidate}
#'  \item{delegatesNeeded}{The number of delegates the candidate needs to win nomination}
#' @author Danielle Korman
#' @note This produces an instance of class Candidate
#' @examples
#'
#' B_name <- "Bernie Sanders"
#' B_won <- 574
#' B_party <- "Democrat"
#' createCandidate(B_name, B_won, B_party)
#' @seealso \code{\link{propNeeded}}
#' @rdname createCandidate
#' @aliases createCandidate,ANY-method
#' @export
# set the generic method for createCandidate
setGeneric(name="createCandidate",
           def=function(name, delegatesWon, party)
           {standardGeneric("createCandidate")}
)

#' @export
# creates S4 method createCandidate
setMethod(f="createCandidate",
          definition=function(name, delegatesWon, party) {
            # Calculate number of delegates for delegatesNeeded slot of Candidate
            if(party=="Democrat") {
            delegatesNeeded <- 2383 - delegatesWon
            }
            if(party=="Republican") {
              delegatesNeeded <- 1237 - delegatesWon
            }
            return(new("Candidate",
                       name = name, delegatesWon = delegatesWon, party = party))
          }
)
