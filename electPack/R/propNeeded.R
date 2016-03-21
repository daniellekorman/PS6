#' Calculates the proportion of delegates remaining needed for a Candidtate to win
#'
#' Takes a candidate and number of delegates remaining for their party to find how many delegates
#' needed to win
#'
#' @param candidate An object of class Candidate
#' @param delegatesRemaining A numeric object of the number of remaining delegates for party
#'
#' @return A numeric object of the proportion of delegates remaining needed for candidate to win
#'
#' @author Danielle Korman
#' @note Also shows if candidate has already lost
#' @examples
#'
#' Trump <- createCandidate("Donald Trump", 678, "Republican")
#' propNeeded(Trump, 1049)
#' @seealso \code{\link{createCandidate}}
#' @rdname propNeeded
#' @aliases propNeeded,ANY-method
#' @export
# Create generic of propNeeded
setGeneric(name="propNeeded",
           def=function(candidate, delegatesRemaining)
           {standardGeneric("propNeeded")}
)

# Create propNeeded method to find proportion of remaining delegates needed to win
#' @export
setMethod(f="propNeeded",
          definition=function(candidate, delegatesRemaining) {
            # calculate proportion of delegates needed divided by remaining delegates
            need <- candidate@delegatesNeeded / delegatesRemaining
            # If delegates needed is more than the remaining delegates, the candidate can't win
            if(need > 1) {
              paste("There are not enough remaining delegates to win")
            }
            paste(need)

          }
)
