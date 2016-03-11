#' A presidential candidate object
#' 
#' Object of class \code{Candidate} as created by the \code{createCandidate} functions
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
#' @author Danielle Korman: \email{d.korman@wustl.edu}
#' @aliases Candidate-class initialize,createCandidate-method
#' @rdname Candidate
#' @export
setClass(Class="Candidate",
         representation = representation(name = "character", 
                    delegatesWon = "numeric", 
                    party = "character", 
                    delegatesNeeded = "numeric"),
         prototype = prototype(
           name = character(),
           delegatesWon = numeric(),
           party = character(),
           delegatesNeeded = numeric()
         )
)

#' @export
setMethod("initialize", "Candidate", 
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
) 

#' @rdname Candidate
#' @export 
setGeneric(name="createCandidate",
           def=function(name, delegatesWon, party)
           {standardGeneric("createCandidate")}
)
#' @export
setMethod(f="createCandidate",
          definition=function(name, delegatesWon, party) {
            if(party=="Democrat") {
              delegatesNeeded <- 2383 - delegatesWon
            }
            if(party=="Republican") {
              delegatesNeeded <- 1237 - delegatesWon
            }
            return(new("Candidate", name, delegatesWon, party, delegatesNeeded, 
                       name = name, delegatesWon = delegatesWon, party = party))
          }
)
