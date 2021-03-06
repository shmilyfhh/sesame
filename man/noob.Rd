% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/background_correction.R
\name{noob}
\alias{noob}
\title{Noob background correction}
\usage{
noob(sset, in.place = FALSE, offset = 15)
}
\arguments{
\item{sset}{a \code{SignalSet}}

\item{in.place}{modify \code{SignalSet} in place, faster}

\item{offset}{offset}
}
\value{
a new \code{SignalSet} with noob background correction
}
\description{
Norm-Exp deconvolution using Out-Of-Band (oob) probes
Note p-values are unchanged (based on the raw signal intensities).
}
\examples{
sset <- makeExampleTinyEPICDataSet()
sset.nb <- noob(sset)
}
