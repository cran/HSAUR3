\name{USairpollution}
\alias{USairpollution}
\docType{data}
\title{ Air Pollution in US Cities }
\description{

  Air pollution data of 41 US cities.
  
}
\usage{data("USairpollution")}
\format{
  A data frame with 41 observations on the following 7 variables.
  \describe{
    \item{\code{SO2}}{SO2 content of air in micrograms per cubic metre.}
    \item{\code{temp}}{average annual temperature in Fahrenheit.}
    \item{\code{manu}}{number of manufacturing enterprises 
                                employing 20 or more workers.}
    \item{\code{popul}}{population size (1970 census); in thousands.}
    \item{\code{wind}}{average annual wind speed in miles per hour.}
    \item{\code{precip}}{average annual precipitation in inches.}
    \item{\code{predays}}{average number of days with precipitation per year.}
  }
}
\details{

  The annual mean concentration of sulphur dioxide, in micrograms per cubic metre, is a 
  measure of the air pollution of the city. The question of interest here is what 
  aspects of climate and human ecology as measured by the other six variables in the 
  data determine pollution?

}
\source{

  R. R. Sokal and F. J. Rohlf (1981), \emph{Biometry},
  W. H. Freeman, San Francisco (2nd edition).

}
\examples{

  data("USairpollution", package = "HSAUR3")

}
\keyword{datasets}
