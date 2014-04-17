\name{men1500m}
\alias{men1500m}
\docType{data}
\title{ Winners of the Olympic Men's 1500m }
\description{

   The data gives the winners of the men's 1500m race 
   for the Olympic Games 1896 to 2004.
}
\usage{data("men1500m")}
\format{
  A data frame with 25 observations on the following 5 variables.
  \describe{
    \item{\code{year}}{the olympic year.}
    \item{\code{venue}}{city where the games took place.}
    \item{\code{winner}}{winner of men's 1500m race.}
    \item{\code{country}}{country the winner came from.}
    \item{\code{time}}{time (in seconds) of the winner.}
  }
}
\examples{

  data("men1500m", package = "HSAUR3")
  op <- par(las = 2)
  plot(time ~ year, data = men1500m, axes = FALSE)
  yrs <- seq(from = 1896, to = 2004, by = 4)
  axis(1, at = yrs, labels = yrs)
  axis(2)
  box()
  par(op)

}
\keyword{datasets}
