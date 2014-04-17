\name{phosphate}
\alias{phosphate}
\docType{data}
\title{ Phosphate Level Data }
\description{

  Plasma inorganic phosphate levels from 33 subjects.

}
\usage{data("phosphate")}
\format{
  A data frame with 33 observations on the following 9 variables.
  \describe{
    \item{\code{group}}{a factor with levels \code{control} and
                        \code{obese}.}
    \item{\code{t0}}{baseline phosphate level},
    \item{\code{t0.5}}{phosphate level after 1/2 an hour.}
    \item{\code{t1}}{phosphate level after one an hour.}
    \item{\code{t1.5}}{phosphate level after 1 1/2 hours.}
    \item{\code{t2}}{phosphate level after two hours.}
    \item{\code{t3}}{phosphate level after three hours.}
    \item{\code{t4}}{phosphate level after four hours.}
    \item{\code{t5}}{phosphate level after five hours.}
  }
}
\source{

    C. S. Davis (2002), \emph{Statistical Methods for the Analysis 
    of Repeated Measurements}, Springer, New York.

}
\examples{

  data("phosphate", package = "HSAUR3")
  plot(t0 ~ group, data = phosphate)

}
\keyword{datasets}
