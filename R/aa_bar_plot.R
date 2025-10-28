#' aa bar plot
#'
#' @param aa_sequence aa sequence to visualize
#'
#' @returns aa bar plot
#' @export
#'
#' @examples
#' aa_bar_plot("MNAGYWMAMN")
aa_bar_plot <- function(aa_sequence){
  aa_str <- aa_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(aa_str, function(amino_acid) stringr::str_count(string = aa_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["aa_sequence"]] <- rownames(counts)

  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = aa_sequence, y = Counts, fill = aa_sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}
