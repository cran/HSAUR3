### R code from vignette source 'Ch_conditional_inference.Rnw'

###################################################
### code chunk number 1: setup
###################################################
rm(list = ls())
s <- search()[-1]
s <- s[-match(c("package:base", "package:stats", "package:graphics", "package:grDevices",
                "package:utils", "package:datasets", "package:methods", "Autoloads"), s)]
if (length(s) > 0) sapply(s, detach, character.only = TRUE)
if (!file.exists("tables")) dir.create("tables")
if (!file.exists("figures")) dir.create("figures")
set.seed(290875)
options(prompt = "R> ", continue = "+  ",
    width = 63, # digits = 4, 
    show.signif.stars = FALSE,
    SweaveHooks = list(leftpar = function() 
        par(mai = par("mai") * c(1, 1.05, 1, 1)),
        bigleftpar = function()
        par(mai = par("mai") * c(1, 1.7, 1, 1))))
HSAURpkg <- require("HSAUR3")
if (!HSAURpkg) stop("cannot load package ", sQuote("HSAUR3"))
rm(HSAURpkg)
 ### </FIXME> hm, R-2.4.0 --vanilla seems to need this
a <- Sys.setlocale("LC_ALL", "C")
 ### </FIXME>
book <- TRUE
refs <- cbind(c("AItR", "DAGD", "SI", "CI", "ANOVA", "MLR", "GLM", 
                "DE", "RP", "GAM", "SA", "ALDI", "ALDII", "SIMC", "MA", "PCA", 
                "MDS", "CA"), 1:18)
ch <- function(x) {
    ch <- refs[which(refs[,1] == x),]
    if (book) {
        return(paste("Chapter~\\\\ref{", ch[1], "}", sep = ""))
    } else {
        return(paste("Chapter~", ch[2], sep = ""))
    }
}
if (file.exists("deparse.R"))
    source("deparse.R")

setHook(packageEvent("lattice", "attach"), function(...) {
    lattice.options(default.theme = 
        function()
            standard.theme("pdf", color = FALSE))
    })


###################################################
### code chunk number 2: singlebook
###################################################
book <- FALSE


###################################################
### code chunk number 3: CI-roomwidth-ties
###################################################
data("roomwidth", package = "HSAUR3")
nobs <- table(roomwidth$unit)
ties <- tapply(roomwidth$width, roomwidth$unit, function(x) length(x) - length(unique(x)))
library("coin")


###################################################
### code chunk number 4: CI-roomwidth-data
###################################################
data("roomwidth", package = "HSAUR3")
convert <- ifelse(roomwidth$unit == "feet", 1, 3.28)
feet <- roomwidth$unit == "feet"
meter <- !feet
y <- roomwidth$width * convert


###################################################
### code chunk number 5: CI-roomwidth-teststat
###################################################
T <- mean(y[feet]) - mean(y[meter])
T


###################################################
### code chunk number 6: CI-roomwidth-permutation
###################################################
meandiffs <- double(9999)
for (i in 1:length(meandiffs)) {   
    sy <- sample(y)   
    meandiffs[i] <- mean(sy[feet]) - mean(sy[meter])
}


###################################################
### code chunk number 7: CI-roomwidth-plot
###################################################
hist(meandiffs)
abline(v = T, lty = 2)  
abline(v = -T, lty = 2) 


###################################################
### code chunk number 8: CI-roomwidth-pvalue
###################################################
greater <- abs(meandiffs) > abs(T)
mean(greater)


###################################################
### code chunk number 9: CI-roomwidth-pvalue
###################################################
binom.test(sum(greater), length(greater))$conf.int


###################################################
### code chunk number 10: CI-roomwidth-coin
###################################################
library("coin")
independence_test(y ~ unit, data = roomwidth, 
                  distribution = exact())


###################################################
### code chunk number 11: CI-roomwidth-coin
###################################################
wilcox_test(y ~ unit, data = roomwidth, 
            distribution = exact())


###################################################
### code chunk number 12: CI-suicides-ft
###################################################
data("suicides", package = "HSAUR3")
fisher.test(suicides)


###################################################
### code chunk number 13: CI-suicides-chisq
###################################################
ftp <- round(fisher.test(suicides)$p.value, 3)
ctp <- round(chisq.test(suicides)$p.value, 3)


###################################################
### code chunk number 14: CI-Lanza-data
###################################################
data("Lanza", package = "HSAUR3")
xtabs(~ treatment + classification + study, data = Lanza)


###################################################
### code chunk number 15: CI-width
###################################################
options(width = 65)


###################################################
### code chunk number 16: CI-Lanza-singleI
###################################################
library("coin")
cmh_test(classification ~ treatment, data = Lanza, 
         scores = list(classification = c(0, 1, 6, 17, 30)),
         subset = Lanza$study == "I")


###################################################
### code chunk number 17: CI-Lanza-singleII
###################################################
cmh_test(classification ~ treatment, data = Lanza, 
         scores = list(classification = c(0, 1, 6, 17, 30)),
         subset = Lanza$study == "II")


###################################################
### code chunk number 18: CI-Lanza-singleIIa
###################################################
p <- cmh_test(classification ~ treatment, data = Lanza, 
         scores = list(classification = c(0, 1, 6, 17, 30)),
         subset = Lanza$study == "II", distribution =
         approximate(19999))
pvalue(p)


###################################################
### code chunk number 19: CI-Lanza-singleIII-IV
###################################################
cmh_test(classification ~ treatment, data = Lanza, 
         scores = list(classification = c(0, 1, 6, 17, 30)),
         subset = Lanza$study == "III")
cmh_test(classification ~ treatment, data = Lanza, 
         scores = list(classification = c(0, 1, 6, 17, 30)),
         subset = Lanza$study == "IV")


###################################################
### code chunk number 20: CI-Lanza-all
###################################################
cmh_test(classification ~ treatment | study, data = Lanza, 
         scores = list(classification = c(0, 1, 6, 17, 30)))


###################################################
### code chunk number 21: CI-anomalies
###################################################
anomalies <- c(235, 23, 3, 0, 41, 35, 8, 0, 
               20, 11, 11, 1, 2, 1, 3, 1)
anomalies <- as.table(matrix(anomalies,
    ncol = 4, dimnames = list(MD = 0:3, RA = 0:3)))
anomalies


###################################################
### code chunk number 22: CI-anomalies-mh
###################################################
mh_test(anomalies)


###################################################
### code chunk number 23: CI-anomalies-ordered
###################################################
mh_test(anomalies, scores = list(response = c(0, 1, 2, 3)))


