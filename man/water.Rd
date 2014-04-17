\name{water}
\alias{water}
\docType{data}
\title{ Mortality and Water Hardness }
\description{
    The mortality and drinking water hardness for 61 cities in England and
    Wales.
}
\usage{data("water")}
\format{
  A data frame with 61 observations on the following 4 variables.
  \describe{
    \item{location}{a factor with levels \code{North} and \code{South} indicating
                    whether the town is as north as Derby.}
    \item{town}{the name of the town.}
    \item{mortality}{averaged annual mortality per 100.000 male inhabitants.}
    \item{hardness}{calcium concentration (in parts per million).}
  }
}
\details{

The data were collected in an investigation
of environmental causes of disease. They show the annual mortality
per 100,000 for males, averaged over the years 1958-1964, and
the calcium concentration (in parts per million) in the drinking
water for 61 large towns in England and Wales. The higher the 
calcium concentration, the harder the water. Towns at least   
as far north as Derby are identified in the table. Here there
are several questions that might be of interest including, are
mortality and water hardness related, and do either or both variables
differ between northern and southern towns?

}
\source{

  D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway and E. Ostrowski (1994).
  \emph{A Handbook of Small Datasets}, Chapman and Hall/CRC, London.

}
\examples{

  data("water", package = "HSAUR3")
  plot(mortality ~ hardness, data = water, 
       col = as.numeric(water$location))

}
\keyword{datasets}
