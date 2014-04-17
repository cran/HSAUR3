\name{birthdeathrates}
\alias{birthdeathrates}
\docType{data}
\title{ Birth and Death Rates Data }
\description{
  
  Birth and death rates for 69 countries.

}
\usage{data("birthdeathrates")}
\format{
  A data frame with 69 observations on the following 2 variables.
  \describe{
    \item{\code{birth}}{birth rate.}
    \item{\code{death}}{death rate.}
  }
}
\source{
  
    J. A. Hartigan (1975), \emph{Clustering Algorithms}.
    John Wiley & Sons, New York.

}
\examples{

  data("birthdeathrates", package = "HSAUR3")
  plot(birthdeathrates)

}
\keyword{datasets}
