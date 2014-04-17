\name{schooldays}
\alias{schooldays}
\docType{data}
\title{ Days not Spent at School }
\description{

    Data from a sociological study, the number of days absent from school is
    the response variable.

}
\usage{data("schooldays")}
\format{
  A data frame with 154 observations on the following 5 variables.
  \describe{
    \item{\code{race}}{race of the child, a factor with levels 
                       \code{aboriginal} and \code{non-aboriginal}.}
    \item{\code{gender}}{the gender of the child, a factor with levels 
                      \code{female} and \code{male}.}
    \item{\code{school}}{the school type, a factor with levels 
        \code{F0} (primary), \code{F1} (first), \code{F2} (second) and  
        \code{F3} (third form).}
    \item{\code{learner}}{how good is the child in learning things, 
                          a factor with levels \code{average} and
                          \code{slow}.}
    \item{\code{absent}}{number of days absent from school.}
  }
}
\details{

  The data arise from a sociological study
  of Australian Aboriginal and white children reported by
  Quine (1975).
  
  In this study, children of both sexes from four age groups
  (final grade in primary schools and first, second and third form  
  in secondary school) and from two cultural groups were used.
  The children in age group were classified as slow or average 
  learners. The response variable was the number of days absent   
  from school during the school year. (Children who had suffered
  a serious illness during the years were excluded.) 

}
\source{

   S. Quine (1975), Achievement Orientation of Aboriginal and
   White Adolescents. Doctoral Dissertation, 
   Australian National University, Canberra.

}
\examples{

  data("schooldays", package = "HSAUR3")
  plot.design(schooldays)

}
\keyword{datasets}
