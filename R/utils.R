#' Convert beta-value to M-value
#'
#' Convert beta-value to M-value (aka logit transform)
#' @param b vector of beta values
#' @return a vector of M values
#' @examples
#' BetaValueToMValue(c(0.1, 0.5, 0.9))
#' @export
BetaValueToMValue <- function(b) {
    log2(b/(1-b))
}

#' Convert M-value to beta-value
#'
#' Convert M-value to beta-value (aka inverse logit transform)
#' @param m a vector of M values
#' @return a vector of beta values
#' @examples
#' MValueToBetaValue(c(-3, 0, 3))
#' @export
MValueToBetaValue <- function(m) {
    2^m/(1+2^m)
}

## print message
smessage <- function(...) {
    cat('[', as.character(Sys.time()),'] ', ..., '\n', sep='')
}

pkgTest <- function(x) {
    if (!require(x, character.only = TRUE)) {
        stop("Optional package ", x, " not found.
Please install before continue.")
    }
}

#' get probes by genomic region
#'
#' @param chrm chromosome
#' @param beg begin, 1 if omitted
#' @param end end, chromosome end if omitted
#' @param platform EPIC or HM450
#' @param refversion hg38 or hg19
#' @return probes that fall into the given region
#' @importMethodsFrom IRanges subsetByOverlaps
#' @examples
#' getProbesByRegion('chr5', 135413937, 135419936,
#' refversion='hg19', platform='hm450')
#' @export
getProbesByRegion <- function(
    chrm, beg=1, end=-1, platform='EPIC', refversion='hg38') {
    
    if (end < 0) {
        end <- getBuiltInData(paste0(refversion, '.chrominfo'))
    }

    pkgTest('GenomicRanges')
    probes <- getBuiltInData(paste0(
        'mapped.probes.', refversion), platform=platform)
    
    if (!(chrm %in% GenomicRanges::seqinfo(probes)@seqnames)) {
        stop('No probes found in this reference');
    }
    message(sprintf('Extracting probes from %s:%d-%d.\n', chrm, beg, end))
    target.region <- GenomicRanges::GRanges(chrm, IRanges::IRanges(beg, end))
    subsetByOverlaps(probes, target.region)
}
