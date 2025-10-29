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
    ggplot2::geom_col(color = "gray60", alpha = 0.8) +
    ggplot2::theme_bw() +
    ggplot2::geom_hline(yintercept = 0, color = "black", linewidth = 0.5) +
    ggplot2::theme(legend.position = "none",
                   plot.title = ggplot2::element_text(face = "bold", size = 16, hjust = 0.5)) +
    ggplot2::labs(title = "Distribution of Amino acids", x = "Amino acid")

  return(plot)
}
