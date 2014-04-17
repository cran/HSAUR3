\name{schizophrenia2}
\alias{schizophrenia2}
\docType{data}
\title{ Schizophrenia Data }
\description{

  Though disorder and early onset of schizophrenia.

}
\usage{data("schizophrenia2")}
\format{
  A data frame with 220 observations on the following 4 variables.
  \describe{
    \item{\code{subject}}{the patient ID, a factor with levels \code{1} to
                          \code{44}.}
    \item{\code{onset}}{the time of onset of the disease, 
                        a factor with levels \code{< 20 yrs} and 
                        \code{> 20 yrs}.}
    \item{\code{disorder}}{whether thought disorder was \code{absent} or
                           \code{present}, the response variable.}
    \item{\code{month}}{month after hospitalisation.}
  }
}
\details{

    The data were collected in a follow-up study
    of women patients with schizophrenia. The binary response recorded
    at 0, 2, 6, 8 and 10 months after hospitalisation was thought
    disorder (absent or present). The single covariate is the factor 
    indicating whether a patient had suffered early or late
    onset of her condition (age of onset less than 20 years or
    age of onset 20 years or above). The question of interest is
    whether the course of the illness differs between patients with
    early and late onset?

}
\source{

    Davis (2002), \emph{Statistical Methods for the Analysis of 
    Repeated Measurements}, Springer, New York.

}
\examples{

  data("schizophrenia2", package = "HSAUR3")
  mosaicplot(xtabs( ~ onset + month + disorder, data = schizophrenia2))

}
\keyword{datasets}
