\name{Forbes2000}
\alias{Forbes2000}
\docType{data}
\title{ The Forbes 2000 Ranking of the World's Biggest Companies (Year 2004) }
\description{

  The Forbes 2000 list is a ranking of the world's biggest
  companies, measured by sales, profits, assets and market
  value.

}
\usage{data("Forbes2000")}
\format{
  A data frame with 2000 observations on the following 8 variables.
  \describe{
    \item{rank}{the ranking of the company.}
    \item{name}{the name of the company.}
    \item{country}{a factor giving the country the company is situated in.}
    \item{category}{a factor describing the products the company produces.}
    \item{sales}{the amount of sales of the company in billion USD.}
    \item{profits}{the profit of the company in billion USD.}
    \item{assets}{the assets of the company in billion USD.}
    \item{marketvalue}{the market value of the company in billion USD.}
  }
}
\source{
    \url{https://www.forbes.com}, assessed on November 26th, 2004.
}
\examples{
data("Forbes2000", package = "HSAUR3")
summary(Forbes2000)
### number of countries
length(levels(Forbes2000$country))
### number of industries
length(levels(Forbes2000$category))
}
\keyword{datasets}
