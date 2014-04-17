\name{bp}
\alias{bp}
\docType{data}
\title{
Lowering Blood Pressure Data
}
\description{
Lowering a patient's blood pressure during
surgery, using a hypotensive drug.
}
\usage{data(bp)}
\format{
  A data frame with 53 observations on the following 3 variables.
  \describe{
    \item{\code{logdose}}{the logarithm (base 10) of the dose of drug in milligrams}
    \item{\code{bloodp}}{average systolic blood pressure achieved while the drug was being administered}
    \item{\code{recovtime}}{time in minutes before the patient's systolic blood pressure returned to 100mm of mercury}
  }
}
\source{

  J. D. Robertson and P. Armitage (1959)
  Comparison of Two Hypotensive Agents, \emph{Anaesthesia}, 
  \bold{14}(1), 53--64

}
\keyword{datasets}
