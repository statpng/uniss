% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grid.lambda.R
\name{grid.lambda}
\alias{grid.lambda}
\title{Finding a Grid of Lambda}
\usage{
grid.lambda(x, y, family, iter = 10, alpha = 0.1,
            nlambda = 10, psub = 1.0, pf = NULL, seed = 1, ...)
}
\arguments{
\item{x}{An \code{n} by \code{p} matrix of variants; Each row represents an individual, and each column a genetic variant. Can be high-dimensional data with \code{n<p}.}

\item{y}{An \code{n} by \code{q} matrix of phenotypes, each with being either continuous or categorical.}

\item{family}{A vector of distribution family, such as 'gaussian', 'binomial', 'multinomial', and etc, corresponding to phenotypes.}

\item{iter}{The number of iterations to be performed for finding a lambda grid. Default is 10.}

\item{alpha}{Mixing proportion between ridge and lasso penalties used in elastic-net penalty. Default is 0.1.}

\item{nlambda}{The number of lambda values to be considered at each iteration. Default is 10.}

\item{psub}{Subsampling proportion. When \code{psub=1.0} bootstrap resampling is applied, and otherwise subsampling without replacement is applied. Default is 1.0.}

\item{pf}{A vector of penalty to be imposed for each column of \code{x}. The 0 value indicates no penalty which leads the genetic variants always to be included in the model. On the other hand, the 1 value indicates that the penalty is imposed for each column as it was.}

\item{seed}{An integer value for reproducible outcome. Default is 1 that does not have special meaning.}

\item{...}{Additional arguments passing to function \code{glmnet::glmnet}.}
}
\value{
A list of lambda sequences. Each sequence contains \code{nlambda*iter} lambda values.
}
\description{
Finding a grid of lambda covering all possible lambda values in the provided dataset \code{(x, y)}.
}
