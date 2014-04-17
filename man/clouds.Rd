\name{clouds}
\alias{clouds}
\docType{data}
\title{ Cloud Seeding Data }
\description{
 
  Data from an experiment investigating the use of massive 
  amounts of silver iodide (100 to 1000 grams per cloud) in cloud
  seeding to increase rainfall.
 
}
\usage{data("clouds")}
\format{
  A data frame with 24 observations on the following 7 variables.
  \describe{
    \item{seeding}{a factor indicating whether seeding action occured (\code{no}
                   or \code{yes}).}
    \item{time}{number of days after the first day of the experiment.}
    \item{sne}{suitability criterion.}
    \item{cloudcover}{the percentage cloud cover in the experimental area,
                  measured using radar.}
    \item{prewetness}{the total rainfall in the target area one hour before
                      seeding (in cubic metres times \code{1e+8}).}
    \item{echomotion}{a factor showing whether the radar echo was
                      \code{moving} or \code{stationary}.}
    \item{rainfall}{the amount of rain in cubic metres times \code{1e+8}.}
  }
}
\details{

Weather modification, or cloud seeding, is the treatment of individual
clouds or storm systems with various inorganic and organic materials
in the hope of achieving an increase in rainfall. Introduction
of such material into a cloud that contains supercooled water,
that is, liquid water colder than zero Celsius, has the aim of 
inducing freezing, with the consequent ice particles growing  
at the expense of liquid droplets and becoming heavy enough to
fall as rain from clouds that otherwise would produce none.

The data available in \code{cloud} were collected in the summer
of 1975 from an experiment to investigate the use of massive 
amounts of silver iodide 100 to 1000 grams per cloud) in cloud
seeding to increase rainfall. 
In the experiment, which was conducted 
in an area of Florida, 24 days were judged suitable for seeding 
on the basis that a measured suitability criterion (\code{SNE}).

}
\source{

    W. L. Woodley, J. Simpson, R. Biondini and J. Berkeley (1977),
    Rainfall results 1970-75: Florida area cumulus experiment.
    \emph{Science} \bold{195}, 735--742.

    R. D. Cook and S. Weisberg (1980), Characterizations of an 
    empirical influence function for detecting influential cases in 
    regression. \emph{Technometrics} \bold{22}, 495--508.

}
\examples{

  data("clouds", package = "HSAUR3")
  layout(matrix(1:2, nrow = 2))
  boxplot(rainfall ~ seeding, data = clouds, ylab = "Rainfall")
  boxplot(rainfall ~ echomotion, data = clouds, ylab = "Rainfall")    

}
\keyword{datasets}
