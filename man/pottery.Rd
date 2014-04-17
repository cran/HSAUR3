\name{pottery}
\alias{pottery}
\docType{data}
\title{ Romano-British Pottery Data }
\description{

    Chemical composition of Romano-British pottery.

}
\usage{data("pottery")}
\format{
  A data frame with 45 observations on the following 9 chemicals.
  \describe{
    \item{Al2O3}{aluminium trioxide.}
    \item{Fe2O3}{iron trioxide.}
    \item{MgO}{magnesium oxide.}
    \item{CaO}{calcium oxide.}
    \item{Na2O}{natrium oxide.}
    \item{K2O}{calium oxide.}
    \item{TiO2}{titanium oxide.}
    \item{MnO}{mangan oxide.}
    \item{BaO}{barium oxide.}
    \item{kiln}{site at which the pottery was found.}
  }
}
\details{

  The data gives the chemical composition of 
  specimens of Romano-British pottery, determined by atomic 
  absorption spectrophotometry, for nine oxides.

}
\source{

    A. Tubb and N. J. Parker and G. Nickless (1980),
    The analysis of Romano-British pottery by atomic
    absorption spectrophotometry. \emph{Archaeometry}, \bold{22}, 
    153--171.

}
\examples{

  data("pottery", package = "HSAUR3")
  plot(pottery)

}
\keyword{datasets}
