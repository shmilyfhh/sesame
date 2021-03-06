% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dm.R
\name{topSegments}
\alias{topSegments}
\title{top segments in differential methylation}
\usage{
topSegments(cf1)
}
\arguments{
\item{cf1}{coefficient table of one factor from DMR}
}
\value{
coefficient table ordered by adjusted p-value of segments
}
\description{
This is a utility function to show top differential methylated segments.
}
\examples{
betas <- SeSAMeGetExample('HM450.betas.76matchedTCGAchr20')
sample.info <- SeSAMeGetExample('HM450.sampleinfo.76matchedTCGAchr20')
cf <- DMR(betas, sample.info, ~type)
topSegments(cf[[1]])
}
