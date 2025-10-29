#' Transcription
#'
#' @param dna input dna sequence to transcribe
#'
#' @returns the transcription of the dna
#' @export
#'
#' @examples
#' transcribe_dna_to_rna("ATGCTAGTTCGA")
transcribe_dna_to_rna <- function(dna){
  rna <- gsub("T", "U", dna)
  return(rna)
}
