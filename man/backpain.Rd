\name{backpain}
\alias{backpain}
\docType{data}
\title{ Driving and Back Pain Data}
\description{

  A case-control study to investigate whether driving a car is a risk factor for 
  low back pain resulting from acute herniated lumbar intervertebral discs (AHLID).

}
\usage{data("backpain")}
\format{
  A data frame with 434 observations on the following 4 variables.
  \describe{
    \item{\code{ID}}{a factor which identifies matched pairs.}
    \item{\code{status}}{a factor with levels \code{case} and \code{control}.}
    \item{\code{driver}}{a factor with levels \code{no} and \code{yes}.}
    \item{\code{suburban}}{a factor with levels \code{no} and \code{yes} indicating a suburban resident.}
  }
}
\details{

These data arise from a study reported in Kelsey and Hardy (1975) which was designed to 
investigate whether driving a car is a risk factor for low back pain resulting from 
acute herniated lumbar intervertebral discs (AHLID). A case-control study was used 
with cases selected from people who had recently had X-rays taken of the lower back 
and had been diagnosed as having AHLID. The controls were taken from patients admitted 
to the same hospital as a case with a condition unrelated to the spine. Further matching 
was made on age and sex and a total of 217 matched pairs were recruited, consisting of 
89 female pairs and 128 male pairs.
}
\source{

  Jennifer L. Kelsey and Robert J. Hardy (1975), 
  Driving of Motor Vehicles as a Risk Factor for Acute
  Herniated Lumbar Intervertebral Disc. 
  \emph{American Journal of Epidemiology}, \bold{102}(1), 63--73.
}

\examples{

  data("backpain", package = "HSAUR3")
  summary(backpain)

}
\keyword{datasets}
