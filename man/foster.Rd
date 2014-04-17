\name{foster}
\alias{foster}
\docType{data}
\title{ Foster Feeding Experiment }
\description{

The data are from a foster feeding experiment
with rat mothers and litters of four different genotypes.
The measurement is the litter weight after
a trial feeding period.

}
\usage{data("foster")}
\format{
  A data frame with 61 observations on the following 3 variables.
  \describe{
    \item{\code{litgen}}{genotype of the litter, a factor with levels 
                         \code{A}, \code{B}, \code{I}, and \code{J}.}
    \item{\code{motgen}}{genotype of the mother, a factor with levels 
                         \code{A}, \code{B}, \code{I}, and \code{J}.}
    \item{\code{weight}}{the weight of the litter after a feeding period.}
  }
}
\details{

Here the interest lies in uncovering the effect of genotype of mother and litter on 
litter weight.

}
\source{

  D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway and E. Ostrowski (1994).
  \emph{A Handbook of Small Datasets}, Chapman and Hall/CRC, London.

}
\examples{

  data("foster", package = "HSAUR3")
  plot.design(foster)

}
\keyword{datasets}
