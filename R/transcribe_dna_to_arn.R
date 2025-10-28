#' Transcription
#'
#' @param dna
#'
#' @returns the transcription of the dna
#' @export
#'
#' @examples
#' transcribe_dna_to_arn("ATGCTAGTTCGA")
transcribe_dna_to_arn <- function(dna){
  arn <- gsub("T", "U", dna)
  return(arn)
}
