\name{mastectomy}
\alias{mastectomy}
\docType{data}
\title{ Survival Times after Mastectomy of Breast Cancer Patients }
\description{
  Survival times in months after mastectomy of women with breast cancer. 
  The cancers are classified as having metastized or not based on a 
  histochemical marker. 
}
\usage{data("mastectomy")}
\format{
  A data frame with 42 observations on the following 3 variables.
  \describe{
    \item{time}{survival times in months.}
    \item{event}{a logical indicating if the event was observed (\code{TRUE})
                 or if the survival time was censored (\code{FALSE}).}
    \item{metastasized}{a factor at levels \code{yes} and \code{no}.}
  }
}
\source{

    B. S. Everitt and S. Rabe-Hesketh (2001),
    \emph{Analysing Medical Data using S-PLUS}, Springer, New York, USA.

}
\examples{

  data("mastectomy", package = "HSAUR3")
  table(mastectomy$metastasized)
}
\keyword{datasets}
