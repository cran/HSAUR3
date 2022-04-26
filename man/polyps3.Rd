\name{polyps3}
\alias{polyps3}
\docType{data}
\title{ Familial Andenomatous Polyposis }
\description{

  Data from a placebo-controlled trial of a non-steroidal anti-inflammatory
  drug in the treatment of familial andenomatous polyposis (FAP).

}
\usage{data("polyps3")}
\format{
  A data frame with 22 observations on the following 5 variables.
  \describe{
    \item{\code{gender}}{a factor with levels \code{female} and \code{male}.}
    \item{\code{treatment}}{a factor with levels \code{placebo} and \code{active}.}
    \item{\code{baseline}}{the baseline number of polyps.}
    \item{\code{age}}{the age of the patient.}
    \item{\code{number3m}}{the number of polyps after three month.}
  }
}
\details{

  The data arise from the same study as the \code{\link{polyps}} data. Here, 
  the number of polyps after three months are given.

}
\source{

  F. M. Giardiello, S. R. Hamilton, A. J. Krush, S. Piantadosi, L. M. Hylind,
  P. Celano, S. V. Booker, C. R. Robinson and G. J. A. Offerhaus (1993),
  Treatment of colonic and rectal adenomas with sulindac
  in familial adenomatous polyposis. \emph{New England Journal of Medicine},
  \bold{328}(18), 1313--1316.

  S. Piantadosi (1997), \emph{Clinical Trials: A Methodologic Perspective}.
  John Wiley & Sons, New York.

}
\examples{

  data("polyps3", package = "HSAUR3")
  plot(number3m ~ age, data = polyps3, pch = as.numeric(polyps3$treatment))
  legend("topright", legend = levels(polyps3$treatment), pch = 1:2, bty = "n")

}
\keyword{datasets}
