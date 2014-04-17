\name{respiratory}
\alias{respiratory}
\docType{data}
\title{ Respiratory Illness Data }
\description{

    The respiratory status of patients recruited for a randomised clinical
    multicenter trial.

}
\usage{data("respiratory")}
\format{
  A data frame with 555 observations on the following 7 variables.
  \describe{
    \item{\code{centre}}{the study center, a factor with levels \code{1} and
                         \code{2}.}
    \item{\code{treatment}}{the treatment arm, a factor with levels \code{placebo}
                            and \code{treatment}.}
    \item{\code{gender}}{a factor with levels \code{female} and \code{male}.}
    \item{\code{age}}{the age of the patient.}
    \item{\code{status}}{the respiratory status (response variable), 
                         a factor with levels \code{poor} and \code{good}.}
    \item{\code{month}}{the month, each patient was examined at months 
                        \code{0}, \code{1}, \code{2}, \code{3} and \code{4}.}
    \item{\code{subject}}{the patient ID, a factor with levels \code{1} to
                          \code{111}.}
  }
}
\details{

    In each of two centres, eligible patients were randomly assigned 
    to active treatment or placebo. During the treatment, the respiratory
    status (categorised \code{poor} or \code{good}) was determined at each
    of four, monthly visits. The trial recruited 111 participants
    (54 in the active group, 57 in the placebo group) and there were
    no missing data for either the responses or the covariates. The
    question of interest is to assess whether the treatment is effective
    and to estimate its effect.

    Note that the data are in long form, i.e, repeated measurments are
    stored as additional rows in the data frame.

}
\source{

    C. S. Davis (1991), Semi-parametric and non-parametric methods
    for the analysis of repeated measurements with applications to
    clinical trials. \emph{Statistics in Medicine}, \bold{10}, 
    1959--1980.

}
\examples{

  data("respiratory", package = "HSAUR3")
  mosaicplot(xtabs( ~ treatment + month + status, data = respiratory))

}
\keyword{datasets}
