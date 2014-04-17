\name{schizophrenia}
\alias{schizophrenia}
\docType{data}
\title{ Age of Onset of Schizophrenia Data }
\description{

  Data on sex differences in the age of onset of schizophrenia.

}
\usage{data("schizophrenia")}
\format{
  A data frame with 251 observations on the following 2 variables.
  \describe{
    \item{\code{age}}{age at the time of diagnosis.}
    \item{\code{gender}}{a factor with levels \code{female} and \code{male}}
  }
}
\details{

  A sex difference in the age of onset of schizophrenia was
  noted by Kraepelin (1919). Subsequently epidemiological studies
  of the disorder have consistently shown an earlier onset in men 
  than in women. One model that has been suggested to explain this
  observed difference is know as the subtype model
  which postulates two type of schizophrenia, one characterised by early
  onset, typical symptoms and poor premorbid competence, and the
  other by late onset, atypical symptoms, and good premorbid competence.
  The early onset type is assumed to be largely a disorder of men  
  and the late onset largely a disorder of women.

}
\source{

    E. Kraepelin (1919), \emph{Dementia Praecox and Paraphrenia}.
    Livingstone, Edinburgh.

}
\examples{

  data("schizophrenia", package = "HSAUR3")
  boxplot(age ~ gender, data = schizophrenia)

}
\keyword{datasets}
