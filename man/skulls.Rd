\name{skulls}
\alias{skulls}
\docType{data}
\title{ Egyptian Skulls }
\description{

  Measurements made on Egyptian skulls from five epochs.

}
\usage{data("skulls")}
\format{
  A data frame with 150 observations on the following 5 variables.
  \describe{
    \item{\code{epoch}}{the epoch the skull as assigned to, 
                        a factor with levels \code{c4000BC} \code{c3300BC},
                        \code{c1850BC},  \code{c200BC}, and  \code{cAD150},
                        where the years are only given approximately, of
                        course.}
    \item{\code{mb}}{maximum breaths of the skull.}
    \item{\code{bh}}{basibregmatic heights of the skull.}
    \item{\code{bl}}{basialiveolar length of the skull.}
    \item{\code{nh}}{nasal heights of the skull.}
  }
}
\details{

  The question is whether the measurements change over time.
  Non-constant measurements of the skulls over time would indicate
  interbreeding with immigrant populations.

}
\source{

  D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway and E. Ostrowski (1994).
  \emph{A Handbook of Small Datasets}, Chapman and Hall/CRC, London.

}
\examples{

  data("skulls", package = "HSAUR3")
  means <- tapply(1:nrow(skulls), skulls$epoch, function(i)
               apply(skulls[i,colnames(skulls)[-1]], 2, mean))
  means <- matrix(unlist(means), nrow = length(means), byrow = TRUE)
  colnames(means) <- colnames(skulls)[-1]
  rownames(means) <- levels(skulls$epoch)
  pairs(means,
      panel = function(x, y) {
          text(x, y, levels(skulls$epoch))
      })

}
\keyword{datasets}
