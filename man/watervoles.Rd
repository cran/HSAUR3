\name{watervoles}
\alias{watervoles}
\docType{data}
\title{ Water Voles Data }
\description{

    Percentage incidence of the 13 characteristics of water voles in 14
    areas.

}
\usage{data("watervoles")}
\format{
  A dissimilarity matrix for the following 14 variables, i.e,
  areas:
  \code{Surrey},
  \code{Shropshire},
  \code{Yorkshire},
  \code{Perthshire},
  \code{Aberdeen},
  \code{Elean Gamhna},
  \code{Alps},
  \code{Yugoslavia},
  \code{Germany},
  \code{Norway},
  \code{Pyrenees I},
  \code{Pyrenees II},
  \code{North Spain}, and
  \code{South Spain}.
}
\details{

  Corbet et al. (1970) report a study of water voles (genus Arvicola)
  in which the aim was to compare British populations of these
  animals with those in Europe, to investigate whether more than
  one species might be present in Britain. The original data consisted
  of observations of the presence or absence of 13 characteristics
  in about 300 water vole skulls arising from six British populations
  and eight populations from the rest of Europe.
  The data are the percentage incidence of the 13 characteristics
  in each of the 14 samples of water vole skulls.

}
\source{

    G. B. Corbet, J. Cummins, S. R. Hedges, W. J. Krzanowski (1970),
    The taxonomic structure of British water voles, genus \emph{Arvicola}.
    \emph{Journal of Zoology}, \bold{61}, 301--316.

}
\examples{

  data("watervoles", package = "HSAUR3")
  watervoles

}
\keyword{datasets}
