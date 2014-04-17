\name{womensrole}
\alias{womensrole}
\docType{data}
\title{ Womens Role in Society }
\description{
  Data from a survey from 1974 / 1975 asking both female and male
  responders about their opinion on the statement: Women
  should take care of running their homes and leave running the   
  country up to men.

}
\usage{data("womensrole")}
\format{
  A data frame with 42 observations on the following 4 variables.
  \describe{
    \item{\code{education}}{years of education.}
    \item{\code{gender}}{a factor with levels \code{Male} and \code{Female}.}
    \item{\code{agree}}{number of subjects in agreement with the statement.}
    \item{\code{disagree}}{number of subjects in disagreement with the 
                           statement.}
  }
}
\details{

  The data are from Haberman (1973) and also given in
  Collett (2003). The questions here are whether the response of men and women 
  differ.

}
\source{

    S. J. Haberman (1973), The analysis of residuals in cross-classificed
    tables. \emph{Biometrics}, \bold{29}, 205--220.

    D. Collett (2003), \emph{Modelling Binary Data}. Chapman and Hall / CRC,
    London. 2nd edition.

}
\examples{

  data("womensrole", package = "HSAUR3")
  summary(subset(womensrole, gender == "Female"))
  summary(subset(womensrole, gender == "Male"))

}
\keyword{datasets}
