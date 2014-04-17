\name{toenail}
\alias{toenail}
\docType{data}
\title{ Toenail Infection Data }
\description{

  Results of a clinical trial to compare two competing oral antifungal 
  treatments for toenail infection.

}
\usage{data("toenail")}
\format{
  A data frame with 1908 observations on the following 5 variables.
  \describe{
    \item{\code{patientID}}{a unique identifier for each patient in the trial.}
    \item{\code{outcome}}{degree of separation of the nail plate from the nail bed (onycholysis).}
    \item{\code{treatment}}{a factor with levels \code{itraconazole} and \code{terbinafine}.}
    \item{\code{time}}{the time in month when the visit actually took place.}
    \item{\code{visit}}{number of visit attended.}
  }
}
\details{

  De Backer et al. (1998) describe a clinical trial to compare two competing oral antifungal 
  treatments for toenail infection (dermatophyte onychomycosis). A total of 378 patients 
  were randomly allocated into two treatment groups, one group receiving 250mg per 
  day of terbinafine and the other group 200mg per day of itraconazole. 
  Patients were evaluated at seven visits, intended to be at weeks 
  0, 4, 8, 12, 24, 36, and 48 for the degree of separation of the nail 
  plate from the nail bed (onycholysis) dichotomized into \code{moderate or severe} 
  and \code{none or mild}. But patients did not always arrive exactly at the 
  scheduled time and the exact time in months that they did attend was recorded. 
  The data is not balanced since not all patients attended for all seven planned 
  visits.

}
\source{

  M. D. Backer and C. D. Vroey and E. Lesaffre and I. Scheys and P. D. Keyser (1998),
  Twelve weeks of continuous oral therapy for toenail onychomycosis caused by 
  dermatophytes: A double-blind comparative trial of terbinafine 
  250 mg/day versus itraconazole 200 mg/day. \emph{Journal of the American Academy of Dermatology}, 
  \bold{38}, S57--S63.

}

\examples{

  data("toenail", package = "HSAUR3")


}
\keyword{datasets}
