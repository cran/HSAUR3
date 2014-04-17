\name{CYGOB1}
\alias{CYGOB1}
\docType{data}
\title{ CYG OB1 Star Cluster Data }
\description{

  Energy output and surface termperature for Star Cluster CYG OB1.

}
\usage{data("CYGOB1")}
\format{
  A data frame with 47 observations on the following 2 variables.
  \describe{
    \item{\code{logst}}{log survface termperature of the star.}
    \item{\code{logli}}{log light intensity of the star.}
  }
}
\details{

  The Hertzsprung-Russell (H-R) diagram forms the basis of
  the theory of stellar evolution. The diagram is essentially a 
  plot of the energy output of stars plotted against their surface
  temperature. Data from the H-R diagram of Star Cluster CYG OB1, 
  calibrated according to VanismaGreve1972 are given here.

}
\source{

    F. Vanisma and J. P. De Greve (1972), Close binary systems 
    before and after mass transfer. \emph{Astrophysics and Space Science},
    \bold{87}, 377--401.

    D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway and E. Ostrowski (1994).
    \emph{A Handbook of Small Datasets}, Chapman and Hall/CRC, London.
  
}
\examples{

  data("CYGOB1", package = "HSAUR3")
  plot(logst ~ logli, data = CYGOB1)

}
\keyword{datasets}
