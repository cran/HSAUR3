\name{BCG}
\alias{BCG}
\docType{data}
\title{ BCG Vaccine Data }
\description{

  A meta-analysis on the efficacy of BCG vaccination against tuberculosis (TB).

}
\usage{data("BCG")}
\format{
  A data frame with 13 observations on the following 7 variables.
  \describe{
    \item{\code{Study}}{an identifier of the study.}
    \item{\code{BCGTB}}{the number of subjects suffering from TB after a BCG
                        vaccination.}
    \item{\code{BCGVacc}}{the number of subjects with BCG vaccination.}
    \item{\code{NoVaccTB}}{the number of subjects suffering from TB without
                           BCG vaccination.}
    \item{\code{NoVacc}}{the total number of subjects without BCG
                         vaccination.}
    \item{\code{Latitude}}{geographic position of the place the study was
                           undertaken.}
    \item{\code{Year}}{the year the study was undertaken.}
  }
}
\details{

  Bacille Calmette Guerin (BCG) is the most widely used vaccination
  in the world. Developed in the 1930s and made of a live, weakened
  strain of Mycobacterium bovis, the BCG is the only vaccination
  available against tuberculosis today. Colditz et al. (1994)
  report  data from 13 clinical trials of BCG vaccine each investigating   
  its efficacy in the treatment of tuberculosis. The number of subjects 
  suffering from TB with or without BCG vaccination are 
  given here. 
  In addition, the data contains the values of two other 
  variables for each study, namely, the geographic latitude of
  the place where the study was undertaken and the year of publication.
  These two variables will be used to investigate and perhaps explain
  any heterogeneity among the studies.

}
\source{

  G. A. Colditz, T. F. Brewer, C. S. Berkey, M. E. Wilson,
  E. Burdick, H. V. Fineberg and F. Mosteller (1994),
  Efficacy of BCG vaccine in the prevention of tuberculosis.
  Meta-analysis of the published literature. 
  \emph{Journal of the American Medical Association}, \bold{271}(2),
  698--702.

}
\examples{

  data("BCG", package = "HSAUR3")

  ### sort studies w.r.t. sample size
  BCG <- BCG[order(rowSums(BCG[,2:5])),]

  ### to long format
  BCGlong <- with(BCG, data.frame(Freq = c(BCGTB, BCGVacc - BCGTB, 
                                           NoVaccTB, NoVacc - NoVaccTB),
                  infected = rep(rep(factor(c("yes", "no")), 
                                 rep(nrow(BCG), 2)), 2),
                  vaccined = rep(factor(c("yes", "no")), 
                                 rep(nrow(BCG) * 2, 2)),
                  study = rep(factor(Study, levels = as.character(Study)), 
                              4)))

  ### doubledecker plot
  library("vcd")
  doubledecker(xtabs(Freq ~ study + vaccined + infected, 
                     data = BCGlong))

}
\keyword{datasets}
