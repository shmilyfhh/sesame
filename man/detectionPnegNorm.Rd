% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/detectionP.R
\name{detectionPnegNorm}
\alias{detectionPnegNorm}
\title{detection P-value based on normal fitting the negative controls}
\usage{
detectionPnegNorm(sset)
}
\arguments{
\item{sset}{a \code{SignalSet}}
}
\value{
detection p-value
}
\description{
detection P-value based on normal fitting the negative controls
}
\examples{
sset <- makeExampleSeSAMeDataSet()
sset$pval <- detectionPnegNorm(sset)

}
