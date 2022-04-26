\name{gardenflowers}
\alias{gardenflowers}
\docType{data}
\title{ Garden Flowers Data}
\description{
    The dissimilarity matrix of 18 species of garden flowers.
}
\usage{data("gardenflowers")}
\format{
  An object of class \code{\link{dist}}.
}
\details{

  The dissimilarity was computed based on certain characteristics of the
  flowers.

}
\source{

    L. Kaufman and P. J. Rousseeuw (1990), \emph{Finding groups in data: 
    an introduction to cluster analysis}, John Wiley & Sons, New York.

}
\examples{

  data("gardenflowers", package = "HSAUR3")
  gardenflowers

}
\keyword{datasets}
