% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cnv.R
\name{cnSegmentation}
\alias{cnSegmentation}
\title{perform copy number segmentation}
\usage{
cnSegmentation(sset, ssets.normal = NULL, refversion = "hg19")
}
\arguments{
\item{sset}{\code{SignalSet}}

\item{ssets.normal}{\code{SignalSet} for normalization}

\item{refversion}{hg19 or hg38}
}
\value{
an object of \code{CNSegment}
}
\description{
perform copy number segmentation
}
\examples{
sset <- SeSAMeGetExample("EPIC.sset.LNCaP.Rep1.chr4")
ssets.normal <- SeSAMeGetExample("EPIC.sset.5normal.chr4")
seg <- cnSegmentation(sset, ssets.normal)

}
