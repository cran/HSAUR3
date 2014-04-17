\name{HSAURtable}
\alias{HSAURtable}
\alias{toLatex.tabtab}
\alias{toLatex.dftab}
\alias{HSAURtable.table}
\alias{HSAURtable.data.frame}
\title{ Produce LaTeX Tables }
\description{
    Generate \code{longtable} LaTeX environments.
}
\usage{
HSAURtable(object, ...)
\method{HSAURtable}{table}(object, xname = deparse(substitute(object)), pkg = NULL, 
    ...)
\method{HSAURtable}{data.frame}(object, xname = deparse(substitute(object)), pkg = NULL,
    nrows = NULL,  ...)
\method{toLatex}{tabtab}(object, caption = NULL, label = NULL, 
    topcaption = TRUE, index = TRUE, ...)
\method{toLatex}{dftab}(object, pcol = 1, caption = NULL, 
    label = NULL, rownames = FALSE, topcaption = TRUE, index = TRUE, 
    ...)
}
\arguments{
  \item{object}{ an object of \code{table} or \code{data.frame}. }
  \item{xname}{ the name of the object. }
  \item{pkg}{ the package \code{object} comes from, optionally. }
  \item{nrows}{ the number of rows actually printed for a
                \code{data.frame}.}
  \item{caption}{ the (optional) caption of the table without label. }
  \item{label}{ the (optional) label to be defined for this table. }
  \item{pcol}{ the number of parallel columns. }
  \item{rownames}{ logical, should the rownames be printed in the first
                   row without column name? }
  \item{topcaption}{ logical, should the captions be placed on top (default) 
                     of the table?}
  \item{index}{ logical, should an index entry be generated?}
  \item{\dots}{ additional arguments, currently ignored. }
}
\details{
  Based on the data in \code{object}, an object from which a Latex table 
  (in a \code{longtable} environment) may be  constructed (via 
  \code{\link[utils]{toLatex}}) is generated.
}
\value{
  An object of class \code{tabtab} or \code{dftab} for which
  \code{\link[utils]{toLatex}} methods are available.

  \code{toLatex} produces objects of class \code{Latex}, a character
  vector, essentially.
}
\examples{

  data("rearrests", package = "HSAUR3")
  toLatex(HSAURtable(rearrests), 
          caption = "Rearrests of juvenile felons.", 
          label = "rearrests_tab")

}
\keyword{misc}
