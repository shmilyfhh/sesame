% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cellComposition.R
\name{estimateCellComposition}
\alias{estimateCellComposition}
\title{Estimate cell composition using reference}
\usage{
estimateCellComposition(g, q, temp = 0.5, maxIter = 1000)
}
\arguments{
\item{g}{reference methylation}

\item{q}{target measurement}

\item{temp}{annealing temperature}

\item{maxIter}{maximum iteration number}
}
\value{
a list of fraction, min error and unknown component methylation state
}
\description{
Estimate cell composition using reference
}
