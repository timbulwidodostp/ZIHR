# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Zero-inflation hurdle regression models Use ZIHR (UHM) With (In) R Software
install.packages("UHM")
library("UHM")
ZIHR = read.csv("https://raw.githubusercontent.com/timbulwidodostp/ZIHR/main/ZIHR/ZIHR.csv",sep = ";")
# Estimation Zero-inflation hurdle regression models Use ZIHR (UHM) With (In) R Software
index <- 1:(dim(ZIHR)[1])
IND_new <- sample(index, .5 * length(index))
ZIHRt <- ZIHR[IND_new, ]
ZIHRv <- ZIHR[-IND_new, ]
modelY <- y~x1 + x2
modelZ <- z~x1
ZIHR_Poisson <- ZIHR(modelY, modelZ, data = ZIHRt, n.chains = 2, n.iter = 100, n.burnin = 50, n.thin = 1, family = "Poisson")
SummaryZIHR(ZIHR_Poisson)
ZIHR_Bell <- ZIHR(modelY, modelZ, data = ZIHRt, n.chains = 2, n.iter = 100, n.burnin = 50, n.thin = 1, family = "Bell")
SummaryZIHR(ZIHR_Bell)
ZIHR_Exponential <- ZIHR(modelY, modelZ, data = ZIHRt, n.chains = 2, n.iter = 100, n.burnin = 50, n.thin = 1, family = "Gaussian")
SummaryZIHR(ZIHR_Exponential)
ZIHR_Gaussian <- ZIHR(modelY, modelZ, data = ZIHRt, n.chains = 2, n.iter = 100, n.burnin = 50, n.thin = 1, family = "Exponential")
SummaryZIHR(ZIHR_Gaussian)
ZIHR_Weibull <- ZIHR(modelY, modelZ, data = ZIHRt, n.chains = 2, n.iter = 100, n.burnin = 50, n.thin = 1, family = "Weibull")
SummaryZIHR(ZIHR_Weibull)
ZIHR_Gamma <- ZIHR(modelY, modelZ, data = ZIHRt, n.chains = 2, n.iter = 100, n.burnin = 50, n.thin = 1, family = "Gamma")
SummaryZIHR(ZIHR_Gamma)
ZIHR_inverse.gaussian <- ZIHR(modelY, modelZ, data = ZIHRt, n.chains = 2, n.iter = 100, n.burnin = 50, n.thin = 1, family = "inverse.gaussian")
SummaryZIHR(ZIHR_inverse.gaussian)
# Zero-inflation hurdle regression models Use ZIHR (UHM) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished