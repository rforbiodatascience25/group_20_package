#' Generate a random DNA sequence
#'
#' @param sequence_length Integer specifying the length of DNA sequence to generate
#'
#' @returns A character string containing a random DNA sequence with bases A, T, G, C
#' @export
#'
#' @examples
#' generate_dna(10)
#' generate_dna(100)
generate_dna <- function(sequence_length){
  dna_bases <- sample(c("A", "T", "G", "C"), size = sequence_length, replace = TRUE)
  dna_sequence <- paste0(dna_bases, collapse = "")
  return(dna_sequence)
}
