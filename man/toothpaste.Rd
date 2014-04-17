\name{toothpaste}
\alias{toothpaste}
\docType{data}
\title{ Toothpaste Data }
\description{

    Meta-analysis of studies comparing two different toothpastes.

}
\usage{data("toothpaste")}
\format{
  A data frame with 9 observations on the following 7 variables.
  \describe{
    \item{\code{Study}}{the identifier of the study.}
    \item{\code{nA}}{number of subjects using toothpaste A.}
    \item{\code{meanA}}{mean DMFS index of subjects using toothpaste A.}
    \item{\code{sdA}}{standard deviation of DMFS index of subjects 
                      using toothpaste A.}
    \item{\code{nB}}{number of subjects using toothpaste B.}
    \item{\code{meanB}}{mean DMFS index of subjects using toothpaste B.}
    \item{\code{sdB}}{standard deviation of DMFS index of subjects 
                      using toothpaste B.}
  }
}
\details{

    The data are the results of nine randomised trials comparing
    two different toothpastes for the prevention of caries development.
    The outcomes in each trial was the change, from baseline, in
    the decayed, missing (due to caries) and filled surface dental
    index (DMFS).

}
\source{

    B. S. Everitt and A. Pickles (2000), 
    \emph{Statistical Aspects of the Design and Analysis of Clinical
    Trials}, Imperial College Press, London.

}
\examples{

  data("toothpaste", package = "HSAUR3")
  toothpaste

}
\keyword{datasets}
