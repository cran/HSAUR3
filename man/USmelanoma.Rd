\name{USmelanoma}
\alias{USmelanoma}
\docType{data}
\title{ USA Malignant Melanoma Data }
\description{

USA mortality rates for white males due to malignant 
melanoma 1950-1969.

}
\usage{data("USmelanoma")}
\format{
  A data frame with 48 observations on the following 5 variables.
  \describe{
    \item{\code{mortality}}{number of white males died due to malignant melanoma 1950-1969 
                            per one million inhabitants.}
    \item{\code{latitude}}{latitude of the geographic centre of the state.}
    \item{\code{longitude}}{longitude of the geographic centre of each state.}
    \item{\code{ocean}}{a binary variable indicating contiguity to an ocean at 
                        levels \code{no} or \code{yes}.}
  }
}
\details{

  Fisher and van Belle (1993) report mortality rates due to malignant melanoma of the 
  skin for white males during the period 1950-1969, for each state on the US mainland. 
  Questions of interest about these data include how do the mortality rates 
  compare for ocean and non-ocean states?

}
\source{
Fisher and van Belle (1993)
}
\examples{

  data("USmelanoma", package = "HSAUR3")
}
\keyword{datasets}
