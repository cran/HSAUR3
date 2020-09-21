\name{CHFLS}
\alias{CHFLS}
\docType{data}
\title{ Chinese Health and Family Life Survey }
\description{

  The Chinese Health and Family Life Survey sampled
  $60$ villages and urban neighborhoods chosen in such a way
  as to represent the full geographical and socioeconomic
  range of contemporary China.

}
\usage{data("CHFLS")}
\format{
  A data frame with 1534 observations on the following 10 variables.
  \describe{
    \item{\code{R_region}}{a factor with levels \code{Coastal South}, \code{Coastal East},
          \code{Inlands}, \code{North}, \code{Northeast}, \code{Central West}.}
    \item{\code{R_age}}{age of the responding woman.}
    \item{\code{R_edu}}{education level of the responding woman, 
          an ordered factor with levels \code{Never attended school} < \code{Elementary school} 
          < \code{Junior high school} < \code{Senior high school} < \code{Junior college} 
          < \code{University}.}
    \item{\code{R_income}}{monthly income of the responding woman.}
    \item{\code{R_health}}{self-reported health status, an ordered factor with levels 
          \code{Poor} < \code{Not good} < \code{Fair} < \code{Good} < \code{Excellent}.}
    \item{\code{R_height}}{height of the responding woman.}
    \item{\code{R_happy}}{self-reportet happiness of the responding woman, 
          an ordered factor with levels \code{Very unhappy} < \code{Not too happy} < 
          \code{Somewhat happy} < \code{Very happy}.}
    \item{\code{A_height}}{height of the woman's partner.}
    \item{\code{A_edu}}{level of education of the woman's partner, an ordered factor with 
          levels \code{Never attended school} < \code{Elementary school} < 
          \code{Junior high school} < \code{Senior high school} < \code{Junior college} 
          < \code{University}.}
    \item{\code{A_income}}{montjly income of the woman's partner.}
  }
}
\details{

Contemporary China is on the leading edge of a sexual revolution, with tremendous
regional and generational differences that provide unparalleled natural experiments
for analysis of the antecedents and outcomes of sexual behavior. 
The Chinese Health and Family Life Study, conducted 1999--2000 as a collaborative
research project of the Universities of Chicago, Beijing, and North Carolina, provides
a baseline from which to anticipate and track future changes.
Specifically, this study produces a baseline set of results on sexual behavior
and disease patterns, using a nationally representative probability sample.   
The Chinese Health and Family Life Survey sampled
60 villages and urban neighborhoods chosen in such a way
as to represent the full geographical and socioeconomic   
range of contemporary China excluding Hong Kong and
Tibet. Eighty-three individuals were chosen at random for
each location from official registers of adults aged between
20 and 64 years to target a sample of 5000 individuals in
total. Here, we restrict our attention to women with current male partners
for whom no information was missing, leading to a sample
of 1534 women. The data have been extracted as given in the example section.

}
\source{

  \url{https://www.src.uchicago.edu/datalib/chfls/data/chfls1.sav}

}
\references{

  William L. Parish, Edward O. Laumann, Myron S. Cohen, Suiming Pan, Heyi Zheng, 
  Irving Hoffman, Tianfu Wang, and Kwai Hang Ng. (2003), Population-Based Study of 
  Chlamydial Infection in China: A Hidden Epidemic. \emph{Journal of the American
  Medican Association}, \bold{289}(10), 1265--1273.

}
\examples{

\dontrun{

    ### for a description see http://popcenter.uchicago.edu/data/chfls.shtml
    library("TH.data")
    load(file.path(path.package(package="TH.data"), "rda", "CHFLS.rda"))

    tmp <- chfls1[, c("REGION6", "ZJ05", "ZJ06", "A35", "ZJ07", "ZJ16M", "INCRM",
                      "JK01", "JK02", "JK20", "HY04", "HY07", "A02", "AGEGAPM", 
                      "A07M", "A14", "A21", "A22M", "A23", "AX16", "INCAM", "SEXNOW", "ZW04")]

     names(tmp) <- c("Region",
                "Rgender",               ### gender of respondent
                "Rage",                  ### age of respondent
		"RagestartA",		 ### age of respondent at beginning of relationship 
                                         ### with partner A
                "Redu",                  ### education of respondent
                "RincomeM",              ### rounded monthly income of respondent
		"RincomeComp",		 ### inputed monthly income of respondent
                "Rhealth",               ### health condition respondent
                "Rheight",               ### respondent's height
                "Rhappy",                ### respondent's happiness
                "Rmartial",              ### respondent's marital status
                "RhasA",                 ### R has current A partner
                "Agender",               ### gender of partner A
                "RAagegap",              ### age gap
                "RAstartage",            ### age at marriage
                "Aheight",               ### height of partner A
                "Aedu",                  ### education of partner A
                "AincomeM",              ### rounded partner A income
                "AincomeEst",            ### estimated partner A income
                "orgasm",                ### orgasm frequency
                "AincomeComp",           ### imputed partner A income
                "Rsexnow",               ### has sex last year
                "Rhomosexual")           ### R is homosexual

    ### code missing values
    tmp$AincomeM[tmp$AincomeM < 0] <- NA
    tmp$RincomeM[tmp$RincomeM < 0] <- NA
    tmp$Aheight[tmp$Aheight < 0] <- NA

    olevels <- c("never", "rarely", "sometimes", "often", "always")
    tmpA <- subset(tmp, Rgender == "female" & Rhomosexual != "yes" & orgasm \%in\% olevels)

    ### 1534 subjects
    dim(tmpA)

    CHFLS <- tmpA[, c("Region", "Rage", "Redu", "RincomeComp", "Rhealth", "Rheight", "Rhappy",
                      "Aheight", "Aedu", "AincomeComp")]
    names(CHFLS) <- c("R_region", "R_age", "R_edu", "R_income", "R_health", "R_height", 
                      "R_happy", "A_height", "A_edu", "A_income")
    levels(CHFLS$R_region) <- c("Coastal South", "Coastal Easth", "Inlands", "North", 
                                "Northeast", "Central West")

    CHFLS$R_edu <- ordered(as.character(CHFLS$R_edu), levels = c("no school", "primary", 
                           "low mid", "up mid", "j col", "univ/grad"))
    levels(CHFLS$R_edu) <- c("Never attended school", "Elementary school", "Junior high school", 
                             "Senior high school", "Junior college", "University")
    CHFLS$A_edu <- ordered(as.character(CHFLS$A_edu), levels = c("no school", "primary", 
                           "low mid", "up mid", "j col", "univ/grad"))
    levels(CHFLS$A_edu) <- c("Never attended school", "Elementary school", "Junior high school", 
                             "Senior high school", "Junior college", "University")

    CHFLS$R_health <- ordered(as.character(CHFLS$R_health), levels = c("poor", "not good", 
                              "fair", "good", "excellent"))
    levels(CHFLS$R_health) <- c("Poor", "Not good", "Fair", "Good", "Excellent")

    CHFLS$R_happy <- ordered(as.character(CHFLS$R_happy), levels = c("v unhappy", "not too", 
                             "relatively", "very"))
    levels(CHFLS$R_happy) <- c("Very unhappy", "Not too happy", "Relatively happy", "Very happy")
}

}
\keyword{datasets}
