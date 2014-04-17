\name{voting}
\alias{voting}
\docType{data}
\title{ House of Representatives Voting Data }
\description{

  Voting results for 15 congressmen from New Jersey.

}
\usage{data("voting")}
\format{
    A 15 times 15 matrix.
}
\details{

Romesburg (1984) gives a set of data that shows the number
of times 15 congressmen from New Jersey voted differently in 
the House of Representatives on 19 environmental bills. Abstentions
are not recorded.

}
\source{

    H. C. Romesburg (1984), \emph{Cluster Analysis for Researchers}.
    Lifetime Learning Publications, Belmont, Canada.

}
\examples{

  data("voting", package = "HSAUR3")
  require("MASS")
  voting_mds <- isoMDS(voting)
  plot(voting_mds$points[,1], voting_mds$points[,2],
       type = "n", xlab = "Coordinate 1", ylab = "Coordinate 2",
       xlim = range(voting_mds$points[,1])*1.2)
  text(voting_mds$points[,1], voting_mds$points[,2], 
       labels = colnames(voting))
  voting_sh <- Shepard(voting[lower.tri(voting)], voting_mds$points)

}
\keyword{datasets}
