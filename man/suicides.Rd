\name{suicides}
\alias{suicides}
\docType{data}
\title{ Crowd Baiting Behaviour and Suicides }
\description{

  Data from a study carried out to investigate the
  causes of jeering or baiting behaviour by a crowd when a person
  is threatening to commit suicide by jumping from a high building.

}
\usage{data("suicides")}
\format{
A two-way classification, see \code{\link{table}}.
}
\source{

    L. Mann (1981), The baiting crowd in episodes of threatened suicide.
    \emph{Journal of Personality and Social Psychology}, \bold{41},  703--709.

}
\examples{

  data("suicides", package = "HSAUR3")
  mosaicplot(suicides)

}
\keyword{datasets}
