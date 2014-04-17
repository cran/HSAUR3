\name{aspirin}
\alias{aspirin}
\docType{data}
\title{ Aspirin Data }
\description{

  Efficacy of Aspirin in preventing death after a myocardial infarct.

}
\usage{data("aspirin")}
\format{
  A data frame with 7 observations on the following 4 variables.
  \describe{
    \item{\code{dp}}{number of deaths after placebo.}
    \item{\code{tp}}{total number subjects treated with placebo.}
    \item{\code{da}}{number of deaths after Aspirin.}
    \item{\code{ta}}{total number of subjects treated with Aspirin.}
  }
}
\details{

    The data were collected for a meta-analysis
    of the effectiveness of Aspirin (versus placebo) in preventing 
    death after a myocardial infarction. 

}
\source{

    J. L. Fleiss (1993), The statistical basis of meta-analysis.
    \emph{Statistical Methods in Medical Research} \bold{2}, 
    121--145.

}
\examples{

  data("aspirin", package = "HSAUR3")
  aspirin

}
\keyword{datasets}
