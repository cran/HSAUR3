\name{epilepsy}
\alias{epilepsy}
\docType{data}
\title{ Epilepsy Data }
\description{
  
   A randomised clinical trial investigating the effect of an anti-epileptic
   drug.

}
\usage{data("epilepsy")}
\format{
  A data frame with 236 observations on the following 6 variables.
  \describe{
    \item{\code{treatment}}{the treatment group, a factor with levels \code{placebo}
          and \code{Progabide}.}
    \item{\code{base}}{the number of seizures before the trial.}
    \item{\code{age}}{the age of the patient.}
    \item{\code{seizure.rate}}{the number of seizures (response variable).}
    \item{\code{period}}{treatment period, an ordered factor with levels
                         \code{1} to \code{4}.}
    \item{\code{subject}}{the patient ID, a factor with levels \code{1} to
          \code{59}.}
  }
}
\details{

  In this clinical trial, 59
  patients suffering from epilepsy were randomized to groups receiving either 
  the anti-epileptic drug Progabide or a placebo in addition to 
  standard chemotherapy. The numbers of seizures suffered in each 
  of four, two-week periods were recorded for each patient along 
  with a baseline seizure count for the 8 weeks prior to being 
  randomized to treatment and age. The main question of interest 
  is whether taking progabide reduced the number of epileptic seizures  
  compared with placebo.

}
\source{

   P. F. Thall and S. C. Vail (1990),
   Some covariance models for longitudinal count data with
   overdispersion. \emph{Biometrics}, \bold{46}, 657--671.

}
\examples{

  data("epilepsy", package = "HSAUR3")
  library(lattice)
  dotplot(I(seizure.rate / base) ~ period | subject, data = epilepsy, 
          subset = treatment == "Progabide")
  dotplot(I(seizure.rate / base) ~ period | subject, data = epilepsy, 
          subset = treatment == "Progabide")

}
\keyword{datasets}
