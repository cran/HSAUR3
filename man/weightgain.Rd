\name{weightgain}
\alias{weightgain}
\docType{data}
\title{ Gain in Weight of Rats }
\description{

The data arise from an experiment to study the
gain in weight of rats fed on four different diets, distinguished
by amount of protein (low and high) and by source of protein
(beef and cereal).

}
\usage{data("weightgain")}
\format{
  A data frame with 40 observations on the following 3 variables.
  \describe{
    \item{\code{source}}{source of protein given, a factor with levels \code{Beef}
                         and \code{Cereal}.}
    \item{\code{type}}{amount of protein given, a factor with levels \code{High}
                       and \code{Low}.}
    \item{\code{weightgain}}{weigt gain in grams.}
  }
}
\details{

    Ten rats are randomized to each of the four
    treatments. The question
    of interest is how diet affects weight gain.

}
\source{

  D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway and E. Ostrowski (1994).
  \emph{A Handbook of Small Datasets}, Chapman and Hall/CRC, London.

}
\examples{

  data("weightgain", package = "HSAUR3")
  interaction.plot(weightgain$type, weightgain$source, 
                   weightgain$weightgain)

}
\keyword{datasets}
