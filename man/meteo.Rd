\name{meteo}
\alias{meteo}
\docType{data}
\title{ Meteorological Measurements for 11 Years }
\description{

    Several meteorological measurements for a period between 1920 and 1931.

}
\usage{data("meteo")}
\format{
  A data frame with 11 observations on the following 6 variables.
  \describe{
    \item{\code{year}}{the years.}
    \item{\code{rainNovDec}}{rainfall in November and December (mm).}
    \item{\code{temp}}{average July temperature.}
    \item{\code{rainJuly}}{rainfall in July (mm).}
    \item{\code{radiation}}{radiation in July (millilitres of alcohol).}
    \item{\code{yield}}{average harvest yield (quintals per hectare).}
  }
}
\details{

  Carry out a principal components analysis of both the covariance
  matrix and the correlation matrix of the data and compare the
  results. Which set of components leads to the most meaningful
  interpretation? 

}
\source{

  B. S. Everitt and G. Dunn (2001), \emph{Applied Multivariate Data
  Analysis}, 2nd edition, Arnold, London.

}
\examples{

  data("meteo", package = "HSAUR3")
  meteo

}
\keyword{datasets}
