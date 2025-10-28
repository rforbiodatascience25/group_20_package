#' Translation
#'
#' @param codons a vector of codons
#'
#' @returns string of corresponding amino acid sequence for codon vector input.
#' @export
#'
#' @examples translation(c("AUG", "GGG", "UAA"))
#' [1] "MG_"
translation <- function(codons){
  aa_list <- paste0(codon_table[codons], collapse = "")
  return(aa_list)
}
