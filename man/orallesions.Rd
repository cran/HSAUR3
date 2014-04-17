\name{orallesions}
\alias{orallesions}
\docType{data}
\title{ Oral Lesions in Rural India }
\description{

The distribution of the oral
lesion site found in house-to-house surveys in three geographic
regions of rural India.

}
\usage{data("orallesions")}
\format{
A two-way classification, see \code{\link{table}}.
}
\source{

   Cyrus R. Mehta and Nitin R. Patel (2003), 
   \emph{StatXact-6: Statistical Software for Exact Nonparametric
   Inference}, Cytel Software Cooperation, Cambridge, USA.

}
\examples{

  data("orallesions", package = "HSAUR3")
  mosaicplot(orallesions)

}
\keyword{datasets}
