% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sesame.R
\name{readIDATsFromSheet}
\alias{readIDATsFromSheet}
\title{Import IDATs from a sample sheet}
\usage{
readIDATsFromSheet(sample.sheet, column.name = "barcode", base.dir = NULL,
  ...)
}
\arguments{
\item{sample.sheet}{path to sample sheet}

\item{column.name}{name of the column to use in the samplesheet}

\item{base.dir}{directory on which the \code{sample.sheet.path} is based}

\item{...}{multiple core parameters: mc and mc.cores see \code{readIDATs}}
}
\value{
a list of \code{SignalSet}s
}
\description{
Each element of the returned list contains a matrix
having signal intensity addressed by chip address
}
\examples{
\dontrun{
readIDATsFromSheet(data.frame(barcode=c('data/5775041003_R02C01',
'data/5775041003_R03C01')))
}
cat('sample.sheet is a data.frame with a column called
barcode that contains sample prefixes (excluding _Grn.idat and _Red.idat)')
}
