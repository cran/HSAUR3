\name{agefat}
\alias{agefat}
\docType{data}
\title{ Total Body Composision Data }
\description{
    Age and body fat percentage of 25 normal adults.
}
\usage{data("agefat")}
\format{
  A data frame with 25 observations on the following 3 variables.
  \describe{
    \item{\code{age}}{the age of the subject.}
    \item{\code{fat}}{the body fat percentage.}
    \item{\code{gender}}{a factor with levels \code{female} and \code{male}.}
  }
}
\details{

  The data come from a study investigating a new methods of measuring body 
  composition (see Mazess et al, 1984), and give the body fat percentage 
  (percent fat), age and gender for 25 normal adults aged between 23 and 61 years.  
  The questions of interest are how are age and percent fat related, and is 
  there any evidence that the relationship is different for males and females.

}
\source{

  R. B. Mazess, W. W. Peppler and M. Gibbons (1984), Total body composition by 
  dual-photon (153Gd) absorptiometry. \emph{American Journal of Clinical Nutrition}, 
  \bold{40}, 834--839.

}
\examples{

  data("agefat", package = "HSAUR3")
  plot(fat ~ age, data = agefat)

}
\keyword{datasets}
