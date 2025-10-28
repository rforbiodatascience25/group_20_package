#' Transcription
#'
#' @param DNA
#'
#' @returns the transcription of the DNA (RNA)
#' @export
#'
#' @examples
#' transcribeDNAtoARN(ATCGGTACGAGCT)
transcribeDNAtoRNA <- function(DNA){
  RNA <- gsub("T", "U", DNA)
  return(RNA)
}
