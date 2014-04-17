\name{Smoking_Mueller1940}
\alias{Smoking_Mueller1940}
\docType{data}
\title{Smoking and Lung Cancer (I)
}
\description{
Number of smokers in a case-control study.
}
\usage{data(Smoking_Mueller1940)}
\format{
  The format is:
 table [1:5, 1:2] 25 18 13 27 3 4 5 22 41 14
 - attr(*, "dimnames")=List of 2
  ..$ Smoking_type: chr [1:5] "Extreme smoker" "Very heavy smoker" "Heavy smoker" "Moderate smoker" ...
  ..$ Group       : chr [1:2] "Lung cancer" "Healthy control"
}
\details{
Extreme smoker: 10-15 cigars, >35 cigarettes, or >50 g pipe tobacco/day.
Very heavy smoker: 7-9 cigars, 26-35 cigarettes, or 36-50 g pipe tobacco/day.
Heavy smoker: 4-6 cigars, 16-25 cigarettes, or 21-35 g pipe tobacco/day.
Moderate smoker: 1-3 cigars, 1-15 cigarettes, or 1-20 g pipe tobacco/day.

}
\source{

  Franz-Hermann Mueller (1940), Tabakmissbrauch und Lungencarcinom. 
  \emph{Zeitschrift fuer Krebsforschung} \bold{49}(1), 57-85.

}
\references{

  Richard Doll (1998), Uncovering the effects of smoking: 
  historical perspective. \emph{Statistical Methods in Medical Research},
  \bold{7}(87), 87-117

}
\examples{
data(Smoking_Mueller1940)
## maybe str(Smoking_Mueller1940) ; plot(Smoking_Mueller1940) ...
}
\keyword{datasets}
