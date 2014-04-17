\name{bladdercancer}
\alias{bladdercancer}
\docType{data}
\title{ Bladder Cancer Data }
\description{

  Data arise from 31 male patients who have been treated for 
  superficial bladder cancer, and give the number of recurrent tumours during 
  a particular time after the removal of the primary tumour, along with the size of the 
  original tumour.

}
\usage{data("bladdercancer")}
\format{
  A data frame with 31 observations on the following 3 variables.
  \describe{
    \item{\code{time}}{the duration.}
    \item{\code{tumorsize}}{a factor with levels \code{<=3cm} and \code{>3cm}.}
    \item{\code{number}}{number of recurrent tumours.}
  }
}
\details{

  The aim is the estimate the effect of size of tumour on the number  
  of recurrent tumours.

}
\source{

    G. U. H. Seeber (1998), Poisson Regression. In: \emph{Encyclopedia of Biostatistics}
    (P. Armitage and T. Colton, eds), John Wiley \& Sons, Chichester.

}
\examples{

  data("bladdercancer", package = "HSAUR3")
  mosaicplot(xtabs(~ number + tumorsize, data = bladdercancer))

}
\keyword{datasets}
