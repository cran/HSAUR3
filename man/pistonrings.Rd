\name{pistonrings}
\alias{pistonrings}
\docType{data}
\title{ Piston Rings Failures }
\description{
  Number of failures of piston rings in three legs of four steam-driven
  compressors. 
}
\usage{data("pistonrings")}
\format{
A two-way classification, see \code{\link{table}}.
}
\details{

    The data are given in form of a \code{\link{table}}. 
    The table gives the number of piston-ring failures in each
    of three legs of four steam-driven compressors located in the
    same building. The compressors have identical design and are
    oriented in the same way. The question of interest is whether
    the two classification variables (compressor and leg) are independent.
}
\source{

    S. J. Haberman (1973), The analysis of residuals in cross-classificed
    tables. \emph{Biometrics} \bold{29}, 205--220.

}
\examples{
  
  data("pistonrings", package = "HSAUR3")
  mosaicplot(pistonrings)

}
\keyword{datasets}
