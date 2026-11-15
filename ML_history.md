---
title: "A Brief History of Maximum Likelihood"
lang: en
format:
  html:
    toc: false
---

Maximum likelihood estimation (MLE) is a method for learning about unknown
quantities from observed data. Its central idea is to choose the parameter
values that give the observed data the greatest probability, or probability
density for continuous measurements, within a chosen model. Although the
idea sounds straightforward, its development took centuries. The history
connects practical problems of measurement with deeper questions about what
makes an estimate reliable.

[Stigler (2007)](https://arxiv.org/pdf/0804.2996) covers the comprehensive
history of MLE. The early roots lie in the study of measurement errors. Astronomers and
other scientists needed to combine observations that disagreed because of
imperfect instruments. In 1778, Daniel Bernoulli proposed multiplying the
densities of observations and selecting the value that maximized their
product. In 1809, Carl Friedrich Gauss connected normally distributed errors
with least squares, the familiar method of minimizing squared residuals.
His justification used a uniform prior distribution for the unknown
quantity. These approaches anticipated aspects of MLE, but lacked its later
general theory.

Ronald A. Fisher transformed these earlier ideas into a systematic
approach during the early twentieth century. He explored an estimation
criterion in 1912 and developed a much broader framework in his landmark
1922 paper ([Fisher, 1922](https://doi.org/10.1098/rsta.1922.0009)).
Fisher distinguished likelihood from probability: probability
describes possible data under a specified parameter, whereas likelihood
compares parameter values using the data already observed. A likelihood
function alone does not assign probabilities to the parameter values
themselves. This distinction helped clarify what the method was actually
maximizing.

Consider ten independent tosses of a coin, producing seven heads. If the
unknown probability of heads is $p$, the likelihood is proportional to
$p^7(1-p)^3$. This expression reaches its maximum at $p=0.7$. The estimate
therefore equals the observed proportion of heads. This example illustrates
the logic behind MLE: compare the same evidence under different proposed
parameter values. It does not establish that the coin's true probability
must be exactly $0.7$; another sample could produce a different estimate.

Fisher also connected estimation with consistency, efficiency, and
sufficiency. These concepts ask whether estimates approach the target as
samples grow, how precisely they estimate it, and whether a summary retains
all the sample's information about it. Later statisticians refined the
mathematics and identified limits to broad claims about MLE. Under suitable
conditions, maximum likelihood estimates become approximately normal in
large samples, supporting standard errors and confidence intervals.

Computers greatly expanded the method's practical reach. Many likelihoods
cannot be maximized using a simple formula, so researchers use numerical
algorithms. An important milestone was the 1977 paper 
[Dempster, Laird, and Rubin (1977)](https://doi.org/10.1111/j.2517-6161.1977.tb01600.x).
It presented a general framework for the
expectation-maximization (EM) algorithm. EM alternates between calculating
conditional expectations involving unobserved data and updating parameter
estimates. It made likelihood estimation more accessible for missing-data
and latent-variable problems. For econometrics students, this history
explains why MLE provides a common language for models of binary choices,
counts, and other outcomes: one estimation principle can accommodate many
different probability models.
