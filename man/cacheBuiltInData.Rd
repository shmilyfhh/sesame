% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\name{cacheBuiltInData}
\alias{cacheBuiltInData}
\title{Cache all the built in data from remote}
\usage{
cacheBuiltInData()
}
\value{
the object NULL
}
\description{
need environment SESAMEHOME be set
}
\examples{
\dontrun{
cacheBuiltInData() # download annotation data to $SESAMEHOME
}

cat("Data will be deposited to", Sys.getenv('SESAMEHOME'), "\\n")
}
