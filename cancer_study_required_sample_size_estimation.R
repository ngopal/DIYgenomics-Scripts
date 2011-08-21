# Written by Nikhil Gopal

# Uses the PWR library, if you don't have it use "install.packages('pwr')" to get it
library(pwr)

# Chi-Square Tests for Independence
# sample size varying with significance level
pwr.chisq.test(w=0.3, N=100, df=1, sig.level=NULL, power=0.95)
pwr.chisq.test(w=0.3, N=150, df=1, sig.level=NULL, power=0.95)
# projected degrees of freedom with a sample size of 100
pwr.chisq.test(w=0.3, N=NULL, df=1, sig.level=0.05, power=0.95)
pwr.chisq.test(w=0.3, N=NULL, df=2, sig.level=0.05, power=0.95)
pwr.chisq.test(w=0.3, N=NULL, df=3, sig.level=0.05, power=0.95)
pwr.chisq.test(w=0.3, N=NULL, df=4, sig.level=0.05, power=0.95)
# Plot of df vs sample size
plot(c(1,2,3,4),c(pwr.chisq.test(w=0.3, N=NULL, df=1, sig.level=0.05, power=0.95)$N,
pwr.chisq.test(w=0.3, N=NULL, df=2, sig.level=0.05, power=0.95)$N,
pwr.chisq.test(w=0.3, N=NULL, df=3, sig.level=0.05, power=0.95)$N,
pwr.chisq.test(w=0.3, N=NULL, df=4, sig.level=0.05, power=0.95)$N), xlab="df", ylab="sample size")
# projected effect size with a sample size of 100
pwr.chisq.test(w=NULL, N=100, df=10, sig.level=0.05, power=0.95)
# projected sample size for an effect size of 0.3 "medium"
pwr.chisq.test(w=0.3, N=NULL, df=10, sig.level=0.05, power=0.95)

# T-tests
# projected effect size based on sample size of 100
pwr.t.test(n = 100, d = NULL, sig.level = 0.05, power = 0.95, type = c("two.sample"))
# projected sample size for an effect size of 0.5 "medium"
pwr.t.test(n = NULL, d = 0.5, sig.level = 0.05, power = 0.95, type = c("two.sample"))

# ANOVA
# projected sample size for a 2 group experiment with an effect size of 0.25 "medium"
pwr.anova.test(k = 2, n = NULL, f = 0.25, sig.level = 0.05, power = 0.95)


