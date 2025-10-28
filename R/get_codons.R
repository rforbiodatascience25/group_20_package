
#' Extracts codons to list from string
#'
#' @param sequence nucleotide sequence to extract codons from
#' @param start first codon to include
#'
#' @returns list containing string of each codon as an entry
#' @export
#'
#' @examples
#' get_codons("ATGGTATTGCGT")
#' [1] "ATG" "GTA" "TTG" "CGT"

get_codons <- function(sequence, start = 1){
  sequence_length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = sequence_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_length, by = 3))
  return(codons)

}

