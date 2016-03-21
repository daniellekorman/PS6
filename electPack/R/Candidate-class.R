#' A presidential candidate object
#'
#' Object of class \code{Candidate} as created by the \code{createCandidate} function. Objects
#' of this class include \code{show} and \code{print} methods.
#'
#'
#' An object of the class `Candidate' has the following slots:
#' \itemize{
#' \item \code{name} A character string that is the name of the candidate
#' \item \code{delegatesWon} The number of delegates already won by the candidate
#' \item \code{party} The political party of the candidate
#' \item \code{delegatesNeeded} The number of delegates a candidate needs to win
#' }
#'
#' @author Danielle Korman
#' @aliases Candidate-class initialize,createCandidate-method
#' @rdname Candidate
#' @export
setClass(Class="Candidate",
         representation = representation(name = "character",
                    delegatesWon = "numeric",
                    party = "character",
                    delegatesNeeded = "numeric"),
         prototype = prototype(
           name = NULL,
           delegatesWon = numeric(),
           party = NULL,
           delegatesNeeded = numeric()
         )
)

#' @export
setMethod("initialize", "Candidate",
          function(.Object, name, delegatesWon, party) {
            .Object@name <- name
            .Object@party <- party
            .Object@delegatesWon <- delegatesWon
            if(party=="Democrat") {
              .Object@delegatesNeeded <- 2383 - delegatesWon
            }
            if(party=="Republican") {
              .Object@delegatesNeeded <- 1237 - delegatesWon
            }
            value=callNextMethod()
            return(value)
          }
)
#' @export
setMethod(f = "show", signature = "Candidate",
          definition = function(object) {
            paste("Name=", object@name, "Party=", object@party,
                 "Delegates Won =", object@delegatesWon,
                 "Delegates Needed =", object@delegatesNeeded)
          }
)
#' @export
print.Candidate <- function(Candidate) {
            paste(Candidate@name, Candidate@party,
                  Candidate@delegatesWon, Candidate@delegatesNeeded)
          }
