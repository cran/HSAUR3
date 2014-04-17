\name{students}
\alias{students}
\docType{data}
\title{ Student Risk Taking }
\description{

 Students were administered two parallel forms of a test after a random
 assignment to three different treatments.

}
\usage{data("students")}
\format{
  A data frame with 35 observations on the following 3 variables.
  \describe{
    \item{\code{treatment}}{a factor with levels \code{AA}, \code{C}, and
                            \code{NC}.}
    \item{\code{low}}{the result of the first test.}
    \item{\code{high}}{the result of the second test.}
  }
}
\details{

The data arise from a large study of risk taking (Timm, 2002).
Students were randomly assigned to three different
treatments labelled AA, C and NC. Students were administered two   
parallel forms of a test called \code{low} and \code{high}. The aim is to 
carry out a test of the equality of the bivariate means of each treatment
population.

}
\source{

    N. H. Timm (2002), \emph{Applied Multivariate Analysis}. Springer, New York.

}
\examples{

  data("students", package = "HSAUR3")
  layout(matrix(1:2, ncol = 2))
  boxplot(low ~ treatment, data = students, ylab = "low")
  boxplot(high ~ treatment, data = students, ylab = "high")

}
\keyword{datasets}
